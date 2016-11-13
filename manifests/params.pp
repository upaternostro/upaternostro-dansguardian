class dansguardian::params {
  $naughtyness_limit = 50

  $banned_extensions = [
    # File extensions with executable code

    # The following file extensions can contain executable code.
    # This means they can potentially carry a virus to infect your computer.

    '.ade',  # Microsoft Access project extension
    '.adp',  # Microsoft Access project
    '.asx',  # Windows Media Audio / Video
    '.bas',  # Microsoft Visual Basic class module
    '.bat',  # Batch file
    '.cab',  # Windows setup file
    '.chm',  # Compiled HTML Help file
    '.cmd',  # Microsoft Windows NT Command script
    '.com',  # Microsoft MS-DOS program
    '.cpl',  # Control Panel extension
    '.crt',  # Security certificate 
    '.dll',  # Windows system file
    '.exe',  # Program
    '.hlp',  # Help file
    '.ini',  # Windows system file
    '.hta',  # HTML program
    '.inf',  # Setup Information
    '.ins',  # Internet Naming Service
    '.isp',  # Internet Communication settings
    # '.js',   # JScript file - often needed in web pages
    # '.jse',  # Jscript Encoded Script file - often needed in web pages
    '.lnk',  # Windows Shortcut
    '.mda',  # Microsoft Access add-in program 
    '.mdb',  # Microsoft Access program
    '.mde',  # Microsoft Access MDE database
    '.mdt',  # Microsoft Access workgroup information 
    '.mdw',  # Microsoft Access workgroup information 
    '.mdz',  # Microsoft Access wizard program 
    '.msc',  # Microsoft Common Console document
    '.msi',  # Microsoft Windows Installer package
    '.msp',  # Microsoft Windows Installer patch
    '.mst',  # Microsoft Visual Test source files
    '.pcd',  # Photo CD image, Microsoft Visual compiled script
    '.pif',  # Shortcut to MS-DOS program
    '.prf',  # Microsoft Outlook profile settings
    '.reg',  # Windows registry entries
    '.scf',  # Windows Explorer command
    '.scr',  # Screen saver
    '.sct',  # Windows Script Component
    '.sh',   # Shell script
    '.shs',  # Shell Scrap object
    '.shb',  # Shell Scrap object
    '.sys',  # Windows system file
    '.url',  # Internet shortcut
    '.vb',   # VBScript file
    '.vbe',  # VBScript Encoded script file
    '.vbs',  # VBScript file
    '.vxd',  # Windows system file
    '.wsc',  # Windows Script Component
    '.wsf',  # Windows Script file
    '.wsh',  # Windows Script Host Settings file
    '.otf',  # Font file - can be used to instant reboot 2k and xp
    '.ops',  # Office XP settings 

    # Files which one normally things as non-executable but
    # can contain harmful macros and viruses

    '.doc',  # Word document
    '.xls',  # Excel document
    '.pps',

    # Other files which may contain files with executable code

    '.gz',   # Gziped file
    '.tar',  # Tape ARchive file
    '.zip',  # Windows compressed file
    '.tgz',  # Unix compressed file
    '.bz2',  # Unix compressed file
    '.cdr',  # Mac disk image
    '.dmg',  # Mac disk image
    '.smi',  # Mac self mounting disk image
    '.sit',  # Mac compressed file
    '.sea',  # Mac compressed file, self extracting
    '.bin',  # Mac binary compressed file
    '.hqx',  # Mac binhex encoded file
    '.rar',  # Similar to zip

    # Time/bandwidth wasting files

    '.mp3',  # Music file
    '.mpeg', # Movie file
    '.mpg',  # Movie file
    '.avi',  # Movie file
    '.asf',  # this can also exploit a security hole allowing virus infection
    '.iso',  # CD ISO image
    '.ogg',  # Music file
    '.wmf',  # Movie file
    '.bin', # CD ISO image
    '.cue', # CD ISO image

    # Banned Media extension list (Audio , Video , Streaming)
    # Arrange Alphabetically
    # Some have no Description
    #'.3g2',    #
    #'.3gp',      # Nokia Movie File
    #'.3gp2',
    #'.3gpp',
    #'.3gpp2',
    #'.aac',    # AAC Audio
    #'.acp',    # AAC for SD Media
    #'.adts',
    #'.aif',
    #'.aifc',
    #'.aiff',    # AIFF Audio
    #'.amc',    # AMC Media
    #'.amr',    # narrow-Band Content
    #'.asf',      # Media / this can also exploit a security hole allowing virus infection
    #'.asx',      # Windows Media Audio / Video
    #'.au',    # uLaw/AU Audio
    #'.avi',      # Movie file
    #'.awb',    # AMR Wide-Band Content
    #'.bwf',
    #'.caf',    # CAF Audio
    #'.cda',    # Audio CD File
    #'.cdda',    # Audio CD File
    #'.cel',
    #'.cue',     # CD ISO image
    #'.dif',
    #'.divx',    # Compress Movie
    #'.dv',    # Video Format used in Portable Camera
    #'.flc',      # Autodesk Animator
    #'.fli',
    #'.flv',      # Internet Movies
    #'.gsm',
    #'.ivf',
    #'.kar',    # Karaoke Media Files
    #'.m15',
    #'.m1a',
    #'.m1s',
    #'.m1v',
    #'.m2v',
    #'.m3u',    # MP3 Playlist
    #'.m4a',    # AAC Audio
    #'.m4b',
    #'.m4e',
    #'.m4p',    # AAC Audio (Protected)
    #'.m4v',    # Video (Protected)
    #'.m75',
    #'.mid',    # Midi Audio Files
    #'.midi',    # Midi Audio Files
    #'.mjpg',
    #'.mov',    # Movie Files
    #'.mp1',
    #'.mp2',
    #'.mp3',      # Music file
    #'.mp4',    # Mpeg-4 Media
    #'.mpa',
    #'.mpe',
    #'.mpeg',     # Movie file
    #'.mpg',      # Movie file
    #'.mpga',
    #'.mpm',
    #'.mps',
    #'.mpv',
    #'.mpv2',
    #'.mqv',      # Quicktime Movies
    #'.mv',
    #'.ogg',      # Music file
    #'.ogm',      # Ogg Based Movie Files
    #'.pls',      # Shoutcast type of radio
    #'.qcp',    # Qualcomm Purevoice Audio
    #'.qt',    # Quicktime File
    #'.qtc',
    #'.qtl',      # Quicktime Movies
    #'.ra',    # Real Audio
    #'.ram',    # Real Audio Media
    #'.rm',       # Real Media Files
    #'.rmi',
    #'.rmm',
    #'.rmp',
    #'.rmvb',    # Real Media Video
    #'.rnx',
    #'.rp',    # Real Player Files
    #'.rt',
    #'.rts',
    #'.rtsp',
    #'.rv',
    #'.sd2',    # Sound Designer II
    #'.sdp',      # Stream Descriptor
    #'.sdv',    # SD Video
    #'.sf',
    #'.smf',
    #'.smi',    #
    #'.smil',     # SMIL Multimedia Presentation (Video and Audio Presentation
    #'.snd',
    #'.ssm',      # Streaming Media Metafile
    #'.swa',    # MP3 Audio
    #'.swf',      # Shockwave Streaming files
    #'.ulw',
    #'.vfw',       # Video for Windows
    #'.wav',
    #'.wax',
    #'.wm',
    #'.wma',
    #'.wmf',      # Movie file
    #'.wmp',
    #'.wmv',     # Windows Media Video
    #'.wmx',
    #'.wvx',
    #'.xpl',
  ]
  
  $banned_mimetypes = [
    'audio/mpeg',
    'audio/x-mpeg',
    'audio/x-pn-realaudio',
    'audio/x-wav',
    'video/mpeg',
    'video/x-mpeg2',
    'video/acorn-replay',
    'video/quicktime',
    'video/x-msvideo',
    'video/msvideo',
    'application/gzip',
    'application/x-gzip',
    'application/zip',
    'application/compress',
    'application/x-compress',
    'application/java-vm',
  ]

  $bannedsite_includes = []
  $bannedsite_time = ""
  $bannedsite_category = ""
  $bannedsite_other = []
  $bannedsite_blanketblock = false
  $bannedsite_blanketSSLblock = false
  $bannedsite_blanketIPblock = false
  $bannedsite_blanketIPSSLblock = false
  $bannedsite_lists = []
    
  $phraselist = [
    #To enable several non-PICS self-labelling and self-rating systems.  
    #Enabled as a bannedsitelist by default.  Disable there before enabling as a phraselist.
    ##'safelabel/weighted',
    
    #Good Phrases (to allow medical, education, news and other good sites)
    'goodphrases/weighted_general',
    'goodphrases/weighted_news',
    'goodphrases/weighted_general_danish',
    'goodphrases/weighted_general_dutch',
    'goodphrases/weighted_general_malay',
    'goodphrases/weighted_general_polish',
    'goodphrases/weighted_general_portuguese',
    'goodphrases/weighted_general_swedish',
    
    #Pornography
    'pornography/weighted',
    'pornography/weighted_chinese', #ALPHA#
    'pornography/weighted_danish', #ALPHA#
    'pornography/weighted_dutch', #BETA#
    'pornography/weighted_french',
    'pornography/weighted_german',
    'pornography/weighted_italian',
    'pornography/weighted_japanese', #ALPHA#
    'pornography/weighted_malay', #BETA#
    'pornography/weighted_norwegian', #BETA#
    'pornography/weighted_polish',
    'pornography/weighted_portuguese',
    'pornography/weighted_russian', #BETA#
    'pornography/weighted_spanish', #ALPHA#
    'pornography/weighted_swedish',
    'nudism/weighted',
    
    #Bad Words - swearing
    'badwords/weighted_dutch', 
    'badwords/weighted_french',
    'badwords/weighted_german', #ALPHA#
    'badwords/weighted_portuguese', #ALPHA#
    'badwords/weighted_spanish', #ALPHA#
    
    #Drugs
    #'drugadvocacy/weighted',
    #'illegaldrugs/weighted',
    #'illegaldrugs/weighted_portuguese',
    #'legaldrugs/weighted',
    
    #Violence and intolerance
    #'intolerance/weighted',
    #'intolerance/weighted_portuguese',
    #'gore/weighted',
    #'gore/weighted_portuguese',
    #'violence/weighted',
    #'violence/weighted_portuguese',
    #'weapons/weighted',
    #'weapons/weighted_portuguese',
    
    #Chat
    #'chat/weighted',
    #'chat/weighted_italian',
    
    #Webmail
    #'webmail/weighted',
    #Note that if you enable the webmail weighted list you should also disable 
    #the "exception_email" list in the exceptionphraselist file.
    
    #Forums
    #'forums/weighted', #BETA#
    
    #Gambling
    #'gambling/weighted',
    #'gambling/weighted_portuguese',
    
    #Productivity
    #'games/weighted', #ALPHA#
    #'news/weighted', #ALPHA#
    #'personals/weighted',
    #'personals/weighted_portuguese',
    #'sport/weighted', #ALPHA#
    #'travel/weighted',
    #'music/weighted',
    
    #System Management and Security
    #'domainsforsale/weighted',
    #'idtheft/weighted',
    'malware/weighted', #BETA#
    'proxies/weighted',
    #'translation/weighted',
    #'upstreamfilter/weighted',
    'warezhacking/weighted',
    #'peer2peer/weighted',
    
    #Miscellaneous	
    #'conspiracy/weighted',
    #'secretsocieties/weighted',
  ]

  $urlregexplist = [
    # Google, Go etc. - remove 'safe=...'
    #'"(^http://[0-9a-z]+\.google\.[a-z]+[-/%.0-9a-z]*/images\?)(.*)(&?)(safe=[^&]*)"->"\1\2\3"',
    # ... and add 'safe=vss'
    #'"(^http://[0-9a-z]+\.google\.[a-z]+[-/%.0-9a-z]*/images\?)"->"\1safe=vss&"',

    # Singingfish - remove 'ff=...' and add 'ff=1'
    #'"(^http://search\.singingfish\.com/[-/%.0-9a-z]*\?)(.*)(&?)(ff=[^&]*)"->"\1\2\3"',

    #'"(^http://search\.singingfish\.com/[-/%.0-9a-z]*\?)"->"\1ff=1&"',

    # Ilse - remove 'family=...' and add 'family=yes'
    #'"(^http://www\.ilse\.nl/searchresults\.dbl\?)(.*)(&?)(family=[^&]*)"->"\1\2\3"',
    #'"(^http://www\.ilse\.nl/searchresults\.dbl\?)"->"\1family=yes&"',

    # KEL - remove 'Realm%3AErotiek=...'
    #'"(^http://www\.kel\.nl/search/search.cgi\?)(.*)(&?)(Realm%3AErotiek=[^&]*)"->"\1\2\3"',

    # Lycos.com - family filter only available in advanced mode.
    # Remove 'adv=...' and 'adf=...' and add 'adv=1&adf=on'
    #'"(^http://[^/]*search[^/]*\.lycos\.com/[-/%.0-9a-z]*\?)(.*)(&?)(adv=[^&]*)"->"\1\2\3"',
    #'"(^http://[^/]*search[^/]*\.lycos\.com/[-/%.0-9a-z]*\?)(.*)(&?)(xadult\.)(.*)(xadult\.)"->"\1\2\3\5"',
    #'"(^http://[^/]*search[^/]*\.lycos\.com/[-/%.0-9a-z]*\?)"->"\1adv=1&adf=on&"',

    # Lycos.nl - remove 'family=...' and add 'family=on'
    #'"(^http://zoek\.lycos\.nl/[-/%.0-9a-z]*\?)(.*)(&?)(family=[^&]*)"->"\1\2\3"',
    #'"(^http://zoek\.lycos\.nl/[-/%.0-9a-z]*\?)"->"\1family=on&"',

    # Alltheweb - change the customize url so that 'offensive' cannot be turned off
    #'"(^http://www\.alltheweb\.com/customize\?)(.*)(&?)(copt_offensive=[^&]*)"->"\1\2\3copt_offensive=on"',

    # Yahoo - remove 'vm=...' and add 'vm=r'
    #'"(^http://[.0-9a-z]+\.yahoo\.[a-z]+[-/%.0-9a-z]*/search)(.*)(&?)(vm=[^&]*)"->"\1\2\3"',
    #'"(^http://[.0-9a-z]+\.yahoo\.[a-z]+[-/%.0-9a-z]*/search+.*\?)"->"\1vm=r&"',

    # Hotbot - remove 'adf=...' and add 'adf=on'
    #'"(^http://[0-9a-z]+\.hotbot\.[a-z]+/default\.asp\?)(.*)(&?)(adf=[^&]*)"->"\1\2\3"',
    #'"(^http://[0-9a-z]+\.hotbot\.[a-z]+/default\.asp\?)"->"\1adf=on&"',

    # Wisenut - change the customize url so that 'wisepatrol' cannot be turned off
    #'"(^http://www\.wisenut\.com/preferences/savePreferences\.[^?]*\?)(.*)(&?)(wisepatrol=[^&]*)"->"\1\2\3wisepatrol=1"',

    # Metacrawler - remove 'familyfilter=...' and add 'familyfilter=1'
    #'"(^http://www\.metacrawler\.com/info\.metac/search/[-/%.0-9a-z]*\?)(.*)(&?)(familyfilter=[^&]*)"->"\1\2\3"',
    #'"(^http://www\.metacrawler\.com/info\.metac/search/[-/%.0-9a-z]*\?)"->"\1familyfilter=1&"',
  ]

  $headerregexplist = [
    # Windows Live Search cookie replacement - force filtering on
    #'"cookie:(.*)&ADLT=(OFF|DEMOTE)"->"Cookie:$1&ADLT=STRICT"',
  ]

  $exceptionregexpurllist = [
    # Example
    #'news',

    # Prevent content scanning of CSS and/or JavaScript files
    #'^[^?]*\.css($|\?)',
    #'^[^?]*\.jsp?($|\?)',
  ]

  $contentregexplist = [
    #remove popups by AFN 2004/2/28
    #'"<html>"->"<script language=\'javascript\'>fwo=window.open;function NO(url,nam,atr){return(this.window);}window.open=NO;</script><html>"',
    #'"=[ ]*?window\.open[ ]*?\("->"=fwo("',
    #'"<html>"->"<script language=\'javascript\'>function NO(url,nam,atr){return(this.window);}window.open=NO;</script><html>"',

    # Fix Firefox <= 1.0.7 DoS
    # http://www.whitedust.net/speaks/1432/
    #'"((<source)|(</source))text>"->"$1dosremovedtext"',

    # Disable ActiveX objects.
    #'"<object [^>]*application\/x-oleobject[^>]*>.*?<\/object>"->"<!-- Guardian Removed ActiveX Object -->"',
    #'"<embed [^>]*(application/x-oleobject).*?>(.*?</embed>)?"->"<!-- Guardian Removed ActiveX Embed -->"',

    # Warn about address bar spoofing.
    #'"(<a[^>]*href[^>]*)(\x01|\x02|\x03|%0[012])"->"$1MALICIOUS-LINK"',

    # Disable all popups in JavaScript and HTML.  It may cause unavoidable
    # Javascript warnings or errors.  Do not enable at the same time as other
    # popup removing lines.
    #'"((\W\s*)(window|this|parent)\.)open\s*\\?\("->"$1concat("',
    #'"\starget\s*=\s*([\'"]?)_?(blank|new)\1?"->" notarget"',

    # Removes the APPLET tag which is generally used Java applets.
    #'"<applet[^>]*>.*?<\/applet>"->""',

    # Disable the BLINK and MARQUEE tags.
    #'"</?(blink|marquee)[^>]*>"->""',

    # Warn about potential cross-site-scripting vulnerability described here:
    # http://online.securityfocus.com/archive/1/298748/2002-11-02/2002-11-08/2
    #'"f\("javascript:location.replace\(\'mk:@MSITStore:C:\'\)"\);"->"alert\("This page looks like it tries to use a vulnerability described here:\n http://online.securityfocus.com/archive/1/298748/2002-11-02/2002-11-08/2"\);"',

    # Removes the SCRIPT tag with JavaScript.  This will likely break sites that are
    # badly written and thus rely on JavaScript.  This should not be used at the same
    # time as the 'script' category.
    #'"<script [^>]*javascript[^>]*>.*?<\/script>"->""',

    # Removes href=javascript: onmouseover=javascript: and other javascript actions.
    # This is a good category to tick if using 'script' or 'javascript' categories.
    # Beware that there are likely going to be a large number of matches and will
    # require more CPU.  Also this will break badly written sites that require
    # JavaScript for navigation.
    #'"(onclick|ondblclick|onmousedown|onmouseup|onmouseover|onmousemove|onmouseout|onkeypress|onkeydown|onkeyup|href)(=("|\')?)javascript:"->"guardianremoved$2none:"',

    # Remove cookies set by JavaScript and HTML.
    #'"(\w+\.)+cookie(?=[ \t\r\n]*=)(?!=\'aab)"->"GuardianRemovedCookie"',
    #'"<meta\s+http-equiv=[\'"]?set-cookie.*>"->"<!-- GuardianRemovedCookie -->"',

    # Attempt to detect and stop Nimda infected servers's web pages. This is rare
    # and generally should be left unused.
    #'"<script language="JavaScript">(window\.open|1;\'\'\.concat)\("readme\.eml", null, "resizable=no,top=6000,left=6000"\)</script>"->"<br><font size="7"> WARNING: This Server is infected with <a href="http://www.cert.org/advisories/CA-2001-26.html">Nimda</a>!</font>"',

    # Disable onunload (page close) popups.
    #'"(<body\s+[^>]*)onunload"->"$1never"',
    #'"(<script.*)window\.onunload(?=.*</script>)"->"$1never"',

    # Removes the SCRIPT tag which could include JavaScript, perlscript and vbscript.
    # This will likely break sites that are badly written and thus rely on client
    # side scripts.  This should not be used at the same time as the 'javascript' line.
    #'"<script[^>]*>.*?<\/script>"->""',

    # Disable Sockwave Flash objects.
    #'"<object [^>]*macromedia[^>]*>.*?<\/object>"->"<!-- Guardian Removed Shockwave Object -->"',
    #'"<embed [^>]*(application/x-shockwave-flash\|\.swf).*?>(.*?</embed>)?"->"<!-- Guardian Removed Shockwave Flash Embed -->"',

    # Disable unsolicited popups.
    #'"([^\'"]\s*<head.*>)(?=\s*[^\'"])"->"$1<script>function SWGuardianWindowOpen(){return(null);}</script>"',
    #'"([^\w\s.]\s*)((window|this|parent)\.)?open\s*\("->"$1SWGuardianWindowOpen("',
    #'"([^\'"]\s*</html>)(?!\s*(\\n|\'|"))"->"$1<script>function PrivoxyWindowOpen(a, b, c){return(window.open(a, b, c));}</script>"',

    # Remove 1x1 GIFs used for user tracking.
    #'"<img\s+[^>]*(?:(width)|(height))\s*=\s*[\'"]?[01](?=\D)[^>]*(?:(width)|(height))\s*=\s*[\'"]?[01](?=\D)[^>]*?>"->""',

    # Prevent windows from resizing and moving themselves.
    #'"(?:window|this|self|top)\.(?:move|resize)(?:to|by)\("->"\'\'.concat("',
  ]

  $language = 'ukenglish'

  case $::osfamily {
    'Debian': {
       $dgcfgdir = '/etc/dansguardian'
       $dguser   = 'root'
       $dggroup  = 'root'
       $dgmode   = '0644'
    }
    default: {
       warning("OS ${::osfamily} not supported.")
    }
  }

  $service_enable      = false
  $service_ensure      = 'running'
  $service_manage      = false
  $package_ensure      = 'latest'
  $package_name        = 'dansguardian'
}
