
# Command to run random controller specfic testcase and specfic tags: 
# .\Run-Automation.ps1 -TestSuite suite_KoolProg -TestCase tst_common_offline_test_cases -Tags KP_Common_ID_4.8 -IsContrSpecific no -TestCasePath "C:\KoolProg\TestSourceCode"

# Command to run random controller specfic testcase: 
# .\Run-Automation.ps1 -TestSuite suite_KoolProg -TestCase tst_common_offline_test_cases -Tags all -IsContrSpecific no -TestCasePath "C:\KoolProg\TestSourceCode"

# Command to run controller specific all testcase: 
# .\Run-Automation.ps1 -TestSuite suite_KoolProg -TestCase all -IsContrSpecific yes -TestCasePath "C:\KoolProg\TestSourceCode"

# Command to run random controller all testcase: 
# .\Run-Automation.ps1 -TestSuite suite_KoolProg -TestCase all -IsContrSpecific no -TestCasePath "C:\KoolProg\TestSourceCode"

Param(
    [Parameter()]
    [string]$TestSuite = "suite_KoolProg",

    [Parameter()]
    [string]$TestCase = "tst_common_offline_test_cases",
    [Parameter()]
    [string]$Tags = "all",

    [Parameter()]
    [string]$IsContrSpecific = "no",

    [Parameter()]
    [string]$TestCasePath = "..\_KoolProg.Test.Automation" 
)

Function Main {

    $script:WORKINGDIR = $TestCasePath
	
	$script:LOGDIR = $WORKINGDIR + "\run\log"

    RunSquishServer

    SetEnvVariables

    ClearReportDir

	$TestCaseArr = $TestCase.split(',').Trim()

	Foreach ($TS in $TestCaseArr)
	{
		if($IsContrSpecific -ne '' -AND $IsContrSpecific-eq "both")
		{
			if ($TS-eq  "tst_plug_and_play" -Or $TS-eq "tst_common_online_test_cases" -Or $TS-eq "tst_common_offline_test_cases")
			{
				RunRandomContrTestSuite
			}
			else
			{
			
			RunContrTestSuite
			}
		}
		elseif ($IsContrSpecific -ne '' -AND $IsContrSpecific-eq "yes")
		{
			
			RunContrTestSuite
		}
		else 
		{
			RunRandomContrTestSuite
		}
	}
	
    StopSquishServer
	}

Function SetLogDirectory
{
	if($TS -ne 'all')
    {
		$script:LOGDIR = $WORKINGDIR + "\run\log\" + $TS
	}
}

Function RunSquishServer
{
    $ProcessActive = Get-Process squishserver -ErrorAction SilentlyContinue
    if($ProcessActive -eq $null)
    {
        Write-host "`n## Squish server is not running"

        Start-Process squishserver.exe -Verb runAs
        cmd /c "start squishserver.exe"

        Write-host "Squish server started successfully..."
    }
    else
    {
        Write-host "Squish server is running..."
    }
}

Function StopSquishServer
{
    $ProcessActive = Get-Process squishserver -ErrorAction SilentlyContinue
    if($ProcessActive -ne $null)
    {
        Write-host "`n## Stopping Squish server..."

        cmd /c "taskkill /f /im _squishserver.exe"
        
        Write-host "---------Server Stopped----------"
    } 
    else 
    {
        Write-host "---------Server Stopped----------"
    }
}

