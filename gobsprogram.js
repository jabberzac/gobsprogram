var readline = require('readline');

var rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

rl.question("Gob's Program:  Y/N?\n? ", function (answer) {
  if (answer.match(/Y/i)) {
    while (true) {
      process.stdout.write("Penus  ");
    }
  }

  rl.close();
});
