#bismillahir rahmanir rahim
#!/usr/bin/perl
#coded by Rooted Script
##don't Change my Rights
#changing description wont make you coder
#respect coders




use HTTP::Response;
use URI::URL;
use LWP::UserAgent;
use Term::ANSIColor;
use HTTP::Request::Common qw(GET);
$ag = LWP::UserAgent->new();
use WWW::Mechanize;
use LWP::Simple;
#use Win32::Console::ANSI;


use Getopt::Long;
use HTTP::Request::Common;


use Getopt::Long;
use HTTP::Request;

use Digest::MD5 qw(md5 md5_hex);
use MIME::Base64;
use IO::Select;
use HTTP::Cookies;


use HTTP::Request::Common qw(POST);

use DBI;
use IO::Socket;
use IO::Socket::INET;

use threads;

use Term::ReadKey;

$ua = LWP::UserAgent->new(keep_alive => 1);
$ag->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
$ag->timeout(10);




my $datetime    = localtime;


if ($^O =~ /MSWin32/) {system("cls"); }else { system("clear"); }
$rez="Result";
    if (-e $rez){
  }else{
        mkdir $rez or die "Error creating directory: $rez";
    }

print color('bold green');
print q(


    ____              __           __   _____           _       __ 
   / __ \____  ____  / /____  ____/ /  / ___/__________(_)___  / /_
  / /_/ / __ \/ __ \/ __/ _ \/ __  /   \__ \/ ___/ ___/ / __ \/ __/
 / _, _/ /_/ / /_/ / /_/  __/ /_/ /   ___/ / /__/ /  / / /_/ / /_  
/_/ |_|\____/\____/\__/\___/\__,_/   /____/\___/_/  /_/ .___/\__/  
                                                     /_/           

   rooted-script.blogspot.com       gitHub.com/rooted-script 
   www.facebook.com/rooted.script 
     
              
);
         
 
  




print colored ("  [ Start At $datetime ]",'white on_blue'),"\n\n";

print color('bold red'),"[";
print color('bold green'),"1";
print color('bold red'),"] ";
print color("bold white"),"Google Dorker -->>> \n";
print color('bold red'),"[";
print color('bold green'),"2";
print color('bold red'),"] ";
print color("bold white"),"Bing Dorker -->>> \n";
print color('bold red'),"[";
print color('bold green'),"3";
print color('bold red'),"] ";
print color("bold white"),"Reverse Lookup with ip or site list -->>\n";

print color('bold red'),"[";
print color('bold green'),"4";
print color('bold red'),"] ";
print color("bold white"),"Mass Site Graber-->>>Range Ip by Ip or Website list\n";
print color('bold red'),"[";
print color('bold green'),"5";
print color('bold red'),"] ";
print color("bold white"),"CMS detector 2018 -->> \n";

print color('bold red'),"[";
print color('bold green'),"6";
print color('bold red'),"] ";
print color("bold white"),"Admin Finder -->> \n";
print color('bold red'),"[";
print color('bold green'),"7";
print color('bold red'),"] ";
print color("bold white"),"Shell Finder -->> \n"




;;

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color("bold white "),"I Will Fuck ~~-->>> ";
my $targett = <STDIN>;
chomp $targett;


################################google########################
       
       if ($targett eq '1')
{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color("bold white"),"[ lets go for dorking ]\n";
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color("bold white")," Bite This Dork-->>> ";
$dork=<STDIN>;
chomp($dork);
$dork=~s/ /+/g;
google();
}


sub google(){ 

for (my $i=1; $i<=2000; $i+=100) {
$url = "https://www.google.com/search?q=$dork&start=".$i ;

$resp = $ag->request(HTTP::Request->new(GET => $url));
$rrs = $resp->content;




 
while($rrs =~ m/http:\/\/(.*?)\//g){



$link = $1;
	if ( $link !~ /overture|msn|live|bing|yahoo|duckduckgo|google|w3|microsof/)
	{
				if ($link !~ /^http:/)
			 {
				$link = 'http://' . "$link" . '/';
			 }



if($link !~ /\"|\?|\=|index\.php/){
					if  (!  grep (/$link/,@result))
					{
print "$link\n";
open(save, '>>gsite.txt');
    print save "$link\n";
    close(save);
						push(@result,$link);
					}
} 
}

}



}
      }


########################reverse#######################
             if ($targett eq '3')

