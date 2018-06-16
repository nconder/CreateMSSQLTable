<#

Create all CD tables in the "tables.txt" list by CD + SiteID + tabledate
v1.0

#>
Import-Module SqlServer

# File with siteid's
$siteidfile = "F:\Automation\PowerShell\tables.txt" #or some other source

# Set date format to year month ie 201612
$tabledate= Get-Date -UFormat "%Y%m"
$tabledate

# Create a server connection
$srv = new-Object Microsoft.SqlServer.Management.Smo.Server("SQLSERVER")
$db = New-Object Microsoft.SqlServer.Management.Smo.Database
$db = $srv.Databases.Item("DATABASENAME")

# Create a table for each siteid in the siteid file above
ForEach ($siteid in Get-Content -Path $siteidfile)
{

    #Create the Table
    $tb = new-object Microsoft.SqlServer.Management.Smo.Table($db, ("CD_"+$siteid+"_"+$tabledate))
    $col1 = new-object Microsoft.SqlServer.Management.Smo.Column($tb, "BTN", [Microsoft.SqlServer.Management.Smo.DataType]::varchar(30))
    $col1.Nullable = $false
    $col2 = new-object Microsoft.SqlServer.Management.Smo.Column($tb, "PHONE", [Microsoft.SqlServer.Management.Smo.DataType]::Int)
    $col2.Nullable = $false
    $col3 = new-object Microsoft.SqlServer.Management.Smo.Column($tb, "PIN", [Microsoft.SqlServer.Management.Smo.DataType]::varchar(30))
    $col3.Nullable = $false
    $col4 = new-object Microsoft.SqlServer.Management.Smo.Column($tb, "CDATE", [Microsoft.SqlServer.Management.Smo.DataType]::char(8))
    $col4.Nullable = $false
    $col5 = new-object Microsoft.SqlServer.Management.Smo.Column($tb, "CTIME", [Microsoft.SqlServer.Management.Smo.DataType]::char(4))
    $col5.Nullable = $false
    $col6 = new-object Microsoft.SqlServer.Management.Smo.Column($tb, "CALLSTARTED", [Microsoft.SqlServer.Management.Smo.DataType]::Int)
    $col6.Nullable = $false
    $col7 = new-object Microsoft.SqlServer.Management.Smo.Column($tb, "CHARGESTARTED", [Microsoft.SqlServer.Management.Smo.DataType]::Int)
    $col7.Nullable = $false
    $col8 = new-object Microsoft.SqlServer.Management.Smo.Column($tb, "CALLSTOPPED", [Microsoft.SqlServer.Management.Smo.DataType]::Int)
    $col8.Nullable = $false
    $col9 = new-object Microsoft.SqlServer.Management.Smo.Column($tb, "DUR", [Microsoft.SqlServer.Management.Smo.DataType]::Int)
    $col9.Nullable = $false
    $col10 = new-object Microsoft.SqlServer.Management.Smo.Column($tb, "CALLTYPE", [Microsoft.SqlServer.Management.Smo.DataType]::Int)
    $col10.Nullable = $false
    $col11 = new-object Microsoft.SqlServer.Management.Smo.Column($tb, "STOPCODE", [Microsoft.SqlServer.Management.Smo.DataType]::Int)
    $col11.Nullable = $false
    $col12 = new-object Microsoft.SqlServer.Management.Smo.Column($tb, "VALIDATION", [Microsoft.SqlServer.Management.Smo.DataType]::Int)
    $col12.Nullable = $false
    $col13 = new-object Microsoft.SqlServer.Management.Smo.Column($tb, "RECORDED", [Microsoft.SqlServer.Management.Smo.DataType]::Int)
    $col13.Nullable = $false
    $col14 = new-object Microsoft.SqlServer.Management.Smo.Column($tb, "COMPLETED", [Microsoft.SqlServer.Management.Smo.DataType]::Int)
    $col14.Nullable = $false
    $col15 = new-object Microsoft.SqlServer.Management.Smo.Column($tb, "ARCHIVE", [Microsoft.SqlServer.Management.Smo.DataType]::Int)
    $col15.Nullable = $false
    $col16 = new-object Microsoft.SqlServer.Management.Smo.Column($tb, "TRUNK", [Microsoft.SqlServer.Management.Smo.DataType]::Int)
    $col16.Nullable = $false
    $col17 = new-object Microsoft.SqlServer.Management.Smo.Column($tb, "PRIVATE", [Microsoft.SqlServer.Management.Smo.DataType]::Int)
    $col17.Nullable = $false
    $col18 = new-object Microsoft.SqlServer.Management.Smo.Column($tb, "HOT", [Microsoft.SqlServer.Management.Smo.DataType]::Int)
    $col18.Nullable = $false
    $col19 = new-object Microsoft.SqlServer.Management.Smo.Column($tb, "RATEMILEAGEID", [Microsoft.SqlServer.Management.Smo.DataType]::Int)
    $col19.Nullable = $false
    $col20 = new-object Microsoft.SqlServer.Management.Smo.Column($tb, "RATETYPE", [Microsoft.SqlServer.Management.Smo.DataType]::Int)
    $col20.Nullable = $false
    $col21 = new-object Microsoft.SqlServer.Management.Smo.Column($tb, "RATECHARGEID", [Microsoft.SqlServer.Management.Smo.DataType]::Int)
    $col21.Nullable = $false
    $col22 = new-object Microsoft.SqlServer.Management.Smo.Column($tb, "RATETIMESPAN", [Microsoft.SqlServer.Management.Smo.DataType]::Int)
    $col22.Nullable = $false
    $col23 = new-object Microsoft.SqlServer.Management.Smo.Column($tb, "RATEPERIOD", [Microsoft.SqlServer.Management.Smo.DataType]::Int)
    $col23.Nullable = $false
    $col24 = new-object Microsoft.SqlServer.Management.Smo.Column($tb, "SYSTEMID", [Microsoft.SqlServer.Management.Smo.DataType]::Int)
    $col24.Nullable = $false
    $col25 = new-object Microsoft.SqlServer.Management.Smo.Column($tb, "POLLINGID", [Microsoft.SqlServer.Management.Smo.DataType]::Int)
    $col25.Nullable = $false
    $col26 = new-object Microsoft.SqlServer.Management.Smo.Column($tb, "CHARGE", [Microsoft.SqlServer.Management.Smo.DataType]::Int)
    $col26.Nullable = $false
    $col27 = new-object Microsoft.SqlServer.Management.Smo.Column($tb, "WSID", [Microsoft.SqlServer.Management.Smo.DataType]::Int)
    $col27.Nullable = $false
    $col28 = new-object Microsoft.SqlServer.Management.Smo.Column($tb, "BIO", [Microsoft.SqlServer.Management.Smo.DataType]::Int)
    $col28.Nullable = $false
    $col29 = new-object Microsoft.SqlServer.Management.Smo.Column($tb, "BBALANCE", [Microsoft.SqlServer.Management.Smo.DataType]::Int)
    $col29.Nullable = $false
    $col30 = new-object Microsoft.SqlServer.Management.Smo.Column($tb, "ENERGY", [Microsoft.SqlServer.Management.Smo.DataType]::Int)
    $col30.Nullable = $false
    $col31 = new-object Microsoft.SqlServer.Management.Smo.Column($tb, "OCN", [Microsoft.SqlServer.Management.Smo.DataType]::char(4))
    $col31.Nullable = $false
    $col32 = new-object Microsoft.SqlServer.Management.Smo.Column($tb, "SURCHARGE", [Microsoft.SqlServer.Management.Smo.DataType]::Int)
    $col32.Nullable = $false
    $col33 = new-object Microsoft.SqlServer.Management.Smo.Column($tb, "TAXID", [Microsoft.SqlServer.Management.Smo.DataType]::Int)
    $col33.Nullable = $true
    $col34 = new-object Microsoft.SqlServer.Management.Smo.Column($tb, "DEBITCARD", [Microsoft.SqlServer.Management.Smo.DataType]::varchar(20))
    $col34.Nullable = $true
    $col35 = new-object Microsoft.SqlServer.Management.Smo.Column($tb, "NAS", [Microsoft.SqlServer.Management.Smo.DataType]::Int)
    $col35.Nullable = $true
    $col36 = new-object Microsoft.SqlServer.Management.Smo.Column($tb, "CDRGUID", [Microsoft.SqlServer.Management.Smo.DataType]::uniqueidentifier)
    $col36.Nullable = $false
    $col37 = new-object Microsoft.SqlServer.Management.Smo.Column($tb, "TAX", [Microsoft.SqlServer.Management.Smo.DataType]::Int)
    $col37.Nullable = $true
    $col38 = new-object Microsoft.SqlServer.Management.Smo.Column($tb, "BASECHARGE", [Microsoft.SqlServer.Management.Smo.DataType]::Int)
    $col38.Nullable = $false
    $col39 = new-object Microsoft.SqlServer.Management.Smo.Column($tb, "lang", [Microsoft.SqlServer.Management.Smo.DataType]::Int)
    $col39.Nullable = $true
    $tb.Columns.Add($col1)
    $tb.Columns.Add($col2)
    $tb.Columns.Add($col3)
    $tb.Columns.Add($col4)
    $tb.Columns.Add($col5)
    $tb.Columns.Add($col6)
    $tb.Columns.Add($col7)
    $tb.Columns.Add($col8)
    $tb.Columns.Add($col9)
    $tb.Columns.Add($col10)
    $tb.Columns.Add($col11)
    $tb.Columns.Add($col12)
    $tb.Columns.Add($col13)
    $tb.Columns.Add($col14)
    $tb.Columns.Add($col15)
    $tb.Columns.Add($col16)
    $tb.Columns.Add($col17)
    $tb.Columns.Add($col18)
    $tb.Columns.Add($col19)
    $tb.Columns.Add($col20)
    $tb.Columns.Add($col21)
    $tb.Columns.Add($col22)
    $tb.Columns.Add($col23)
    $tb.Columns.Add($col24)
    $tb.Columns.Add($col25)
    $tb.Columns.Add($col26)
    $tb.Columns.Add($col27)
    $tb.Columns.Add($col28)
    $tb.Columns.Add($col29)
    $tb.Columns.Add($col30)
    $tb.Columns.Add($col31)
    $tb.Columns.Add($col32)
    $tb.Columns.Add($col33)
    $tb.Columns.Add($col34)
    $tb.Columns.Add($col35)
    $tb.Columns.Add($col36)
    $tb.Columns.Add($col37)
    $tb.Columns.Add($col38)
    $tb.Columns.Add($col39)
    $tb.Create()

}

$EmailTo = ""
$EmailFrom = ""
$Subject = "Monthly SQL Site Tables Added " + $tabledate
$Body = "The Call Detail (CD) SQL tables for the year and month of "+$tabledate+ " have been added for all sites listed in the attached file."
$SMTPServer = ""
$filenameAndPath = $siteidfile
$SMTPMessage = New-Object System.Net.Mail.MailMessage($EmailFrom,$EmailTo,$Subject,$Body)
$attachment = New-Object System.Net.Mail.Attachment($filenameAndPath)
$SMTPMessage.Attachments.Add($attachment)
$SMTPClient = New-Object Net.Mail.SmtpClient($SmtpServer, 25) 
$SMTPClient.EnableSsl = $true 
$SMTPClient.Credentials = New-Object System.Net.NetworkCredential("USER", "PASSWORD"); 
[System.Net.ServicePointManager]::ServerCertificateValidationCallback = { return $true }
$SMTPClient.Send($SMTPMessage)
