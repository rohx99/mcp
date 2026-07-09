import sequelize from "../config/db.js";
import { DataTypes } from "sequelize";

const Lead = () => {
  return sequelize.define("Lead", {
    id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
    lead_id: { type: DataTypes.STRING, allowNull: false, unique: true },
    full_name: { type: DataTypes.STRING, allowNull: false },
    job_title: { type: DataTypes.STRING },
    seniority: { type: DataTypes.STRING },
    company: { type: DataTypes.STRING },
    industry: { type: DataTypes.STRING },
    company_size: { type: DataTypes.STRING },
    country: { type: DataTypes.STRING },
    email: { type: DataTypes.STRING, allowNull: false },
    is_corporate_email: { type: DataTypes.BOOLEAN, defaultValue: false },
    phone_number: { type: DataTypes.STRING },
    lead_source: { type: DataTypes.STRING },
    referral_details: { type: DataTypes.TEXT },
    signup_date: { type: DataTypes.DATEONLY },
    days_since_signup: { type: DataTypes.INTEGER },
    last_activity_date: { type: DataTypes.DATEONLY },
    website_visits_30d: { type: DataTypes.INTEGER, defaultValue: 0 },
    avg_pages_per_visit: { type: DataTypes.FLOAT, defaultValue: 0 },
    avg_time_on_site_minutes: { type: DataTypes.FLOAT, defaultValue: 0 },
    pricing_page_visited: { type: DataTypes.BOOLEAN, defaultValue: false },
    emails_sent: { type: DataTypes.INTEGER, defaultValue: 0 },
    emails_opened: { type: DataTypes.INTEGER, defaultValue: 0 },
    emails_clicked: { type: DataTypes.INTEGER, defaultValue: 0 },
    content_downloads: { type: DataTypes.INTEGER, defaultValue: 0 },
    webinar_attended: { type: DataTypes.BOOLEAN, defaultValue: false },
    demo_requested: { type: DataTypes.BOOLEAN, defaultValue: false },
    budget_indicated: { type: DataTypes.STRING },
    newsletter_opt_in: { type: DataTypes.BOOLEAN, defaultValue: false },
    notes: { type: DataTypes.TEXT },
  });
};

export default Lead;
