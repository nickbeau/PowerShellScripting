function Function-Name {
    <#
    .Synopsis
      The short function description.
    .Description
        The long function description
    .Example
        C:\PS>Function-Name -param "Param Value"
        
        This example does something
    .Example
        C:\PS>
        
        You can have multiple examples
    .Notes
        Name: Function-Name
        Author: Author Name
        Last Edit: Date
        Keywords: Any keywords
    .Link
    http://foo.com
    http://twitter.com/foo
    .Inputs
        None
    .Outputs
        None
    #Requires -Version 2.0
    #>
    [CmdletBinding(SupportsShouldProcess=$True)]
        Param
        (
            [Parameter(Mandatory=$true,HelpMessage="Enter a help message")]
            [string]$param1,
            [Parameter(Mandatory=$false)]
            [switch]$param2
        )
        PROCESS {
            if ($pscmdlet.ShouldProcess("Continue?")) {
                Write "Doing it..."
            }
            else {
                Write "Not doing it.by vbk.."
            }
        }
    } #End function
