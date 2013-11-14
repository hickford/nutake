abuse_url = $("[href$='ReportAbuse']").attr("href")
# eg. https://nuget.org/packages/Microsoft.Bcl.Async/1.0.14-rc/ReportAbuse
download_url = abuse_url.replace("/packages/","/api/v2/package/").replace("/ReportAbuse","")
# eg. https://nuget.org/api/v2/package/Microsoft.Bcl.Async/1.0.14-rc

[name, version] = abuse_url.split("/").slice(-3,-1)
download_name = "#{name}-#{version}.zip"

badge = $(".nuget-badge")
hyperlink = $("<a>", {href: download_url, download: download_name}).append("<b>Download</b> #{download_name}")
addendum = $('<p>').append("Or ").append(hyperlink)
addendum.insertAfter(badge)

hyperlink2 = $("<a>", {href: download_url}).append("Download .nupkg")
$("[href$='/Download']").replaceWith(hyperlink2)
