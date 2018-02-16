
Write-S3Object -BucketName my-bucket -File file.txt -Key subfolder/remote-file.txt -CannedACLName Private -AccessKey accesskey -SecretKey secretKey

$bucket = Get-S3Bucket -BucketName pizza-luvrs-aj

$results = Get-ChildItem .\path\to\files -Recurse -Include "*.pdf" 
foreach ($path in $results) {
	Write-Host $path
	$filename = [System.IO.Path]::GetFileName($path)
	Write-S3Object -BucketName my-bucket -File $path -Key subfolder/$filename -CannedACLName Private -AccessKey accessKey -SecretKey secretKey
}