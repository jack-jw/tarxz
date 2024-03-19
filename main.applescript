on run
	display alert "No files provided" message "Drag and drop files or folders on to the app icon to create a tarball." buttons "OK"
end run

on open droppedItems
	repeat with droppedItem in droppedItems
		set itemPath to POSIX path of (droppedItem as text)
		set itemName to name of (info for POSIX file itemPath)
		set finalName to itemName & ".tar.xz"
		
		set progress total steps to 1
		set progress completed steps to 0
		set progress description to "Creating " & finalName
		
		do shell script "cd \"$(dirname \"" & itemPath & "\")\"; source ~/.zshrc; tar -c \"" & itemName & "\" | xz -9e > \"" & finalName & "\""
		
		set progress completed steps to 1
	end repeat
end open