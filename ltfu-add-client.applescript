-- Ask for client name
set clientName to text returned of (display dialog "Client name:" default answer "" with title "Add LTFU Client")
if clientName is "" then return

-- Ask for closing date
set closingDateStr to text returned of (display dialog "Closing date (MM/DD/YYYY):" default answer "" with title "Add LTFU Client")
if closingDateStr is "" then return

-- Parse the date
try
	set closingDate to date closingDateStr
on error
	display dialog "Could not read date. Please use MM/DD/YYYY format." buttons {"OK"} default button "OK"
	return
end try

-- Due date = day after closing so it surfaces immediately
set dueDate to closingDate + (1 * days)

set reminderName to clientName & " - LTFU"
set noteText to "Closed: " & closingDateStr & linefeed & "#ltfu"

tell application "Reminders"
	-- Find or create a list named "Long Term Follow Up"
	set targetList to missing value
	repeat with l in lists
		if name of l is "Long Term Follow Up" then
			set targetList to l
			exit repeat
		end if
	end repeat
	if targetList is missing value then
		set targetList to make new list with properties {name: "Long Term Follow Up"}
	end if

	-- Create the reminder
	set newReminder to make new reminder at end of targetList with properties {name: reminderName, body: noteText, due date: dueDate}

end tell

-- Format due date for confirmation
set dueDateStr to (month of dueDate as string) & " " & (day of dueDate) & ", " & (year of dueDate)
display notification quote & reminderName & quote & " added — due " & dueDateStr with title "LTFU Client Added"
display dialog quote & reminderName & quote & " added to Long Term Follow Up." & return & return & "Due: " & dueDateStr & return & "Note: Closed " & closingDateStr buttons {"OK"} default button "OK" with title "LTFU Client Added"
