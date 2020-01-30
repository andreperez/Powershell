# Powershell

Powershell scripts for daily tasks.
The scripts are compatible with [Powershell Core](https://github.com/PowerShell/PowerShell).

## Running the scripts

To run a script safely, it's possible to unblock it without changing the execution policy.

A best practice is to read the script's code and verify it's safe before using the **Unblock-File cmdlet**.
The **Unblock-File** cmdlet unblocks scripts so they can run, but doesn't change the execution policy.

**Example**:

`Unblock-File .\status.ps1`

`.\status.ps1`
