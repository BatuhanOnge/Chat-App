"use strict";

function toggleAlign() {
  const list = document.querySelectorAll("[id='msgln']");
  for (const element of list) {
      element.classList.toggle('1');
      element.classList.toggle('0');
      
      console.log("Toggled align");
  }
}


const messages = document.getElementById("chatbox");
let firstTime = true;
function scrollDown(){
  if (firstTime) {
    messages.scrollTop = messages.scrollHeight;
    firstTime = false;
  } else if (messages.scrollTop + messages.clientHeight >= messages.scrollHeight) {
    messages.scrollTop = messages.scrollHeight;
  }
}

window.onload = async function init() {
    let resp = await fetch('messageChat.php');
      document.getElementById("chatbox").innerHTML = await resp.text(); // Replaces body with response
      console.log("Fetch messages successful")
      scrollDown();
      document.getElementById("recip").innerText = recipUser;
      if(loggedUser == "Mehmet"){
        toggleAlign()
      }
}

setInterval(async function init() {
  let resp = await fetch('messageChat.php');
    document.getElementById("chatbox").innerHTML = await resp.text(); // Replaces body with response
    console.log("Fetch messages successful")
    scrollDown();
    if(loggedUser == "Mehmet"){
      toggleAlign()
    }
  }, 1000);

  

const form = document.getElementById("myForm");
form.addEventListener('submit', e => {
    e.preventDefault();
    
    const formData = new FormData(form);
    
    fetch('messageChat.php', {
      method: 'POST',
      body: formData
    })
    async function fetchmessagechat() {
      let resp = await fetch('messageChat.php');
        document.getElementById("chatbox").innerHTML = await resp.text();
    }
    console.log("POST Successful")

    
    document.getElementById("myForm").reset();
    
    setTimeout(function(){
      messages.scrollTop = messages.scrollHeight;
    },1000);
})




const exitbtn = document.getElementById("exit");
exitbtn.onclick = function(){
  window.location.replace("login.html");
}