-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2026 at 07:54 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mcp`
--

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `id` int(11) NOT NULL,
  `lead_id` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `seniority` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `industry` varchar(255) DEFAULT NULL,
  `company_size` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `is_corporate_email` tinyint(1) DEFAULT 0,
  `phone_number` varchar(255) DEFAULT NULL,
  `lead_source` varchar(255) DEFAULT NULL,
  `referral_details` text DEFAULT NULL,
  `signup_date` date DEFAULT NULL,
  `days_since_signup` int(11) DEFAULT NULL,
  `last_activity_date` date DEFAULT NULL,
  `website_visits_30d` int(11) DEFAULT 0,
  `avg_pages_per_visit` float DEFAULT 0,
  `avg_time_on_site_minutes` float DEFAULT 0,
  `pricing_page_visited` tinyint(1) DEFAULT 0,
  `emails_sent` int(11) DEFAULT 0,
  `emails_opened` int(11) DEFAULT 0,
  `emails_clicked` int(11) DEFAULT 0,
  `content_downloads` int(11) DEFAULT 0,
  `webinar_attended` tinyint(1) DEFAULT 0,
  `demo_requested` tinyint(1) DEFAULT 0,
  `budget_indicated` varchar(255) DEFAULT NULL,
  `newsletter_opt_in` tinyint(1) DEFAULT 0,
  `notes` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leads`
--

