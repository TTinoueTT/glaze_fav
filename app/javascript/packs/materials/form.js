'use strict';
window.onload = function() {
  console.log('hello');
  // const trs = document.querySelectorAll('.__tr');
  // console.log(trs);
  const inputs = document.querySelectorAll('.form__control_molratio');
  const inputSum = document.getElementById('inputs_sum');
  let sum = 0;
  const adder = input => sum += parseFloat(input.value);

  inputs.forEach(adder);
  inputSum.textContent = sum;

  // インプットした時の合計値を算出するイベント発動
  inputs.forEach((input) => {
    input.addEventListener('input', () => {
      // console.log('input');
      sum = 0; //合計値の初期化
      // sum += Number(input.value);
      inputs.forEach(adder);
      inputSum.textContent = Math.round(sum * 100) / 100; //少数点第三位で切り上げ
    });
  });
}
