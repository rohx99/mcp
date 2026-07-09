import Lead from "../models/leads.model.js";
import XLSX from "xlsx";

const LeadModel = Lead();

export const create = async (req, res) => {
  try {
    const lead = await LeadModel.create(req.body);
    res.status(201).json(lead);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

export const findAll = async (req, res) => {
  try {
    const leads = await LeadModel.findAll();
    res.json(leads);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

export const findOne = async (req, res) => {
  try {
    const lead = await LeadModel.findByPk(req.params.id);
    if (!lead) return res.status(404).json({ error: "Lead not found" });
    res.json(lead);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

export const update = async (req, res) => {
  try {
    const [updated] = await LeadModel.update(req.body, {
      where: { id: req.params.id },
    });
    if (!updated) return res.status(404).json({ error: "Lead not found" });
    const updatedLead = await LeadModel.findByPk(req.params.id);
    res.json(updatedLead);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

export const deleteLead = async (req, res) => {
  try {
    const deleted = await LeadModel.destroy({ where: { id: req.params.id } });
    if (!deleted) return res.status(404).json({ error: "Lead not found" });
    res.json({ message: "Lead deleted successfully" });
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

const BOOLEAN_FIELDS = [
  "is_corporate_email",
  "pricing_page_visited",
  "webinar_attended",
  "demo_requested",
  "newsletter_opt_in",
];

const INTEGER_FIELDS = [
  "days_since_signup",
  "website_visits_30d",
  "emails_sent",
  "emails_opened",
  "emails_clicked",
  "content_downloads",
];

const FLOAT_FIELDS = ["avg_pages_per_visit", "avg_time_on_site_minutes"];

const DATEONLY_FIELDS = ["signup_date", "last_activity_date"];

function toBoolean(value) {
  if (value === true || value === false) return value;
  if (value === null || value === undefined || value === "") return false;
  const v = String(value).trim().toLowerCase();
  return ["true", "yes", "y", "1"].includes(v);
}

function toInteger(value) {
  if (value === null || value === undefined || value === "") return 0;
  const n = parseInt(value, 10);
  return Number.isNaN(n) ? 0 : n;
}

function toFloat(value) {
  if (value === null || value === undefined || value === "") return 0;
  const n = parseFloat(value);
  return Number.isNaN(n) ? 0 : n;
}

function toDateOnly(value) {
  if (value === null || value === undefined || value === "") return null;
  if (value instanceof Date && !isNaN(value)) {
    return value.toISOString().slice(0, 10);
  }
  const d = new Date(value);
  if (isNaN(d)) return null;
  return d.toISOString().slice(0, 10);
}

function normalizeKey(key) {
  return String(key)
    .trim()
    .toLowerCase()
    .replace(/[^a-z0-9]+/g, "_")
    .replace(/^_|_$/g, "");
}

const HEADER_MAP = {
  lead_id: "lead_id",
  full_name: "full_name",
  job_title: "job_title",
  seniority: "seniority",
  company: "company",
  industry: "industry",
  company_size: "company_size",
  company_size_employees: "company_size",
  country: "country",
  email: "email",
  is_corporate_email: "is_corporate_email",
  corporate_email_domain: "is_corporate_email",
  phone_number: "phone_number",
  lead_source: "lead_source",
  referral_details: "referral_details",
  signup_date: "signup_date",
  days_since_signup: "days_since_signup",
  last_activity_date: "last_activity_date",
  website_visits_30d: "website_visits_30d",
  avg_pages_per_visit: "avg_pages_per_visit",
  avg_time_on_site_minutes: "avg_time_on_site_minutes",
  avg_time_on_site_min: "avg_time_on_site_minutes",
  pricing_page_visited: "pricing_page_visited",
  emails_sent: "emails_sent",
  emails_opened: "emails_opened",
  emails_clicked: "emails_clicked",
  content_downloads: "content_downloads",
  webinar_attended: "webinar_attended",
  demo_requested: "demo_requested",
  budget_indicated: "budget_indicated",
  newsletter_opt_in: "newsletter_opt_in",
  notes: "notes",
  notes_last_interaction_summary: "notes",
};

function mapRow(row) {
  const mapped = {};
  for (const key of Object.keys(row)) {
    const normalized = normalizeKey(key);
    const field = HEADER_MAP[normalized];
    if (!field) continue;
    mapped[field] = row[key];
  }
  return mapped;
}

export async function importLeadsFromSheet(req, res) {
  try {
    if (!req.file) {
      return res.status(400).json({
        success: false,
        message: "Please upload sheet",
      });
    }

    const workbook = XLSX.readFile(req.file.path);
    const sheet = workbook.Sheets[workbook.SheetNames[0]];
    const data = XLSX.utils.sheet_to_json(sheet, { defval: null });

    let insertedLeads = 0;
    let skippedLeads = 0;
    const errors = [];

    for (let i = 0; i < data.length; i++) {
      const raw = data[i];
      const item = mapRow(raw);

      if (!item.lead_id || !item.full_name || !item.email) {
        skippedLeads += 1;
        continue;
      }

      const payload = { ...item };

      for (const f of BOOLEAN_FIELDS) {
        if (f in payload) payload[f] = toBoolean(payload[f]);
      }
      for (const f of INTEGER_FIELDS) {
        if (f in payload) payload[f] = toInteger(payload[f]);
      }
      for (const f of FLOAT_FIELDS) {
        if (f in payload) payload[f] = toFloat(payload[f]);
      }
      for (const f of DATEONLY_FIELDS) {
        if (f in payload) payload[f] = toDateOnly(payload[f]);
      }

      try {
        const [lead, created] = await LeadModel.findOrCreate({
          where: { lead_id: payload.lead_id },
          defaults: payload,
        });
        if (created) insertedLeads += 1;
        else skippedLeads += 1;
      } catch (err) {
        errors.push({ row: i + 2, lead_id: payload.lead_id, error: err.message });
      }
    }

    return res.status(200).json({
      success: true,
      message: "Sheet imported successfully",
      importedLeads: insertedLeads,
      skippedLeads,
      totalRows: data.length,
      errors,
    });
  } catch (error) {
    console.log(error);
    return res.status(500).json({
      success: false,
      message: "Failed to import leads",
      error: error.message,
    });
  }
}