INSERT INTO `leads` (`id`, `lead_id`, `full_name`, `job_title`, `seniority`, `company`, `industry`, `company_size`, `country`, `email`, `is_corporate_email`, `phone_number`, `lead_source`, `referral_details`, `signup_date`, `days_since_signup`, `last_activity_date`, `website_visits_30d`, `avg_pages_per_visit`, `avg_time_on_site_minutes`, `pricing_page_visited`, `emails_sent`, `emails_opened`, `emails_clicked`, `content_downloads`, `webinar_attended`, `demo_requested`, `budget_indicated`, `newsletter_opt_in`, `notes`, `createdAt`, `updatedAt`) VALUES
(1, 'LD-1001', 'Neha Patel', 'VP of Marketing', 'VP/Director', 'Vantage Global', 'EdTech', '201-500', 'South Africa', 'neha.patel@vantageglobal.com', 1, '+27-6127978094', 'Free Trial Signup', NULL, '2026-04-11', 89, '2026-06-12', 1, 2.4, 11, 1, 9, 3, 3, 0, 0, 0, '<$1,000/mo', 1, 'Compliance audit coming up in 60 days', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(2, 'LD-1002', 'Sarah Wang', 'CFO', 'C-Level', 'Northstar Systems', 'Logistics & Supply Chain', '11-50', 'Japan', 'sarah.wang@northstarsystems.com', 1, '+81-9961228449', 'Organic Search', NULL, '2026-03-22', 109, '2026-06-25', 2, 4.1, 15, 0, 10, 5, 4, 0, 1, 0, 'Not Discussed', 1, 'Requested a custom quote for enterprise plan', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(3, 'LD-1003', 'Olivia Lopez', 'Sales Manager', 'Manager', 'Redwood Works', 'FinTech', '11-50', 'South Africa', 'olivia.lopez@redwoodworks.com', 1, '+27-6735034881', 'Chatbot Inquiry', NULL, '2026-03-26', 105, '2026-07-07', 3, 2.5, 8.6, 0, 5, 5, 5, 1, 0, 0, '<$1,000/mo', 1, 'Asked detailed integration questions with engineering team', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(4, 'LD-1004', 'Olivia Verma', 'Sales Executive', 'Individual Contributor', 'Cedar Partners', 'EdTech', '51-200', 'South Africa', 'olivia.verma@cedarpartners.com', 1, NULL, 'Webinar Signup', NULL, '2026-03-21', 110, '2026-07-02', 3, 5.2, 8, 1, 10, 6, 2, 0, 0, 0, 'Not Discussed', 0, 'Needs to scale onboarding for 50+ new hires', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(5, 'LD-1005', 'Layla Cohen', 'Product Manager', 'Manager', 'BluePeak Software', 'Logistics & Supply Chain', '11-50', 'Brazil', 'laylacohen88@gmail.com', 0, NULL, 'Free Trial Signup', NULL, '2026-05-06', 64, '2026-05-22', 5, 4, 5.2, 0, 6, 0, 0, 1, 0, 0, '$1,000-$5,000/mo', 0, 'Needs to scale onboarding for 50+ new hires', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(6, 'LD-1006', 'Vikram Young', 'Sales Manager', 'Manager', 'Anchorpoint Industries', 'FinTech', '1000+', 'Brazil', 'vikramyoung63@outlook.com', 0, '+55-9990448177', 'Free Trial Signup', NULL, '2026-04-03', 97, '2026-06-05', 2, 6.4, 14.6, 0, 4, 0, 0, 2, 0, 1, 'Not Discussed', 1, 'Asked detailed integration questions with engineering team', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(7, 'LD-1007', 'Lucas Bianchi', 'Sales Executive', 'Individual Contributor', 'Silverline Global', 'Travel & Hospitality', '1000+', 'Germany', 'lucas.bianchi@silverlineglobal.com', 1, NULL, 'Facebook Ads', NULL, '2026-06-11', 28, '2026-07-09', 2, 4.8, 7, 0, 9, 7, 1, 0, 1, 1, '$20,000+/mo', 0, 'Current vendor contract expiring next quarter', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(8, 'LD-1008', 'Sneha Anderson', 'Operations Manager', 'Manager', 'BluePeak Solutions', 'HR Tech / Staffing', '11-50', 'Germany', 'sneha.anderson@bluepeaksolutions.com', 1, '+49-9789806435', 'Trade Show / Conference', NULL, '2026-07-03', 6, '2026-07-04', 3, 3.7, 14.2, 0, 7, 3, 0, 0, 0, 0, 'Confirmed Budget Available', 0, 'Downloaded pricing guide, comparing 2 vendors', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(9, 'LD-1009', 'Vikram Gupta', 'Business Analyst', 'Individual Contributor', 'Skyline Partners', 'Telecommunications', '11-50', 'Germany', 'vikram.gupta@skylinepartners.com', 1, '+49-7986972437', 'Trade Show / Conference', NULL, '2026-06-18', 21, '2026-06-26', 1, 6.1, 8.3, 1, 9, 1, 0, 1, 0, 1, '<$1,000/mo', 1, 'Evaluating options after a bad experience with competitor', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(10, 'LD-1010', 'Fatima Gupta', 'Marketing Specialist', 'Individual Contributor', 'Silverline Software', 'E-commerce & Retail', '11-50', 'Singapore', 'fatimagupta20@hotmail.com', 0, '+65-6935018220', 'Facebook Ads', NULL, '2026-06-29', 10, '2026-07-07', 20, 4.3, 10, 1, 6, 0, 0, 1, 0, 0, '$20,000+/mo', 0, 'Current vendor contract expiring next quarter', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(11, 'LD-1011', 'Laura Ali', 'Operations Manager', 'Manager', 'Northstar Networks', 'Media & Entertainment', '51-200', 'United States', 'laura.ali@northstarnetworks.com', 1, '+1-7119980130', 'Partner Referral', NULL, '2026-05-12', 58, '2026-05-31', 1, 5, 4.7, 0, 7, 2, 2, 1, 0, 0, 'Not Discussed', 0, 'Referred by existing customer, very interested', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(12, 'LD-1012', 'Karan Rossi', 'Software Engineer', 'Individual Contributor', 'Cedar Global', 'FinTech', '11-50', 'Germany', 'karan.rossi@cedarglobal.com', 1, '+49-7299301222', 'Paid Ads (LinkedIn)', NULL, '2026-06-20', 19, '2026-07-01', 5, 6.4, 11.9, 1, 1, 1, 0, 3, 1, 1, '$20,000+/mo', 0, 'Legacy system causing frequent downtime', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(13, 'LD-1013', 'Li Williams', 'Marketing Manager', 'Manager', 'Solace Global', 'Travel & Hospitality', '51-200', 'United States', 'li.williams@solaceglobal.com', 1, '+1-6561866144', 'Webinar Signup', NULL, '2026-07-05', 4, '2026-07-07', 5, 2.6, 13.5, 0, 9, 6, 4, 0, 1, 0, '$20,000+/mo', 0, 'Referred by existing customer, very interested', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(14, 'LD-1014', 'Layla Kapoor', 'Intern', 'Individual Contributor', 'Vertex Ventures', 'Manufacturing', '501-1000', 'India', 'layla.kapoor@vertexventures.com', 1, NULL, 'Referral', 'Referred by existing customer (Zenova Networks)', '2026-06-17', 22, '2026-06-29', 2, 4.2, 15.8, 0, 10, 2, 0, 2, 0, 0, 'Not Discussed', 0, 'Asked detailed integration questions with engineering team', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(15, 'LD-1015', 'Olivia Smith', 'Intern', 'Individual Contributor', 'Zenova Labs', 'Logistics & Supply Chain', '11-50', 'Singapore', 'olivia.smith@zenovalabs.com', 1, NULL, 'Trade Show / Conference', NULL, '2026-04-14', 86, '2026-05-17', 12, 2.4, 12.1, 0, 7, 5, 2, 2, 0, 0, '$5,000-$20,000/mo', 1, 'Just researching, no immediate plan to switch', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(16, 'LD-1016', 'Priya Reddy', 'IT Manager', 'Manager', 'Crestline Global', 'FinTech', '1-10', 'India', 'priya.reddy@crestlineglobal.com', 1, NULL, 'Cold Outreach', NULL, '2026-04-08', 92, '2026-05-10', 2, 6.4, 2.5, 0, 10, 3, 2, 0, 0, 0, 'Confirmed Budget Available', 0, 'Attended demo but went quiet afterward', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(17, 'LD-1017', 'Michael Suzuki', 'HR Executive', 'Individual Contributor', 'Meridian Systems', 'Legal Services', '201-500', 'Canada', 'michael.suzuki@meridiansystems.com', 1, '+1-7328367510', 'Paid Ads (Google)', NULL, '2026-04-28', 72, '2026-06-20', 5, 2.9, 12.7, 0, 9, 2, 0, 1, 0, 0, '$20,000+/mo', 0, 'Wants to consolidate 3 different tools into one', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(18, 'LD-1018', 'Aarav Young', 'HR Executive', 'Individual Contributor', 'Ironclad Industries', 'Logistics & Supply Chain', '11-50', 'South Africa', 'aarav.young@ironcladindustries.com', 1, '+27-8032319170', 'Trade Show / Conference', NULL, '2026-06-21', 18, '2026-07-09', 8, 6.3, 13.4, 1, 2, 1, 1, 0, 0, 1, '<$1,000/mo', 1, 'Struggling with manual data entry across teams', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(19, 'LD-1019', 'Lucas Levi', 'Operations Manager', 'Manager', 'Beaconhill Systems', 'Real Estate & PropTech', '201-500', 'Germany', 'lucas.levi@beaconhillsystems.com', 1, '+49-8817747689', 'Cold Outreach', NULL, '2026-03-14', 117, '2026-05-16', 5, 5.9, 15.6, 1, 2, 1, 0, 0, 0, 0, '<$1,000/mo', 1, 'Current vendor contract expiring next quarter', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(20, 'LD-1020', 'Maria Schmidt', 'HR Executive', 'Individual Contributor', 'Havenly Partners', 'Telecommunications', '501-1000', 'France', 'mariaschmidt21@hotmail.com', 0, NULL, 'Cold Outreach', NULL, '2026-05-28', 42, '2026-06-19', 3, 2.6, 4.8, 1, 5, 4, 3, 1, 0, 1, '$1,000-$5,000/mo', 0, 'Filling out form for a student project', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(21, 'LD-1021', 'Arjun Joshi', 'VP of Sales', 'VP/Director', 'Orbital Software', 'Non-Profit', '51-200', 'United States', 'arjun.joshi@orbitalsoftware.com', 1, '+1-6888346940', 'Content Download (eBook)', NULL, '2026-05-02', 68, '2026-05-23', 8, 3.3, 14, 0, 1, 1, 1, 0, 0, 0, '$5,000-$20,000/mo', 0, 'Attended demo but went quiet afterward', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(22, 'LD-1022', 'Ryan Anderson', 'Marketing Manager', 'Manager', 'Fernway Networks', 'SaaS / Software', '11-50', 'UAE', 'ryananderson60@yahoo.com', 0, NULL, 'Chatbot Inquiry', NULL, '2026-05-22', 48, '2026-06-19', 30, 4, 16.4, 1, 10, 9, 0, 0, 0, 0, '$1,000-$5,000/mo', 1, 'Losing leads due to slow follow-up times', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(23, 'LD-1023', 'Li Khan', 'Sales Executive', 'Individual Contributor', 'Brightwave Analytics', 'SaaS / Software', '201-500', 'India', 'likhan29@outlook.com', 0, NULL, 'Organic Search', NULL, '2026-05-11', 59, '2026-05-26', 8, 4.7, 13.7, 1, 4, 1, 0, 1, 0, 0, '<$1,000/mo', 0, 'Legacy system causing frequent downtime', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(24, 'LD-1024', 'James Cohen', 'Marketing Specialist', 'Individual Contributor', 'Pathforge Labs', 'Telecommunications', '51-200', 'United States', 'james.cohen@pathforgelabs.com', 1, NULL, 'Webinar Signup', NULL, '2026-03-30', 101, '2026-06-03', 2, 6.2, 4, 0, 10, 10, 3, 0, 0, 0, 'Not Discussed', 1, 'Asked detailed integration questions with engineering team', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(25, 'LD-1025', 'Noah Farouk', 'IT Manager', 'Manager', 'Solace Works', 'Healthcare & MedTech', '501-1000', 'India', 'noah.farouk@solaceworks.com', 1, NULL, 'Trade Show / Conference', NULL, '2026-05-11', 59, '2026-06-12', 5, 5.6, 12.9, 0, 7, 2, 2, 1, 0, 0, '$5,000-$20,000/mo', 0, 'Requested a custom quote for enterprise plan', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(26, 'LD-1026', 'Olivia Chen', 'Marketing Specialist', 'Individual Contributor', 'Beaconhill Networks', 'HR Tech / Staffing', '11-50', 'Singapore', 'olivia.chen@beaconhillnetworks.com', 1, NULL, 'Trade Show / Conference', NULL, '2026-04-29', 71, '2026-07-09', 2, 3.8, 6.2, 0, 8, 3, 2, 2, 0, 0, '$1,000-$5,000/mo', 0, 'Just researching, no immediate plan to switch', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(27, 'LD-1027', 'Isha Clark', 'Sales Manager', 'Manager', 'Vantage Analytics', 'Real Estate & PropTech', '51-200', 'France', 'isha.clark@vantageanalytics.com', 1, NULL, 'Facebook Ads', NULL, '2026-05-28', 42, '2026-06-17', 1, 2.4, 12.6, 0, 5, 5, 4, 0, 0, 0, '$20,000+/mo', 1, 'Attended demo but went quiet afterward', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(28, 'LD-1028', 'Megan Lewis', 'VP of Marketing', 'VP/Director', 'Orbital Labs', 'Non-Profit', '51-200', 'France', 'megan.lewis@orbitallabs.com', 1, '+33-8079617090', 'Facebook Ads', NULL, '2026-05-02', 68, '2026-07-01', 2, 4.3, 13.8, 1, 10, 4, 0, 2, 0, 0, 'Confirmed Budget Available', 1, 'Legacy system causing frequent downtime', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(29, 'LD-1029', 'Sneha Bianchi', 'Sales Executive', 'Individual Contributor', 'Ironclad Digital', 'Legal Services', '501-1000', 'United States', 'sneha.bianchi@ironcladdigital.com', 1, '+1-7463320861', 'Partner Referral', NULL, '2026-03-28', 103, '2026-06-03', 1, 1.5, 17, 1, 8, 1, 0, 1, 1, 0, '<$1,000/mo', 1, 'Legacy system causing frequent downtime', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(30, 'LD-1030', 'Laura Reddy', 'Operations Manager', 'Manager', 'Havenly Analytics', 'Media & Entertainment', '201-500', 'Germany', 'laura.reddy@havenlyanalytics.com', 1, '+49-9694387705', 'Cold Outreach', NULL, '2026-06-30', 9, '2026-07-07', 3, 3.5, 10.5, 1, 1, 0, 0, 1, 0, 1, '$20,000+/mo', 1, 'Struggling with manual data entry across teams', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(31, 'LD-1031', 'Ryan Martinez', 'IT Manager', 'Manager', 'Ironclad Solutions', 'EdTech', '501-1000', 'France', 'ryan.martinez@ironcladsolutions.com', 1, NULL, 'Paid Ads (Google)', NULL, '2026-07-02', 7, '2026-07-07', 8, 4.5, 12.1, 0, 4, 3, 0, 1, 0, 0, 'Not Discussed', 1, 'Asked detailed integration questions with engineering team', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(32, 'LD-1032', 'Liam Hall', 'Customer Support Lead', 'Individual Contributor', 'Coreline Labs', 'Real Estate & PropTech', '1000+', 'UAE', 'liam.hall@corelinelabs.com', 1, '+971-8568547910', 'Free Trial Signup', NULL, '2026-04-03', 97, '2026-05-27', 1, 3.5, 6.1, 0, 5, 0, 0, 0, 0, 0, 'Not Discussed', 1, 'Requested a custom quote for enterprise plan', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(33, 'LD-1033', 'Rohan Johnson', 'Head of Product', 'VP/Director', 'Fernway Retail Co.', 'SaaS / Software', '51-200', 'UAE', 'rohanjohnson45@hotmail.com', 0, '+971-7378934717', 'Trade Show / Conference', NULL, '2026-06-25', 14, '2026-06-27', 5, 5.7, 6.3, 1, 8, 4, 3, 2, 0, 0, '$1,000-$5,000/mo', 0, 'Wants to consolidate 3 different tools into one', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(34, 'LD-1034', 'Aarav Rossi', 'Director of Engineering', 'VP/Director', 'Coreline Analytics', 'E-commerce & Retail', '201-500', 'Japan', 'aarav.rossi@corelineanalytics.com', 1, '+81-7146997816', 'Chatbot Inquiry', NULL, '2026-07-08', 1, '2026-07-08', 3, 6.1, 8.2, 1, 8, 1, 0, 3, 0, 1, '$20,000+/mo', 1, 'Current vendor contract expiring next quarter', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(35, 'LD-1035', 'Neha Lopez', 'Marketing Specialist', 'Individual Contributor', 'Northstar Digital', 'Real Estate & PropTech', '201-500', 'Brazil', 'nehalopez32@hotmail.com', 0, '+55-6621232513', 'Cold Outreach', NULL, '2026-03-26', 105, '2026-07-09', 2, 6.1, 9.4, 0, 3, 0, 0, 2, 0, 0, '$1,000-$5,000/mo', 0, 'Legacy system causing frequent downtime', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(36, 'LD-1036', 'Mia Park', 'Head of Product', 'VP/Director', 'Solace Health', 'HR Tech / Staffing', '11-50', 'Singapore', 'miapark59@hotmail.com', 0, NULL, 'Free Trial Signup', NULL, '2026-04-16', 84, '2026-05-20', 12, 6.4, 4.7, 0, 7, 3, 3, 0, 0, 0, '$5,000-$20,000/mo', 0, 'Requested a custom quote for enterprise plan', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(37, 'LD-1037', 'Divya Silva', 'Marketing Specialist', 'Individual Contributor', 'Vertex Digital', 'Travel & Hospitality', '501-1000', 'United States', 'divya.silva@vertexdigital.com', 1, NULL, 'Trade Show / Conference', NULL, '2026-03-22', 109, '2026-06-18', 1, 2, 15.7, 0, 3, 0, 0, 2, 0, 0, 'Not Discussed', 0, 'Requested a custom quote for enterprise plan', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(38, 'LD-1038', 'Noah Khan', 'Operations Manager', 'Manager', 'Elevate Health', 'HR Tech / Staffing', '11-50', 'United States', 'noahkhan96@yahoo.com', 0, '+1-6422809996', 'Chatbot Inquiry', NULL, '2026-06-08', 31, '2026-06-13', 8, 4.9, 2.3, 0, 3, 2, 0, 0, 0, 0, '<$1,000/mo', 0, 'Referred by existing customer, very interested', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(39, 'LD-1039', 'Emily Smith', 'HR Executive', 'Individual Contributor', 'Silverline Systems', 'Media & Entertainment', '11-50', 'South Africa', 'emily.smith@silverlinesystems.com', 1, '+27-7090824373', 'Partner Referral', NULL, '2026-05-16', 54, '2026-05-26', 3, 4.7, 16.2, 0, 8, 4, 4, 0, 0, 0, 'Confirmed Budget Available', 1, 'Legacy system causing frequent downtime', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(40, 'LD-1040', 'Megan Brown', 'Head of Product', 'VP/Director', 'Skyline Health', 'Healthcare & MedTech', '51-200', 'Canada', 'megan.brown@skylinehealth.com', 1, NULL, 'Facebook Ads', NULL, '2026-04-21', 79, '2026-06-23', 5, 2.7, 10.4, 1, 1, 1, 1, 2, 0, 0, '<$1,000/mo', 0, 'Downloaded pricing guide, comparing 2 vendors', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(41, 'LD-1041', 'Arjun Nair', 'Software Engineer', 'Individual Contributor', 'Crestline Solutions', 'SaaS / Software', '11-50', 'Japan', 'arjun.nair@crestlinesolutions.com', 1, '+81-9210405862', 'Paid Ads (LinkedIn)', NULL, '2026-03-28', 103, '2026-06-21', 2, 2.3, 14.3, 0, 6, 4, 4, 3, 0, 0, '$5,000-$20,000/mo', 0, 'Attended demo but went quiet afterward', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(42, 'LD-1042', 'Neha Lopez', 'Intern', 'Individual Contributor', 'BluePeak Digital', 'Telecommunications', '201-500', 'South Africa', 'nehalopez12@outlook.com', 0, NULL, 'Cold Outreach', NULL, '2026-04-21', 79, '2026-05-14', 1, 4, 8.5, 1, 5, 4, 3, 2, 0, 1, 'Not Discussed', 1, 'Just researching, no immediate plan to switch', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(43, 'LD-1043', 'Chloe Anderson', 'Customer Support Lead', 'Individual Contributor', 'Redwood Systems', 'Legal Services', '51-200', 'Australia', 'chloe.anderson@redwoodsystems.com', 1, NULL, 'Paid Ads (Google)', NULL, '2026-04-25', 75, '2026-05-23', 2, 3.8, 2.2, 0, 9, 2, 1, 1, 0, 0, '$5,000-$20,000/mo', 1, 'Attended demo but went quiet afterward', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(44, 'LD-1044', 'Omar Nair', 'IT Manager', 'Manager', 'Anchorpoint Health', 'Media & Entertainment', '201-500', 'India', 'omar.nair@anchorpointhealth.com', 1, NULL, 'Referral', 'Referred by existing customer (Pathforge Technologies)', '2026-06-28', 11, '2026-06-29', 12, 1.7, 12.5, 0, 9, 5, 0, 0, 1, 1, '$5,000-$20,000/mo', 0, 'Losing leads due to slow follow-up times', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(45, 'LD-1045', 'Sneha Wang', 'Marketing Manager', 'Manager', 'Orbital Digital', 'Telecommunications', '11-50', 'Brazil', 'snehawang43@yahoo.com', 0, NULL, 'Referral', 'Referred by existing customer (Nimbus Group)', '2026-03-30', 101, '2026-05-20', 8, 4.4, 5.4, 1, 3, 1, 1, 2, 1, 0, '$1,000-$5,000/mo', 0, 'Losing leads due to slow follow-up times', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(46, 'LD-1046', 'Daniel Gupta', 'VP of Marketing', 'VP/Director', 'Quantum Analytics', 'Travel & Hospitality', '51-200', 'Singapore', 'daniel.gupta@quantumanalytics.com', 1, '+65-8163970710', 'Content Download (eBook)', NULL, '2026-04-13', 87, '2026-07-03', 1, 4.5, 13.2, 0, 9, 4, 3, 1, 1, 0, '$5,000-$20,000/mo', 0, 'Evaluating options after a bad experience with competitor', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(47, 'LD-1047', 'Carlos Verma', 'Software Engineer', 'Individual Contributor', 'Crestline Systems', 'Manufacturing', '11-50', 'United Kingdom', 'carlos.verma@crestlinesystems.com', 1, NULL, 'Chatbot Inquiry', NULL, '2026-04-08', 92, '2026-05-15', 2, 4.4, 5.7, 0, 9, 9, 6, 0, 0, 0, '$20,000+/mo', 1, 'Losing leads due to slow follow-up times', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(48, 'LD-1048', 'David Hassan', 'Marketing Manager', 'Manager', 'Elevate Retail Co.', 'Logistics & Supply Chain', '51-200', 'Canada', 'david.hassan@elevateretailco.com', 1, NULL, 'Chatbot Inquiry', NULL, '2026-04-29', 71, '2026-06-04', 5, 3.7, 2.1, 0, 2, 0, 0, 0, 0, 0, '$20,000+/mo', 0, 'Compliance audit coming up in 60 days', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(49, 'LD-1049', 'Omar Tanaka', 'Software Engineer', 'Individual Contributor', 'Beaconhill Analytics', 'HR Tech / Staffing', '51-200', 'Australia', 'omar.tanaka@beaconhillanalytics.com', 1, '+61-6664561034', 'Content Download (eBook)', NULL, '2026-04-22', 78, '2026-05-27', 5, 2.4, 2.4, 0, 9, 5, 0, 2, 0, 0, '$20,000+/mo', 0, 'Downloaded pricing guide, comparing 2 vendors', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(50, 'LD-1050', 'Ryan Walker', 'Marketing Specialist', 'Individual Contributor', 'Nimbus Group', 'SaaS / Software', '11-50', 'Canada', 'ryanwalker9@hotmail.com', 0, '+1-8719453060', 'Paid Ads (LinkedIn)', NULL, '2026-04-24', 76, '2026-07-04', 30, 1.7, 9.8, 0, 7, 6, 3, 0, 0, 0, '$20,000+/mo', 1, 'Filling out form for a student project', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(51, 'LD-1051', 'James Levi', 'Product Manager', 'Manager', 'Vertex Systems', 'SaaS / Software', '51-200', 'Singapore', 'james.levi@vertexsystems.com', 1, NULL, 'Cold Outreach', NULL, '2026-06-12', 27, '2026-06-15', 1, 3.5, 5.5, 1, 10, 7, 4, 0, 0, 0, '$1,000-$5,000/mo', 0, 'Needs to scale onboarding for 50+ new hires', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(52, 'LD-1052', 'Chris Chen', 'Business Analyst', 'Individual Contributor', 'Northstar Technologies', 'Real Estate & PropTech', '11-50', 'United Kingdom', 'chris.chen@northstartechnologies.com', 1, '+44-8869245055', 'Facebook Ads', NULL, '2026-04-10', 90, '2026-05-30', 8, 1.6, 15.6, 0, 1, 1, 0, 1, 1, 0, '$5,000-$20,000/mo', 1, 'Wants to consolidate 3 different tools into one', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(53, 'LD-1053', 'Fatima Patel', 'Sales Executive', 'Individual Contributor', 'Elevate Group', 'Telecommunications', '1000+', 'France', 'fatima.patel@elevategroup.com', 1, '+33-7871216424', 'Paid Ads (Google)', NULL, '2026-05-05', 65, '2026-06-27', 3, 4, 7.4, 0, 5, 5, 2, 0, 0, 1, '$20,000+/mo', 0, 'Filling out form for a student project', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(54, 'LD-1054', 'Yuki Joshi', 'VP of Sales', 'VP/Director', 'Orbital Labs', 'FinTech', '11-50', 'Japan', 'yuki.joshi@orbitallabs.com', 1, NULL, 'Chatbot Inquiry', NULL, '2026-04-20', 80, '2026-06-20', 5, 3.7, 10.4, 1, 10, 7, 5, 2, 0, 1, '$5,000-$20,000/mo', 1, 'Asked detailed integration questions with engineering team', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(55, 'LD-1055', 'Sneha Tanaka', 'Marketing Manager', 'Manager', 'Glidepath Systems', 'SaaS / Software', '11-50', 'India', 'sneha.tanaka@glidepathsystems.com', 1, NULL, 'Webinar Signup', NULL, '2026-05-06', 64, '2026-06-30', 12, 4.5, 9.4, 1, 8, 8, 0, 1, 0, 0, '$5,000-$20,000/mo', 1, 'Struggling with manual data entry across teams', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(56, 'LD-1056', 'Li Iyer', 'Director of Operations', 'VP/Director', 'Glidepath Group', 'E-commerce & Retail', '51-200', 'Singapore', 'li.iyer@glidepathgroup.com', 1, '+65-7215018687', 'Partner Referral', NULL, '2026-03-15', 116, '2026-06-01', 2, 5.3, 12.4, 1, 1, 1, 0, 0, 0, 0, 'Confirmed Budget Available', 1, 'Requested a custom quote for enterprise plan', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(57, 'LD-1057', 'Isha Park', 'Product Manager', 'Manager', 'Solace Digital', 'Manufacturing', '51-200', 'United Kingdom', 'isha.park@solacedigital.com', 1, '+44-9400162238', 'Paid Ads (Google)', NULL, '2026-04-02', 98, '2026-06-08', 2, 1.9, 12.8, 0, 9, 1, 1, 1, 1, 0, '$1,000-$5,000/mo', 1, 'Losing leads due to slow follow-up times', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(58, 'LD-1058', 'Arjun Joshi', 'HR Executive', 'Individual Contributor', 'BluePeak Ventures', 'HR Tech / Staffing', '501-1000', 'Brazil', 'arjun.joshi@bluepeakventures.com', 1, '+55-9291266105', 'Free Trial Signup', NULL, '2026-06-03', 36, '2026-06-11', 5, 4.4, 3.2, 0, 3, 1, 1, 0, 0, 0, '$20,000+/mo', 0, 'Losing leads due to slow follow-up times', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(59, 'LD-1059', 'Megan Martinez', 'HR Executive', 'Individual Contributor', 'Crestline Industries', 'Manufacturing', '51-200', 'Singapore', 'meganmartinez21@hotmail.com', 0, NULL, 'Webinar Signup', NULL, '2026-04-03', 97, '2026-06-29', 8, 1.9, 4.9, 1, 8, 5, 4, 3, 0, 0, 'Not Discussed', 1, 'Legacy system causing frequent downtime', '2026-07-09 17:32:32', '2026-07-09 17:32:32'),
(60, 'LD-1060', 'Ethan Joshi', 'Business Analyst', 'Individual Contributor', 'Anchorpoint Analytics', 'Healthcare & MedTech', '501-1000', 'Singapore', 'ethan.joshi@anchorpointanalytics.com', 1, '+65-7606152369', 'Organic Search', NULL, '2026-03-14', 117, '2026-05-17', 1, 6.5, 7.1, 1, 1, 1, 0, 2, 0, 0, '$1,000-$5,000/mo', 0, 'Evaluating options after a bad experience with competitor', '2026-07-09 17:32:32', '2026-07-09 17:32:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `dob` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `createdAt`, `updatedAt`, `dob`) VALUES
(1, 'John', 'john@example.com', '2026-06-21 05:22:40', '2026-06-21 05:22:40', '2000-06-01'),
(2, 'Aisha Khan', 'aisha.khan@example.com', '2026-06-21 18:48:10', '2026-06-21 18:48:10', '1995-03-14'),
(3, 'Marco Rossi', 'marco.rossi@example.com', '2026-06-21 18:48:13', '2026-06-21 18:48:13', '1988-11-22'),
(4, 'Priya Sharma', 'priya.sharma@example.com', '2026-06-21 18:48:17', '2026-06-21 18:48:17', '1999-07-08'),
(5, 'Liam O\'Connor', 'liam.oconnor@example.com', '2026-06-21 18:48:20', '2026-06-21 18:48:20', '1992-01-30'),
(6, 'Yuki Tanaka', 'yuki.tanaka@example.com', '2026-06-21 18:48:24', '2026-06-21 18:48:24', '2001-09-17'),
(7, 'Sofia Garcia', 'sofia.garcia@example.com', '2026-06-21 18:48:29', '2026-06-21 18:48:29', '1985-05-05'),
(8, 'Kwame Mensah', 'kwame.mensah@example.com', '2026-06-21 18:48:32', '2026-06-21 18:48:32', '1997-12-03'),
(9, 'Elena Popescu', 'elena.popescu@example.com', '2026-06-21 18:48:35', '2026-06-21 18:48:35', '1990-04-19'),
(10, 'Arjun Patel', 'arjun.patel@example.com', '2026-06-21 18:48:39', '2026-06-21 18:48:39', '2003-08-25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lead_id` (`lead_id`),
  ADD UNIQUE KEY `lead_id_2` (`lead_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `email_2` (`email`),
  ADD UNIQUE KEY `email_3` (`email`),
  ADD UNIQUE KEY `email_4` (`email`),
  ADD UNIQUE KEY `email_5` (`email`),
  ADD UNIQUE KEY `email_6` (`email`),
  ADD UNIQUE KEY `email_7` (`email`),
  ADD UNIQUE KEY `email_8` (`email`),
  ADD UNIQUE KEY `email_9` (`email`),
  ADD UNIQUE KEY `email_10` (`email`),
  ADD UNIQUE KEY `email_11` (`email`),
  ADD UNIQUE KEY `email_12` (`email`),
  ADD UNIQUE KEY `email_13` (`email`),
  ADD UNIQUE KEY `email_14` (`email`),
  ADD UNIQUE KEY `email_15` (`email`),
  ADD UNIQUE KEY `email_16` (`email`),
  ADD UNIQUE KEY `email_17` (`email`),
  ADD UNIQUE KEY `email_18` (`email`),
  ADD UNIQUE KEY `email_19` (`email`),
  ADD UNIQUE KEY `email_20` (`email`),
  ADD UNIQUE KEY `email_21` (`email`),
  ADD UNIQUE KEY `email_22` (`email`),
  ADD UNIQUE KEY `email_23` (`email`),
  ADD UNIQUE KEY `email_24` (`email`),
  ADD UNIQUE KEY `email_25` (`email`),
  ADD UNIQUE KEY `email_26` (`email`),
  ADD UNIQUE KEY `email_27` (`email`),
  ADD UNIQUE KEY `email_28` (`email`),
  ADD UNIQUE KEY `email_29` (`email`),
  ADD UNIQUE KEY `email_30` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
