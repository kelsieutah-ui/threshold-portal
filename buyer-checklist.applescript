set clientName to text returned of (display dialog "Enter client name:" default answer "" with title "New Buyer Checklist")
if clientName is "" then return

set listName to clientName & " - Buyer"

tell application "Reminders"
	-- Check for existing list
	repeat with l in lists
		if name of l is listName then
			display dialog "A list named " & quote & listName & quote & " already exists." buttons {"OK"} default button "OK"
			return
		end if
	end repeat

	set targetList to make new list with properties {name: listName}

	-- [LEAD INTAKE]
	make new reminder at end of targetList with properties {name: "[LEAD INTAKE]"}
	make new reminder at end of targetList with properties {name: "Email link of Buyers Questionnaire"}
	make new reminder at end of targetList with properties {name: "Input client in CRM"}
	make new reminder at end of targetList with properties {name: "Input client contact information in phone"}
	make new reminder at end of targetList with properties {name: "Prep for consult"}
	make new reminder at end of targetList with properties {name: "Get Pre-approval from Lender"}
	make new reminder at end of targetList with properties {name: "Add Lending notes to file"}

	-- [BUYER CONSULTATION]
	make new reminder at end of targetList with properties {name: "[BUYER CONSULTATION]"}
	make new reminder at end of targetList with properties {name: "Needs and Wants Paper"}
	make new reminder at end of targetList with properties {name: "BBA Loom sent"}
	make new reminder at end of targetList with properties {name: "REPC Paper Copy Highlighted"}
	make new reminder at end of targetList with properties {name: "Buyers Guide Roadmap"}
	make new reminder at end of targetList with properties {name: "Schedule Consultation"}
	make new reminder at end of targetList with properties {name: "Timeline confirmed"}
	make new reminder at end of targetList with properties {name: "Budget and Rate Confirmed"}
	make new reminder at end of targetList with properties {name: "Set up search criteria in MLS"}
	make new reminder at end of targetList with properties {name: "Set up Listing Alerts"}

	-- [OFFERING]
	make new reminder at end of targetList with properties {name: "[OFFERING]"}
	make new reminder at end of targetList with properties {name: "Refine preferences"}
	make new reminder at end of targetList with properties {name: "Market update weekly"}
	make new reminder at end of targetList with properties {name: "Weekly follow-up"}
	make new reminder at end of targetList with properties {name: "CMA before UC"}
	make new reminder at end of targetList with properties {name: "Review UC stages with weekly tips"}

	-- [UNDER CONTRACT]
	make new reminder at end of targetList with properties {name: "[UNDER CONTRACT]"}
	make new reminder at end of targetList with properties {name: "Submit REPC to TPG stats"}
	make new reminder at end of targetList with properties {name: "Input Dates / Contract information"}
	make new reminder at end of targetList with properties {name: "Send Congrats Earnest Money email template"}
	make new reminder at end of targetList with properties {name: "Send Seller Disclosure Deadline email template"}
	make new reminder at end of targetList with properties {name: "Send Know Before You Buy Due Diligence Checklist email"}
	make new reminder at end of targetList with properties {name: "Pre-closing Reminder Set Up"}
	make new reminder at end of targetList with properties {name: "Earnest Money Collected"}
	make new reminder at end of targetList with properties {name: "Schedule Inspections"}
	make new reminder at end of targetList with properties {name: "Confirm Inspection with Listing Agent"}
	make new reminder at end of targetList with properties {name: "Review PR / Title"}
	make new reminder at end of targetList with properties {name: "Repair Requests Negotiated"}
	make new reminder at end of targetList with properties {name: "Confirm Appraisal Ordered"}

	-- [PRE-CLOSING]
	make new reminder at end of targetList with properties {name: "[PRE-CLOSING]"}
	make new reminder at end of targetList with properties {name: "Send address change checklist with links"}
	make new reminder at end of targetList with properties {name: "Send One Last Thing Before Keys / Utilities email"}
	make new reminder at end of targetList with properties {name: "Schedule Final Walkthrough"}
	make new reminder at end of targetList with properties {name: "Plan and Order Closing Gift"}
	make new reminder at end of targetList with properties {name: "Final Walkthrough Performed"}
	make new reminder at end of targetList with properties {name: "Prepare Closing Congrats Card and Review Card"}
	make new reminder at end of targetList with properties {name: "Schedule Closing with Title"}
	make new reminder at end of targetList with properties {name: "Send Settlement Day What to Expect Email"}
	make new reminder at end of targetList with properties {name: "Coordinate Keys with Listing Agent"}
	make new reminder at end of targetList with properties {name: "Send Before You Unpack / Enroll Kids in School email"}
	make new reminder at end of targetList with properties {name: "Send Pack This Box First / Packing Guidance Email"}

	-- [CLOSED]
	make new reminder at end of targetList with properties {name: "[CLOSED]"}
	make new reminder at end of targetList with properties {name: "Text clients to ask for a review"}
	make new reminder at end of targetList with properties {name: "Create IG post"}
	make new reminder at end of targetList with properties {name: "Update Zillow sale"}
	make new reminder at end of targetList with properties {name: "Add Buyer to popby list"}
	make new reminder at end of targetList with properties {name: "Homeowner resources sent"}
	make new reminder at end of targetList with properties {name: "Client added to newsletter"}
	make new reminder at end of targetList with properties {name: "Add Home Anniversary reminder in calendar"}
	make new reminder at end of targetList with properties {name: "Update Clients New Address"}
	make new reminder at end of targetList with properties {name: "Move to Long Term Follow Up"}
end tell

display notification quote & listName & quote & " created in Reminders" with title "Buyer Checklist Created"
