{
  let trs = document.querySelectorAll('.__tr');
  // console.log(trs);

  trs.forEach((tr, i) => {
    if( i === 0 ){ return; } // １行目は無効にする
    tr.addEventListener('mouseover', () => {
      tr.classList.add('tr-lighting');
    });
    tr.addEventListener('mouseout', () => {
      tr.classList.remove('tr-lighting');
    });
  });

  // for (let i = 1; i < trs.length; i++) {
  //   // const tr = trs[i];
  //   trs[i].addEventListener('mouseover', () => {
  //     trs[i].classList.add('tr-lighting');
  //   });
  //   trs[i].addEventListener('mouseout', () => {
  //     trs[i].classList.remove('tr-lighting');
  //   });
  // }
}