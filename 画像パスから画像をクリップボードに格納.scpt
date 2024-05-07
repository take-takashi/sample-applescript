use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions
use framework "Foundation"
use framework "AppKit"

-- CGImageファイルのパスを指定
set theImagePath to "/your/image.jpg"

-- NSImageを作成
set theImage to current application's NSImage's alloc()'s initWithContentsOfFile:theImagePath

-- クリップボードにNSImageを設定
set thePasteboard to current application's NSPasteboard's generalPasteboard()
thePasteboard's clearContents()
thePasteboard's writeObjects:{theImage}
