class { 'apache': }

$basic_html = "<!DOCTYPE html PUBLIC \"-//IETF//DTD HTML 2.0//EN\">
<HTML>
   <HEAD>
      <TITLE>
         ${settings::environment} Environment
      </TITLE>
   </HEAD>
<BODY>
   <H1>${::environment} Environment</H1>
   <P>This is your ${settings::environment} environment.</P> 
</BODY>
</HTML>"

file { '/var/www/html/index.html': 
  content => $basic_html,
  require => Class['apache']
}