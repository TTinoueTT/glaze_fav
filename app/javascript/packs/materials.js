// console.log('message from materials.js');
document.addEventListener('turbolinks:load', () => {
  console.log('loaded');
  const trs = document.querySelectorAll('.__tr');
  for (let i = 1; i < trs.length; i++) {
    const tr = trs[i];
    tr.addEventListener('mouseover', () => {
      tr.classList.add('tr-lighting');
    });
    tr.addEventListener('mouseout', () => {
      tr.classList.remove('tr-lighting');
    });
  }

  const tab_ratio = document.getElementById('tab_item__ratio');
  const tab_mol = document.getElementById('tab_item__mol');
  const ratio_data = document.getElementById('ratio-data');
  const mol_data = document.getElementById('mol-data');
  // 原料分析値のタブをクリックした時のイベント
  tab_ratio.addEventListener('click', () => {
    if (ratio_data.classList.contains('invisiblebody')){
      ratio_data.classList.remove('invisiblebody');
      mol_data.classList.add('invisiblebody');
    }
  });
  // 原料mol値のタブをクリックした時のイベント
  tab_mol.addEventListener('click', () => {
    if (mol_data.classList.contains('invisiblebody')){
      mol_data.classList.remove('invisiblebody');
      ratio_data.classList.add('invisiblebody');
    }
  });
  
});




// h1.addEventListener('mouseover', () => {
//   h1.classList.add('blue')}
//   );
// h1.addEventListener('mouseout', () => {
//   h1.classList.remove('blue')}
//   );