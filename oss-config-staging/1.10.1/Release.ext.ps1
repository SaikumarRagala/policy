Set-StrictMode -Version Latest
class ReleaseExt: Release
{

    ReleaseExt([string] $organizationName, [SVTResource] $svtResource): Base($organizationName,$svtResource)
    {

    }


    hidden [ControlResult] CheckInheritedPermissions([ControlResult] $controlResult)
    {
        $controlResult.AddMessage([VerificationResult]::Verify,"Inherited permissions are enabled on release pipeline.");
        return $controlResult
    }
 
}
