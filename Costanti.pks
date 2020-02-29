create or replace package Costanti as
  stile constant varchar2(32767) := '

  .cestino{
    font-size: 20px;
    color: darkgrey;
  }

    .mb {
        margin-bottom: 15px;
    }

  .defTextArea {
    width: 100%;
    height: 100px;
    resize: none;
  }

  .displayOK {
    text-align: center;
    font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
    font-size: 14px;
    line-height: 20px;
    margin: 50px;
    background-color: #a5e7a4;
    border-color: #000000;
    color: #0b6d17;
    padding: 20px;
    text-shadow: 0 1px 0 rgba(255,255,255,.5);
    border: 1px solid #029f00;
    border-radius: 5px;
  }

    .defDivSelectData {
        float: left;
        width: 33.3%;
    }

  .defDivData {
    text-align: center;
  }

  .displayKO{
    text-align: center;
    font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
    font-size: 14px;
    line-height: 20px;
    margin: 50px;
    background-color: #f2dede;
    border-color: #000000;
    color: #b94a48;
    padding: 20px;
    text-shadow: 0 1px 0 rgba(255,255,255,.5);
    border: 1px solid #beb39f;
    border-radius: 5px;
  }

  .defCenteredDiv {
    text-align: center;
    width: 40%;
    margin: auto;
    padding: 12px 60px 12px 60px;
    border-collapse: collapse;
    background-color: lightgrey;
    border-radius: 3px;
    font-family: "Raleway", sans-serif;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  }

  .defForm {
    margin: auto;
    width: 40%;
    padding: 12px 60px 12px 60px;
    border-collapse: collapse;
    background-color:	#E6E6FA;
    text-align: center;
    border-radius: 3px;
    font-family: "Raleway", sans-serif;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  }

  body{
  	margin: 0px;
  }

  img{
  	margin-right:50px;
  	margin-left:50px;
  	height:20%;
  	width:20%;
  }

  .mainMenu {
  	padding:15px;
  	background-color: #2f464f;
  	text-align:center;
  	display: flow-root;

  }

  .logout{
  	border-radius: 2px;
  	display: inline-block;
      color: #000;
      text-decoration: none;
  	float:right;
  	padding:0px;
  	list-style-type: none;
  	margin-top:0;
  	margin-right: 5px;
  	margin-bottom: 0;
  	 width: fit-content;
  	 background-color:#f38f12;
  	 font-size: 21px;
  }

  .logout a{
	display: inline-block;
    color: #000;
    text-decoration: none;
    float: left;
    width: fit-content;
    text-decoration: none;
	color: white;
    padding: 6px;
    display: inline-block;
    font-size: 21px;
 	font-family: "Raleway", sans-serif;
  }

  .logout a::after {
  	 content: " ";
  	 display: block;
  	 width: 0;
  	 height: 4px;
  	 background-color: white;
  	 transition: width .3s;
  }
  .logout a:hover::after {
   width: 100%;
   //transition: width .3s;

  }

   .header1 {
   font-family: "Raleway", sans-serif;
  	font-size:30px;
  	padding:2px;
  	text-align:center;
  	margin:0;
  	float:left;
  	display:inline-block;
  }

   .header1 a{
  	 font-size:30px;
  	color:#f38f12;
  	text-decoration: none;
  font-family: "Fjalla One", sans-serif;


  }

   ul {
  	float:left;
  	padding:0px;
  	list-style-type: none;
    display: flex;
  	margin-left: 10px;
	margin-right: 0px;
	margin-top: 0px;
	margin-bottom: 0px;

  }

   ul li {
  	display:inline;
  }


   ul li a{
  	display: inline-block;
      color: #000;
      text-decoration: none;
      float: left;
      width: fit-content;
      text-decoration: none;
      color: white;
      padding: 6px;
      display: inline-block;
      font-size: 21px;
  		font-family: "Raleway", sans-serif;
  }


  .dropbtn {
  background-color: #2f464f;
    color: white;
    padding: 10px;
    font-size: 21px;
  	font-family: "Raleway", sans-serif;
    border: none;
    cursor: pointer;
  	border-radius: 0px 3px 3px 3px;
  	margin:0;
  }




  .dropdown {
    position: relative;
    display: inline-block;
  }


  .dropdown:hover .dropbtn{
  	/*background-color: white;
  	color: black;
  	  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.4);*/
  		background-color: #4b717f;
  		border-radius: 3px 3px 0px 0px;
  }

  .dropdown-content {
    display: none;
    position: absolute;
  background-color: #4b717f;
  /* min-width: 160px;*/
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
  	border-radius: 0px 0px 3px 3px;
  }



  .dropdown-content a {
  	color: white;
  	float: left;
  	/*width: fit-content;*/
  	width:max-content;
    padding: 12px 16px;
  	font-size: 15px;
    text-decoration: none;
    display: block;
    font-family: "Raleway", sans-serif;
  }

  .dropdown-content a::after {
  	 content: " ";
  	 display: block;
  	 width: 0;
  	 height: 4px;
  	 background-color: white;
  	 transition: width .3s;
  }
  .dropdown-content a:hover::after {
   width: 100%;
   //transition: width .3s;

  }

  .dropdown-content a:hover {}

  .dropdown:hover .dropdown-content {
    display: block;
  }

  .dropdown:hover .dropbtn {

  }


    .header1Login {
    	font-family: "Fjalla One", sans-serif;
    	color: #f38f12;
    	font-size: 350%;
    	margin: 0;
    }

    .bodyLogin {
        margin:0;
    	padding: 0;
    	text-align: center;
    	font-family: sans-serif;
    	background-image: url("https://s1.germany.travel/media/content/specials_1/automobilland_1/autostadt_1/autostadt_turm_1106980~1.jpg");
    	background-repeat: no-repeat;
    	background-color: #000000;
    	background-size: cover;
    	background-attachment: fixed;
    	color: #ffffff;
    }
    .intestazioneHomeLogin {
    	top: 0;
        -webkit-box-shadow: 0px 3px 40px 10px rgba(0,0,0,0.75);
        -moz-box-shadow: 0px 3px 40px 10px rgba(0,0,0,0.75);
        box-shadow: 0px 3px 40px 10px rgba(0,0,0,0.75);
    	width: 100%;
    	padding: 1rem 0;
    	background-color: #2f464f;
    	color: #ffffff;
    }
    .myDivInputLogin {
    	display: -ms-flexbox; /* IE10 */
      display: flex;
      width: 60%;
    	margin: 0 20% 15px 20%;
    }

    .myInputLogin {
      width: 100%;
      padding: 10px;
      outline: none;
    }

    .myInputLoginErr {
      width: 100%;
      padding: 10px;
      outline: none;
      border: 2px solid red;
    }

    .myInputLogin:focus {
    	border: 2px solid #f38f12;
    }

    .myButtonLogin {
    	display: inline-block;
    	width: 40%;
    	font-size: 100%;
    	border: none;
    	background-color: #f38f12;
    	color: #ffffff;
    	padding: 10px 20px;
    	border-radius: 3px;
    	font-weight: bold;
    	cursor: pointer;
    }

    .myButtonLogin:hover {
    	background-color: #ffffff;
    	color: #f38f12;
    }
    .myFooterLogin {
    	position: fixed;
    	left: 0;
        -webkit-box-shadow: 0px 3px 40px 10px rgba(0,0,0,0.75);
        -moz-box-shadow: 0px 3px 40px 10px rgba(0,0,0,0.75);
        box-shadow: 0px 3px 40px 10px rgba(0,0,0,0.75);
    	bottom: 0;
    	width: 100%;
    	background-color: #2f464f;
    	color: #ffffff;
    	text-align: center;
    	font-family: "Raleway", sans-serif;
    }

    .myLogin {
    	background-color: #2f464f;
    	margin: 0 25% 10% 25%;
    	margin-top: 5%;
    	padding: 1%;
    	border-radius: 10px;
    	-webkit-box-shadow: 0px 17px 40px 10px rgba(0,0,0,0.75);
        -moz-box-shadow: 0px 17px 40px 10px rgba(0,0,0,0.75);
        box-shadow: 0px 17px 40px 10px rgba(0,0,0,0.75);
    }

    .rela {
    	font-family: "Raleway", sans-serif;
    }

    .relaErr {
    	font-family: "Raleway", sans-serif;
        color: red;
    }

    .defFormButton{
		
        display:inline-block;
        width: 49.5%;
        font-size: 90%;
        border: none;
		font-weight: bold;
        background-color: #f38f12;
        color: #ffffff;
        padding: 10px 20px;
        border-radius: 3px;
        cursor: pointer;
        font-family: "Raleway", sans-serif;
    }

    .defFormButton:hover {
        background-color: #ffffff;
        color: #f38f12;
    }

    .defResetButton:hover {
        background-color: #ffffff;
        color: #000000;
    }

      .defResetButton{
          display:inline-block;
        width: 49.5%;
        font-size: 90%;
        border: none;
        background-color: #82898f;
        color: #ffffff;
        padding: 10px 20px;
        border-radius: 3px;
        font-weight: bold;
        cursor: pointer;
          font-family: "Raleway", sans-serif;
    }

      .defButton{
        display:inline-block;
        width: 90px;
        font-size: 90%;
        border: none;
        background-color: #f38f12;
        color: #ffffff;
        padding: 10px 2px;
        border-radius: 3px;
        font-weight: bold;
        cursor: pointer;
          font-family: "Raleway", sans-serif;
    }

    .defButton:hover {
        color: #f38f12;
        background-color: #ffffff;
    }

      .defInput{
        width: 100%;
        padding: 12px 15px;
        margin: 8px 0px;
        display: block;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
      }
       .defSelect{
      width: 100%;
      height: 42px;
      margin: 8px 0;
      padding: .6em 1.4em .5em .8em;
      background-image: url(''data:image/svg+xml;charset=US-ASCII,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22292.4%22%20height%3D%22292.4%22%3E%3Cpath%20fill%3D%22%23007CB2%22%20d%3D%22M287%2069.4a17.6%2017.6%200%200%200-13-5.4H18.4c-5%200-9.3%201.8-12.9%205.4A17.6%2017.6%200%200%200%200%2082.2c0%205%201.8%209.3%205.4%2012.9l128%20127.9c3.6%203.6%207.8%205.4%2012.8%205.4s9.2-1.8%2012.8-5.4L287%2095c3.5-3.5%205.4-7.8%205.4-12.8%200-5-1.9-9.2-5.5-12.8z%22%2F%3E%3C%2Fsvg%3E''),linear-gradient(to bottom, #ffffff 0%,#e5e5e5 100%);
      linear-gradient(to bottom, #ffffff 0%,#e5e5e5 100%);
      background-repeat: no-repeat, repeat;
      background-position: right .7em top 50%, 0 0;
      background-size: .65em auto, 100%;
      display: inline-block;
      border: 1px solid #ccc;
      border-radius: 4px;
      line-height: 1.3;
      -moz-appearance: none;
      -webkit-appearance: none;
      appearance: none;
      box-sizing: border-box;
      font-family: "Raleway", sans-serif;
    }

      .defTable{
        word-wrap: break-word;
        table-layout: fixed;
        border-collapse: collapse;
        width: 90%;
        margin:3% 5% 5% 5%;
        font-family: "Raleway", sans-serif;
        box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
      }

      .defRowTable:nth-child(even){
        text-align: left;
        background-color: #f2f2f2;
      }

      .defElementoTabella{
        text-align: center;
        padding: 8px;
      }

      .defHeaderTable{
        text-align: left;
        text-align: center;
        padding: 1%;
        background-color: #f38f12;
        color: white;
      }

    .defHeader{
          color:#f38f12;
          text-align:center;
        font-family: "Raleway", sans-serif;
      }


/* Customize the label (the container) */
.radio_container {
  float: left;
  position: relative;
  padding-left: 35px;
  margin-bottom: 12px;
  cursor: pointer;
  font-size: 15px;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}

/* Hide the browser default radio button */
.radio_container input {
  position: absolute;
  opacity: 0;
  cursor: pointer;
  height: 0;
  width: 0;
}

/* Create a custom radio button */
.radio_checkmark {
  position: absolute;
  top: 0;
  left: 0;
  height: 20px;
  width: 20px;
  background-color: #b0b5b7;
  border-radius: 50%;
}

/* When the radio button is checked, add a blue background */
.radio_container input:checked ~ .radio_checkmark {
  background-color: #f38f12;
}

/* Create the indicator (the dot/circle - hidden when not checked) */
.radio_checkmark:after {
  content: "";
  position: absolute;
  display: none;
}

/* Show the indicator (dot/circle) when checked */
.radio_container input:checked ~ .radio_checkmark:after {
  display: block;
}

/* Style the indicator (dot/circle) */
.radio_container .radio_checkmark:after {
  top: 5px;
  left: 5px;
  width: 10px;
  height: 10px;
  border-radius: 50%;
  background: white;
}

/* The container */
.checkbox_container {
  display: block;
  position: relative;
  padding-left: 35px;
  margin-bottom: 12px;
  cursor: pointer;
  font-size: 15px;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}

/* Hide the browser default checkbox */
.checkbox_container input {
  position: absolute;
  opacity: 0;
  cursor: pointer;
  height: 0;
  width: 0;
}

/* Create a custom checkbox */
.checkbox_checkmark {
  position: absolute;
  top: 0;
  left: 0;
  height: 20px;
  width: 20px;
  background-color: #b0b5b7;
}

/* When the checkbox is checked, add a blue background */
.checkbox_container input:checked ~ .checkbox_checkmark {
  background-color: #f38f12;
}

/* Create the checkmark/indicator (hidden when not checked) */
.checkbox_checkmark:after {
  content: "";
  position: absolute;
  display: none;
}

/* Show the checkmark when checked */
.checkbox_container input:checked ~ .checkbox_checkmark:after {
  display: block;
}

/* Style the checkmark/indicator */
.checkbox_container .checkbox_checkmark:after {
  left: 7px;
  top: 3px;
  width: 5px;
  height: 10px;
  border: solid white;
  border-width: 0 2.2px 2.2px 0;
  -webkit-transform: rotate(45deg);
  -ms-transform: rotate(45deg);
  transform: rotate(45deg);
}

.gallery {
    background-color: #ebe9ff;
     width:100%;
     height:45%;
     position: relative;
		padding: 0;
		margin: 0;
		text-align: center;
	}

	.gallery-image{
cursor:pointer;
		position: relative;
		display: block;
	}

	.gallery-text{
     font-family: "Raleway", sans-serif;
    //color: white;
    font-size: 65px;
	    
	    width:100%;
	    height: 100%;
	    text-align: center;
	    /*background-color: rgba(0,0,0,0.8);*/
	    opacity: 0;
	    -webkit-transition: opacity 0.6s;
	    -moz-transition: opacity 0.6s;
	    transition: opacity 0.6s;
       vertical-align:middle;
       line-height:200px;
	}

	.gallery-text{
	    opacity: 1;
	}

	.gallery-text h3{
	font-size: 45px;
    //margin-top:5%;
	    color:black;
	    display: inline-table;
       vertical-align:middle;
       line-height:100%;
	}

    .defFormLogin {}


    .vuota{
    margin:0;
    height:100%;
    width:100%;
    }

   #demo{
   font-weight: bold;
        font-size:40px;
        color:f38f12;
        letter-spacing: .1em;

    }

    /*****blocchi finali ****/
    .container{
        width:90%;
        padding:10px;
        background:white;
        margin:100px auto;
        display:flex;
        justify-content:center;
    }

    .bodyp{
        display:flex;
        background-color:#2f464f;
        width:100%;
    }
    .box{
        width:250px;
        height:350px;
        background: orange;
        margin:0px 30px;
        transition: 1s;

    }

    .box:hover{
        transform:scale(1.1);
        box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
        z-index:2;
    }

    .txtbox{
    font-weight: bold;
        text-align:center;
        color:black;
         font-family: "Raleway", sans-serif;
         font-size:30px;
         letter-spacing: .1em;
    }
    .txtbox2{
        text-align:center;
        color:white;
         font-family: "Raleway", sans-serif;
         font-size:20px;
         letter-spacing: .1em;
    }

    .defDivBottoni{
        margin:5% 33% 5% 33%;
    }
  ';

  jscript constant varchar2(32767) := '

  function checkTarga(value){
    if((value.length) == 0)
        return true;
    var regexp = /[a-z][a-z]\d\d\d[a-z][a-z]/i;
    return regexp.test(value) && value.length == 7;
  }

  function checkMail(value) {
    if (value.length == 0)
        return true;
    var regexp = /^[-a-z0-9~!$%^&*_=+}{\''?]+(\.[-a-z0-9~!$%^&*_=+}{\''?]+)*@([a-z0-9_][-a-z0-9_]*(\.[-a-z0-9_]+)*\.(aero|arpa|biz|com|coop|edu|gov|info|int|mil|museum|name|net|org|pro|travel|mobi|[a-z][a-z])|([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}))(:[0-9]{1,5})?$/i;
    return regexp.test(value);
  }

  function checkCF(value){
    if((value.length) == 0)
        return true;
    var regexp = /^[a-z0-9]+$/i;
    return regexp.test(value) && value.length == 16;
  }

  function checkText(value) {
    if (value.length == 0)
      return true;
    var regexp = /^[a-z]+$/i;
    return regexp.test(value);
  }

  function checkNumber(value) {
    if (value.length == 0)
      return true;
    var regexp = /^[0-9]+$/;
    return regexp.test(value);
  }
  '

  /*
  function validateForm(idForm){
    var correct = true;
    var fields = document.forms[idForm].getElementsByTagName("input");
    var N = fields.length;
    for(var i=0;i<N;i++) {
        var input = fields[i];
		type = input.id;
        required = input.required;
        switch (type) {
            case ("textonly"):
                if ((required && input.value.length == 0) || (!checkText(input.value))) {
                    input.style.border="3px solid #cc0000 ";
                    correct = false;
                }
                else {input.style.borderColor = "#ccc";}
                break;
            case ("text"):
                if(required && input.value.length == 0){
                    input.style.border="3px solid #cc0000 ";
                    correct = false;
                }
                else {input.style.borderColor = "#ccc";}
                break;
            case ("number"):
                if ((required && input.value.length == 0) || (!checkNumber(input.value))) {
                    input.style.border = "3px solid #cc0000 ";
                    correct = false;
                }
                else {input.style.borderColor = "#ccc";}
                break;
            case ("cf"):
                if((required && input.value.length == 0) || (!checkCF(input.value))) {
                    input.style.border="3px solid #cc0000 ";
                    correct = false;
                }
                else {input.style.borderColor = "#ccc";}
                break;
            case ("mail"):
                if((required && input.value.length == 0) || (!checkMail(input.value))) {
                    input.style.border="3px solid #cc0000 ";
                    correct = false;
                }
                else {input.style.borderColor = "#ccc";}
                break;
            case ("targa"):
                if((required && input.value.length == 0) || (!checkTarga(input.value))) {
                    input.style.border="3px solid #cc0000 ";
                    correct = false;
                }
                else {input.style.borderColor = "#ccc";}
                break;
        }
    }
    return correct;
  }
  */

  ;

  radice constant varchar2(20) := '/apex/santarella.'; -- Da sostituire (includere il punto)
  macchina2 constant varchar2(50) := 'http://131.114.73.204:8080'; --Togliere 8080

end Costanti;
