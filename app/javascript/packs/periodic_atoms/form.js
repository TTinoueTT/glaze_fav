'use strict'
window.onload = function() {
  console.log('hello');
  
  // フォームの自動入力を補完する
  const groups = document.getElementById('groups'); // json用の要素ID
  const atomId = document.getElementById('periodic_atom_id'); // id入力欄のID
  const atomNum = document.getElementById('periodic_atom_atomic_num'); // 原子番号入力欄のID
  const atomPeriod = document.getElementById('periodic_atom_period'); // 周期入力欄のID
  const atomGroup = document.getElementById('periodic_atom_atomic_group_id'); // 周期入力欄のID

  const groupsHash = groups.dataset.group;
  console.log(groupsHash);

  // Idを入力した時のイベント発火
  atomId.addEventListener('input', () => {
      atomNum.value = atomId.value; // id入力時に原子番号の自動入力
      // 周期の自動入力
      if (atomNum.value >= 1 && atomNum.value <= 2) {  // 第1周期
        atomPeriod.value = 1;
      } else if (atomNum.value >= 3 && atomNum.value <= 10) {  // 第2周期
        atomPeriod.value = 2;
      } else if (atomNum.value >= 11 && atomNum.value <= 18) {  // 第3周期
        atomPeriod.value = 3;
      } else if (atomNum.value >= 19 && atomNum.value <= 36) {  // 第4周期
        atomPeriod.value = 4;
      } else if (atomNum.value >= 37 && atomNum.value <= 54) {  // 第5周期
        atomPeriod.value = 5;
      } else if (atomNum.value >= 55 && atomNum.value <= 86) {  // 第6周期
        atomPeriod.value = 6;
      } else if (atomNum.value >= 87 && atomNum.value <= 118) {  // 第7周期
        atomPeriod.value = 7;
      } else {
        atomPeriod.value = null;
      }

      // 族の自動入力
      // let arry = [4, 12, 20, 38, 56, 88];
      if ([1, 3, 11, 19, 37, 55, 87].includes(Number(atomNum.value))) {
        atomGroup.value = 1;
      } else if ([4, 12, 20, 38, 56, 88].includes(Number(atomNum.value))){
        atomGroup.value = 2;
      } else if (
        [21, 39].includes(Number(atomNum.value)) ||
        (atomNum.value >= 57 && atomNum.value <= 71) ||
        (atomNum.value >= 89 && atomNum.value <= 103)
        ){
        atomGroup.value = 3;
      } else if ([22, 40, 72, 104].includes(Number(atomNum.value))){
        atomGroup.value = 4;
      } else if ([23, 41, 73, 105].includes(Number(atomNum.value))){
        atomGroup.value = 5;
      } else if ([24, 42, 74, 106].includes(Number(atomNum.value))){
        atomGroup.value = 6;
      } else if ([25, 43, 75, 107].includes(Number(atomNum.value))){
        atomGroup.value = 7;
      } else if ([26, 44, 76, 108].includes(Number(atomNum.value))){
        atomGroup.value = 8;
      } else if ([27, 45, 77, 109].includes(Number(atomNum.value))){
        atomGroup.value = 9;
      } else if ([28, 46, 78, 110].includes(Number(atomNum.value))){
        atomGroup.value = 10;
      } else if ([29, 47, 79, 111].includes(Number(atomNum.value))){
        atomGroup.value = 11;
      } else if ([30, 48, 80, 112].includes(Number(atomNum.value))){
        atomGroup.value = 12;
      } else if ([5, 13, 31, 49, 81, 113].includes(Number(atomNum.value))){
        atomGroup.value = 13;
      } else if ([6, 14, 32, 50, 82, 114].includes(Number(atomNum.value))){
        atomGroup.value = 14;
      } else if ([7, 15, 33, 51, 83, 115].includes(Number(atomNum.value))){
        atomGroup.value = 15;
      } else if ([8, 16, 34, 52, 84, 116].includes(Number(atomNum.value))){
        atomGroup.value = 16;
      } else if ([9, 17, 35, 53, 85, 117].includes(Number(atomNum.value))){
        atomGroup.value = 17;
      } else if ([2, 10, 18, 36, 54, 86, 118].includes(Number(atomNum.value))){
        atomGroup.value = 18;
      } else {
        atomGroup.value = null;
      }
        
    });
}