# Set variables
Function SetEnvVariables{
    
    Write-Host "`n## Set the variables"
    
	$COMMONDIR = $WORKINGDIR + "\SourceCode\lib\common"
	$INPUTDIR = $WORKINGDIR + "\SourceCode\lib\InputSheetParser"
	$KPLIBDIR = $WORKINGDIR + "\SourceCode\lib\KoolProgLib"
	$WINAPPLIBDIR = $WORKINGDIR + "\SourceCode\lib\winappLib"
	$REPORTDIR = $WORKINGDIR + "\SourceCode\lib\Report"
    $KEYWORDSDIR = $WORKINGDIR + "\SourceCode\lib\test_keywords"
    $NAVIGATIONDIR = $WORKINGDIR + "\SourceCode\lib\navigation"
    $SERIALAPPDIR = $WORKINGDIR + "\SourceCode\lib\SerialApp"
    $SERIALAPIDIR = $WORKINGDIR + "\SourceCode\lib\SerialLib"
	$FACTORYMETHODDIR = $WORKINGDIR + "\SourceCode\lib\FactoryMethod_Classes"
	$EETDIR = $WORKINGDIR + "\SourceCode\lib\EET"
	$EKE1xDIR = $WORKINGDIR + "\SourceCode\lib\EKE1x"
	$ERC11xDIR = $WORKINGDIR + "\SourceCode\lib\ERC11x"
	$ERC21xDIR = $WORKINGDIR + "\SourceCode\lib\ERC21x"
	$ETC1HxDIR = $WORKINGDIR + "\SourceCode\lib\ETC1Hx"
	$AKCC55DIR = $WORKINGDIR + "\SourceCode\lib\AKCC55"
	$ConstantsDIR = $WORKINGDIR + "\SourceCode\lib\Constants"
	$CONTROLLER_FAMILY_LIBRARIES_INTERFACESDIR = $WORKINGDIR + "\SourceCode\lib\Controller_Family_Libraries_Interfaces"
	
	$PYTHONPATH = $COMMONDIR + ";" + $INPUTDIR + ";" + $KPLIBDIR + ";" + $WINAPPLIBDIR + ";" + $REPORTDIR + ";" + $KEYWORDSDIR + ";" + 
				  $NAVIGATIONDIR+ ";" + $SERIALAPPDIR+ ";" + $SERIALAPIDIR+ ";" + $FACTORYMETHODDIR + ";" +$EETDIR + ";" +$EKE1xDIR + ";" +$ERC11xDIR +";" + 
				  $ERC21xDIR + ";" +$ETC1HxDIR +";" +$AKCC55DIR +";" +$CONTROLLER_FAMILY_LIBRARIES_INTERFACESDIR +";" + $ConstantsDIR    
    $env:PYTHONPATH = $PYTHONPATH
	
    Write-Host "TestSuite = $TestSuite"
	Write-Host "TestCase = $TestCase"
	Write-Host "Tags = $Tags"
	Write-Host "IsContrSpecific = $IsContrSpecific"
	Write-Host "TestCasePath = $TestCasePath"
    Write-Host "PythonPath = $PYTHONPATH"
	
	Write-Host "---Completed!---"
}

# Remove old reports
Function ClearReportDir
{
	Write-Host "`n## Clean up the report folder"
    if(Test-Path -path $LOGDIR)
    {
        cmd /c "rmdir /s /q $LOGDIR"
        Write-Host "Deleted the old report files in $LOGDIR"
    }
	Write-Host "---Completed!---"
}

# Execute the controller specific test suite
Function RunContrTestSuite
{
    try
    {

        $SQUISHPARAMETERS = ' --debugLog alpw';
        if($TestSuite -ne ''){
            $SQUISHPARAMETERS = $SQUISHPARAMETERS + " --testsuite $WORKINGDIR\suites\$TestSuite"
        }
        if($TestCase -ne '' -AND $TestCase -ne 'all'){
            $SQUISHPARAMETERS = $SQUISHPARAMETERS + " --testcase $TS"
        }
        if($Tags -ne '' -AND $Tags -ne 'all'){
            $SQUISHPARAMETERS = $SQUISHPARAMETERS + " --tags $Tags"
        }

        $SQUISHPARAMETERS = $SQUISHPARAMETERS + ' --reportgen "junit,'+$LOGDIR+'\junit.xml"' + ' --reportgen "html,'+$LOGDIR+'\html"'
		Write-Host "Squish Parameters: $SQUISHPARAMETERS" 
		$env:test_case="$TS"
		Write-Host test_case
	    Start-Process "..\DevopsAutomation\run\run_test.bat" $TS,$Tags
        Write-Host "---Completed!---"
    }
    catch {
        Write-Host "`nException occured!"
    }
}

# Execute the test suite
Function RunRandomContrTestSuite
{
    try 
    {
        $SQUISHPARAMETERS = ' --debugLog alpw';
        if($TestSuite -ne ''){
            $SQUISHPARAMETERS = $SQUISHPARAMETERS + " --testsuite $WORKINGDIR\suites\$TestSuite"
        }
        if($TestCase -ne '' -AND $TestCase -ne 'all'){
            $SQUISHPARAMETERS = $SQUISHPARAMETERS + " --testcase $TS"
        }
        if($Tags -ne '' -AND $Tags -ne 'all'){
            $SQUISHPARAMETERS = $SQUISHPARAMETERS + " --tags $Tags"
        }

        $SQUISHPARAMETERS = $SQUISHPARAMETERS + ' --reportgen "junit,'+$LOGDIR+'\junit.xml"' + ' --reportgen "html,'+$LOGDIR+'\html"'
        Write-Host "Squish Parameters: $SQUISHPARAMETERS" 
	    
        cmd /c "squishrunner $SQUISHPARAMETERS"
	    
        Write-Host "---Completed!---"
    }
    catch {
        Write-Host "`nException occured!"
    }
}

Main


