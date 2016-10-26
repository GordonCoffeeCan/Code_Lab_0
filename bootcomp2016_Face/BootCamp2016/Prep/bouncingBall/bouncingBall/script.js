
//Creates a new Phaser Game
//You might want to check here to understand the basics of Phaser: http://www.photonstorm.com/phaser/tutorial-making-your-first-phaser-game
                        
var game = new Phaser.Game(800, 600, Phaser.AUTO, '', {create: create, update: update});

  var circPos;

  var xSpeed;
  var ySpeed;

  function create () {

    var graphics = game.add.graphics(0, 0);

    graphics.beginFill(0xFF0000, 1);
    circPos = graphics.drawCircle(0, 0,50);
    circPos.x = 200;
    circPos.y = 400;

    xSpeed = 2.5;
    ySpeed = 3.5;
  }

  function update(){
    circPos.x += xSpeed;
    circPos.y += ySpeed;

    if(circPos.x > game.world.width || circPos.x < 0){
      xSpeed *= -1;
    }

    if(circPos.y > game.world.height || circPos.y < 0){
      console.log(circPos.y);
      ySpeed *= -1;
    }
  }

