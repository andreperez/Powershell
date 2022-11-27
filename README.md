# Powershell

Powershell scripts for daily tasks.
The scripts are compatible with [Powershell Core](https://github.com/PowerShell/PowerShell).

## Scripts

### Git

**git-multi**: Execute a git command recursively in **n** paths.

Examples:

`.\git-multi.ps1 -basedir "C:\Sources" -deph 2 -cmd "status"`

`.\git-multi.ps1 -basedir "C:\Sources" -deph 2 -cmd "pull"`

`.\git-multi.ps1 -basedir "C:\Sources"`

`.\git-multi.ps1`

### SQL Server

**Service\start.ps1**: Start a service.

**Service\stop.ps1**: Stop a service.

**Service\restart.ps1**: Restart a service.

**status.ps1**: List the status of services.

*Note*: may need adminstrative privilegies to manage the services.

## Running the scripts

To run a script **safely**, it's possible to unblock it without changing the execution policy.

A best practice is to read the script's code and verify it's safe before using the **Unblock-File cmdlet**.

**Example**:

`Unblock-File .\status.ps1`

`.\status.ps1`


### Donations

- BTC: 1PnerhP2C5xeGXxAkhxQX4rYrBUguGe1yh
- LTC: LMhAfkzJoUHHWfFCcMnnQ4jdV4Vi9WZG3W
- Stellar: GCPONJ5OX7KSEHBNPB2SKJZJGYSXTRN7ORYQXW443BLEFLS72ZVYISG2
- Zcash: t1THe8JvsYqt7bmbFWkFpjssJhJLka6VAhk
- Tron: TSVnEgtoYhRMwiRYfDFC51XfGNSpxse2yz
