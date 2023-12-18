$hostname=hostname
if ($hostname.StartsWith("HDI-LT-02")){
	$tag=$hostname.TrimStart("HDI-LT-")
		if ($tag.StartsWith("02-")){
			$tag=$tag.TrimStart("02-")
		}
		else {
		continue
		}
	}
else {
	$tag="NONE"
}

md -force C:\temp
copy AssetTag.exe C:\temp\assettag.exe -force

C:\temp\AssetTag.exe -s $tag