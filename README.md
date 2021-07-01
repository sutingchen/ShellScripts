# ShellScripts
This repository stores the Shell scripts which automate tasks in Mac or Linux environment.

1. The ASP.NET Core Website Deployment Script automates the following deployment steps in a Linud (Ubuntu) server:
- Back up the old published files
- Remove the old published files
- Copy file from the working project's _publish_ folder to /var/aspnetcore/[nameOfProject]/
- Restart the supervisord process
- Log activity details

2. The File Rename Script can be used to when a set of files locating in the same folder have the same prefix and/or suffix that needs to be removed.

## Usage
1. Open the terminal. Go to the directory where the script is saved.
2. Run the script using ./[fileName].
