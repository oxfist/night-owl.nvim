const theme = require('./original-theme.json');

const str = JSON.stringify(theme);

const hexColors = str
  .match(/#[a-fA-Z0-9]{6,8}/gi)
  .map((color) => color.toLowerCase());

const uniqueColors = new Set();

for (const color of hexColors) {
  uniqueColors.add(color);
}

const sortedColors = Array.from(uniqueColors).sort();

for (const color of sortedColors) {
  console.log(color);
}
