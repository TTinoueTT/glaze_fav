'use strict';
window.onload = function() {
  console.log('hello');
  const symbols = document.querySelectorAll('.atomic_symbol');
  // console.log(symbols);

  symbols.forEach((symbol) => {
    // console.log(symbol.clientHeight);
    symbol.style.fontSize = (symbol.clientHeight / 3) + "px";
    symbol.style.lineHeight = (symbol.clientHeight) + "px";
  });
  
  window.onresize = function() {
    symbols.forEach((symbol) => {
      // console.log(symbol.clientHeight);
      symbol.style.fontSize = (symbol.clientHeight / 3) + "px";
      symbol.style.lineHeight = (symbol.clientHeight) + "px";
    });
  }
}
