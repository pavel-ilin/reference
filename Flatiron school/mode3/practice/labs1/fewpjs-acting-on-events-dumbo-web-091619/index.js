let dodger = document.getElementById("dodger");
dodger.style.backgroundColor = "#FF69B4";

dodger.style.left;
dodger.style.bottom;
dodger.style.bottom = "10px";
// dodger.style.bottom = "0px";

function moveDodgerLeft() {
  // debugger
  let leftNumbers = dodger.style.left.replace("px", "");
  let left = parseInt(leftNumbers, 10);

  if (left > 0) {
    dodger.style.left = `${left - 10}px`;
  }
}

function moveDodgerRight() {
  let rightNumbers = dodger.style.left.replace("px", "");
  let right = parseInt(rightNumbers, 10);

  if (right > 0){
    dodger.style.left = `${right + 10}px`;
  }
}

function moveDodgerUp() {
  let upNumbers = dodger.style.bottom.replace("px", "");
  let up = parseInt(upNumbers, 10);

  if (up > 0){
    dodger.style.bottom = `${up + 10}px`;
  }
}

function moveDodgerDown(){
  let downNumbers = dodger.style.bottom.replace("px", "");
  let down = parseInt(downNumbers, 10);

  if (down > 0) {
    dodger.style.bottom = `${down - 10}px`;
  }
}

// boolean functions
document.addEventListener("keydown", function(e) {
  if (e.key === "ArrowLeft") {
    moveDodgerLeft();
  }
  if (e.key === "ArrowRight"){
    moveDodgerRight();
  }
  if (e.key == "ArrowUp") {
    moveDodgerUp();
  }
  if (e.key == "ArrowDown") {
    moveDodgerDown();
  }
});