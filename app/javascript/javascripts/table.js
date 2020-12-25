{
  const trs = document.querySelectorAll('.__tr');
  for (let i = 1; i < trs.length; i++) {
    // const tr = trs[i];
    trs[i].addEventListener('mouseover', () => {
      trs[i].classList.add('tr-lighting');
    });
    trs[i].addEventListener('mouseout', () => {
      trs[i].classList.remove('tr-lighting');
    });
  }
}