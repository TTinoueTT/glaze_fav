// const { $ } = require("@rails/ujs");

const { $ } = require("@rails/ujs");

import "../../javascripts/table"

  // document.addEventListener('turbolinks:render', () => {
  // document.addEventListener('turbolinks:render', () => {
  window.onload = function() {
    console.log('loaded index');
    
    const tabRatio = document.getElementById('tab_item__ratio');
    const tabMol = document.getElementById('tab_item__mol');
    const ratioData = document.getElementById('ratio-data');
    const molData = document.getElementById('mol-data');
    // 原料分析値のタブをクリックした時のイベント
    tabRatio.addEventListener('click', () => {
      // console.log('hello click');
      if (ratioData.classList.contains('invisiblebody')){
        ratioData.classList.remove('invisiblebody');
        molData.classList.add('invisiblebody');
      }
    });
  
    // 原料mol値のタブをクリックした時のイベント
    tabMol.addEventListener('click', () => {
      if (molData.classList.contains('invisiblebody')){
        molData.classList.remove('invisiblebody');
        ratioData.classList.add('invisiblebody');
      }
    });
  }
  // {
  // }
  // });