{
$reverse_options = "

\tChoose an option for Reverse IP Lookup...!!!
 \tRemember sites list or site will be without http:// or ~ /  ~
	\t[1]  From One Site
	\t[2]  From Site List
	\n";
print colored("$reverse_options", 'bold green');
print colored("\n\t\tI wanna choose >>>>  ",'bold blue');
my $reverse_option = <STDIN>;
chomp $reverse_option;

 my $rs = ("http://180.247.201.80:3128");
chomp $rs;
	
if ($reverse_option eq '1') {
	print colored("\n\t\tEnter the site >>>>  ",'bold blue');
	$single = <STDIN>;
	chomp $single;
	$single_look = "https://api.hackertarget.com/reverseiplookup/?q=$single";
	$ua = LWP::UserAgent->new(keep_alive => 1);
	$ua->proxy('https', ("$rs"));
	$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
	$ua->timeout (10);
	my $checar = $ua->get("$single_look")->content;
	if ($checar =~/No records found for/)
	 {
		print colored("\t[-] $ip have no reverse site found :(\n",'BOLD YELLOW');
	}
	elsif ($checar =~/error check your search parameter/) {
		print colored("\t[-] $ip is wrong IP or its down :|\n",'BOLD RED');
	}
	else {
		print colored("\n [+] $ip Grabbing done :)\n",'BOLD GREEN');
		open(save, '>>mass.txt');
		print save "$checar\n";
		close(save);
	}
}
elsif ($reverse_option eq '2') {
	print colored("\n\t\tEnter site list >>>>  ",'BOLD BLUE');
	$list=<STDIN>;
	chomp($list);
	open my($fh), '<:raw', $list or die "Can't open File...!!";
	while( sysread $fh, $buffer, 4096 ) {
	    $lines += ( $buffer =~ tr/\n// );
	}
	close $fh;
	print colored("\n\tGot $lines IP in the list dude...!!!\n",'BOLD YELLOW');
	print colored("\tGrabbing reverse from these one by one....Wait until finish...!!!\n",'BOLD YELLOW');
	print "\n\n";
	open(target,"<$list") or die "Can't open list";
	while (<target>) {
		chomp($_);
		$ip = $_;
		if ($ip =~ /https:\/\// && $ip =~ /http:\/\// ) {
			$ip = "$ip";
		}
		rev_mass();
	}
	sub rev_mass() {
		$mass_look = "https://api.hackertarget.com/reverseiplookup/?q=$ip";
		$ua = LWP::UserAgent->new(keep_alive => 1);
	    $ua->proxy('https', ("$rs")); 
		$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
		$ua->timeout (15);
		my $checar = $ua->get("$mass_look")->content;
		if ($checar =~/No records found for/) {
			print colored("\tNo reverse site found :(\n",'BOLD YELLOW');
		}
		elsif ($checar =~/error check your search parameter/) {
			print colored("\tWrong or its down :|\n",'BOLD RED');
		}
		else {
			print colored("\n [+] Grabbing done :)\n",'BOLD GREEN');
			open(save, '>>mass.txt');
			print save "http://$checar\n";
			close(save);
		}
	}
}
else {
	print colored("\n\n Wrong Option Boss....Next time choose a valid option...!!!",'BOLD RED');
}
      }
###############################bing######################################
if($targett eq '2')
{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color("bold white"),"[Lets go for bing Dorker :D ]\n";
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color("bold white")," Use this Dork-->>";
$dork=<STDIN>;
chomp($dork);
$dork=~s/ /+/g;
bing();
}
sub bing(){
for ($ii = 1; $ii <= 2000; $ii+=10){

$url = "http://www.bing.com/search?q=$dork&filt=all&first=$ii&FORM=PERE";
$resp = $ag->request(HTTP::Request->new(GET => $url));
$rrs = $resp->content;

while($rrs =~ m/<a href=\"?http:\/\/(.*?)\//g){



$link = $1;
        if ( $link !~ /overture|msn|live|bing|yahoo|duckduckgo|google|yahoo|microsof/)
        {
                                if ($link !~ /^http:/)
                         {
                                $link = 'http://' . "$link" . '/';
                         }



if($link !~ /\"|\?|\=|index\.php/){
                                        if  (!  grep (/$link/,@result))
                                        {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color("bold white"),"$link\n";
open(save, '>>bsite.txt');
    print save "$link\n";
    close(save);
                                                push(@result,$link);
                                        }
}
}
}
####

}
}
    if ($targett eq '5')
#############################cms###########################
 {
print "Speed (Best with 50) : \n";
my $thr = <STDIN>;
chomp $thr;

print " give List  :-->> \n";
my $file = <STDIN>;
chomp $file;

open(sites,"<".$file) or die $!;
while($link = <sites>)
{
chomp($link);
push(@threads, threads->create (\&bot, $link));
sleep(1) while(scalar threads->list(threads::running) >= $thr);
}
eval {
$_->join foreach @threads;
@threads = ();
};
close(sites);

sub bot(){

cmsdetc();
}

sub cmsdetc($link){
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
$ua->timeout (15);
$site = $link;
if($site !~ /https:\/\// && $site !~ /http:\/\// ) { $site = "http://$site/"; };
my $cms = $ua->get("$site")->content;
my $cmsd = $ua->get("$site/wp-includes/js/jquery/jquery.js")->content;
$wpsite = $site . '/wp-login.php';
my $wpcms = $ua->get("$wpsite")->content;
my $wpcmsx = $ua->get("$site/wp-login.php")->content;
$jsite2 = $site . '/language/en-GB/en-GB.xml';
my $jcms = $ua->get("$jsite2")->content;
my $cms1 = $ua->get("$site/forum/register.php")->content;
my $jx = $ua->get("$site/administrator/")->content;
my $jxx = $ua->get("$site/joomla/")->content;
$magsite = $site . '/admin';
my $magcms = $ua->get("$magsite")->content;
$dursite = $site . '/user/login';
my $durcms = $ua->get("$dursite")->content;
$lokomedia = "$site/smiley/1.gif";
my $lokomediacms = $ua->get("$lokomedia")->content_type;
$loko = "$site/rss.xml";
my $lokomediacmstow = $ua->get("$loko")->content;
if($cms =~/<script type=\"text\/javascript\" src=\"\/media\/system\/js\/mootools.js\"><\/script>| \/media\/system\/js\/|mootools-core.js|com_content|Joomla!/) {
print color('bold white'),"\n[$a] $site - ";
    print color("bold green"), "Joomla\n\n";
    print color('reset');
    open(save, '>>Result/joomla.txt');
    print save "$site\n";   
    close(save);
}
elsif($cms =~/vBulletin|register.php|vbulletin|<meta name="description" content="vBulletin Forums" \/>|<meta name="generator" content="vBulletin" \/>|vBulletin.version =|"baseurl_core":/) {
print color('bold white'),"\n[$a] $site - ";
    print color("bold green"), "Vbulletin\n\n";
    print color('reset');
    open(save, '>>Result/vbulletin.txt');
    print save "$site\n";   
    close(save);

}
elsif($cms1 =~/vBulletin|vb_meta_bburl|vb_login_md5password|"baseurl_core":/) {
print color('bold white'),"\n[$a] $site - ";
    print color("bold green"), "Vbulletin-forum\n\n";
    print color('reset');
    open(save, '>>Result/vbulletin.txt');
    print save "$site\n";   
    close(save);
$site = $site . '/forum';	

}
elsif($cms =~/wp-content/) {
    print color('bold white'),"\n[$a] $site - ";
    print color("bold green"), "WordPress\n\n"; 
    print color('reset'); 
    open(save, '>>Result/Wordpress.txt');
    print save "$site\n"; 
    close(save);
}
elsif($wpcms =~/WordPress/) {
    print color('bold white'),"\n[$a] $site - ";
    print color("bold green"), "WordPress\n\n"; 
    print color('reset'); 
    open(save, '>>Result/Wordpress.txt');
    print save "$site\n"; 
    close(save);
}
elsif($wpcmsx =~/WordPress/) {
    print color('bold white'),"\n[$a] $site - ";
    print color("bold green"), "WordPress\n\n"; 
    print color('reset'); 
    open(save, '>>Result/Wordpress.txt');
    print save "$site\n"; 
    close(save);
}
elsif($cmsd =~/password/) {
    print color('bold white'),"\n[$a] $site - ";
    print color("bold green"), "WordPress\n\n"; 
    print color('reset'); 
    open(save, '>>Result/Wordpress.txt');
    print save "$site\n"; 
    close(save);
}
elsif($durcms =~/Drupal|drupal|sites/) {
    print color('bold white'),"\n[$a] $site - ";
    print color("bold green"), "DruPal\n\n";
    print color('reset');
    open(save, '>>Result/drupal.txt');
    print save "$site\n";   
    close(save);
}
elsif($magcms =~/Log into Magento Admin Page|name=\"dummy\" id=\"dummy\"|Magento/) {
print color('bold white'),"\n[$a] $site - ";
    print color("bold green"), "Magento\n\n";
    print color('reset');
    open(save, '>>Result/magento.txt');
    print save "$site\n";   
    close(save);
}

elsif($cms =~/route=product|OpenCart|route=common|catalog\/view\/theme/) {
print color('bold white'),"\n[$a] $site - ";
    print color("bold green"), "Opencart\n\n";
    print color('reset');
    open(save, '>>Result/opencart.txt');
    print save "$site\n";   
    close(save);
}
elsif($cms =~/xenforo|XenForo|uix_sidePane_content/) {
    print color('bold white'),"\n[$a] $site - ";
    print color("bold green"), "XenForo\n\n"; 
    print color('reset'); 
    open(save, '>>Result/XenForo.txt');
    print save "$site\n"; 
    close(save);
}
elsif($jcms =~/joomla|com_content|Joomla!/) {
print color('bold white'),"\n[$a] $site - ";
    print color("bold green"), "Joomla\n\n";
    print color('reset');
    open(save, '>>Result/joomla.txt');
    print save "$site\n";   
    close(save);
}
elsif($jx =~/com_option|com_content|Joomla!/) {
print color('bold white'),"\n[$a] $site - ";
    print color("bold green"), "Joomla\n\n";
    print color('reset');
    open(save, '>>Result/joomla.txt');
    print save "$site\n";   
    close(save);
}
elsif($jxx =~/com_option|com_content|Joomla!/) {
print color('bold white'),"\n[$a] $site - ";
    print color("bold green"), "Joomla\n\n";
    print color('reset');
    open(save, '>>Result/joomla.txt');
    print save "$site\n";   
    close(save);
}
elsif($cms =~/Prestashop|prestashop/) {
    print color('bold white'),"\n[$a] $site - ";
    print color("bold green"), "Prestashop\n\n";
    print color('reset');
    open(save, '>>Result/Prestashop.txt');
    print save "$site\n";   
    close(save);
}
elsif($lokomediacms =~/image\/gif/) {
print color('bold white'),"\n[$a] $site - ";
    print color("bold green"), "Lokomedia\n\n";
    print color('reset');
    open(save, '>>Result/lokomedia.txt');
    print save "$site\n";   
    close(save);
}
elsif($lokomediacmstow =~/lokomedia/) {
print color('bold white'),"\n[$a] $site - ";
    print color("bold green"), "Lokomedia\n\n";
    print color('reset');
    open(save, '>>Result/lokomedia.txt');
    print save "$site\n";   
    close(save);
}

elsif($cms =~/admin/) {
print color('bold white'),"\n[$a] $site - ";
    print color("bold green"), "Unknown\n\n"; 
    open(save, '>>Result/Unknown.txt');
    print color('reset'); 
    print save "$site\n";   
    close(save);
}
}
}

#######################################

 if ($targett eq '4')
{
print color("cyan"), "Enter List IP:";
my $list=<STDIN>;
chomp($list);
	open (THETARGET, "<$list") || die "[-] Can't open the List of site file ?!";
@TARGETS = <THETARGET>;
close THETARGET;
$link=$#TARGETS + 1;
OUTER: foreach $tofuck(@TARGETS){
chomp($tofuck);
if($tofuck =~ /http:\/\/(.*)\//) {
$tofuck= $1;
rss();
}else{
rss();
}

}
}

##############################
sub rss(){
$ip= (gethostbyname($tofuck))[4];
my ($a,$b,$c,$d) = unpack('C4',$ip);
for ($i = 1; $i <= 255; $i+=1){
$ips ="$a.$b.$c.$i";
OUTER: foreach $ip($ips){
print color('bold green')," IP:--> $ips\n";
        print TEXT "$ips\n";
        close (TEXT);
$dork="ip:$ips";
rscr();
}
}
}

####################################"
sub rscr(){
for ($ii = 1; $ii <= 2000; $ii+=10){

$url = "http://www.bing.com/search?q=$dork&filt=all&first=$ii&FORM=PERE";
$resp = $ag->request(HTTP::Request->new(GET => $url));
$rrs = $resp->content;

while($rrs =~ m/<a href=\"?http:\/\/(.*?)\//g){



$link = $1;
	if ( $link !~ /overture|msn|live|bing|yahoo|duckduckgo|google|yahoo|microsof/)
	{
				if ($link !~ /^http:/)
			 {
				$link = 'http://' . "$link" . '/';
			 }



if($link !~ /\"|\?|\=|index\.php/){
					if  (!  grep (/$link/,@result))
					{
print "$link\n";
open(save, '>>Result/sites.txt');
    print save "$link\n";
    close(save);
						push(@result,$link);
					}
} 
}
}
####
if ($rrs !~ m/class=\"sb_pagN\"/g){
next OUTER;
}
}
}


if ($targett eq '6')
#################admin finder###########################3
 {

print color('bold red'),"  [";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white')," Please Enter Site\n Example: www.victim.com or www.victim.com/path\n-> ";
$site=<STDIN>;
chomp $site;

print "\n";
print color('bold red'),"  [";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"-> Save Results To A File? y/n ";
$save=<STDIN>;
chomp $save;

print "\n";
print color('bold red'),"  [";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white')," Enter site source code\n\n 1 = php\n 2 = asp\n 3 = aspx\n 4 = cfm\n 5 = js\n 6 = cgi\n 7 = brf\n 8 = Intense\n-> ";
$code=<STDIN>;
chomp($code);

if ( $site !~ /^http:/ ) {
$site = 'http://' . $site;
}
if ( $site !~ /\/$/ ) {
$site = $site . '/';
}
print "\n";

print "-> Target: $site\n";
print "-> Site source code: $code\n";
print "-> Searching admin db...\n\n\n";

if($code eq "2"){

@path1=('admin/','administrator/','admin1/','admin2/','admin3/','admin4/','admin5/','moderator/','webadmin/','adminarea/','bb-admin/','adminLogin/','admin_area/','panel-administracion/','instadmin/',
'memberadmin/','administratorlogin/','adm/','account.asp','admin/account.asp','admin/index.asp','admin/login.asp','admin/admin.asp',
'admin_area/admin.asp','admin_area/login.asp','admin/account.html','admin/index.html','admin/login.html','admin/admin.html',
'admin_area/admin.html','admin_area/login.html','admin_area/index.html','admin_area/index.asp','bb-admin/index.asp','bb-admin/login.asp','bb-admin/admin.asp',
'bb-admin/index.html','bb-admin/login.html','bb-admin/admin.html','admin/home.html','admin/controlpanel.html','admin.html','admin/cp.html','cp.html',
'administrator/index.html','administrator/login.html','administrator/account.html','administrator.html','login.html','modelsearch/login.html','moderator.html',
'moderator/login.html','moderator/admin.html','account.html','controlpanel.html','admincontrol.html','admin_login.html','panel-administracion/login.html',
'admin/home.asp','admin/controlpanel.asp','admin.asp','pages/admin/admin-login.asp','admin/admin-login.asp','admin-login.asp','admin/cp.asp','cp.asp',
'administrator/account.asp','administrator.asp','acceso.asp','login.asp','modelsearch/login.asp','moderator.asp','moderator/login.asp','administrator/login.asp',
'moderator/admin.asp','controlpanel.asp','admin/account.html','adminpanel.html','webadmin.html','pages/admin/admin-login.html','admin/admin-login.html',
'webadmin/index.html','webadmin/admin.html','webadmin/login.html','user.asp','user.html','admincp/index.asp','admincp/login.asp','admincp/index.html',
'admin/adminLogin.html','adminLogin.html','admin/adminLogin.html','home.html','adminarea/index.html','adminarea/admin.html','adminarea/login.html',
'panel-administracion/index.html','panel-administracion/admin.html','modelsearch/index.html','modelsearch/admin.html','admin/admin_login.html',
'admincontrol/login.html','adm/index.html','adm.html','admincontrol.asp','admin/account.asp','adminpanel.asp','webadmin.asp','webadmin/index.asp',
'webadmin/admin.asp','webadmin/login.asp','admin/admin_login.asp','admin_login.asp','panel-administracion/login.asp','adminLogin.asp',
'admin/adminLogin.asp','home.asp','admin.asp','adminarea/index.asp','adminarea/admin.asp','adminarea/login.asp','admin-login.html',
'panel-administracion/index.asp','panel-administracion/admin.asp','modelsearch/index.asp','modelsearch/admin.asp','administrator/index.asp',
'admincontrol/login.asp','adm/admloginuser.asp','admloginuser.asp','admin2.asp','admin2/login.asp','admin2/index.asp','adm/index.asp',
'adm.asp','affiliate.asp','adm_auth.asp','memberadmin.asp','administratorlogin.asp','siteadmin/login.asp','siteadmin/index.asp','siteadmin/login.html'
);

foreach $ways(@path1){

$final=$site.$ways;

my $req=HTTP::Request->new(GET=>$final);
my $ua=LWP::UserAgent->new();
$ua->timeout(30);
my $response=$ua->request($req);

if($response->content =~ /Username/ ||
$response->content =~ /Password/ ||
$response->content =~ /username/ ||
$response->content =~ /password/ ||
$response->content =~ /USERNAME/ ||
$response->content =~ /PASSWORD/ ||
$response->content =~ /Username/ ||
$response->content =~ /Wachtwoord/ ||
$response->content =~ /Senha/ ||
$response->content =~ /senha/ ||
$response->content =~ /Personal/ ||
$response->content =~ /Usuario/ ||
$response->content =~ /Clave/ ||
$response->content =~ /Usager/ ||
$response->content =~ /usager/ ||
$response->content =~ /Sing/ ||
$response->content =~ /passe/ ||
$response->content =~ /P\/W/ || 
$response->content =~ /Admin Password/
){
print " \n [+] Found -> $final\n\n";

if ($save eq "y"){
print "Save stored\n";
open (MYFILE, '>>hits.txt');
print MYFILE " \n $final\n";
close (MYFILE); 
}
if ($save eq "n"){
print "Save NOT stored\n"; }
}else{
print "[-] Not Found <- $final\n";
}
}
}

if($code eq "1"){

@path2=('admin/','administrator/','admin1/','admin2/','admin3/','admin4/','admin5/','usuarios/','usuario/','administrator/','moderator/','webadmin/','adminarea/','bb-admin/','adminLogin/','admin_area/','panel-administracion/','instadmin/',
'memberadmin/','administratorlogin/','adm/','admin/account.php','admin/index.php','admin/login.php','admin/admin.php','admin/account.php',
'admin_area/admin.php','admin_area/login.php','siteadmin/login.php','siteadmin/index.php','siteadmin/login.html','admin/account.html','admin/index.html','admin/login.html','admin/admin.html',
'admin_area/index.php','bb-admin/index.php','bb-admin/login.php','bb-admin/admin.php','admin/home.php','admin_area/login.html','admin_area/index.html',
'admin/controlpanel.php','admin.php','admincp/index.asp','admincp/login.asp','admincp/index.html','admin/account.html','adminpanel.html','webadmin.html',
'webadmin/index.html','webadmin/admin.html','webadmin/login.html','admin/admin_login.html','admin_login.html','panel-administracion/login.html',
'admin/cp.php','cp.php','administrator/index.php','administrator/login.php','nsw/admin/login.php','webadmin/login.php','admin/admin_login.php','admin_login.php',
'administrator/account.php','administrator.php','admin_area/admin.html','pages/admin/admin-login.php','admin/admin-login.php','admin-login.php',
'bb-admin/index.html','bb-admin/login.html','acceso.php','bb-admin/admin.html','admin/home.html','login.php','modelsearch/login.php','moderator.php','moderator/login.php',
'moderator/admin.php','account.php','pages/admin/admin-login.html','admin/admin-login.html','admin-login.html','controlpanel.php','admincontrol.php',
'admin/adminLogin.html','adminLogin.html','admin/adminLogin.html','home.html','rcjakar/admin/login.php','adminarea/index.html','adminarea/admin.html',
'webadmin.php','webadmin/index.php','webadmin/admin.php','admin/controlpanel.html','admin.html','admin/cp.html','cp.html','adminpanel.php','moderator.html',
'administrator/index.html','administrator/login.html','user.html','administrator/account.html','administrator.html','login.html','modelsearch/login.html',
'moderator/login.html','adminarea/login.html','panel-administracion/index.html','panel-administracion/admin.html','modelsearch/index.html','modelsearch/admin.html',
'admincontrol/login.html','adm/index.html','adm.html','moderator/admin.html','user.php','account.html','controlpanel.html','admincontrol.html',
'panel-administracion/login.php','wp-login.php','adminLogin.php','admin/adminLogin.php','home.php','admin.php','adminarea/index.php',
'adminarea/admin.php','adminarea/login.php','panel-administracion/index.php','panel-administracion/admin.php','modelsearch/index.php',
'modelsearch/admin.php','admincontrol/login.php','adm/admloginuser.php','admloginuser.php','admin2.php','admin2/login.php','admin2/index.php','usuarios/login.php',
'adm/index.php','adm.php','affiliate.php','adm_auth.php','memberadmin.php','administratorlogin.php'
);

foreach $ways(@path2){

$final=$site.$ways;

my $req=HTTP::Request->new(GET=>$final);
my $ua=LWP::UserAgent->new();
$ua->timeout(30);
my $response=$ua->request($req);

if($response->content =~ /Username/ ||
$response->content =~ /Password/ ||
$response->content =~ /username/ ||
$response->content =~ /password/ ||
$response->content =~ /USERNAME/ ||
$response->content =~ /PASSWORD/ ||
$response->content =~ /Username/ ||
$response->content =~ /Wachtwoord/ ||
$response->content =~ /Senha/ ||
$response->content =~ /senha/ ||
$response->content =~ /Personal/ ||
$response->content =~ /Usuario/ ||
$response->content =~ /Clave/ ||
$response->content =~ /Usager/ ||
$response->content =~ /usager/ ||
$response->content =~ /Sing/ ||
$response->content =~ /passe/ ||
$response->content =~ /P\/W/ || 
$response->content =~ /Admin Password/
){
print " \n [+] Found -> $final\n\n";

if ($save eq "y"){
print "Save stored\n";
open (MYFILE, '>>hits.txt');
print MYFILE " \n $final\n";
close (MYFILE); 
}
if ($save eq "n"){
print "Save NOT stored\n"; }
}else{ 
print "[-] Not Found <- $final\n";
}
}
}


if($code eq "4"){

@path2=('admin/','administrator/','admin1/','admin2/','admin3/','admin4/','admin5/','usuarios/','usuario/','administrator/','moderator/','webadmin/','adminarea/','bb-admin/','adminLogin/','admin_area/','panel-administracion/','instadmin/',
'memberadmin/','administratorlogin/','adm/','admin/account.cfm','admin/index.cfm','admin/login.cfm','admin/admin.cfm','admin/account.cfm',
'admin_area/admin.cfm','admin_area/login.cfm','siteadmin/login.cfm','siteadmin/index.cfm','siteadmin/login.html','admin/account.html','admin/index.html','admin/login.html','admin/admin.html',
'admin_area/index.cfm','bb-admin/index.cfm','bb-admin/login.cfm','bb-admin/admin.cfm','admin/home.cfm','admin_area/login.html','admin_area/index.html',
'admin/controlpanel.cfm','admin.cfm','admincp/index.asp','admincp/login.asp','admincp/index.html','admin/account.html','adminpanel.html','webadmin.html',
'webadmin/index.html','webadmin/admin.html','webadmin/login.html','admin/admin_login.html','admin_login.html','panel-administracion/login.html',
'admin/cp.cfm','cp.cfm','administrator/index.cfm','administrator/login.cfm','nsw/admin/login.cfm','webadmin/login.cfm','admin/admin_login.cfm','admin_login.cfm',
'administrator/account.cfm','administrator.cfm','admin_area/admin.html','pages/admin/admin-login.cfm','admin/admin-login.cfm','admin-login.cfm',
'bb-admin/index.html','bb-admin/login.html','bb-admin/admin.html','admin/home.html','login.cfm','modelsearch/login.cfm','moderator.cfm','moderator/login.cfm',
'moderator/admin.cfm','account.cfm','pages/admin/admin-login.html','admin/admin-login.html','admin-login.html','controlpanel.cfm','admincontrol.cfm',
'admin/adminLogin.html','acceso.cfm','adminLogin.html','admin/adminLogin.html','home.html','rcjakar/admin/login.cfm','adminarea/index.html','adminarea/admin.html',
'webadmin.cfm','webadmin/index.cfm','webadmin/admin.cfm','admin/controlpanel.html','admin.html','admin/cp.html','cp.html','adminpanel.cfm','moderator.html',
'administrator/index.html','administrator/login.html','user.html','administrator/account.html','administrator.html','login.html','modelsearch/login.html',
'moderator/login.html','adminarea/login.html','panel-administracion/index.html','panel-administracion/admin.html','modelsearch/index.html','modelsearch/admin.html',
'admincontrol/login.html','adm/index.html','adm.html','moderator/admin.html','user.cfm','account.html','controlpanel.html','admincontrol.html',
'panel-administracion/login.cfm','wp-login.cfm','adminLogin.cfm','admin/adminLogin.cfm','home.cfm','admin.cfm','adminarea/index.cfm',
'adminarea/admin.cfm','adminarea/login.cfm','panel-administracion/index.cfm','panel-administracion/admin.cfm','modelsearch/index.cfm',
'modelsearch/admin.cfm','admincontrol/login.cfm','adm/admloginuser.cfm','admloginuser.cfm','admin2.cfm','admin2/login.cfm','admin2/index.cfm','usuarios/login.cfm',
'adm/index.cfm','adm.cfm','affiliate.cfm','adm_auth.cfm','memberadmin.cfm','administratorlogin.cfm'
);

foreach $ways(@path2){

$final=$site.$ways;

my $req=HTTP::Request->new(GET=>$final);
my $ua=LWP::UserAgent->new();
$ua->timeout(30);
my $response=$ua->request($req);

if($response->content =~ /Username/ ||
$response->content =~ /Password/ ||
$response->content =~ /username/ ||
$response->content =~ /password/ ||
$response->content =~ /USERNAME/ ||
$response->content =~ /PASSWORD/ ||
$response->content =~ /Username/ ||
$response->content =~ /Wachtwoord/ ||
$response->content =~ /Senha/ ||
$response->content =~ /senha/ ||
$response->content =~ /Personal/ ||
$response->content =~ /Usuario/ ||
$response->content =~ /Clave/ ||
$response->content =~ /Usager/ ||
$response->content =~ /usager/ ||
$response->content =~ /Sing/ ||
$response->content =~ /passe/ ||
$response->content =~ /P\/W/ || 
$response->content =~ /Admin Password/
){
print " \n [+] Found -> $final\n\n";

if ($save eq "y"){
print "Save stored\n";
open (MYFILE, '>>hits.txt');
print MYFILE " \n $final\n";
close (MYFILE); 
}
if ($save eq "n"){
print "Save NOT stored\n"; }
}else{
print "[-] Not Found <- $final\n";
}
}
}

if($code eq "3"){

@path2=('admin/','administrator/','admin1/','admin2/','admin3/','admin4/','admin5/','usuarios/','usuario/','administrator/','moderator/','webadmin/','adminarea/','bb-admin/','adminLogin/','admin_area/','panel-administracion/','instadmin/',
'memberadmin/','administratorlogin/','adm/','admin/account.aspx','admin/index.aspx','admin/login.aspx','admin/admin.aspx','admin/account.aspx',
'admin_area/admin.aspx','admin_area/login.aspx','siteadmin/login.aspx','siteadmin/index.aspx','siteadmin/login.html','admin/account.html','admin/index.html','admin/login.html','admin/admin.html',
'admin_area/index.aspx','bb-admin/index.aspx','bb-admin/login.aspx','bb-admin/admin.aspx','admin/home.aspx','admin_area/login.html','admin_area/index.html',
'admin/controlpanel.aspx','admin.aspx','admincp/index.asp','admincp/login.asp','admincp/index.html','admin/account.html','adminpanel.html','webadmin.html',
'webadmin/index.html','webadmin/admin.html','webadmin/login.html','admin/admin_login.html','admin_login.html','panel-administracion/login.html',
'admin/cp.aspx','cp.aspx','administrator/index.aspx','administrator/login.aspx','nsw/admin/login.aspx','webadmin/login.aspx','admin/admin_login.aspx','admin_login.aspx',
'administrator/account.aspx','administrator.aspx','admin_area/admin.html','pages/admin/admin-login.aspx','admin/admin-login.aspx','admin-login.aspx',
'bb-admin/index.html','bb-admin/login.html','bb-admin/admin.html','admin/home.html','login.aspx','modelsearch/login.aspx','moderator.aspx','moderator/login.aspx',
'moderator/admin.aspx','acceso.aspx','account.aspx','pages/admin/admin-login.html','admin/admin-login.html','admin-login.html','controlpanel.aspx','admincontrol.aspx',
'admin/adminLogin.html','adminLogin.html','admin/adminLogin.html','home.html','rcjakar/admin/login.aspx','adminarea/index.html','adminarea/admin.html',
'webadmin.aspx','webadmin/index.aspx','webadmin/admin.aspx','admin/controlpanel.html','admin.html','admin/cp.html','cp.html','adminpanel.aspx','moderator.html',
'administrator/index.html','administrator/login.html','user.html','administrator/account.html','administrator.html','login.html','modelsearch/login.html',
'moderator/login.html','adminarea/login.html','panel-administracion/index.html','panel-administracion/admin.html','modelsearch/index.html','modelsearch/admin.html',
'admincontrol/login.html','adm/index.html','adm.html','moderator/admin.html','user.aspx','account.html','controlpanel.html','admincontrol.html',
'panel-administracion/login.aspx','wp-login.aspx','adminLogin.aspx','admin/adminLogin.aspx','home.aspx','admin.aspx','adminarea/index.aspx',
'adminarea/admin.aspx','adminarea/login.aspx','panel-administracion/index.aspx','panel-administracion/admin.aspx','modelsearch/index.aspx',
'modelsearch/admin.aspx','admincontrol/login.aspx','adm/admloginuser.aspx','admloginuser.aspx','admin2.aspx','admin2/login.aspx','admin2/index.aspx','usuarios/login.aspx',
'adm/index.aspx','adm.aspx','affiliate.aspx','adm_auth.aspx','memberadmin.aspx','administratorlogin.aspx'
);

foreach $ways(@path2){

$final=$site.$ways;

my $req=HTTP::Request->new(GET=>$final);
my $ua=LWP::UserAgent->new();
$ua->timeout(30);
my $response=$ua->request($req);

if($response->content =~ /Username/ ||
$response->content =~ /Password/ ||
$response->content =~ /username/ ||
$response->content =~ /password/ ||
$response->content =~ /USERNAME/ ||
$response->content =~ /PASSWORD/ ||
$response->content =~ /Username/ ||
$response->content =~ /Wachtwoord/ ||
$response->content =~ /Senha/ ||
$response->content =~ /senha/ ||
$response->content =~ /Personal/ ||
$response->content =~ /Usuario/ ||
$response->content =~ /Clave/ ||
$response->content =~ /Usager/ ||
$response->content =~ /usager/ ||
$response->content =~ /Sing/ ||
$response->content =~ /passe/ ||
$response->content =~ /P\/W/ || 
$response->content =~ /Admin Password/
){
print " \n [+] Found -> $final\n\n";

if ($save eq "y"){
print "Save stored\n";
open (MYFILE, '>>hits.txt');
print MYFILE " \n $final\n";
close (MYFILE); 
}
if ($save eq "n"){
print "Save NOT stored\n"; }
}else{
print "[-] Not Found <- $final\n";
}
}
}


if($code eq "5"){

@path2=('admin/','administrator/','admin1/','admin2/','admin3/','admin4/','admin5/','usuarios/','usuario/','administrator/','moderator/','webadmin/','adminarea/','bb-admin/','adminLogin/','admin_area/','panel-administracion/','instadmin/',
'memberadmin/','administratorlogin/','adm/','admin/account.js','admin/index.js','admin/login.js','admin/admin.js','admin/account.js',
'admin_area/admin.js','admin_area/login.js','siteadmin/login.js','siteadmin/index.js','siteadmin/login.html','admin/account.html','admin/index.html','admin/login.html','admin/admin.html',
'admin_area/index.js','bb-admin/index.js','bb-admin/login.js','bb-admin/admin.js','admin/home.js','admin_area/login.html','admin_area/index.html',
'admin/controlpanel.js','admin.js','admincp/index.asp','admincp/login.asp','admincp/index.html','admin/account.html','adminpanel.html','webadmin.html',
'webadmin/index.html','webadmin/admin.html','webadmin/login.html','admin/admin_login.html','admin_login.html','panel-administracion/login.html',
'admin/cp.js','cp.js','administrator/index.js','administrator/login.js','nsw/admin/login.js','webadmin/login.js','admin/admin_login.js','admin_login.js',
'administrator/account.js','administrator.js','admin_area/admin.html','pages/admin/admin-login.js','admin/admin-login.js','admin-login.js',
'bb-admin/index.html','bb-admin/login.html','bb-admin/admin.html','admin/home.html','login.js','modelsearch/login.js','moderator.js','moderator/login.js',
'moderator/admin.js','account.js','pages/admin/admin-login.html','admin/admin-login.html','admin-login.html','controlpanel.js','admincontrol.js',
'admin/adminLogin.html','adminLogin.html','admin/adminLogin.html','home.html','rcjakar/admin/login.js','adminarea/index.html','adminarea/admin.html',
'webadmin.js','webadmin/index.js','acceso.js','webadmin/admin.js','admin/controlpanel.html','admin.html','admin/cp.html','cp.html','adminpanel.js','moderator.html',
'administrator/index.html','administrator/login.html','user.html','administrator/account.html','administrator.html','login.html','modelsearch/login.html',
'moderator/login.html','adminarea/login.html','panel-administracion/index.html','panel-administracion/admin.html','modelsearch/index.html','modelsearch/admin.html',
'admincontrol/login.html','adm/index.html','adm.html','moderator/admin.html','user.js','account.html','controlpanel.html','admincontrol.html',
'panel-administracion/login.js','wp-login.js','adminLogin.js','admin/adminLogin.js','home.js','admin.js','adminarea/index.js',
'adminarea/admin.js','adminarea/login.js','panel-administracion/index.js','panel-administracion/admin.js','modelsearch/index.js',
'modelsearch/admin.js','admincontrol/login.js','adm/admloginuser.js','admloginuser.js','admin2.js','admin2/login.js','admin2/index.js','usuarios/login.js',
'adm/index.js','adm.js','affiliate.js','adm_auth.js','memberadmin.js','administratorlogin.js'
);

foreach $ways(@path2){

$final=$site.$ways;

my $req=HTTP::Request->new(GET=>$final);
my $ua=LWP::UserAgent->new();
$ua->timeout(30);
my $response=$ua->request($req);

if($response->content =~ /Username/ ||
$response->content =~ /Password/ ||
$response->content =~ /username/ ||
$response->content =~ /password/ ||
$response->content =~ /USERNAME/ ||
$response->content =~ /PASSWORD/ ||
$response->content =~ /Username/ ||
$response->content =~ /Wachtwoord/ ||
$response->content =~ /Senha/ ||
$response->content =~ /senha/ ||
$response->content =~ /Personal/ ||
$response->content =~ /Usuario/ ||
$response->content =~ /Clave/ ||
$response->content =~ /Usager/ ||
$response->content =~ /usager/ ||
$response->content =~ /Sing/ ||
$response->content =~ /passe/ ||
$response->content =~ /P\/W/ || 
$response->content =~ /Admin Password/
){
print " \n [+] Found -> $final\n\n";

if ($save eq "y"){
print "Save stored\n";
open (MYFILE, '>>hits.txt');
print MYFILE " \n $final\n";
close (MYFILE); 
}
if ($save eq "n"){
print "Save NOT stored\n"; }
}else{
print "[-] Not Found <- $final\n";
}
}
}

if($code eq "6"){

@path2=('admin/','administrator/','admin1/','admin2/','admin3/','admin4/','admin5/','usuarios/','usuario/','administrator/','moderator/','webadmin/','adminarea/','bb-admin/','adminLogin/','admin_area/','panel-administracion/','instadmin/',
'memberadmin/','administratorlogin/','adm/','admin/account.cgi','admin/index.cgi','admin/login.cgi','admin/admin.cgi','admin/account.cgi',
'admin_area/admin.cgi','admin_area/login.cgi','siteadmin/login.cgi','siteadmin/index.cgi','siteadmin/login.html','admin/account.html','admin/index.html','admin/login.html','admin/admin.html',
'admin_area/index.cgi','bb-admin/index.cgi','bb-admin/login.cgi','bb-admin/admin.cgi','admin/home.cgi','admin_area/login.html','admin_area/index.html',
'admin/controlpanel.cgi','admin.cgi','admincp/index.asp','admincp/login.asp','admincp/index.html','admin/account.html','adminpanel.html','webadmin.html',
'webadmin/index.html','webadmin/admin.html','webadmin/login.html','admin/admin_login.html','admin_login.html','panel-administracion/login.html',
'admin/cp.cgi','cp.cgi','administrator/index.cgi','administrator/login.cgi','nsw/admin/login.cgi','webadmin/login.cgi','admin/admin_login.cgi','admin_login.cgi',
'administrator/account.cgi','administrator.cgi','admin_area/admin.html','pages/admin/admin-login.cgi','admin/admin-login.cgi','admin-login.cgi',
'bb-admin/index.html','bb-admin/login.html','bb-admin/admin.html','admin/home.html','login.cgi','modelsearch/login.cgi','moderator.cgi','moderator/login.cgi',
'moderator/admin.cgi','account.cgi','pages/admin/admin-login.html','admin/admin-login.html','admin-login.html','controlpanel.cgi','admincontrol.cgi',
'admin/adminLogin.html','adminLogin.html','admin/adminLogin.html','home.html','rcjakar/admin/login.cgi','adminarea/index.html','adminarea/admin.html',
'webadmin.cgi','webadmin/index.cgi','acceso.cgi','webadmin/admin.cgi','admin/controlpanel.html','admin.html','admin/cp.html','cp.html','adminpanel.cgi','moderator.html',
'administrator/index.html','administrator/login.html','user.html','administrator/account.html','administrator.html','login.html','modelsearch/login.html',
'moderator/login.html','adminarea/login.html','panel-administracion/index.html','panel-administracion/admin.html','modelsearch/index.html','modelsearch/admin.html',
'admincontrol/login.html','adm/index.html','adm.html','moderator/admin.html','user.cgi','account.html','controlpanel.html','admincontrol.html',
'panel-administracion/login.cgi','wp-login.cgi','adminLogin.cgi','admin/adminLogin.cgi','home.cgi','admin.cgi','adminarea/index.cgi',
'adminarea/admin.cgi','adminarea/login.cgi','panel-administracion/index.cgi','panel-administracion/admin.cgi','modelsearch/index.cgi',
'modelsearch/admin.cgi','admincontrol/login.cgi','adm/admloginuser.cgi','admloginuser.cgi','admin2.cgi','admin2/login.cgi','admin2/index.cgi','usuarios/login.cgi',
'adm/index.cgi','adm.cgi','affiliate.cgi','adm_auth.cgi','memberadmin.cgi','administratorlogin.cgi'
);

foreach $ways(@path2){

$final=$site.$ways;

my $req=HTTP::Request->new(GET=>$final);
my $ua=LWP::UserAgent->new();
$ua->timeout(30);
my $response=$ua->request($req);

if($response->content =~ /Username/ ||
$response->content =~ /Password/ ||
$response->content =~ /username/ ||
$response->content =~ /password/ ||
$response->content =~ /USERNAME/ ||
$response->content =~ /PASSWORD/ ||
$response->content =~ /Username/ ||
$response->content =~ /Wachtwoord/ ||
$response->content =~ /Senha/ ||
$response->content =~ /senha/ ||
$response->content =~ /Personal/ ||
$response->content =~ /Usuario/ ||
$response->content =~ /Clave/ ||
$response->content =~ /Usager/ ||
$response->content =~ /usager/ ||
$response->content =~ /Sing/ ||
$response->content =~ /passe/ ||
$response->content =~ /P\/W/ || 
$response->content =~ /Admin Password/
){
print " \n [+] Found -> $final\n\n";

if ($save eq "y"){
print "Save stored\n";
open (MYFILE, '>>hits.txt');
print MYFILE " \n $final\n";
close (MYFILE); 
}
if ($save eq "n"){
print "Save NOT stored\n"; }
}else{
print "[-] Not Found <- $final\n";
}
}
}


if($code eq "7"){

@path2=('admin/','administrator/','admin1/','admin2/','admin3/','admin4/','admin5/','usuarios/','usuario/','administrator/','moderator/','webadmin/','adminarea/','bb-admin/','adminLogin/','admin_area/','panel-administracion/','instadmin/',
'memberadmin/','administratorlogin/','adm/','admin/account.brf','admin/index.brf','admin/login.brf','admin/admin.brf','admin/account.brf',
'admin_area/admin.brf','admin_area/login.brf','siteadmin/login.brf','siteadmin/index.brf','siteadmin/login.html','admin/account.html','admin/index.html','admin/login.html','admin/admin.html',
'admin_area/index.brf','bb-admin/index.brf','bb-admin/login.brf','bb-admin/admin.brf','admin/home.brf','admin_area/login.html','admin_area/index.html',
'admin/controlpanel.brf','admin.brf','admincp/index.asp','admincp/login.asp','admincp/index.html','admin/account.html','adminpanel.html','webadmin.html',
'webadmin/index.html','webadmin/admin.html','webadmin/login.html','admin/admin_login.html','admin_login.html','panel-administracion/login.html',
'admin/cp.brf','cp.brf','administrator/index.brf','administrator/login.brf','nsw/admin/login.brf','webadmin/login.brfbrf','admin/admin_login.brf','admin_login.brf',
'administrator/account.brf','administrator.brf','acceso.brf','admin_area/admin.html','pages/admin/admin-login.brf','admin/admin-login.brf','admin-login.brf',
'bb-admin/index.html','bb-admin/login.html','bb-admin/admin.html','admin/home.html','login.brf','modelsearch/login.brf','moderator.brf','moderator/login.brf',
'moderator/admin.brf','account.brf','pages/admin/admin-login.html','admin/admin-login.html','admin-login.html','controlpanel.brf','admincontrol.brf',
'admin/adminLogin.html','adminLogin.html','admin/adminLogin.html','home.html','rcjakar/admin/login.brf','adminarea/index.html','adminarea/admin.html',
'webadmin.brf','webadmin/index.brf','webadmin/admin.brf','admin/controlpanel.html','admin.html','admin/cp.html','cp.html','adminpanel.brf','moderator.html',
'administrator/index.html','administrator/login.html','user.html','administrator/account.html','administrator.html','login.html','modelsearch/login.html',
'moderator/login.html','adminarea/login.html','panel-administracion/index.html','panel-administracion/admin.html','modelsearch/index.html','modelsearch/admin.html',
'admincontrol/login.html','adm/index.html','adm.html','moderator/admin.html','user.brf','account.html','controlpanel.html','admincontrol.html',
'panel-administracion/login.brf','wp-login.brf','adminLogin.brf','admin/adminLogin.brf','home.brf','admin.brf','adminarea/index.brf',
'adminarea/admin.brf','adminarea/login.brf','panel-administracion/index.brf','panel-administracion/admin.brf','modelsearch/index.brf',
'modelsearch/admin.brf','admincontrol/login.brf','adm/admloginuser.brf','admloginuser.brf','admin2.brf','admin2/login.brf','admin2/index.brf','usuarios/login.brf',
'adm/index.brf','adm.brf','affiliate.brf','adm_auth.brf','memberadmin.brf','administratorlogin.brf'
);

foreach $ways(@path2){

$final=$site.$ways;

my $req=HTTP::Request->new(GET=>$final);
my $ua=LWP::UserAgent->new();
$ua->timeout(30);
my $response=$ua->request($req);

if($response->content =~ /Username/ ||
$response->content =~ /Password/ ||
$response->content =~ /username/ ||
$response->content =~ /password/ ||
$response->content =~ /USERNAME/ ||
$response->content =~ /PASSWORD/ ||
$response->content =~ /Username/ ||
$response->content =~ /Wachtwoord/ ||
$response->content =~ /Senha/ ||
$response->content =~ /senha/ ||
$response->content =~ /Personal/ ||
$response->content =~ /Usuario/ ||
$response->content =~ /Clave/ ||
$response->content =~ /Usager/ ||
$response->content =~ /usager/ ||
$response->content =~ /Sing/ ||
$response->content =~ /passe/ ||
$response->content =~ /P\/W/ || 
$response->content =~ /Admin Password/
){
print " \n [+] Found -> $final\n\n";

if ($save eq "y"){
print "Save stored\n";
open (MYFILE, '>>hits.txt');
print MYFILE " \n $final\n";
close (MYFILE); 
}
if ($save eq "n"){
print "Save NOT stored\n"; }
}else{
print "[-] Not Found <- $final\n";
}
}
}


if($code eq "8"){

@path2=('login.htm','login.html','login/','adm/','admin/','admin/account.html','admin/login.html','admin/login.htm','admin/controlpanel.html','admin/controlpanel.htm','admin/adminLogin.html','admin/adminLogin.htm','admin.htm','admin.html','adminitem/','adminitems/','administrator/','administration/','adminLogin/','admin_area/','manager/','letmein/','superuser/','access/','sysadm/','superman/','supervisor/','control/','member/','members/','user/','cp/','uvpanel/','manage/','management/','signin/','log-in/','log_in/','sign_in/','sign-in/','users/','accounts/','wp-login.php','bb-admin/admin.html','relogin.htm','relogin.html','registration/','moderator/','controlpanel/','fileadmin/','admin1.html','admin1.htm','admin2.html','yonetim.html','yonetici.html','phpmyadmin/','myadmin/','ur-admin/','Server/','wp-admin/','administr8/','webadmin/','administratie/','admins/','administrivia/','Database_Administration/','useradmin/','sysadmins/','admin1/','system-administration/','administrators/','pgadmin/','directadmin/','staradmin/','ServerAdministrator/','SysAdmin/','administer/','LiveUser_Admin/','sys-admin/','typo3/','panel/','cpanel/','cpanel_file/','platz_login/','rcLogin/','blogindex/','formslogin/','autologin/','support_login/','meta_login/','manuallogin/','simpleLogin/','loginflat/','utility_login/','showlogin/','memlogin/','login-redirect/','sub-login/','wp-login/','login1/','dir-login/','login_db/','xlogin/','smblogin/','customer_login/','UserLogin/','login-us/','acct_login/','bigadmin/','project-admins/','phppgadmin/','pureadmin/','sql-admin/','radmind/','openvpnadmin/','wizmysqladmin/','vadmind/','ezsqliteadmin/','hpwebjetadmin/','newsadmin/','adminpro/','Lotus_Domino_Admin/','bbadmin/','vmailadmin/','Indy_admin/','ccp14admin/','irc-macadmin/','banneradmin/','sshadmin/','phpldapadmin/','macadmin/','administratoraccounts/','admin4_account/','admin4_colon/','radmind-1/','Super-Admin/','AdminTools/','cmsadmin/','SysAdmin2/','globes_admin/','cadmins/','phpSQLiteAdmin/','navSiteAdmin/','server_admin_small/','logo_sysadmin/','power_user/','system_administration/','ss_vms_admin_sm/','bb-admin/','panel-administracion/','instadmin/','memberadmin/','administratorlogin/','pages/admin/','admincp/','adminarea/','admincontrol/','modules/admin/','siteadmin/','adminsite/','kpanel/','vorod/','vorud/','adminpanel/','PSUser/','secure/','webmaster/','security/','usr/','root/','secret/','moderator.php','moderator.html','0admin/','0manager/','aadmin/','login_admin/','login_out/','loginerror/','loginok/','loginsave/','loginsuper/','logout/','secrets/','super1/','supervise/','admin1.php','admin1.html','admin2.php','admin2.html','yonetim.php','yonetim.html','yonetici.php','yonetici.html','adm/','admin/','admin/account.php','admin/account.html','admin/index.php','admin/index.html','admin/login.php','admin/login.html','admin/home.php','admin/controlpanel.html','admin/controlpanel.php','admin.php','admin.html','admin/cp.php','admin/cp.html','cp.php','cp.html','administrator/','administrator/index.html','administrator/index.php','administrator/login.html','administrator/login.php','administrator/account.html','administrator/account.php','administrator.php','administrator.html','login.php','login.html','modelsearch/login.php','moderator.php','moderator.html','moderator/login.php','moderator/login.html','moderator/admin.php','moderator/admin.html','moderator/','account.php','account.html','controlpanel/','controlpanel.php','controlpanel.html','admincontrol.php','admincontrol.html','adminpanel.php','adminpanel.html','admin1.asp','admin2.asp','yonetim.asp','yonetici.asp','admin/account.asp','admin/index.asp','admin/login.asp','admin/home.asp','admin/controlpanel.asp','admin.asp','admin/cp.asp','cp.asp','administrator/index.asp','administrator/login.asp','administrator/account.asp','administrator.asp','login.asp','modelsearch/login.asp','moderator.asp','moderator/login.asp','moderator/admin.asp','account.asp','controlpanel.asp','
admincontrol.asp','adminpanel.asp','fileadmin/','fileadmin.php','fileadmin.asp','fileadmin.html','administration/','administration.php','administration.html','sysadmin.php','sysadmin.html','phpmyadmin/','myadmin/','sysadmin.asp','sysadmin/','ur-admin.asp','ur-admin.php','ur-admin.html','ur-admin/','Server.php','Server.html','Server.asp','Server/','wp-admin/','administr8.php','administr8.html','administr8/','administr8.asp','webadmin/','webadmin.php','webadmin.asp','webadmin.html','administratie/','admins/','admins.php','admins.asp','admins.html','administrivia/','Database_Administration/','WebAdmin/','useradmin/','sysadmins/','admin1/','system-administration/','administrators/','pgadmin/','directadmin/','staradmin/','ServerAdministrator/','SysAdmin/','administer/','LiveUser_Admin/','sys-admin/','typo3/','panel/','cpanel/','cPanel/','cpanel_file/','platz_login/','rcLogin/','blogindex/','formslogin/','autologin/','support_login/','meta_login/','manuallogin/','simpleLogin/','loginflat/','utility_login/','showlogin/','memlogin/','members/','login-redirect/','sub-login/','wp-login/','login1/','dir-login/','login_db/','xlogin/','smblogin/','customer_login/','UserLogin/','login-us/','acct_login/','admin_area/','bigadmin/','project-admins/','phppgadmin/','pureadmin/','sql-admin/','radmind/','openvpnadmin/','wizmysqladmin/','vadmind/','ezsqliteadmin/','hpwebjetadmin/','newsadmin/','adminpro/','Lotus_Domino_Admin/','bbadmin/','vmailadmin/','Indy_admin/','ccp14admin/','irc-macadmin/','banneradmin/','sshadmin/','phpldapadmin/','macadmin/','administratoraccounts/','admin4_account/','admin4_colon/','radmind-1/','Super-Admin/','AdminTools/','cmsadmin/','SysAdmin2/','globes_admin/','cadmins/','phpSQLiteAdmin/','navSiteAdmin/','server_admin_small/','logo_sysadmin/','server/','database_administration/','power_user/','system_administration/','ss_vms_admin_sm/','adiministrador/','adm/','adimin/','login/','logout/','senha/','membros/','usuarios/','senhas/','sff/','saff/','donos/','noticias/','not/','painel/','administracao/','key/','edit/','config/','funcoes/','sistema/','php/','net/','controle','controles','membro','membros','acesso','senha','usuario','usuarios','admistrador','adimistrador','painel','root','roots','raiz','login.htm','login.html','login/','adm/','admin/','admin/account.html','admin/login.html','admin/login.htm','admin/controlpanel.html','admin/controlpanel.htm','admin/adminLogin.html','admin/adminLogin.htm','admin.htm','admin.html','adminitem/','adminitems/','administrator/','administration/','adminLogin/','admin_area/','manager/','letmein/','superuser/','access/','sysadm/','superman/','supervisor/','control/','member/','members/','user/','cp/','uvpanel/','manage/','management/','signin/','log-in/','log_in/','sign_in/','sign-in/','users/','accounts/','wp-login.php','bb-admin/admin.html','relogin.htm','relogin.html','registration/','moderator/','controlpanel/','fileadmin/','admin1.html','admin1.htm','admin2.html','yonetim.html','yonetici.html','phpmyadmin/','myadmin/','ur-admin/','Server/','wp-admin/','administr8/','webadmin/','administratie/','admins/','administrivia/','Database_Administration/','useradmin/','sysadmins/','admin1/','system-administration/','administrators/','pgadmin/','directadmin/','staradmin/','ServerAdministrator/','SysAdmin/','administer/','LiveUser_Admin/','sys-admin/','typo3/','panel/','cpanel/','cpanel_file/','platz_login/','rcLogin/','blogindex/','formslogin/','autologin/','support_login/','meta_login/','manuallogin/','simpleLogin/','loginflat/','utility_login/','showlogin/','memlogin/','login-redirect/','sub-login/','wp-login/','login1/','dir-login/','login_db/','xlogin/','smblogin/','customer_login/','UserLogin/','login-us/','acct_login/','bigadmin/','project-admins/','phppgadmin/','pureadmin/','sql-admin/','radmind/','openvpnadmin/','wizmysqladmin/','vadmind/','ezsqliteadmin/','hpwebjetadmin/','newsadmin/','adminpro/','Lotus_Domino_Admin/','bbadmin/','vmailadmin/','Indy_admin/','ccp14admin/','irc-macadmin/','banneradmin/','sshadmin/','phpldapadmin/','macadmin/','administratoraccounts/','admin4_account/','admin4_colon/','radmind-1/','Super-Admin/','AdminTools/','cmsadmin/','SysAdmin2/','globes_admin/','cadmins/','phpSQLiteAdmin/','navSiteAdmin/','server_admin_small/','logo_sysadmin/','power_user/','system_administration/','ss_vms_admin_sm/','bb-admin/','panel-administracion/','instadmin/','memberadmin/','administratorlogin/','pages/admin/','admincp/','adminarea/','admincontrol/','modules/admin/','siteadmin/','adminsite/','kpanel/','vorod/','vorud/','adminpanel/','PSUser/','secure/','webmaster/','security/','usr/','root/','secret/','moderator.php','moderator.html','0admin/','0manager/','aadmin/','login_admin/','login_out/','loginerror/','loginok/','loginsave/','loginsuper/','logout/','secrets/','super1/','supervise/','admin.php','admin/','administrator/','moderator/','webadmin/','adminarea/','bb-admin/','adminLogin/','admin_area/','panel-administracion/','instadmin/','memberadmin/','administratorlogin/','adm/','admin/account.php','admin/index.php','admin/login.php','admin/admin.php','admin/account.php','joomla/administrator','login.php','admin_area/admin.php','admin_area/login.php','siteadmin/login.php','siteadmin/index.php','siteadmin/login.html','admin/account.html','admin/index.html','admin/login.html','admin/admin.html','admin_area/index.php','bb-admin/index.php','bb-admin/login.php','bb-admin/admin.php','admin/home.php','admin_area/login.html','admin_area/index.html','admin/controlpanel.php','admincp/index.asp','admincp/login.asp','admincp/index.html','admin/account.html','adminpanel.html','webadmin.html','webadmin/index.html','webadmin/admin.html','webadmin/login.html','admin/admin_login.html','admin_login.html','panel-administracion/login.html','admin/cp.php','cp.php','administrator/index.php','administrator/login.php','nsw/admin/login.php','webadmin/login.php','admin/admin_login.php','admin_login.php','administrator/account.php','administrator.php','admin_area/admin.html','pages/admin/admin-login.php','admin/admin-login.php','admin-login.php','bb-admin/index.html','bb-admin/login.html','bb-admin/admin.html','admin/home.html','modelsearch/login.php','moderator.php','moderator/login.php','moderator/admin.php','account.php','pages/admin/admin-login.html','admin/admin-login.html','admin-login.html','controlpanel.php','admincontrol.php','admin/adminLogin.html','adminLogin.html','admin/adminLogin.html','home.html','rcjakar/admin/login.php','adminarea/index.html','adminarea/admin.html','webadmin.php','webadmin/index.php','webadmin/admin.php','admin/controlpanel.html','admin.html','admin/cp.html','cp.html','adminpanel.php','moderator.html','administrator/index.html','administrator/login.html','user.html','administrator/account.html','administrator.html','login.html','modelsearch/login.html','moderator/login.html','adminarea/login.html','panel-administracion/index.html','panel-administracion/admin.html','modelsearch/index.html','modelsearch/admin.html','admincontrol/login.html','adm/index.html','adm.html','moderator/admin.html','user.php','account.html','controlpanel.html','admincontrol.html','panel-administracion/login.php','wp-login.php','adminLogin.php','admin/adminLogin.php','home.php','adminarea/index.php','adminarea/admin.php','adminarea/login.php','panel-administracion/index.php','panel-administracion/admin.php','modelsearch/index.php','modelsearch/admin.php','admincontrol/login.php','adm/admloginuser.php','admloginuser.php','admin2.php','admin2/login.php','admin2/index.php','adm/index.php','adm.php','affiliate.php','adm_auth.php','admin','admin.asp','admin.aspx','admin.cfm','admin.html','admin.php','admin.xhtml','admin/','wp-admin','wp-admin/','wp-login.php','wp-login/','admin/account.asp','admin/account.cfm','admin/account.html','admin/account.php','admin/admin.asp','admin/admin.cfm','admin/admin.html','admin/admin.php','admin/admin_login.asp','admin/admin_login.cfm','admin/admin_login.html','admin/admin_login.php','admin/admin-login.asp','admin/adminLogin.asp','admin/admin-login.cfm','admin/adminLogin.cfm','admin/admin-login.html','admin/adminLogin.html','admin/admin-login.php','admin/adminLogin.php','admin/controlpanel.asp','admin/controlpanel.cfm','admin/controlpanel.html','admin/controlpanel.php','admin/cp.asp','admin/cp.cfm','admin/cp.html','admin/cp.php','admin/home.asp','admin/home.cfm','admin/home.html','admin/home.php','admin/index.asp','admin/index.cfm','admin/index.html','admin/index.php','admin/login.asp','admin/login.cfm','admin/login.html','admin/login.php','account.asp','account.cfm','account.html','account.php','acct_login/','adm','adm.asp','adm.cfm','adm.html','adm.php','adm/','adm/admloginuser.asp','adm/admloginuser.cfm','adm/admloginuser.php','adm/index.asp','adm/index.cfm','adm/index.html','adm/index.php','adm_auth.asp','adm_auth.cfm','adm_auth.php','admin_area','admin_area/','admin_area/admin.asp','admin_area/admin.cfm','admin_area/admin.html','admin_area/admin.php','admin_area/index.asp','admin_area/index.cfm','admin_area/index.html','admin_area/index.php','admin_area/login.asp','admin_area/login.cfm','admin_area/login.html','admin_area/login.php','admin_login.asp','admin_login.cfm','admin_login.html','admin_login.php','admin1.asp','admin1.html','admin1.php','admin1/','admin2.asp','admin2.cfm','admin2.html','admin2.php','admin2/index.asp','admin2/index.cfm','admin2/index.php','admin2/login.asp','admin2/login.cfm','admin2/login.php','admin4_account/','admin4_colon/','adminarea','adminarea/admin.asp','adminarea/admin.cfm','adminarea/admin.html','adminarea/admin.php','adminarea/index.asp','adminarea/index.cfm','adminarea/index.html','adminarea/index.php','adminarea/login.asp','adminarea/login.cfm','adminarea/login.html','adminarea/login.php','admincontrol.asp','admincontrol.cfm','admincontrol.html','admincontrol.php','admincontrol/login.asp','admincontrol/login.cfm','admincontrol/login.html','admincontrol/login.php','admincp/index.asp','admincp/index.cfm','admincp/index.html','admincp/login.asp','admincp/login.cfm','administer/','administr8.asp','administr8.html','administr8.php','administr8/','administratie/','administration.html','administration.php','administration/','administrator','administrator.asp','administrator.cfm','administrator.html','administrator.php','administrator/','administrator/account.asp','administrator/account.cfm','administrator/account.html','administrator/account.php','administrator/index.asp','administrator/index.cfm','administrator/index.html','administrator/index.php','administrator/login.asp','administrator/login.cfm','administrator/login.html','administrator/login.php','administratoraccounts/','administratorlogin','administratorlogin.asp','administratorlogin.cfm','administratorlogin.php','administrators/','administrivia/','adminLogin','admin-login.asp','adminLogin.asp','admin-login.cfm','adminLogin.cfm','admin-login.html','adminLogin.html','admin-login.php','adminLogin.php','adminpanel.asp','adminpanel.cfm','adminpanel.html','adminpanel.php','adminpro/','admins.asp','admins.html','admins.php','admins/','AdminTools/','admloginuser.asp','admloginuser.cfm','admloginuser.php','affiliate.asp','affiliate.cfm','affiliate.php','autologin/','banneradmin/','bb-admin','bbadmin/','bb-admin/admin.asp','bb-admin/admin.cfm','bb-admin/admin.html','bb-admin/admin.php','bb-admin/index.asp','bb-admin/index.cfm','bb-admin/index.html','bb-admin/index.php','bb-admin/login.asp','bb-admin/login.cfm','bb-admin/login.html','bb-admin/login.php','bigadmin/','blogindex/','cadmins/','ccp14admin/','Clave/','cmsadmin/','controlpanel.asp','controlpanel.cfm','controlpanel.html','controlpanel.php','controlpanel/','cp.asp','cp.cfm','cp.html','cp.php','cpanel/','cPanel/','cpanel_file/','customer_login/','database_administration/','Database_Administration/','directadmin/','dir-login/','ezsqliteadmin/','fileadmin.asp','fileadmin.html','fileadmin.php','fileadmin/','formslogin/','globes_admin/','home.asp','home.cfm','home.html','home.php','
hpwebjetadmin/','Indy_admin/','instadmin','irc-macadmin/','LiveUser_Admin/','login.asp','login.cfm','login.html','login.php','login_db/','login1/','loginflat/','login-redirect/','login-us/','logo_sysadmin/','Lotus_Domino_Admin/','macadmin/','manage','manuallogin/','memberadmin','memberadmin.asp','memberadmin.cfm','memberadmin.php','members/','memlogin/','meta_login/','modelsearch/admin.asp','modelsearch/admin.cfm','modelsearch/admin.html','modelsearch/admin.php','modelsearch/index.asp','modelsearch/index.cfm','modelsearch/index.html','modelsearch/index.php','modelsearch/login.asp','modelsearch/login.cfm','modelsearch/login.html','modelsearch/login.php','moderator','moderator.asp','moderator.cfm','moderator.html','moderator.php','moderator/','moderator/admin.asp','moderator/admin.cfm','moderator/admin.html','moderator/admin.php','moderator/login.asp','moderator/login.cfm','moderator/login.html','moderator/login.php','myadmin/','navSiteAdmin/','newsadmin/','nsw/admin/login.php','openvpnadmin/','P/W/','pages/admin/admin-login.asp','pages/admin/admin-login.cfm','pages/admin/admin-login.html','pages/admin/admin-login.php','panel/','panel-administracion','panel-administracion/admin.asp','panel-administracion/admin.cfm','panel-administracion/admin.html','panel-administracion/admin.php','panel-administracion/index.asp','panel-administracion/index.cfm','panel-administracion/index.html','panel-administracion/index.php','panel-administracion/login.asp','panel-administracion/login.cfm','panel-administracion/login.html','panel-administracion/login.php','passe/','password/','Password/','PASSWORD/','Personal/','pgadmin/','phpldapadmin/','phpmyadmin/','phppgadmin/','phpSQLiteAdmin/','platz_login/','power_user/','project-admins/','pureadmin/','radmind/','radmind-1/','rcjakar/admin/login.php','rcLogin/','senha/','Senha/','Server.asp','Server.html','Server.php','server/','Server/','server_admin_small/','ServerAdministrator/','showlogin/','simpleLogin/','Sing/','siteadmin/index.asp','siteadmin/index.cfm','siteadmin/index.php','siteadmin/login.asp','siteadmin/login.cfm','siteadmin/login.html','siteadmin/login.php','smblogin/','sql-admin/','ss_vms_admin_sm/','sshadmin/','staradmin/','sub-login/','Super-Admin/','support_login/','sysadmin.asp','sysadmin.html','sysadmin.php','sysadmin/','sys-admin/','SysAdmin/','SysAdmin2/','sysadmins/','system_administration/','system-administration/','typo3/','ur-admin.asp','ur-admin.html','ur-admin.php','ur-admin/','usager/','Usager/','user.asp','user.cfm','user.html','user.php','useradmin/','UserLogin/','username/','Username/','USERNAME/','Usuario/','utility_login/','vadmind/','vmailadmin/','webadmin','webadmin.asp','webadmin.cfm','webadmin.html','webadmin.php','webadmin/','WebAdmin/','webadmin/admin.asp','webadmin/admin.cfm','webadmin/admin.html','webadmin/admin.php','webadmin/index.asp','webadmin/index.cfm','webadmin/index.html','webadmin/index.php','webadmin/login.asp','webadmin/login.cfm','webadmin/login.html','webadmin/login.php','wizmysqladmin/','wp-admin','wp-admin/','wp-login.php','wp-login/','xlogin/','yonetici.asp','yonetici.html','yonetici.php','yonetim.asp','yonetim.html','yonetim.php','ser.asp','panel.asp','admin/login.htm','administratorlogin.php','cp.asp','admin.php','administrators.php','relogin.htm','log-in.asp','controlpanel.asp','controlpanel/','vadmind/','log-in.php','authadmin.php','xlogin/','server_admin_small/','admincp/login.php','adm_auth.asp','checkadmin.asp','adminpro/','loginflat/','bb-admin/login.asp','news_detail.php','Indy_admin/','adminitem.asp','vorod.php','moderator/login.asp','login1/','irc-macadmin/','superuser.php','pureadmin/','formslogin/','adminitems/','sysadm/','0manager/','Server/','phpldapadmin/','myadmin/','yonetim.html','adminLogin/','vorod/','sysadm.asp','administrator/','loginok/','root/','yonetim.php','loginphp','index.swf','loginsave/','admin1.htm','dir-login/','wp-login.php','superuserasp','moderator/admin.asp','adminsite/','logoutasp','access/','cpanel_file/','sysadmins/','moderator.php','relogin.php','users/','smblogin/','navSiteAdmin/','isadmin.php','sign-in.php','memlogin/','phppgadmin/','management.asp','js/jquery-1.4.2.js','7','http://www.mirandam.com/panel/about_edit.php','instadmin/','bb-admin/admin.html','0admin/','affiliate.php','meta_login/','signin.php','superuser.asp','loginsuper/','vorod.asp','aadmin/','ur-admin.php','yonetici.asp','admin/controlpanel.asp','administr8.asp','signin.asp','administration/','admin2.asp','blogindex/','ur-admin/','admincontrol.php','cgi-bin/loginasp','js/%20id=','cgi-bin/loginphp','adm.php','admin_login.asp','administration.php','login-us/','supermanagerasp','moderator/admin.php','admin/account.php','Server.asp','useradmin/','adminlogin.php','bigadmin/','moderator.asp','login_adminasp','authentication.asp','power_user/','modules/admin/','admin1.asp','platz_login/','manager/','logout/','manage/','admin/admin.asp','moderator/login.php','pages/admin/admin-login.php','fileadmin.asp','wp-admin/','logo_sysadmin/','admin/adminLogin.htm','bb-admin/admin.asp','pages/admin/','processlogin.php','loginsuperphp','super1php','uvpanel/','macadmin/','system_administration/','admin/cp.php','admin4_account/','sysadmin.php','control.php','supermanphp','super_indexasp','admin/adminLogin.php','panel-administracion/login.php','admin/account.html','admins.php','log_in.php','admins.asp','radmind-1/','sysadm.php','staradmin/','login_db/','userlogin.php','secrets/','accounts.php','security/','login/','manage.php','panel/js/jquery.maskedinput.js','login_userasp','vmailadmin/','globes_admin/','fileadmin/','login_outphp','admin4_colon/','superphp','admin/','vorud.asp','admin_login.php','manager.php','admin/account.asp','admin_area.asp','admin.html','usr/','administr8.php','SysAdmin2/','adminitem.php','login.php','management/','project-admins/','typo3/','admin.htm','admin/home.asp','vorud.php','admins/','accounts/','super_loginphp','super_indexphp','adminpanel.php','memberadmin/','access.asp','superuserphp','system-administration/','pages/admin/admin-login.asp','panel-administracion/login.asp','sign_in.php','super_loginasp','moderator.html','log_in/','autologin.php','ysadmin.asp','supermanasp','adminitems.php','admin/cp.asp','acceso.php','login-redirect/','auth.php','login.asp','Database_Administration/','webadmin.asp','modelsearch/login.asp','cmsadmin/','admincp/login.asp','phpSQLiteAdmin/','login_admin/','ServerAdministrator/','admin-login.asp','letmein.asp','member/','acct_login/','loginsuperasp','manage.asp','sign_in/','LiveUser_Admin/','administratoraccounts/','utility_login/','administrator.php','js/url.slice(0,off)','secure/','administrator/login.asp','checklogin.asp','admin_area/login.php','authentication.php','UserLogin/','webadmin/','rcLogin/','sub-login/','authenticate.asp','login.html','admin/admin-login.php','ss_vms_admin_sm/','SysAdmin/','secret/','login1php','fileadmin.php','controlpanel.php','members.asp','login1asp','irectadmin/','adminlogin.asp','affiliate.asp','admin/home.php','admin.asp','superuser/','Server.php','cpanel/','cp.php','customer_login/','access.php','administratie/','control.asp','autologin/','wp-login/','administrator/login.php','admin/admin-login.asp','openvpnadmin/','FCKeditor/editor/images/anchor.gif','checklogin.php','admin1.html','siteadmin.php','yonetim.asp','supervise/Loginasp','adminitem/','admin/controlpanel.php','authuser.php','modelsearch/login.php','ur-admin.asp','showlogin/','webmaster.php','letmein.php','admin-login.php','sign_in.asp','sshadmin/','loginasp','checkadmin.php','letmein/','panel.php','simpleLogin/','control/','log-in/','moderator/','admin/login.asp','members/','admin_area.php','logoutphp','administrator/account.php','bb-admin/','administr8/','relogin.asp','cmsadmin.asp','member.php','admin/adminLogin.html','adminpanel/','supermanagerphp','panel-administracion/','relogin.html','sign-in.asp','adm_auth.php','ezsqliteadmin/','adm.asp','member.asp','admin1.php','radmind/','login_outasp','admin2.php','admin_area/','sql-admin/','administratorlogin/','admin/login.php','admin/controlpanel.htm','processlogin.asp','administrators.asp','admincp/','Super-Admin/','kpanel/','log_in.asp','webadmin.php','accounts.asp','checkuser.php','ccp14admin/','newsadmin/','check.asp','manuallogin/','phpmyadmin/','administrators/','autologin.asp','checkuser.asp','acceso.asp','adminitems.asp','auth.asp','superasp','login_userphp','PSUser/','siteadmin.asp','admin_area/login.asp','wizmysqladmin/','memberadmin.php','userlogin.asp','siteadmin/','adminarea/','adm/','users.php','supervise/Loginphp','manager.asp','users.asp','login.htm','cmsadmin.php','administration.asp','signin/','admin_area/admin.php','admincontrol.asp','supervise/','adminpanel.asp','super1asp','login_adminphp','webmaster/','sign-in/','bbadmin/','authadmin.asp','admin/adminLogin.asp','hpwebjetadmin/','super1/','support_login/','login_out/','yonetici.html','administratorlogin.asp','bb-admin/login.php','management.php','administer/','yonetici.php','sys-admin/','Lotus_Domino_Admin/','members.php','administrivia/','authenticate.php','banneradmin/','user/','AdminTools/','admin/controlpanel.html','webmaster.asp','administrator.asp','authuser.asp','cadmins/','superman/','admincontrol/','bb-admin/admin.php','supervisor/','pgadmin/','loginerror/','admin/admin_login.php','isadmin.asp','check.php','admin/admin_login.asp','admin_area/admin.aspuser.php','admin/admin.php','admin/login.html','admin2.html','admin1/','vorud/','memberadmin.asp','administrator/account.asp'
);

foreach $ways(@path2){

$final=$site.$ways;

my $req=HTTP::Request->new(GET=>$final);
my $ua=LWP::UserAgent->new();
$ua->timeout(30);
my $response=$ua->request($req);

if($response->content =~ /Username/ ||
$response->content =~ /Password/ ||
$response->content =~ /username/ ||
$response->content =~ /password/ ||
$response->content =~ /USERNAME/ ||
$response->content =~ /PASSWORD/ ||
$response->content =~ /Username/ ||
$response->content =~ /Wachtwoord/ ||
$response->content =~ /Senha/ ||
$response->content =~ /senha/ ||
$response->content =~ /Personal/ ||
$response->content =~ /Usuario/ ||
$response->content =~ /Clave/ ||
$response->content =~ /Usager/ ||
$response->content =~ /usager/ ||
$response->content =~ /Sing/ ||
$response->content =~ /passe/ ||
$response->content =~ /P\/W/ || 
$response->content =~ /Admin Password/
){
print " \n [+] Found -> $final\n\n";

if ($save eq "y"){
print "Save stored\n";
open (MYFILE, '>>hits.txt');
print MYFILE " \n $final\n";
close (MYFILE); 
}
if ($save eq "n"){
print "Save NOT stored\n"; }
}else{
print "[-] Not Found <- $final\n";
}
}
}
}
#########################shell finder  ######################

if ($targett eq '7')
{
print color('bold red'),"  [";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white')," Enter Site : ";
$site=<STDIN>;
chomp $site;
 
if($site !~ /http:\/\//) { $site = "http://$site/"; };
 
print "\n";

@path = ('WSO.php','1998.php','dz.php','w.php','wp-content/plugins/akismet/akismet.php','images/stories/w.php','w.php','shell.php','cpanel.php','cpn.php','13.php','sql.php','mysql.php','config.php','configuration.php','madspot.php','Cgishell.pl','killer.php','changeall.php','2.php','Sh3ll.php','dz0.php','dam.php','user.php','dom.php','whmcs.php','r00t.php','1.php','a.php','r0k.php','abc.php','egy.php','syrian_shell.php','xxx.php','settings.php','tmp.php','cyber.php','c99.php','r57.php','404.php','gaza.php','1.php','d4rk.php','index1.php','nkr.php','xd.php','M4r0c.php','Dz.php','sniper.php','ksa.php','v4team.php','offline.php','priv8.php','911.php','madspotshell.php','c100.php','sym.php','cp.php','tmp/cpn.php','tmp/w.php','tmp/r57.php','tmp/king.php','tmp/sok.php','tmp/ss.php','tmp/as.php','tmp/dz.php','tmp/r1z.php','tmp/whmcs.php','tmp/root.php','tmp/r00t.php','templates/beez/index.php','templates/beez/beez.php','templates/rhuk_milkyway/index.php','tmp/uploads.php','tmp/upload.php','tmp/sa.php','sa.php','readme.php','tmp/readme.php','wp.zip'.'wp-content/plugins/disqus-comment-system/disqus.php',
'd0mains.php','wp-content/plugins/akismet/akismet.php','madspotshell.php','indoxploit.php','IndoXploit.php','andela.php','mini.php','info.php','egyshell.php','Sym.php','c22.php','c100.php',
'wp-content/plugins/akismet/admin.php#','configuration.php','g.php','wp-content/plugins/google-sitemap-generator/sitemap-core.php#',
'wp-content/plugins/akismet/widget.php#','xx.pl','ls.php','Cpanel.php','k.php','zone-h.php','tmp/user.php','tmp/Sym.php','cp.php',
'tmp/madspotshell.php','tmp/root.php','tmp/whmcs.php','tmp/index.php','tmp/2.php','tmp/dz.php','tmp/cpn.php',
'tmp/changeall.php','tmp/Cgishell.pl','tmp/sql.php','0day.php','tmp/admin.php','cliente/downloads/h4xor.php',
'whmcs/downloads/dz.php','L3b.php','d.php','tmp/d.php','tmp/L3b.php','wp-content/plugins/akismet/admin.php',
'templates/rhuk_milkyway/index.php','templates/beez/index.php','sado.php','admin1.php','upload.php','up.php','vb.zip','vb.rar',
'admin2.asp','uploads.php','sa.php','sysadmins/','admin1/','sniper.php','administration/Sym.php','images/Sym.php',
'/r57.php','/wp-content/plugins/disqus-comment-system/disqus.php','gzaa_spysl','sql-new.php','/shell.php','/sa.php','/admin.php',
'/sa2.php','/2.php','/gaza.php','/up.php','/upload.php','/uploads.php','/templates/beez/index.php','shell.php','/amad.php',
'/t00.php','/dz.php','/site.rar','/Black.php','/site.tar.gz','/home.zip','/home.rar','/home.tar','/home.tar.gz',
'/forum.zip','/forum.rar','/forum.tar','/forum.tar.gz','/test.txt','/ftp.txt','/user.txt','/site.txt','/error_log','/error',
'/cpanel','/awstats','/site.sql','/vb.sql','/forum.sql','r00t-s3c.php','c.php','/backup.sql','/back.sql','/data.sql','wp.rar/',
'wp-content/plugins/disqus-comment-system/disqus.php','asp.aspx','/templates/beez/index.php','tmp/vaga.php',
'tmp/killer.php','whmcs.php','abuhlail.php','tmp/killer.php','tmp/domaine.pl','tmp/domaine.php','useradmin/',
'tmp/d0maine.php','d0maine.php','tmp/sql.php','X.php','123.php','m.php','b.php','up.php','tmp/dz1.php','dz1.php','forum.zip','Symlink.php','Symlink.pl',
'forum.rar','joomla.zip','joomla.rar','wp.php','buck.sql','sysadmin.php','images/c99.php', 'xd.php', 'c100.php',
'spy.aspx','xd.php','tmp/xd.php','sym/root/home/','billing/killer.php','tmp/upload.php','tmp/admin.php',
'Server.php','tmp/uploads.php','tmp/up.php','Server/','wp-admin/c99.php','tmp/priv8.php','priv8.php','cgi.pl/',
'tmp/cgi.pl','downloads/dom.php','templates/ja-helio-farsi/index.php','webadmin.html','admins.php',
'/wp-content/plugins/count-per-day/js/yc/d00.php','bluff.php','king.jeen','admins/','admins.asp','admins.php','wp.zip','/wp-content/plugins/disqus-comment-system/WSO.php',
'/images/root.php',
'/COPYRIGHT.php',
'/images/root.php',
'/wp-content/plugins/disqus-comment-system/Sym.php',
'/wp-content/plugins/disqus-comment-system/c22.php',
'/wp-includes/wp-footer.php',
'/wp-content/plugins/disqus-comment-system/c100.php',
'/wp-content/plugins/disqus-comment-system/configuration.php',
'/wp-content/plugins/disqus-comment-system/g.php',
'/wp-content/plugins/disqus-comment-system/xx.pl',
'/wp-content/plugins/disqus-comment-system/ls.php',
'/wp-content/plugins/disqus-comment-system/Cpanel.php',
'/wp-content/plugins/disqus-comment-system/k.php',
'/wp-content/plugins/disqus-comment-system/zone-h.php',
'/wp-content/plugins/disqus-comment-system/tmp/user.php',
'/wp-content/plugins/disqus-comment-system/tmp/Sym.php',
'/wp-content/plugins/disqus-comment-system/cp.php',
'/wp-content/plugins/disqus-comment-system/tmp/madspotshell.php',
'/wp-content/plugins/disqus-comment-system/tmp/root.php',
'/wp-content/plugins/disqus-comment-system/tmp/whmcs.php',
'/wp-content/plugins/disqus-comment-system/tmp/index.php',
'/wp-content/plugins/disqus-comment-system/tmp/2.php',
'/wp-content/plugins/disqus-comment-system/tmp/dz.php',
'/wp-content/plugins/disqus-comment-system/tmp/cpn.php',
'/wp-content/plugins/disqus-comment-system/tmp/changeall.php',
'/wp-content/plugins/disqus-comment-system/tmp/Cgishell.pl',
'/wp-content/plugins/disqus-comment-system/tmp/sql.php',
'/wp-content/plugins/disqus-comment-system/0day.php',
'/wp-content/plugins/disqus-comment-system/tmp/admin.php',
'/wp-content/plugins/disqus-comment-system/L3b.php',
'/wp-content/plugins/disqus-comment-system/d.php',
'/wp-content/plugins/disqus-comment-system/tmp/d.php',
'/wp-content/plugins/disqus-comment-system/tmp/L3b.php',
'/wp-content/plugins/disqus-comment-system/sado.php',
'/wp-content/plugins/disqus-comment-system/admin1.php',
'wp-content/plugins/akismet/WSO.php',
'wp-content/plugins/akismet/dz.php',
'wp-content/plugins/akismet/DZ.php',
'wp-content/plugins/akismet/cpanel.php',
'wp-content/plugins/akismet/cpn.php',
'wp-content/plugins/akismet/sos.php',
'wp-content/plugins/akismet/term.php',
'wp-content/plugins/akismet/Sec-War.php',
'wp-content/plugins/akismet/sql.php',
'wp-content/plugins/akismet/ssl.php',
'wp-content/plugins/akismet/info.php',
'wp-content/plugins/akismet/egyshell.php',
'wp-content/plugins/akismet/Sym.php',
'wp-content/plugins/akismet/c22.php',
'wp-content/plugins/akismet/c100.php',
'wp-content/plugins/akismet/configuration.php',
'wp-content/plugins/akismet/g.php',
'wp-content/plugins/akismet/xx.pl',
'wp-content/plugins/akismet/ls.php',
'wp-content/plugins/akismet/Cpanel.php',
'wp-content/plugins/akismet/k.php',
'wp-content/plugins/akismet/zone-h.php',
'wp-content/plugins/akismet/tmp/user.php',
'wp-content/plugins/akismet/tmp/Sym.php',
'wp-content/plugins/akismet/cp.php',
'wp-content/plugins/akismet/tmp/madspotshell.php',
'wp-content/plugins/akismet/tmp/root.php',
'wp-content/plugins/akismet/tmp/whmcs.php',
'wp-content/plugins/akismet/tmp/index.php',
'wp-content/plugins/akismet/tmp/2.php',
'wp-content/plugins/akismet/tmp/dz.php',
'wp-content/plugins/akismet/tmp/cpn.php',
'wp-content/plugins/akismet/tmp/changeall.php',
'wp-content/plugins/akismet/tmp/Cgishell.pl',
'wp-content/plugins/akismet/tmp/sql.php',
'wp-content/plugins/akismet/0day.php',
'wp-content/plugins/akismet/tmp/admin.php',
'wp-content/plugins/akismet/L3b.php',
'wp-content/plugins/akismet/d.php',
'wp-content/plugins/akismet/tmp/d.php',
'wp-content/plugins/akismet/tmp/L3b.php',
'wp-content/plugins/akismet/sado.php',
'wp-content/plugins/akismet/admin1.php',
'wp-content/plugins/akismet/upload.php',
'wp-content/plugins/akismet/up.php',
'wp-content/plugins/akismet/vb.zip',
'wp-content/plugins/akismet/vb.rar',
'wp-content/plugins/akismet/admin2.asp',
'wp-content/plugins/akismet/uploads.php',
'wp-content/plugins/akismet/sa.php',
'wp-content/plugins/akismet/sysadmins/',
'wp-content/plugins/akismet/admin1/',
'wp-content/plugins/akismet/sniper.php',
'wp-content/plugins/akismet//ftp.txt',
'wp-content/plugins/akismet//user.txt',
'wp-content/plugins/akismet//site.txt',
'wp-content/plugins/akismet//error_log',
'wp-content/plugins/akismet//error',
'wp-content/plugins/akismet//cpanel',
'wp-content/plugins/akismet//awstats',
'wp-content/plugins/akismet//site.sql',
'wp-content/plugins/akismet//vb.sql',
'wp-content/plugins/akismet//forum.sql',
'wp-content/plugins/akismet/r00t-s3c.php',
'wp-content/plugins/akismet/c.php',
'wp-content/plugins/akismet//backup.sql',
'wp-content/plugins/akismet//back.sql',
'wp-content/plugins/akismet//data.sql',
'wp-content/plugins/akismet/wp.rar/',
'wp-content/plugins/akismet/asp.aspx',
'wp-content/plugins/akismet/tmp/vaga.php',
'wp-content/plugins/akismet/tmp/killer.php',
'wp-content/plugins/akismet/whmcs.php',
'wp-content/plugins/akismet/abuhlail.php',
'wp-content/plugins/akismet/tmp/killer.php',
'wp-content/plugins/akismet/tmp/domaine.pl',
'wp-content/plugins/akismet/tmp/domaine.php',
'wp-content/plugins/akismet/useradmin/',
'wp-content/plugins/akismet/tmp/d0maine.php',
'wp-content/plugins/akismet/d0maine.php',
'wp-content/plugins/akismet/tmp/sql.php',
'wp-content/plugins/akismet/X.php',
'wp-content/plugins/akismet/123.php',
'wp-content/plugins/akismet/m.php',
'wp-content/plugins/akismet/b.php',
'wp-content/plugins/akismet/up.php',
'wp-content/plugins/akismet/tmp/dz1.php',
'wp-content/plugins/akismet/dz1.php',
'wp-content/plugins/akismet/forum.zip',
'wp-content/plugins/akismet/Symlink.php',
'wp-content/plugins/akismet/Symlink.pl',
'wp-content/plugins/akismet/forum.rar',
'wp-content/plugins/akismet/joomla.zip',
'wp-content/plugins/akismet/joomla.rar',
'wp-content/plugins/akismet/wp.php',
'wp-content/plugins/akismet/buck.sql',
'wp-content/plugins/akismet/sysadmin.php',
'wp-content/plugins/akismet/images/c99.php',
'wp-content/plugins/akismet/xd.php',
'wp-content/plugins/akismet/c100.php',
'wp-content/plugins/akismet/spy.aspx',
'wp-content/plugins/akismet/xd.php',
'wp-content/plugins/akismet/tmp/xd.php',
'wp-content/plugins/akismet/sym/root/home/',
'wp-content/plugins/akismet/billing/killer.php',
'wp-content/plugins/akismet/tmp/upload.php',
'wp-content/plugins/akismet/tmp/admin.php',
'wp-content/plugins/akismet/Server.php',
'wp-content/plugins/akismet/tmp/uploads.php',
'wp-content/plugins/akismet/tmp/up.php',
'wp-content/plugins/akismet/Server/',
'wp-content/plugins/akismet/wp-admin/c99.php',
'wp-content/plugins/akismet/tmp/priv8.php',
'wp-content/plugins/akismet/priv8.php',
'wp-content/plugins/akismet/cgi.pl/',
'wp-content/plugins/akismet/tmp/cgi.pl',
'wp-content/plugins/akismet/downloads/dom.php',
'wp-content/plugins/akismet/webadmin.html',
'wp-content/plugins/akismet/admins.php',
'wp-content/plugins/akismet/bluff.php',
'wp-content/plugins/akismet/king.jeen',
'wp-content/plugins/akismet/admins/',
'wp-content/plugins/akismet/admins.asp',
'wp-content/plugins/akismet/admins.php',
'wp-content/plugins/akismet/wp.zip',
'wp-content/plugins/akismet/disqus.php',
'wp-content/plugins/google-sitemap-generator//cpanel',
'wp-content/plugins/google-sitemap-generator//awstats',
'wp-content/plugins/google-sitemap-generator//site.sql',
'wp-content/plugins/google-sitemap-generator//vb.sql',
'wp-content/plugins/google-sitemap-generator//forum.sql',
'wp-content/plugins/google-sitemap-generator/r00t-s3c.php',
'wp-content/plugins/google-sitemap-generator/c.php',
'wp-content/plugins/google-sitemap-generator//backup.sql',
'wp-content/plugins/google-sitemap-generator//back.sql',
'wp-content/plugins/google-sitemap-generator//data.sql',
'wp-content/plugins/google-sitemap-generator/wp.rar/',
'wp-content/plugins/google-sitemap-generator/asp.aspx',
'wp-content/plugins/google-sitemap-generator/tmp/xd.php',
'wp-content/plugins/google-sitemap-generator/sym/root/home/',
'wp-content/plugins/google-sitemap-generator/billing/killer.php',
'wp-content/plugins/google-sitemap-generator/tmp/upload.php',
'wp-content/plugins/google-sitemap-generator/tmp/admin.php',
'wp-content/plugins/google-sitemap-generator/Server.php',
'wp-content/plugins/google-sitemap-generator/tmp/uploads.php',
'wp-content/plugins/google-sitemap-generator/tmp/up.php',
'wp-content/plugins/google-sitemap-generator/Server/',
'wp-content/plugins/google-sitemap-generator/wp-admin/c99.php',
'wp-content/plugins/google-sitemap-generator/tmp/priv8.php',
'wp-content/plugins/google-sitemap-generator/priv8.php',
'wp-content/plugins/google-sitemap-generator/cgi.pl/',
'wp-content/plugins/google-sitemap-generator/tmp/cgi.pl',
'wp-content/plugins/google-sitemap-generator/downloads/dom.php',
'wp-content/plugins/google-sitemap-generator/webadmin.html',
'wp-content/plugins/google-sitemap-generator/admins.php',
'wp-content/plugins/google-sitemap-generator/bluff.php',
'wp-content/plugins/google-sitemap-generator/king.jeen',
'wp-content/plugins/google-sitemap-generator/admins/',
'wp-content/plugins/google-sitemap-generator/admins.asp',
'wp-content/plugins/google-sitemap-generator/admins.php',
'wp-content/plugins/google-sitemap-generator/wp.zip',
'wp-content/plugins/google-sitemap-generator/sitemap-core.php',
'/templates/beez/WSO.php',
'/templates/beez/dz.php',
'/templates/beez/DZ.php',
'/templates/beez/cpn.php',
'/templates/beez/sos.php',
'/templates/beez/term.php',
'/templates/beez/Sec-War.php',
'/templates/beez/sql.php',
'/templates/beez/ssl.php',
'/templates/beez/mysql.php',
'/templates/beez/WolF.php',
'/templates/beez/configuration.php',
'/templates/beez/g.php',
'/templates/beez/xx.pl',
'/templates/beez/ls.php',
'/templates/beez/Cpanel.php',
'/templates/beez/k.php',
'/templates/beez/zone-h.php',
'/templates/beez/tmp/user.php',
'/templates/beez/tmp/Sym.php',
'/templates/beez/cp.php',
'/templates/beez/tmp/madspotshell.php',
'/templates/beez/tmp/root.php',
'/templates/beez/tmp/whmcs.php',
'/templates/beez/tmp/index.php',
'/templates/beez/tmp/2.php',
'/templates/beez/tmp/dz.php',
'/templates/beez/tmp/cpn.php',
'/templates/beez/tmp/changeall.php',
'/templates/beez/tmp/Cgishell.pl',
'/templates/beez/tmp/sql.php',
'/templates/beez/0day.php',
'/templates/beez/tmp/admin.php',
'/templates/beez/L3b.php',
'/templates/beez/d.php',
'/templates/beez/tmp/d.php',
'/templates/beez/tmp/L3b.php',
'/templates/beez/sado.php',
'/templates/beez/admin1.php',
'/templates/beez/upload.php',
'/templates/beez/up.php',
'/templates/beez/vb.zip',
'/templates/beez/vb.rar',
'/templates/beez/admin2.asp',
'/templates/beez/uploads.php',
'/templates/beez/sa.php',
'/templates/beez/sysadmins/',
'/templates/beez/admin1/',
'/templates/beez/sniper.php',
'/templates/beez/images/Sym.php',
'/templates/beez//r57.php',
'/templates/beez/gzaa_spysl',
'/templates/beez/sql-new.php',
'/templates/beez//shell.php',
'/templates/beez//sa.php',
'/templates/beez//admin.php',
'/templates/beez//sa2.php',
'/templates/beez//2.php',
'/templates/beez//gaza.php',
'/templates/beez//up.php',
'/templates/beez//upload.php',
'/templates/beez//uploads.php',
'/templates/beez/shell.php',
'/templates/beez//amad.php',
'/templates/beez//t00.php',
'/templates/beez//dz.php',
'/templates/beez//site.rar',
'/templates/beez//Black.php',
'/templates/beez//site.tar.gz',
'/templates/beez//home.zip',
'/templates/beez//home.rar',
'/templates/beez//home.tar',
'/templates/beez//home.tar.gz',
'/templates/beez//forum.zip',
'/templates/beez//forum.rar',
'/templates/beez//forum.tar',
'/templates/beez//forum.tar.gz',
'/templates/beez//test.txt',
'/templates/beez//ftp.txt',
'/templates/beez//user.txt',
'/templates/beez//site.txt',
'/templates/beez//error_log',
'/templates/beez//error',
'/templates/beez//cpanel',
'/templates/beez//awstats',
'/templates/beez//site.sql',
'/templates/beez//vb.sql',
'/templates/beez//forum.sql',
'/templates/beez/r00t-s3c.php',
'/templates/beez/c.php',
'/templates/beez//backup.sql',
'/templates/beez//back.sql',
'/templates/beez//data.sql',
'/templates/beez/wp.rar/',
'/templates/beez/asp.aspx',
'/templates/beez/tmp/vaga.php',
'/templates/beez/tmp/killer.php',
'/templates/beez/whmcs.php',
'/templates/beez/abuhlail.php',
'/templates/beez/tmp/killer.php',
'/templates/beez/tmp/domaine.pl',
'/templates/beez/tmp/domaine.php',
'/templates/beez/useradmin/',
'/templates/beez/tmp/d0maine.php',
'/templates/beez/d0maine.php',
'/templates/beez/tmp/sql.php',
'/templates/beez/X.php',
'/templates/beez/123.php',
'/templates/beez/m.php',
'/templates/beez/b.php',
'/templates/beez/up.php',
'/templates/beez/tmp/dz1.php',
'/templates/beez/dz1.php',
'/templates/beez/forum.zip',
'/templates/beez/Symlink.php',
'/templates/beez/Symlink.pl',
'/templates/beez/forum.rar',
'/templates/beez/joomla.zip',
'/templates/beez/joomla.rar',
'/templates/beez/wp.php',
'/templates/beez/buck.sql',
'/templates/beez/sysadmin.php',
'/templates/beez/images/c99.php',
'/templates/beez/xd.php',
'/templates/beez/c100.php',
'/templates/beez/spy.aspx',
'/templates/beez/xd.php',
'/templates/beez/tmp/xd.php',
'/templates/beez/sym/root/home/',
'/templates/beez/billing/killer.php',
'/templates/beez/tmp/upload.php',
'/templates/beez/tmp/admin.php',
'/templates/beez/Server.php',
'/templates/beez/tmp/uploads.php',
'/templates/beez/tmp/up.php',
'/templates/beez/Server/',
'/templates/beez/wp-admin/c99.php',
'/templates/beez/tmp/priv8.php',
'/templates/beez/priv8.php',
'/templates/beez/cgi.pl/',
'/templates/beez/tmp/cgi.pl',
'/templates/beez/downloads/dom.php',
'/templates/beez/webadmin.html',
'/templates/beez/admins.php',
'/templates/beez/bluff.php',
'/templates/beez/king.jeen',
'/templates/beez/admins/',
'/templates/beez/admins.asp',
'/templates/beez/admins.php',
'/templates/beez/wp.zip',
'/templates/beez/index.php','/images/WSO.php',
'/images/dz.php',
'/images/DZ.php',
'/images/cpanel.php',
'/images/cpn.php',
'/images/sos.php',
'/images/term.php',
'/images/Sec-War.php',
'/images/sql.php',
'/images/ssl.php',
'/images/mysql.php',
'/images/WolF.php',
'/images/madspot.php',
'/images/Cgishell.pl',
'/images/killer.php',
'/images/changeall.php',
'/images/2.php',
'/images/Sh3ll.php',
'/images/dz0.php',
'/images/dam.php',
'/images/user.php',
'/images/dom.php',
'/images/whmcs.php',
'/images/vb.zip',
'/images/sa.php',
'/images/sysadmins/',
'/images/admin1/',
'/images/sniper.php',
'/images/images/Sym.php',
'/images//r57.php',
'/images/gzaa_spysl',
'/images/sql-new.php',
'/images//shell.php',
'/images//sa.php',
'/images//admin.php',
'/images//sa2.php',
'/images//2.php',
'/images//user.txt',
'/images//site.txt',
'/images//error_log',
'/images//error',
'/images//cpanel',
'/images//awstats',
'/images//site.sql',
'/images//vb.sql',
'/images//forum.sql',
'/images/r00t-s3c.php',
'/images/c.php',
'/images//backup.sql',
'/images//back.sql',
'/images//data.sql',
'/images/wp.rar/',
'/images/asp.aspx',
'/images/tmp/vaga.php',
'/images/tmp/killer.php',
'/images/whmcs.php',
'/images/abuhlail.php',
'/images/tmp/killer.php',
'/images/tmp/domaine.pl',
'/images/tmp/domaine.php',
'/images/useradmin/',
'/images/tmp/d0maine.php',
'/images/d0maine.php',
'/images/tmp/sql.php',
'/images/X.php',
'/images/123.php',
'/images/m.php',
'/images/b.php',
'/images/up.php',
'/images/tmp/dz1.php',
'/images/dz1.php',
'/images/forum.zip',
'/images/Symlink.php',
'/images/Symlink.pl',
'/images/forum.rar',
'/images/joomla.zip',
'/images/joomla.rar',
'/images/wp.php',
'/images/buck.sql',
'/includes/WSO.php',
'/includes/dz.php',
'/includes/DZ.php',
'/includes/cpanel.php',
'/includes/cpn.php',
'/includes/sos.php',
'/includes/term.php',
'/includes/Sec-War.php',
'/includes/sql.php',
'/includes/ssl.php',
'/includes/mysql.php',
'/includes/WolF.php',
'/includes/madspot.php',
'/includes/Cgishell.pl',
'/includes/killer.php',
'/includes/changeall.php',
'/includes/2.php',
'/includes/Sh3ll.php',
'/includes/dz0.php',
'/includes/dam.php',
'/includes/user.php',
'/includes/dom.php',
'/includes/whmcs.php',
'/includes/vb.zip',
'/includes/r00t.php',
'/includes/c99.php',
'/includes/gaza.php',
'/includes/1.php',
'/includes/d0mains.php',
'/includes/madspotshell.php',
'/includes/info.php',
'/includes/egyshell.php',
'/includes/Sym.php',
'/includes/c22.php',
'/includes/c100.php',
'/includes/configuration.php',
'/includes/g.php',
'/includes/xx.pl',
'/includes/ls.php',
'/includes/Cpanel.php',
'/includes/k.php',
'/includes/zone-h.php',
'/includes/tmp/user.php',
'/includes/tmp/Sym.php',
'/includes/cp.php',
'/includes/tmp/madspotshell.php',
'/includes/tmp/root.php',
'/includes/tmp/whmcs.php',
'/includes/tmp/index.php',
'/includes/tmp/2.php',
'/includes/tmp/dz.php',
'/includes/tmp/cpn.php',
'/includes/tmp/changeall.php',
'/includes/tmp/Cgishell.pl',
'/includes/tmp/sql.php',
'/includes/0day.php',
'/includes/tmp/admin.php',
'/includes/L3b.php',
'/includes/d.php',
'/includes/tmp/d.php',
'/includes/tmp/L3b.php',
'/includes/sado.php',
'/includes/admin1.php',
'/includes/upload.php',
'/includes/up.php',
'/includes/vb.zip',
'/includes/vb.rar',
'/includes/admin2.asp',
'/includes/uploads.php',
'/includes/sa.php',
'/includes/sysadmins/',
'/includes/admin1/',
'/includes/sniper.php',
'/includes/images/Sym.php',
'/includes//r57.php',
'/includes/gzaa_spysl',
'/includes/sql-new.php',
'/includes//shell.php',
'/includes//sa.php',
'/includes//admin.php',
'/includes//sa2.php',
'/includes//2.php',
'/includes//gaza.php',
'/includes//up.php',
'/includes//upload.php',
'/includes//uploads.php',
'/includes/shell.php',
'/includes//amad.php',
'/includes//t00.php',
'/includes//dz.php',
'/includes//site.rar',
'/includes//Black.php',
'/includes//site.tar.gz',
'/includes//home.zip',
'/includes//home.rar',
'/includes//home.tar',
'/includes//home.tar.gz',
'/includes//forum.zip',
'/includes//forum.rar',
'/includes//forum.tar',
'/includes//forum.tar.gz',
'/includes//test.txt',
'/includes//ftp.txt',
'/includes//user.txt',
'/includes//site.txt',
'/includes//error_log',
'/includes//error',
'/includes//cpanel',
'/includes//awstats',
'/includes//site.sql',
'/includes//vb.sql',
'/includes//forum.sql',
'/includes/r00t-s3c.php',
'/includes/c.php',
'/includes//backup.sql',
'/includes//back.sql',
'/includes//data.sql',
'/includes/wp.rar/',
'/includes/asp.aspx',
'/includes/tmp/vaga.php',
'/includes/tmp/killer.php',
'/includes/whmcs.php',
'/includes/abuhlail.php',
'/includes/tmp/killer.php',
'/includes/tmp/domaine.pl',
'/includes/tmp/domaine.php',
'/includes/useradmin/',
'/includes/tmp/d0maine.php',
'/includes/d0maine.php',
'/includes/tmp/sql.php',
'/includes/X.php',
'/includes/123.php',
'/includes/m.php',
'/includes/b.php',
'/includes/up.php',
'/includes/tmp/dz1.php',
'/includes/dz1.php',
'/includes/forum.zip',
'/includes/Symlink.php',
'/includes/Symlink.pl',
'/includes/forum.rar',
'/includes/joomla.zip',
'/includes/joomla.rar',
'/includes/wp.php',
'/includes/buck.sql',
'/includes/sysadmin.php',
'/includes/images/c99.php',
'/includes/xd.php',
'/xGSx.php',
'/includes/c100.php',
'/includes/spy.aspx',
'/includes/xd.php',
'/includes/tmp/xd.php',
'/includes/sym/root/home/',
'/includes/billing/killer.php',
'/includes/tmp/upload.php',
'/includes/tmp/admin.php',
'/includes/Server.php',
'/includes/tmp/uploads.php',
'/includes/tmp/up.php',
'/includes/Server/',
'/includes/wp-admin/c99.php',
'/includes/tmp/priv8.php',
'/includes/priv8.php',
'/includes/cgi.pl/',
'/includes/tmp/cgi.pl',
'/includes/downloads/dom.php',
'/includes/webadmin.html',
'/includes/admins.php',
'/includes/bluff.php',
'/includes/king.jeen',
'/includes/admins/',
'/includes/admins.asp',
'/includes/admins.php',
'/includes/wp.zip',
'/includes/',
'/templates/rhuk_milkyway/WSO.php',
'/templates/rhuk_milkyway/dz.php',
'/templates/rhuk_milkyway/DZ.php',
'/templates/rhuk_milkyway/cpanel.php',
'/templates/rhuk_milkyway/cpn.php',
'/templates/rhuk_milkyway/sos.php',
'/templates/rhuk_milkyway/term.php',
'/templates/rhuk_milkyway/Sec-War.php',
'/templates/rhuk_milkyway/sql.php',
'/templates/rhuk_milkyway/ssl.php',
'/templates/rhuk_milkyway/mysql.php',
'/templates/rhuk_milkyway/WolF.php',
'/templates/rhuk_milkyway/madspot.php',
'/templates/rhuk_milkyway/Cgishell.pl',
'/templates/rhuk_milkyway/killer.php',
'/templates/rhuk_milkyway/changeall.php',
'/templates/rhuk_milkyway/2.php',
'/templates/rhuk_milkyway/Sh3ll.php',
'/templates/rhuk_milkyway/dz0.php',
'/templates/rhuk_milkyway/dam.php',
'/templates/rhuk_milkyway/user.php',
'/templates/rhuk_milkyway/dom.php',
'/templates/rhuk_milkyway/whmcs.php',
'/templates/rhuk_milkyway/vb.zip',
'/templates/rhuk_milkyway/r00t.php',
'/templates/rhuk_milkyway/c99.php',
'/templates/rhuk_milkyway/gaza.php',
'/templates/rhuk_milkyway/1.php',
'/templates/rhuk_milkyway/d0mains.php',
'/templates/rhuk_milkyway/madspotshell.php',
'/templates/rhuk_milkyway/info.php',
'/templates/rhuk_milkyway/egyshell.php',
'/templates/rhuk_milkyway/Sym.php',
'/templates/rhuk_milkyway/c22.php',
'/templates/rhuk_milkyway/c100.php',
'/templates/rhuk_milkyway/configuration.php',
'/templates/rhuk_milkyway/g.php',
'/templates/rhuk_milkyway/xx.pl',
'/templates/rhuk_milkyway/ls.php',
'/templates/rhuk_milkyway/Cpanel.php',
'/templates/rhuk_milkyway/k.php',
'/templates/rhuk_milkyway/zone-h.php',
'/templates/rhuk_milkyway/tmp/user.php',
'/templates/rhuk_milkyway/tmp/Sym.php',
'/templates/rhuk_milkyway/cp.php',
'/templates/rhuk_milkyway/tmp/madspotshell.php',
'/templates/rhuk_milkyway/tmp/root.php',
'/templates/rhuk_milkyway/tmp/whmcs.php',
'/templates/rhuk_milkyway/tmp/index.php',
'/templates/rhuk_milkyway/tmp/2.php',
'/templates/rhuk_milkyway/tmp/dz.php',
'/templates/rhuk_milkyway/tmp/cpn.php',
'/templates/rhuk_milkyway/tmp/changeall.php',
'/templates/rhuk_milkyway/tmp/Cgishell.pl',
'/templates/rhuk_milkyway/tmp/sql.php',
'/templates/rhuk_milkyway/0day.php',
'/templates/rhuk_milkyway/tmp/admin.php',
'/templates/rhuk_milkyway/L3b.php',
'/templates/rhuk_milkyway/d.php',
'/templates/rhuk_milkyway/tmp/d.php',
'/templates/rhuk_milkyway/tmp/L3b.php',
'/templates/rhuk_milkyway/sado.php',
'/templates/rhuk_milkyway/admin1.php',
'/templates/rhuk_milkyway/upload.php',
'/templates/rhuk_milkyway/up.php',
'/templates/rhuk_milkyway/vb.zip',
'/templates/rhuk_milkyway/vb.rar',
'/templates/rhuk_milkyway/admin2.asp',
'/templates/rhuk_milkyway/uploads.php',
'/templates/rhuk_milkyway/sa.php',
'/templates/rhuk_milkyway/sysadmins/',
'/templates/rhuk_milkyway/admin1/',
'/templates/rhuk_milkyway/sniper.php',
'/templates/rhuk_milkyway/images/Sym.php',
'/templates/rhuk_milkyway//r57.php',
'/templates/rhuk_milkyway/gzaa_spysl',
'/templates/rhuk_milkyway/sql-new.php',
'/templates/rhuk_milkyway//shell.php',
'/templates/rhuk_milkyway//sa.php',
'/templates/rhuk_milkyway//admin.php',
'/templates/rhuk_milkyway//sa2.php',
'/templates/rhuk_milkyway//2.php',
'/templates/rhuk_milkyway//gaza.php',
'/templates/rhuk_milkyway//up.php',
'/templates/rhuk_milkyway//upload.php',
'/templates/rhuk_milkyway//uploads.php',
'/templates/rhuk_milkyway/shell.php',
'/templates/rhuk_milkyway//amad.php',
'/templates/rhuk_milkyway//t00.php',
'/templates/rhuk_milkyway//dz.php',
'/templates/rhuk_milkyway//site.rar',
'/templates/rhuk_milkyway//Black.php',
'/templates/rhuk_milkyway//site.tar.gz',
'/templates/rhuk_milkyway//home.zip',
'/templates/rhuk_milkyway//home.rar',
'/templates/rhuk_milkyway//home.tar',
'/templates/rhuk_milkyway//home.tar.gz',
'/templates/rhuk_milkyway//forum.zip',
'/templates/rhuk_milkyway//forum.rar',
'/templates/rhuk_milkyway//forum.tar',
'/templates/rhuk_milkyway//forum.tar.gz',
'/templates/rhuk_milkyway//test.txt',
'/templates/rhuk_milkyway//ftp.txt',
'/templates/rhuk_milkyway//user.txt',
'/templates/rhuk_milkyway//site.txt',
'/templates/rhuk_milkyway//error_log',
'/templates/rhuk_milkyway//error',
'/templates/rhuk_milkyway//cpanel',
'/templates/rhuk_milkyway//awstats',
'/templates/rhuk_milkyway//site.sql',
'/templates/rhuk_milkyway//vb.sql',
'/templates/rhuk_milkyway//forum.sql',
'/templates/rhuk_milkyway/r00t-s3c.php',
'/templates/rhuk_milkyway/c.php',
'/templates/rhuk_milkyway//backup.sql',
'/templates/rhuk_milkyway//back.sql',
'/templates/rhuk_milkyway//data.sql',
'/templates/rhuk_milkyway/wp.rar/',
'/templates/rhuk_milkyway/asp.aspx',
'/templates/rhuk_milkyway/tmp/vaga.php',
'/templates/rhuk_milkyway/tmp/killer.php',
'/templates/rhuk_milkyway/whmcs.php',
'/templates/rhuk_milkyway/abuhlail.php',
'/templates/rhuk_milkyway/tmp/killer.php',
'/templates/rhuk_milkyway/tmp/domaine.pl',
'/templates/rhuk_milkyway/tmp/domaine.php',
'/templates/rhuk_milkyway/useradmin/',
'/templates/rhuk_milkyway/tmp/d0maine.php',
'/templates/rhuk_milkyway/d0maine.php',
'/templates/rhuk_milkyway/tmp/sql.php',
'/templates/rhuk_milkyway/X.php',
'/templates/rhuk_milkyway/123.php',
'/templates/rhuk_milkyway/m.php',
'/templates/rhuk_milkyway/b.php',
'/templates/rhuk_milkyway/up.php',
'/templates/rhuk_milkyway/tmp/dz1.php',
'/templates/rhuk_milkyway/dz1.php',
'/templates/rhuk_milkyway/forum.zip',
'/templates/rhuk_milkyway/Symlink.php',
'/templates/rhuk_milkyway/Symlink.pl',
'/templates/rhuk_milkyway/forum.rar',
'/templates/rhuk_milkyway/joomla.zip',
'/templates/rhuk_milkyway/joomla.rar',
'/templates/rhuk_milkyway/wp.php',
'/templates/rhuk_milkyway/buck.sql',
'/templates/rhuk_milkyway/sysadmin.php',
'/templates/rhuk_milkyway/images/c99.php',
'/templates/rhuk_milkyway/xd.php',
'/templates/rhuk_milkyway/c100.php',
'/templates/rhuk_milkyway/spy.aspx',
'/templates/rhuk_milkyway/xd.php',
'/templates/rhuk_milkyway/tmp/xd.php',
'/templates/rhuk_milkyway/sym/root/home/',
'/templates/rhuk_milkyway/billing/killer.php',
'/templates/rhuk_milkyway/tmp/upload.php',
'/templates/rhuk_milkyway/tmp/admin.php',
'/templates/rhuk_milkyway/Server.php',
'/templates/rhuk_milkyway/tmp/uploads.php',
'/templates/rhuk_milkyway/tmp/up.php',
'/templates/rhuk_milkyway/Server/',
'/templates/rhuk_milkyway/wp-admin/c99.php',
'/templates/rhuk_milkyway/tmp/priv8.php',
'/templates/rhuk_milkyway/priv8.php',
'/templates/rhuk_milkyway/cgi.pl/',
'/templates/rhuk_milkyway/tmp/cgi.pl',
'/templates/rhuk_milkyway/downloads/dom.php',
'/templates/rhuk_milkyway/webadmin.html',
'/templates/rhuk_milkyway/admins.php',
'/templates/rhuk_milkyway/bluff.php',
'/templates/rhuk_milkyway/king.jeen',
'/templates/rhuk_milkyway/admins/',
'/templates/rhuk_milkyway/admins.asp',
'/templates/rhuk_milkyway/admins.php',
'/templates/rhuk_milkyway/wp.zip',
'/templates/rhuk_milkyway/','WSO.php',
'a.php',
'z.php',
'e.php',
'r.php',
'xz.php',
'hhh.php',
'fuck.php',
'hb.php',
't.php',
'y.php',
'u.php',
'i.php',
'o.php',
'p.php',
'q.php',
's.php',
'd.php',
'f.php',
'g.php',
'h.php',
'j.php',
'k.php',
'l.php',
'm.php',
'w.php',
'x.php',
'c.php',
'v.php',
'b.php',
'n.php',
'1.php',
'2.php',
'3.php',
'4.php',
'5.php',
'6.php',
'7.php',
'8.php',
'9.php',
'10.php',
'12.php',
'11.php',
'1234.php',);

foreach $myshell(@path){

$url = $site.$myshell;
$req = HTTP::Request->new(GET=>$url);
$useragent = LWP::UserAgent->new();

$response = $useragent->request($req);

if ($response->is_success){
print color("bold Green"),("[Webshell Found] ==> $url  \n");
open(save, '>>Result/shellfound.txt');
   print save "$url\n";  
   close(save);
}else{
print color("bold red"),("[Webshell Not Found] ==> $myshell\n");
}
}
}

         
