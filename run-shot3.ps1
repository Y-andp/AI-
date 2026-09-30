$chrome = "C:\Program Files\Google\Chrome\Application\chrome.exe"
$dir = (Get-Location).Path
$profile = Join-Path $dir ".shot-check3"
$out = Join-Path $dir "applications-check3.png"
$args = @(
  "--headless=new",
  "--disable-gpu",
  "--hide-scrollbars",
  "--no-first-run",
  "--disable-extensions",
  "--window-size=1600,1400",
  "--force-device-scale-factor=1",
  "--user-data-dir=$profile",
  "--virtual-time-budget=12000",
  "--screenshot=$out",
  "http://localhost:5199/applications"
)
$p = Start-Process -FilePath $chrome -ArgumentList $args -RedirectStandardError (Join-Path $dir "shot3.err") -Wait -PassThru -NoNewWindow
Write-Output "exit: $($p.ExitCode)"
if (Test-Path $out) { Write-Output ("shot bytes: " + (Get-Item $out).Length) } else { Write-Output "no shot file" }
