# Remove-ImportRequest
**Remove-ImportRequest** - A simple PowerShell script to remove completed and failed import requests.  
Matthew R. Kisow, D.Sc. <matthew.kisow@kisow.org>  
Copyright &copy; Kisow Foundation, Inc.&reg; 2018.  

## Getting Started
This script runs as a scheduled task and will remove any completed or failed import requests from the Exchange server.  

## Installation
1. Download the ["_**Remove-ImportRequest**_"](https://github.com/DoctorKisow/Remove-ImportRequest.git) script.  
   See the **README.md** file located in the Remove-ImportRequest directory for the install and scheduling instructions.    
   **NOTE:** Follow Microsoft best-practices for the script folder location.  

## Scheduling
1. In windows scheduler create a new scheduled task and call it **"Remove-ImportRequest"**.  
2. On the **Actions** tab, create a new action with the following properties:  
   In the **Action:** drop-down choose "_Start a program_"  
   In the **Program/script:** box type "_C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe_"  
   In the **Add arguements (optional):** box type "_-ExecutionPolicy Bypass -File "_<script location>_\Remove-ImportRequest.ps1"_"  
     **NOTE:** Yes the "_<script location>_" can be a UNC path and should be enclosed with punctuation.  
3. On the **Triggers** tab, create a new trigger with the following properties:  
   In the **Begin the task:** drop-down choose "_On a schedule_"  
   Choose the **Daily** radio button then select _<any date>_ and _<any time>_.  
         
## License
License (GPL v3.0)

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program.  If not, see <http://www.gnu.org/licenses/>.
