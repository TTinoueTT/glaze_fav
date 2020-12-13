// console.log('message from materials.js');
document.addEventListener('turbolinks:load', () => {
  console.log('loaded');
  const trs = document.querySelectorAll('.__tr');
  console.log(trs);
  for (let i = 1; i < trs.length; i++) {
    const tr = trs[i];
    // td.style.backgroundColor = 'pink';

    tr.addEventListener('mouseover', () => {
      console.log(tr);
      tr.classList.add('tr-lighting');
    });

    tr.addEventListener('mouseout', () => {
      console.log('remove');
      tr.classList.remove('tr-lighting');
      // tr.classList.contains = ('tr-lighting');
    });
  }
});

// h1.addEventListener('mouseover', () => {
//   h1.classList.add('blue')}
//   );
// h1.addEventListener('mouseout', () => {
//   h1.classList.remove('blue')}
//   );