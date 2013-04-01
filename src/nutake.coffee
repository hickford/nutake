abuse_url = $("[href$='ReportAbuse']").attr("href")
# eg. https://nuget.org/packages/Microsoft.Bcl.Async/1.0.14-rc/ReportAbuse
download_url = abuse_url.replace("/packages/","/api/v2/package/").replace("/ReportAbuse","")
# eg. https://nuget.org/api/v2/package/Microsoft.Bcl.Async/1.0.14-rc

badge = $(".nuget-badge")
hyperlink = $("<a>", {href: download_url}).append("<b>Download</b> .nupkg file.")
addendum = $('<p>').append("Or ").append(hyperlink).append(" To open this file, rename to have extension <tt>.zip</tt>")
addendum.insertAfter(badge)

hyperlink2 = $("<a>", {href: download_url}).append("Download .nupkg file")
$("[href$='/Download']").replaceWith(hyperlink2)
