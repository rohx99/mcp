import { z } from "zod";
import User from "../models/users.model.js";
import Lead from "../models/leads.model.js";

const UserModel = User();
const LeadModel = Lead();

export const tools = {
  createUser: {
    name: "create_user",
    description:
      "Create a new user with name, email, and optional date of birth.",
    schema: {
      name: z.string().describe("Full name of the user"),
      email: z.string().email().describe("Unique email address"),
      dob: z.string().optional().describe("Date of birth, YYYY-MM-DD"),
    },
    handler: async ({ name, email, dob }) => {
      try {
        const user = await UserModel.create({ name, email, dob });
        return {
          content: [{ type: "text", text: JSON.stringify(user, null, 2) }],
        };
      } catch (err) {
        return {
          content: [{ type: "text", text: `Error: ${err.message}` }],
          isError: true,
        };
      }
    },
  },

  findAllUsers: {
    name: "find_all_users",
    description: "Retrieve a list of all users.",
    schema: {},
    handler: async () => {
      try {
        const users = await UserModel.findAll();
        return {
          content: [{ type: "text", text: JSON.stringify(users, null, 2) }],
        };
      } catch (err) {
        return {
          content: [{ type: "text", text: `Error: ${err.message}` }],
          isError: true,
        };
      }
    },
  },

  findUserById: {
    name: "find_user_by_id",
    description: "Find a single user by their numeric ID.",
    schema: { id: z.number().int().describe("The user's ID") },
    handler: async ({ id }) => {
      try {
        const user = await UserModel.findByPk(id);
        if (!user)
          return {
            content: [{ type: "text", text: "User not found" }],
            isError: true,
          };
        return {
          content: [{ type: "text", text: JSON.stringify(user, null, 2) }],
        };
      } catch (err) {
        return {
          content: [{ type: "text", text: `Error: ${err.message}` }],
          isError: true,
        };
      }
    },
  },

  updateUser: {
    name: "update_user",
    description: "Update an existing user's fields by ID.",
    schema: {
      id: z.number().int(),
      name: z.string().optional(),
      email: z.string().email().optional(),
      dob: z.string().optional(),
    },
    handler: async ({ id, ...fields }) => {
      try {
        const [updated] = await UserModel.update(fields, { where: { id } });
        if (!updated)
          return {
            content: [{ type: "text", text: "User not found" }],
            isError: true,
          };
        const updatedUser = await UserModel.findByPk(id);
        return {
          content: [
            { type: "text", text: JSON.stringify(updatedUser, null, 2) },
          ],
        };
      } catch (err) {
        return {
          content: [{ type: "text", text: `Error: ${err.message}` }],
          isError: true,
        };
      }
    },
  },

  deleteUser: {
    name: "delete_user",
    description: "Delete a user by ID.",
    schema: { id: z.number().int() },
    handler: async ({ id }) => {
      try {
        const deleted = await UserModel.destroy({ where: { id } });
        if (!deleted)
          return {
            content: [{ type: "text", text: "User not found" }],
            isError: true,
          };
        return {
          content: [{ type: "text", text: `User ${id} deleted successfully` }],
        };
      } catch (err) {
        return {
          content: [{ type: "text", text: `Error: ${err.message}` }],
          isError: true,
        };
      }
    },
  },

  createLead: {
    name: "create_lead",
    description:
      "Create a new lead. Requires lead_id, full_name, and email.",
    schema: {
      lead_id: z.string().describe("Unique lead identifier"),
      full_name: z.string().describe("Full name of the lead"),
      email: z.string().email().describe("Email address"),
      job_title: z.string().optional(),
      seniority: z.string().optional(),
      company: z.string().optional(),
      industry: z.string().optional(),
      company_size: z.string().optional(),
      country: z.string().optional(),
      is_corporate_email: z.boolean().optional(),
      phone_number: z.string().optional(),
      lead_source: z.string().optional(),
      referral_details: z.string().optional(),
      signup_date: z.string().optional(),
      days_since_signup: z.number().int().optional(),
      last_activity_date: z.string().optional(),
      website_visits_30d: z.number().int().optional(),
      avg_pages_per_visit: z.number().optional(),
      avg_time_on_site_minutes: z.number().optional(),
      pricing_page_visited: z.boolean().optional(),
      emails_sent: z.number().int().optional(),
      emails_opened: z.number().int().optional(),
      emails_clicked: z.number().int().optional(),
      content_downloads: z.number().int().optional(),
      webinar_attended: z.boolean().optional(),
      demo_requested: z.boolean().optional(),
      budget_indicated: z.string().optional(),
      newsletter_opt_in: z.boolean().optional(),
      notes: z.string().optional(),
    },
    handler: async (fields) => {
      try {
        const lead = await LeadModel.create(fields);
        return {
          content: [{ type: "text", text: JSON.stringify(lead, null, 2) }],
        };
      } catch (err) {
        return {
          content: [{ type: "text", text: `Error: ${err.message}` }],
          isError: true,
        };
      }
    },
  },

  findAllLeads: {
    name: "find_all_leads",
    description: "Retrieve a list of all leads.",
    schema: {},
    handler: async () => {
      try {
        const leads = await LeadModel.findAll();
        return {
          content: [{ type: "text", text: JSON.stringify(leads, null, 2) }],
        };
      } catch (err) {
        return {
          content: [{ type: "text", text: `Error: ${err.message}` }],
          isError: true,
        };
      }
    },
  },

  findLeadById: {
    name: "find_lead_by_id",
    description: "Find a single lead by their numeric ID.",
    schema: { id: z.number().int().describe("The lead's ID") },
    handler: async ({ id }) => {
      try {
        const lead = await LeadModel.findByPk(id);
        if (!lead)
          return {
            content: [{ type: "text", text: "Lead not found" }],
            isError: true,
          };
        return {
          content: [{ type: "text", text: JSON.stringify(lead, null, 2) }],
        };
      } catch (err) {
        return {
          content: [{ type: "text", text: `Error: ${err.message}` }],
          isError: true,
        };
      }
    },
  },

  updateLead: {
    name: "update_lead",
    description: "Update an existing lead's fields by ID.",
    schema: {
      id: z.number().int(),
      lead_id: z.string().optional(),
      full_name: z.string().optional(),
      email: z.string().email().optional(),
      job_title: z.string().optional(),
      seniority: z.string().optional(),
      company: z.string().optional(),
      industry: z.string().optional(),
      company_size: z.string().optional(),
      country: z.string().optional(),
      is_corporate_email: z.boolean().optional(),
      phone_number: z.string().optional(),
      lead_source: z.string().optional(),
      referral_details: z.string().optional(),
      signup_date: z.string().optional(),
      days_since_signup: z.number().int().optional(),
      last_activity_date: z.string().optional(),
      website_visits_30d: z.number().int().optional(),
      avg_pages_per_visit: z.number().optional(),
      avg_time_on_site_minutes: z.number().optional(),
      pricing_page_visited: z.boolean().optional(),
      emails_sent: z.number().int().optional(),
      emails_opened: z.number().int().optional(),
      emails_clicked: z.number().int().optional(),
      content_downloads: z.number().int().optional(),
      webinar_attended: z.boolean().optional(),
      demo_requested: z.boolean().optional(),
      budget_indicated: z.string().optional(),
      newsletter_opt_in: z.boolean().optional(),
      notes: z.string().optional(),
    },
    handler: async ({ id, ...fields }) => {
      try {
        const [updated] = await LeadModel.update(fields, { where: { id } });
        if (!updated)
          return {
            content: [{ type: "text", text: "Lead not found" }],
            isError: true,
          };
        const updatedLead = await LeadModel.findByPk(id);
        return {
          content: [
            { type: "text", text: JSON.stringify(updatedLead, null, 2) },
          ],
        };
      } catch (err) {
        return {
          content: [{ type: "text", text: `Error: ${err.message}` }],
          isError: true,
        };
      }
    },
  },

  deleteLead: {
    name: "delete_lead",
    description: "Delete a lead by ID.",
    schema: { id: z.number().int() },
    handler: async ({ id }) => {
      try {
        const deleted = await LeadModel.destroy({ where: { id } });
        if (!deleted)
          return {
            content: [{ type: "text", text: "Lead not found" }],
            isError: true,
          };
        return {
          content: [{ type: "text", text: `Lead ${id} deleted successfully` }],
        };
      } catch (err) {
        return {
          content: [{ type: "text", text: `Error: ${err.message}` }],
          isError: true,
        };
      }
    },
  },
};
