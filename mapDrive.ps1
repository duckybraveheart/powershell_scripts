# Simple script to map a drive or drives if copied over several lines.
# -Name is the drive letter, X.X.X.X is the IP of the network share (can also be hostname)
New-PSDrive -Persist -Name "Your Drive Letter" -PSProvider "FileSystem" -Root "\\X.X.X.X\nameOfDrive"