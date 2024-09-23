<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Practice</title>
<style>
.rightans{
border:3px solid #0f0;
background-color: #afa;
border-radius: 5px;
}
.wrongans{
border:3px solid #f00;
background-color: #faa;
border-radius: 5px;
}
</style>
<script>window.onerror = function(m, u, l){
	alert('Javascript Error: '+m+'nURL: '+u+'nLine Number: '+l);
    return true;
   }
</script>
<script>'use strict';
window.onload = init;
function init() {
	document.getElementById('btn').onclick = validate;
	document.getElementById('btnclr').onclick = clear;
	}
	function validate() {
		var radios = document.getElementById("quiz").getElementsByTagName("INPUT");
		var right = 0;
		var wrong = 0; 
		for(var i=0, len=radios.length ; i<len ; i++) {  
			if(radios[i].value == "x") {    
				if(radios[i].checked == true){      
					right++;      
					radios[i].parentNode.parentNode.className = 'rightans';    
					}
				else{     
					wrong++;      
					radios[i].parentNode.parentNode.className = 'wrongans';   
					}  
				}
			} 
		var pcnt = (100*right/(wrong+right)).toFixed(1);
		document.getElementById("score").innerHTML = 'Total Questions: 99'+'<br/>Correct: '+ right +'<br/>Incorrect: ' + wrong +'<br/>Percent Correct: ' + pcnt +'%';
		}
	function clear(){
		var radios = document.getElementById("quiz").getElementsByTagName("INPUT");
		for(var i=0, len=radios.length ; i<len ; i++) {
			radios[i].checked = false;
			if (radios[i].value == "x"){ 
				radios[i].parentNode.parentNode.className = '';
				}
			}
		document.getElementById("score").innerHTML = '';
		}
	</script>
	</head>
	<body>
	<div id="quiz">
	<h1>Practice Quiz</h1>
	<fieldset id="q1"> 
	<legend><b>Question 1</b></legend> 
	<legend><b>Eight Bits make up a _________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q1" value="a">Megabyte</label><br/> 
	<label><input type="radio" name="q1" value="b">Kilobyte</label><br/> 
	<label><input type="radio" name="q1" value="c">Gigabyte</label><br/>  
	<label><input type="radio" name="q1" value="x">Byte</label>
	</fieldset>
	<fieldset id="q2"> 
	<legend><b>Question 2</b></legend> 
	<legend><b>Which stores more data than a DVD?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q2" value="a">CD Rom</label><br/> 
	<label><input type="radio" name="q2" value="x">Blu-Ray Disk</label><br/> 
	<label><input type="radio" name="q2" value="b">Floppy</label><br/>  
	<label><input type="radio" name="q2" value="c">Red Ray Disk</label>
	</fieldset>
	<fieldset id="q3"> 
	<legend><b>Question 3</b></legend> 
	<legend><b>The two kinds of main memory are ___________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q3" value="x">Ram and Rom</label><br/> 
	<label><input type="radio" name="q3" value="a">CDs and DVDs</label><br/> 
	<label><input type="radio" name="q3" value="b">Primary and secondary</label><br/>  
	<label><input type="radio" name="q3" value="c">Direct and Sequential</label>
	</fieldset>
	<fieldset id="q4"> 
	<legend><b>Question 4</b></legend> 
	<legend><b>The main memory of computer is also called _______</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q4" value="a">Hard-disk</label><br/> 
	<label><input type="radio" name="q4" value="b">Secondary storage</label><br/> 
	<label><input type="radio" name="q4" value="x">Random Access Memory</label><br/>  
	<label><input type="radio" name="q4" value="c">Internal memory</label>
	</fieldset>
	<fieldset id="q5"> 
	<legend><b>Question 5</b></legend> 
	<legend><b>The printed output from a computer is called ________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q5" value="x">Hard Copy</label><br/> 
	<label><input type="radio" name="q5" value="a">Sheet</label><br/> 
	<label><input type="radio" name="q5" value="b">Soft Copy</label><br/>  
	<label><input type="radio" name="q5" value="c">Paper</label>
	</fieldset>
	<fieldset id="q6"> 
	<legend><b>Question 6</b></legend> 
	<legend><b>MS-Word is an example of ____________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q6" value="a">An operating system</label><br/> 
	<label><input type="radio" name="q6" value="x">Application software</label><br/> 
	<label><input type="radio" name="q6" value="b">A processing device</label><br/>  
	<label><input type="radio" name="q6" value="c">An input device</label>
	</fieldset>
	<fieldset id="q7"> 
	<legend><b>Question 7</b></legend> 
	<legend><b>Computer Monitor is also known as _________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q7" value="a">DVU</label><br/> 
	<label><input type="radio" name="q7" value="b">UVD</label><br/> 
	<label><input type="radio" name="q7" value="x">VDU</label><br/>  
	<label><input type="radio" name="q7" value="c">CCTV</label>
	</fieldset>
	<fieldset id="q8"> 
	<legend><b>Question 8</b></legend> 
	<legend><b>A ________ is an electric device that process data, converting it into information.</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q8" value="a">Computer</label><br/> 
	<label><input type="radio" name="q8" value="b">Case</label><br/> 
	<label><input type="radio" name="q8" value="c">Stylus</label><br/>  
	<label><input type="radio" name="q8" value="x">Processor</label>
	</fieldset>
	<fieldset id="q9"> 
	<legend><b>Question 9</b></legend> 
	<legend><b>IC chips used in computers are usually made of ___________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q9" value="a">Lead</label><br/> 
	<label><input type="radio" name="q9" value="b">Chromium</label><br/> 
	<label><input type="radio" name="q9" value="x">Silicon</label><br/>  
	<label><input type="radio" name="q9" value="c">Gold</label>
	</fieldset>
	<fieldset id="q10"> 
	<legend><b>Question 10</b></legend> 
	<legend><b>One Gigabyte is approximately equal is _______</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q10" value="a">1000,000 bytes</label><br/> 
	<label><input type="radio" name="q10" value="x">1000,000,000 bytes</label><br/> 
	<label><input type="radio" name="q10" value="b">1000,000,000,000 bytes</label><br/>  
	<label><input type="radio" name="q10" value="c">None of these</label>
	</fieldset>
	<fieldset id="q11"> 
	<legend><b>Question 11</b></legend> 
	<legend><b>One kilobyte is equal to _________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q11" value="x">1024 bytes</label><br/> 
	<label><input type="radio" name="q11" value="a">1000 bytes</label><br/> 
	<label><input type="radio" name="q11" value="b">100 bytes</label><br/>  
	<label><input type="radio" name="q11" value="c">1023 bytes</label>
	</fieldset>
	<fieldset id="q12"> 
	<legend><b>Question 12</b></legend> 
	<legend><b>'ALU' stands for?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q12" value="x">Arithmetic Logic Unit</label><br/> 
	<label><input type="radio" name="q12" value="a">All Longer Unit</label><br/> 
	<label><input type="radio" name="q12" value="b">Around Logical Unit</label><br/>  
	<label><input type="radio" name="q12" value="c">Arithmetic Logic Unit</label>
	</fieldset>
	<fieldset id="q13"> 
	<legend><b>Question 13</b></legend> 
	<legend><b>PARAM is an example of _________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q13" value="a">PC</label><br/> 
	<label><input type="radio" name="q13" value="b">Laptop</label><br/> 
	<label><input type="radio" name="q13" value="c">PDA</label><br/>  
	<label><input type="radio" name="q13" value="x">Super computer</label>
	</fieldset>
	<fieldset id="q14"> 
	<legend><b>Question 14</b></legend> 
	<legend><b>In world today, most of the computers are _________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q14" value="a">Hybrid</label><br/> 
	<label><input type="radio" name="q14" value="x">Digital</label><br/> 
	<label><input type="radio" name="q14" value="b">Analog</label><br/>  
	<label><input type="radio" name="q14" value="c">Complex</label>
	</fieldset>
	<fieldset id="q15"> 
	<legend><b>Question 15</b></legend> 
	<legend><b>NOS stands for _________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q15" value="a">Node operating system</label><br/> 
	<label><input type="radio" name="q15" value="b">Non-open software</label><br/> 
	<label><input type="radio" name="q15" value="x">Network operating system</label><br/>  
	<label><input type="radio" name="q15" value="c">Non-operating software</label>
	</fieldset>
	<fieldset id="q16"> 
	<legend><b>Question 16</b></legend> 
	<legend><b>Which computer is medium sized computer?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q16" value="a">Micro Computer</label><br/> 
	<label><input type="radio" name="q16" value="b">Mainframe</label><br/> 
	<label><input type="radio" name="q16" value="x">Mini Computer</label><br/>  
	<label><input type="radio" name="q16" value="c">Super Computer</label>
	</fieldset>
	<fieldset id="q17"> 
	<legend><b>Question 17</b></legend> 
	<legend><b>The first electronic computer was developed by ________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q17" value="x">John Mauchly/J.Presper Eckert</label><br/> 
	<label><input type="radio" name="q17" value="a">Bill Gates</label><br/> 
	<label><input type="radio" name="q17" value="b">Simur Cray</label><br/>  
	<label><input type="radio" name="q17" value="c">Winton Serf</label>
	</fieldset>
	<fieldset id="q18"> 
	<legend><b>Question 18</b></legend> 
	<legend><b>What is the name of an application program that gathers user information and sends it to someone through the internet?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q18" value="x">Spyware</label><br/> 
	<label><input type="radio" name="q18" value="a">A virus</label><br/> 
	<label><input type="radio" name="q18" value="b">Logic bomb</label><br/>  
	<label><input type="radio" name="q18" value="c">Security patch</label>
	</fieldset>
	<fieldset id="q19"> 
	<legend><b>Question 19</b></legend> 
	<legend><b>Before use of DBMS information was stored using ________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q19" value="a">Cloud Storage</label><br/> 
	<label><input type="radio" name="q19" value="b">Data System</label><br/> 
	<label><input type="radio" name="q19" value="c">Cloud Computing</label><br/>  
	<label><input type="radio" name="q19" value="x">File Management System</label>
	</fieldset>
	<fieldset id="q20"> 
	<legend><b>Question 20</b></legend> 
	<legend><b>In MS Excel, if we want to select an entire column, which is used?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q20" value="a">Shift+Ctrl</label><br/> 
	<label><input type="radio" name="q20" value="x">Ctrl+Space</label><br/> 
	<label><input type="radio" name="q20" value="b">Ctrl+Alt</label><br/>  
	<label><input type="radio" name="q20" value="c">Ctrl+Space</label>
	</fieldset>
	<fieldset id="q21"> 
	<legend><b>Question 21</b></legend> 
	<legend><b>Which unit is responsible for converting the data received from the user into computer understandable format?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q21" value="a">Memory Unit</label><br/> 
	<label><input type="radio" name="q21" value="b">Arithmetic & Logic Unit</label><br/> 
	<label><input type="radio" name="q21" value="c">Output Unit</label><br/>  
	<label><input type="radio" name="q21" value="x">Input Unit</label>
	</fieldset>
	<fieldset id="q22"> 
	<legend><b>Question 22</b></legend> 
	<legend><b>What language computer is derived from?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q22" value="a">German</label><br/> 
	<label><input type="radio" name="q22" value="b">French</label><br/> 
	<label><input type="radio" name="q22" value="x">Latin</label><br/>  
	<label><input type="radio" name="q22" value="c">Arabic</label>
	</fieldset>
	<fieldset id="q23"> 
	<legend><b>Question 23</b></legend> 
	<legend><b>Who is the father of Computer science?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q23" value="a">Charles Babbage</label><br/> 
	<label><input type="radio" name="q23" value="x">Alan Turing</label><br/> 
	<label><input type="radio" name="q23" value="b">Simur Cray</label><br/>  
	<label><input type="radio" name="q23" value="c">Augusta Adaming</label>
	</fieldset>
	<fieldset id="q24"> 
	<legend><b>Question 24</b></legend> 
	<legend><b>Which part is responsible for interacting with users?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q24" value="x">User Interface</label><br/> 
	<label><input type="radio" name="q24" value="a">Language translator</label><br/> 
	<label><input type="radio" name="q24" value="b">Platform</label><br/>  
	<label><input type="radio" name="q24" value="c">Screen saver</label>
	</fieldset>
	<fieldset id="q25"> 
	<legend><b>Question 25</b></legend> 
	<legend><b>______ is a combination of hardware and software that facilitates the sharing of information between computing devices.</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q25" value="x">Network</label><br/> 
	<label><input type="radio" name="q25" value="a">Peripheral</label><br/> 
	<label><input type="radio" name="q25" value="b">Expansion board</label><br/>  
	<label><input type="radio" name="q25" value="c">Digital device</label>
	</fieldset>
	<fieldset id="q26"> 
	<legend><b>Question 26</b></legend> 
	<legend><b>The only language which the computer understands is ________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q26" value="a">Assembly Language</label><br/> 
	<label><input type="radio" name="q26" value="b">BASIC</label><br/> 
	<label><input type="radio" name="q26" value="x">Binary Language</label><br/>  
	<label><input type="radio" name="q26" value="c">C Language</label>
	</fieldset>
	<fieldset id="q27"> 
	<legend><b>Question 27</b></legend> 
	<legend><b>coded entries which are used to gain access to a computer system are called as ________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q27" value="a">Entry codes</label><br/> 
	<label><input type="radio" name="q27" value="b">Security commands</label><br/> 
	<label><input type="radio" name="q27" value="x">Passwords</label><br/>  
	<label><input type="radio" name="q27" value="c">Code words</label>
	</fieldset>
	<fieldset id="q28"> 
	<legend><b>Question 28</b></legend> 
	<legend><b>What type of resource is most likely to be a shared common resource in a computer Network?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q28" value="a">Speakers</label><br/> 
	<label><input type="radio" name="q28" value="x">Printers</label><br/> 
	<label><input type="radio" name="q28" value="b">Floppy disk drivers</label><br/>  
	<label><input type="radio" name="q28" value="c">Keyboards</label>
	</fieldset>
	<fieldset id="q29"> 
	<legend><b>Question 29</b></legend> 
	<legend><b>What device is required for the Internet connection?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q29" value="a">Joystick</label><br/> 
	<label><input type="radio" name="q29" value="x">Modem</label><br/> 
	<label><input type="radio" name="q29" value="b">CD Drive</label><br/>  
	<label><input type="radio" name="q29" value="c">NIC Card</label>
	</fieldset>
	<fieldset id="q30"> 
	<legend><b>Question 30</b></legend> 
	<legend><b>The smallest unit of data in computer is _________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q30" value="a">Nibble</label><br/> 
	<label><input type="radio" name="q30" value="x">Byte</label><br/> 
	<label><input type="radio" name="q30" value="b">Bit</label><br/>  
	<label><input type="radio" name="q30" value="c">KB</label>
	</fieldset>
	<fieldset id="q31"> 
	<legend><b>Question 31</b></legend> 
	<legend><b>Junk e-mail is also called _________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q31" value="a">Spoof</label><br/> 
	<label><input type="radio" name="q31" value="b">Spool</label><br/> 
	<label><input type="radio" name="q31" value="x">Spam</label><br/>  
	<label><input type="radio" name="q31" value="c">Sniffer script</label>
	</fieldset>
	<fieldset id="q32"> 
	<legend><b>Question 32</b></legend> 
	<legend><b>What type of computers are client computers(most of the time) in a client-server system?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q32" value="a">Mainframe</label><br/> 
	<label><input type="radio" name="q32" value="b">Mini-computer</label><br/> 
	<label><input type="radio" name="q32" value="c">PDA</label><br/>  
	<label><input type="radio" name="q32" value="x">Microcomputer</label>
	</fieldset>
	<fieldset id="q33"> 
	<legend><b>Question 33</b></legend> 
	<legend><b>Who is the father of computer</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q33" value="x">Charles Babbage</label><br/> 
	<label><input type="radio" name="q33" value="a">Edward Robert</label><br/> 
	<label><input type="radio" name="q33" value="b">Allen Turing</label><br/>  
	<label><input type="radio" name="q33" value="c">Simur Cray</label>
	</fieldset>
	<fieldset id="q34"> 
	<legend><b>Question 34</b></legend> 
	<legend><b>Ibm 1401 is of which generation?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q34" value="a">First Generation Computer</label><br/> 
	<label><input type="radio" name="q34" value="b">Third Generation Computer</label><br/> 
	<label><input type="radio" name="q34" value="x">Second Generation Computer</label><br/>  
	<label><input type="radio" name="q34" value="c">Fourth Generation Computer</label>
	</fieldset>
	<fieldset id="q35"> 
	<legend><b>Question 35</b></legend> 
	<legend><b>A computer cannot boot if it does not have the _________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q35" value="a">Compiler</label><br/> 
	<label><input type="radio" name="q35" value="b">Loader</label><br/> 
	<label><input type="radio" name="q35" value="c">Assembler</label><br/>  
	<label><input type="radio" name="q35" value="x">Operating System</label>
	</fieldset>
	<fieldset id="q36"> 
	<legend><b>Question 36</b></legend> 
	<legend><b>CAD stands for _______</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q36" value="x">Computer aided design</label><br/> 
	<label><input type="radio" name="q36" value="a">Computer algorithm for design</label><br/> 
	<label><input type="radio" name="q36" value="b">Computer application in design</label><br/>  
	<label><input type="radio" name="q36" value="c">Computer analogue design</label>
	</fieldset>
	<fieldset id="q37"> 
	<legend><b>Question 37</b></legend> 
	<legend><b>WAN stands for _________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q37" value="a">Wap Area Network</label><br/> 
	<label><input type="radio" name="q37" value="c">Wide Array Net</label><br/> 
	<label><input type="radio" name="q37" value="b">Wireless Area Network</label><br/>  
	<label><input type="radio" name="q37" value="x">Wide Area Network</label>
	</fieldset>
	<fieldset id="q38"> 
	<legend><b>Question 38</b></legend> 
	<legend><b>First page of Website is termed as ________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q38" value="a">Index</label><br/> 
	<label><input type="radio" name="q38" value="x">Homepage</label><br/> 
	<label><input type="radio" name="q38" value="b">JAVA Script</label><br/>  
	<label><input type="radio" name="q38" value="c">Bookmark</label>
	</fieldset>
	<fieldset id="q39"> 
	<legend><b>Question 39</b></legend> 
	<legend><b>When a file is saved for the first time ________-</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q39" value="x">It must be given a name to identify it</label><br/> 
	<label><input type="radio" name="q39" value="a">A copy is automatically printed</label><br/> 
	<label><input type="radio" name="q39" value="b">It does not need a name</label><br/>  
	<label><input type="radio" name="q39" value="c">None of these</label>
	</fieldset>
	<fieldset id="q40"> 
	<legend><b>Question 40</b></legend> 
	<legend><b>What does the COMPUTER stands for?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q40" value="a">Commonly Operated Machines Used in Technical and Educational Research</label><br/> 
	<label><input type="radio" name="q40" value="b">Commonly Occupied Machines used in Technical and Educational Research</label><br/> 
	<label><input type="radio" name="q40" value="x">Common Operating Machine Purposely Used for Technological and Educational Research</label><br/>  
	<label><input type="radio" name="q40" value="c">Commonly Operating Machine Purposely Used for Technological and Educational Research</label>
	</fieldset>
	<fieldset id="q41"> 
	<legend><b>Question 41</b></legend> 
	<legend><b>Where are data and programme stored when the processor uses them?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q41" value="x">Main memory</label><br/> 
	<label><input type="radio" name="q41" value="a">Second memory</label><br/> 
	<label><input type="radio" name="q41" value="b">Disk memory</label><br/>  
	<label><input type="radio" name="q41" value="c">Program memory</label>
	</fieldset>
	<fieldset id="q42"> 
	<legend><b>Question 42</b></legend> 
	<legend><b>What characteristic of read-only memory(ROM) makes it useful?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q42" value="a">ROM information can be easily updated</label><br/> 
	<label><input type="radio" name="q42" value="x">ROM provides very large amounts of inexpensive data storage</label><br/> 
	<label><input type="radio" name="q42" value="b">Data in ROM is non-volatile, it remains there even without electrical power</label><br/>  
	<label><input type="radio" name="q42" value="c">ROM chips are easily swapped between different brands of computers</label>
	</fieldset>
	<fieldset id="q43"> 
	<legend><b>Question 43</b></legend> 
	<legend><b>The devices that used to give single or multiple colored images and drawings are ______</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q43" value="x">Plotters</label><br/> 
	<label><input type="radio" name="q43" value="a">Monitors</label><br/> 
	<label><input type="radio" name="q43" value="b">Printers</label><br/>  
	<label><input type="radio" name="q43" value="c">VDUs</label>
	</fieldset>
	<fieldset id="q44"> 
	<legend><b>Question 44</b></legend> 
	<legend><b>Which was the computer conceived by babbage?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q44" value="a">Donald knuth</label><br/> 
	<label><input type="radio" name="q44" value="b">Arithmetic machine</label><br/> 
	<label><input type="radio" name="q44" value="x">Analytical engine</label><br/>  
	<label><input type="radio" name="q44" value="c">All of the above</label>
	</fieldset>
	<fieldset id="q45"> 
	<legend><b>Question 45</b></legend> 
	<legend><b>What does DMA stand for?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q45" value="x">Distinct Memory Access</label><br/> 
	<label><input type="radio" name="q45" value="a">Direct Memory Access</label><br/> 
	<label><input type="radio" name="q45" value="b">Direct Module Access</label><br/>  
	<label><input type="radio" name="q45" value="c">Direct Memory Allocation</label>
	</fieldset>
	<fieldset id="q46"> 
	<legend><b>Question 46</b></legend> 
	<legend><b>A normal CD-ROM usually can store up to ________ data.</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q46" value="a">680 KB</label><br/> 
	<label><input type="radio" name="q46" value="b">680 Bytes</label><br/> 
	<label><input type="radio" name="q46" value="x">700 MB</label><br/>  
	<label><input type="radio" name="q46" value="c">680 GB</label>
	</fieldset>
	<fieldset id="q47"> 
	<legend><b>Question 47</b></legend> 
	<legend><b>Shell is the exclusive feature of _________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q47" value="a">Application software</label><br/> 
	<label><input type="radio" name="q47" value="x">UNIX</label><br/> 
	<label><input type="radio" name="q47" value="b">System software</label><br/>  
	<label><input type="radio" name="q47" value="c">DOS</label>
	</fieldset>
	<fieldset id="q48"> 
	<legend><b>Question 48</b></legend> 
	<legend><b>BCD stands for ________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q48" value="x">Binary Coded Decimal</label><br/> 
	<label><input type="radio" name="q48" value="a">Binary Coded Digit</label><br/> 
	<label><input type="radio" name="q48" value="b">Bit Coded Decimal</label><br/>  
	<label><input type="radio" name="q48" value="c">Bit Coded Digit</label>
	</fieldset>
	<fieldset id="q49"> 
	<legend><b>Question 49</b></legend> 
	<legend><b>ASCII stands for _________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q49" value="a">American Stable Code for International Interchange</label><br/> 
	<label><input type="radio" name="q49" value="b">American Standard Case for Institutional Interchange</label><br/> 
	<label><input type="radio" name="q49" value="x">American Standard Code for Information Interchange</label><br/>  
	<label><input type="radio" name="q49" value="c">American Standard Code for Interchange Information</label>
	</fieldset>
	<fieldset id="q50"> 
	<legend><b>Question 50</b></legend> 
	<legend><b>Chief component of first generation computer was ________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q50" value="a">Transistors</label><br/> 
	<label><input type="radio" name="q50" value="x">Vaccum Tubes</label><br/> 
	<label><input type="radio" name="q50" value="b">Integrated Circuits</label><br/>  
	<label><input type="radio" name="q50" value="c">Electronic Numerical Integrator</label>
	</fieldset>
	<fieldset id="q51"> 
	<legend><b>Question 51</b></legend> 
	<legend><b>FORTRAN is __________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q51" value="x">Formula Translation</label><br/> 
	<label><input type="radio" name="q51" value="a">File Translation</label><br/> 
	<label><input type="radio" name="q51" value="b">Format Translation</label><br/>  
	<label><input type="radio" name="q51" value="c">Floppy Translation</label>
	</fieldset>
	<fieldset id="q52"> 
	<legend><b>Question 52</b></legend> 
	<legend><b>Second Generation computers were developed during _________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q52" value="a">1949 to 1955</label><br/> 
	<label><input type="radio" name="q52" value="b">1965 to 1970</label><br/> 
	<label><input type="radio" name="q52" value="c">1970 to 1990</label><br/>  
	<label><input type="radio" name="q52" value="x">1956 to 1965</label>
	</fieldset>
	<fieldset id="q53"> 
	<legend><b>Question 53</b></legend> 
	<legend><b>The computer size was very large in which generation?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q53" value="a">Second Generation</label><br/> 
	<label><input type="radio" name="q53" value="b">Fourth Generation</label><br/> 
	<label><input type="radio" name="q53" value="x">First Generation</label><br/>  
	<label><input type="radio" name="q53" value="c">Third Generation</label>
	</fieldset>
	<fieldset id="q54"> 
	<legend><b>Question 54</b></legend> 
	<legend><b>Microprocessors as switching devices are for which generation computeres __________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q54" value="a">First Generation</label><br/> 
	<label><input type="radio" name="q54" value="x">Fourth Generation</label><br/> 
	<label><input type="radio" name="q54" value="b">Third Generation</label><br/>  
	<label><input type="radio" name="q54" value="c">Second Generation</label>
	</fieldset>
	<fieldset id="q55"> 
	<legend><b>Question 55</b></legend> 
	<legend><b>What type of devices can be used to directly image printed text?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q55" value="x">OCR</label><br/> 
	<label><input type="radio" name="q55" value="a">OMR</label><br/> 
	<label><input type="radio" name="q55" value="b">MICR</label><br/>  
	<label><input type="radio" name="q55" value="c">AIN</label>
	</fieldset>
	<fieldset id="q56"> 
	<legend><b>Question 56</b></legend> 
	<legend><b>The output quality of a printer is measured by _________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q56" value="a">Dot per sq.inch</label><br/> 
	<label><input type="radio" name="q56" value="b">Dots printed per unit time</label><br/> 
	<label><input type="radio" name="q56" value="c">Dot per unit value</label><br/>  
	<label><input type="radio" name="q56" value="x">Dot per inch</label>
	</fieldset>
	<fieldset id="q57"> 
	<legend><b>Question 57</b></legend> 
	<legend><b>When was C language developed?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q57" value="a">1980s</label><br/> 
	<label><input type="radio" name="q57" value="x">1970s</label><br/> 
	<label><input type="radio" name="q57" value="b">1995</label><br/>  
	<label><input type="radio" name="q57" value="c">1996</label>
	</fieldset>
	<fieldset id="q58"> 
	<legend><b>Question 58</b></legend> 
	<legend><b>Personnel who design, program, operate and maintain computer equipment refers to _______</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q58" value="x">Peopleware</label><br/> 
	<label><input type="radio" name="q58" value="a">Console-operator</label><br/> 
	<label><input type="radio" name="q58" value="b">Programmer</label><br/>  
	<label><input type="radio" name="q58" value="c">System Analyst</label>
	</fieldset>
	<fieldset id="q59"> 
	<legend><b>Question 59</b></legend> 
	<legend><b>Name the application used for creating presentations ________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q59" value="a">MS Access</label><br/> 
	<label><input type="radio" name="q59" value="b">MS Word</label><br/> 
	<label><input type="radio" name="q59" value="x">MS PowerPoint</label><br/>  
	<label><input type="radio" name="q59" value="c">MS Excel</label>
	</fieldset>
	<fieldset id="q60"> 
	<legend><b>Question 60</b></legend> 
	<legend><b>Human beings are referred to as Homosapinens, which device is called Sillico Sapien?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q60" value="a">Monitor</label><br/> 
	<label><input type="radio" name="q60" value="x">Computer</label><br/> 
	<label><input type="radio" name="q60" value="b">Robot</label><br/>  
	<label><input type="radio" name="q60" value="c">Hardware</label>
	</fieldset>
	<fieldset id="q61"> 
	<legend><b>Question 61</b></legend> 
	<legend><b>An error in software or hardware is called a bug. What is the alternative computer jargon for it?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q61" value="a">Leech</label><br/> 
	<label><input type="radio" name="q61" value="b">Squid</label><br/> 
	<label><input type="radio" name="q61" value="c">Slug</label><br/>  
	<label><input type="radio" name="q61" value="x">Glitch</label>
	</fieldset>
	<fieldset id="q62"> 
	<legend><b>Question 62</b></legend> 
	<legend><b>CPU is an abbreviation for __________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q62" value="x">Central processing unit</label><br/> 
	<label><input type="radio" name="q62" value="a">Computer processing unit</label><br/> 
	<label><input type="radio" name="q62" value="b">Control processing unit</label><br/>  
	<label><input type="radio" name="q62" value="c">Command processing unit</label>
	</fieldset>
	<fieldset id="q63"> 
	<legend><b>Question 63</b></legend> 
	<legend><b>What is the name of the display feature that highlights are of the screen which requires operator attention?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q63" value="a">Pixel</label><br/> 
	<label><input type="radio" name="q63" value="b">Reverse video</label><br/> 
	<label><input type="radio" name="q63" value="c">Touch screen</label><br/>  
	<label><input type="radio" name="q63" value="x">Cursor</label>
	</fieldset>
	<fieldset id="q64"> 
	<legend><b>Question 64</b></legend> 
	<legend><b>Personal computers use a number of chips mounted on a main circuit board. What is the common name for such board?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q64" value="a">Daughterboard</label><br/> 
	<label><input type="radio" name="q64" value="b">Fatherboard</label><br/> 
	<label><input type="radio" name="q64" value="c">Breadboard</label><br/>  
	<label><input type="radio" name="q64" value="x">Motherboard</label>
	</fieldset>
	<fieldset id="q65"> 
	<legend><b>Question 65</b></legend> 
	<legend><b>A desktop computer is also known as ________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q65" value="a">Laptop</label><br/> 
	<label><input type="radio" name="q65" value="x">PC</label><br/> 
	<label><input type="radio" name="q65" value="b">Mainframe</label><br/>  
	<label><input type="radio" name="q65" value="c">Palmtop</label>
	</fieldset>
	<fieldset id="q66"> 
	<legend><b>Question 66</b></legend> 
	<legend><b>The system unit of a personal computer typically contains all except _______</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q66" value="a">Microprocessor</label><br/> 
	<label><input type="radio" name="q66" value="b">Disk controller</label><br/> 
	<label><input type="radio" name="q66" value="x">Modem</label><br/>  
	<label><input type="radio" name="q66" value="c">Serial interface</label>
	</fieldset>
	<fieldset id="q67"> 
	<legend><b>Question 67</b></legend> 
	<legend><b>A computer program that converts an entire program into machine language is called a/an _______</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q67" value="x">Compiler</label><br/> 
	<label><input type="radio" name="q67" value="a">Interpreter</label><br/> 
	<label><input type="radio" name="q67" value="b">Simulator</label><br/>  
	<label><input type="radio" name="q67" value="c">Commander</label>
	</fieldset>
	<fieldset id="q68"> 
	<legend><b>Question 68</b></legend> 
	<legend><b>A computer program that translates one program instructions at a time into machine language is called a/an _______</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q68" value="a">CPU</label><br/> 
	<label><input type="radio" name="q68" value="b">Compiler</label><br/> 
	<label><input type="radio" name="q68" value="x">Interpreter</label><br/>  
	<label><input type="radio" name="q68" value="c">Simulator</label>
	</fieldset>
	<fieldset id="q69"> 
	<legend><b>Question 69</b></legend> 
	<legend><b>A small or intelligent device is so called because it contains within it __________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q69" value="a">Computer</label><br/> 
	<label><input type="radio" name="q69" value="b">Microcomputer</label><br/> 
	<label><input type="radio" name="q69" value="x">Sensor</label><br/>  
	<label><input type="radio" name="q69" value="c">Programmable</label>
	</fieldset>
	<fieldset id="q70"> 
	<legend><b>Question 70</b></legend> 
	<legend><b>A fault in a computer program which prevents it from working correctly is known as s______</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q70" value="a">Boot</label><br/> 
	<label><input type="radio" name="q70" value="x">Bug</label><br/> 
	<label><input type="radio" name="q70" value="b">Biff</label><br/>  
	<label><input type="radio" name="q70" value="c">Strap</label>
	</fieldset>
	<fieldset id="q71"> 
	<legend><b>Question 71</b></legend> 
	<legend><b>A state is a bi-stable electronic circuit that has _______</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q71" value="a">Multivibrator</label><br/> 
	<label><input type="radio" name="q71" value="x">Flip-flop</label><br/> 
	<label><input type="radio" name="q71" value="b">Logic gates</label><br/>  
	<label><input type="radio" name="q71" value="c">Laten</label>
	</fieldset>
	<fieldset id="q72"> 
	<legend><b>Question 72</b></legend> 
	<legend><b>Unwanted repetitious messages, such as unsolicited bulk e-mail is known as _________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q72" value="x">Spam</label><br/> 
	<label><input type="radio" name="q72" value="a">Trash</label><br/> 
	<label><input type="radio" name="q72" value="b">Calibri</label><br/>  
	<label><input type="radio" name="q72" value="c">Courier</label>
	</fieldset>
	<fieldset id="q73"> 
	<legend><b>Question 73</b></legend> 
	<legend><b>DOS stands for ________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q73" value="a">Disk Operating Session</label><br/> 
	<label><input type="radio" name="q73" value="b">Digital Operating System</label><br/> 
	<label><input type="radio" name="q73" value="x">Disk Operating System</label><br/>  
	<label><input type="radio" name="q73" value="c">Digital Open System</label>
	</fieldset>
	<fieldset id="q74"> 
	<legend><b>Question 74</b></legend> 
	<legend><b>What could the first generation computer do?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q74" value="a">Networking</label><br/> 
	<label><input type="radio" name="q74" value="b">Miti-tabulation</label><br/> 
	<label><input type="radio" name="q74" value="c">Multi-tasking</label><br/>  
	<label><input type="radio" name="q74" value="x">Batch processing</label>
	</fieldset>
	<fieldset id="q75"> 
	<legend><b>Question 75</b></legend> 
	<legend><b>IBM stands for _________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q75" value="x">International Business Machines</label><br/> 
	<label><input type="radio" name="q75" value="a">Internal Business Management</label><br/> 
	<label><input type="radio" name="q75" value="b">International Business Management</label><br/>  
	<label><input type="radio" name="q75" value="c">International Business Machines</label>
	</fieldset>
	<fieldset id="q76"> 
	<legend><b>Question 76</b></legend> 
	<legend><b>_______ translates and executes program at run time line by line</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q76" value="a">Compiler</label><br/> 
	<label><input type="radio" name="q76" value="b">Linker</label><br/> 
	<label><input type="radio" name="q76" value="c">Loader</label><br/>  
	<label><input type="radio" name="q76" value="x">Interpreter</label>
	</fieldset>
	<fieldset id="q77"> 
	<legend><b>Question 77</b></legend> 
	<legend><b>The brain of any computer system is _______</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q77" value="a">ALU</label><br/> 
	<label><input type="radio" name="q77" value="x">CPU</label><br/> 
	<label><input type="radio" name="q77" value="b">Memory</label><br/>  
	<label><input type="radio" name="q77" value="c">Control unit</label>
	</fieldset>
	<fieldset id="q78"> 
	<legend><b>Question 78</b></legend> 
	<legend><b>SMPS stands for _______</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q78" value="a">Start Mode Power Supply</label><br/> 
	<label><input type="radio" name="q78" value="b">Store Mode Power Supply</label><br/> 
	<label><input type="radio" name="q78" value="c">Single Mode Power Supply</label><br/>  
	<label><input type="radio" name="q78" value="x">Switched Mode Power Supply</label>
	</fieldset>
	<fieldset id="q79"> 
	<legend><b>Question 79</b></legend> 
	<legend><b>The device used to carry digital data on analgue lines is called as _______</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q79" value="a">Multiplexer</label><br/> 
	<label><input type="radio" name="q79" value="b">Modulator</label><br/> 
	<label><input type="radio" name="q79" value="x">Modem</label><br/>  
	<label><input type="radio" name="q79" value="c">Demodulator</label>
	</fieldset>
	<fieldset id="q80"> 
	<legend><b>Question 80</b></legend> 
	<legend><b>Which is a point and draw device?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q80" value="a">Scanner</label><br/> 
	<label><input type="radio" name="q80" value="b">Printer</label><br/> 
	<label><input type="radio" name="q80" value="c">CD-ROM</label><br/>  
	<label><input type="radio" name="q80" value="x">Mouse</label>
	</fieldset>
	<fieldset id="q81"> 
	<legend><b>Question 81</b></legend> 
	<legend><b>BIOS stands for</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q81" value="x">Basic Input Output System</label><br/> 
	<label><input type="radio" name="q81" value="a">Binary Input Output System</label><br/> 
	<label><input type="radio" name="q81" value="b">Basid Input Off System</label><br/>  
	<label><input type="radio" name="q81" value="c">Base Input Output System</label>
	</fieldset>
	<fieldset id="q82"> 
	<legend><b>Question 82</b></legend> 
	<legend><b>Who is the Father of 'C' Programming language?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q82" value="a">Prof John Keenly</label><br/> 
	<label><input type="radio" name="q82" value="b">Thomas Kurtz</label><br/> 
	<label><input type="radio" name="q82" value="x">Dennis Ritchie</label><br/>  
	<label><input type="radio" name="q82" value="c">Bill Gates</label>
	</fieldset>
	<fieldset id="q83"> 
	<legend><b>Question 83</b></legend> 
	<legend><b>The instructions that tell a computer how to carry out the processing tasks are referred to as computer _________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q83" value="a">Processors</label><br/> 
	<label><input type="radio" name="q83" value="x">Programs</label><br/> 
	<label><input type="radio" name="q83" value="b">Input devices</label><br/>  
	<label><input type="radio" name="q83" value="c">Memory modules</label>
	</fieldset>
	<fieldset id="q84"> 
	<legend><b>Question 84</b></legend> 
	<legend><b></b>An area of a computer that temporarily holds data waiting to be processed is ________</legend> <!-- x = correct answer -->
	<label><input type="radio" name="q84" value="a">CPU</label><br/> 
	<label><input type="radio" name="q84" value="x">Memory</label><br/> 
	<label><input type="radio" name="q84" value="b">Storage</label><br/>  
	<label><input type="radio" name="q84" value="c">File</label>
	</fieldset>
	<fieldset id="q85"> 
	<legend><b>Question 85</b></legend> 
	<legend><b>_______ is the key we use to run the selected command.</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q85" value="x">ENTER</label><br/> 
	<label><input type="radio" name="q85" value="a">SHIFT</label><br/> 
	<label><input type="radio" name="q85" value="b">TAB</label><br/>  
	<label><input type="radio" name="q85" value="c">CTRL</label>
	</fieldset>
	<fieldset id="q86"> 
	<legend><b>Question 86</b></legend> 
	<legend><b>_______ is the functional key to display save-as box.</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q86" value="a">F5</label><br/> 
	<label><input type="radio" name="q86" value="b">F9</label><br/> 
	<label><input type="radio" name="q86" value="x">F12</label><br/>  
	<label><input type="radio" name="q86" value="c">F6</label>
	</fieldset>
	<fieldset id="q87"> 
	<legend><b>Question 87</b></legend> 
	<legend><b>The term _________ designates equipment that might be added to a computer system to enhance its functionality.</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q87" value="a">Digital device</label><br/> 
	<label><input type="radio" name="q87" value="c">System add-on</label><br/> 
	<label><input type="radio" name="q87" value="x">Peripheral device</label><br/>  
	<label><input type="radio" name="q87" value="b">Disk pack</label>
	</fieldset>
	<fieldset id="q88"> 
	<legend><b>Question 88</b></legend> 
	<legend><b>RAM can be treated as the ________ for the computer's processor.</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q88" value="a">Factory</label><br/> 
	<label><input type="radio" name="q88" value="b">Operating room</label><br/> 
	<label><input type="radio" name="q88" value="c">Planning room</label><br/>  
	<label><input type="radio" name="q88" value="x">Waiting room</label>
	</fieldset>
	<fieldset id="q89"> 
	<legend><b>Question 89</b></legend> 
	<legend><b>How do you move a copy of file from one computer to another over a communication channel is called?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q89" value="a">File copying</label><br/> 
	<label><input type="radio" name="q89" value="b">File encryption</label><br/> 
	<label><input type="radio" name="q89" value="c">File modification</label><br/>  
	<label><input type="radio" name="q89" value="x">File transfer</label>
	</fieldset>
	<fieldset id="q90"> 
	<legend><b>Question 90</b></legend> 
	<legend><b>What kind of memory is both static and non-volatile?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q90" value="a">RAM</label><br/> 
	<label><input type="radio" name="q90" value="b">BIOS</label><br/> 
	<label><input type="radio" name="q90" value="x">ROM</label><br/>  
	<label><input type="radio" name="q90" value="c">CACHE</label>
	</fieldset>
	<fieldset id="q91"> 
	<legend><b>Question 91</b></legend> 
	<legend><b>_______ is computer software designed to operate the computer hardware and to provide platform for running application software.</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q91" value="a">Application software</label><br/> 
	<label><input type="radio" name="q91" value="x">System Software</label><br/> 
	<label><input type="radio" name="q91" value="b">Modulator</label><br/>  
	<label><input type="radio" name="q91" value="c">Operating system</label>
	</fieldset>
	<fieldset id="q92"> 
	<legend><b>Question 92</b></legend> 
	<legend><b>Name of the first general purpose electronic computer ________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q92" value="x">ENIAC</label><br/> 
	<label><input type="radio" name="q92" value="a">ADVAC</label><br/> 
	<label><input type="radio" name="q92" value="b">UNIVAC</label><br/>  
	<label><input type="radio" name="q92" value="c">ADSAC</label>
	</fieldset>
	<fieldset id="q93"> 
	<legend><b>Question 93</b></legend> 
	<legend><b>The term bit is short for ________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q93" value="x">Binary digit</label><br/> 
	<label><input type="radio" name="q93" value="a">Megabyte</label><br/> 
	<label><input type="radio" name="q93" value="b">Binary language</label><br/>  
	<label><input type="radio" name="q93" value="c">Binary number</label>
	</fieldset>
	<fieldset id="q94"> 
	<legend><b>Question 94</b></legend> 
	<legend><b>On-line real time systems become popular in ________ generation</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q94" value="a">First Generation</label><br/> 
	<label><input type="radio" name="q94" value="x">Third Genertion</label><br/> 
	<label><input type="radio" name="q94" value="b">Fourth Generation</label><br/>  
	<label><input type="radio" name="q94" value="c">Second Generation</label>
	</fieldset>
	<fieldset id="q95"> 
	<legend><b>Question 95</b></legend> 
	<legend><b>When multiple computers are capable of processing then it is?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q95" value="a">Multiprogramming</label><br/> 
	<label><input type="radio" name="q95" value="b">Time-sharing</label><br/> 
	<label><input type="radio" name="q95" value="x">Multitasking</label><br/>  
	<label><input type="radio" name="q95" value="c">Multiprocessing</label>
	</fieldset>
	<fieldset id="q96"> 
	<legend><b>Question 96</b></legend> 
	<legend><b>The shortcut key to print document is ________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q96" value="a">Ctrl+A</label><br/> 
	<label><input type="radio" name="q96" value="b">Ctrl+B</label><br/> 
	<label><input type="radio" name="q96" value="x">Ctrl+P</label><br/>  
	<label><input type="radio" name="q96" value="c">Ctrl+c</label>
	</fieldset>
	<fieldset id="q97"> 
	<legend><b>Question 97</b></legend> 
	<legend><b>First layer in the OSI reference model is _________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q97" value="a">Data link</label><br/> 
	<label><input type="radio" name="q97" value="x">Physical</label><br/> 
	<label><input type="radio" name="q97" value="b">Network</label><br/>  
	<label><input type="radio" name="q97" value="c">Application</label>
	</fieldset>
	<fieldset id="q98"> 
	<legend><b>Question 98</b></legend> 
	<legend><b>MICR stands for _________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q98" value="a">Magnetic Ink Code Reader</label><br/> 
	<label><input type="radio" name="q98" value="b">Magnetic Ink Cases Reader</label><br/> 
	<label><input type="radio" name="q98" value="x">Magnetic Ink Character Recognition</label><br/>  
	<label><input type="radio" name="q98" value="c">Magnetic Ink Card Reader</label>
	</fieldset>
	<fieldset id="q99"> 
	<legend><b>Question 99</b></legend> 
	<legend><b>A _______ is an additional set of commands that the computer displays after you make a selection from the main menu.</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q99" value="a">Submenu</label><br/> 
	<label><input type="radio" name="q99" value="b">Menu selection</label><br/> 
	<label><input type="radio" name="q99" value="c">Pop Up Box</label><br/>  
	<label><input type="radio" name="q99" value="x">Dialog box</label>
	</fieldset>
	</div><br>
	<input type="button" id="btn" value="Check Answers"/>
	<input type="button" id="btnclr" value="Clear"/>
	<button onclick="history.back()">Go Back</button>
	<h2 id="score"></h2>
	</body>    
	</html>