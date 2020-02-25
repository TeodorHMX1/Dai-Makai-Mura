//The Main Character Class Implementation...

//Header Files
#include "MainCharacter.h"

MainCharacter::MainCharacter()
{
//Local Variables

//Main "MainCharacter()"
	JumpCount = 0;
	MovesCount = 0;
	MainCharacterGravity = 8.0f;

}

MainCharacter::~MainCharacter()
{
//Local Variables

//Main "~MainCharacter()"

}

void MainCharacter::Init(std::string TextureName, sf::Vector2f Position,float Mass)
{
//Local Variables

//Main "Init()"
	MainCharacterPosition = Position;
	MainCharacterMass = Mass;
	MainCharacterOnGround = false;
	MainCharacterOnMove = false;

	MainCharacterTexture.loadFromFile(TextureName.c_str());
	textureMainCharacterSize = MainCharacterTexture.getSize();
	textureMainCharacterSize.x /= 18;
	textureMainCharacterSize.y /= 19;

	MainCharacterSprite.setSize(sf::Vector2f(60, 60));
	MainCharacterSprite.setTexture(&MainCharacterTexture);
	MainCharacterSprite.setTextureRect(sf::IntRect(textureMainCharacterSize.x*7, textureMainCharacterSize.y*0, textureMainCharacterSize.x, textureMainCharacterSize.y));
	MainCharacterSprite.setPosition(MainCharacterPosition);
	MainCharacterSprite.setScale(sf::Vector2f(2.5, 2.5));
	MainCharacterSprite.setOrigin(textureMainCharacterSize.x / 2, textureMainCharacterSize.y / 2);
}

void MainCharacter::Update(float Speed)
{
//Local Variables
	int GroundLevel = 460;

//Main "Update()"
	MainCharacterVelocity -= MainCharacterMass * MainCharacterGravity * Speed;
	MainCharacterPosition.y -= MainCharacterVelocity * Speed / 1.2;
	if (!MainCharacterOnGround && MainCharacterOnMove)
	{
		MainCharacterPosition.x += MainCharacterVelocityMove * Speed * 8;
		if(MainCharacterOnMove && MainCharacterOnGround)
		{
			MainCharacterOnMove = false;
			MovesCount = 0;
		}
	} else if(MainCharacterOnMove)
	{
		if(MovesCount < 20)
		{
			MainCharacterVelocityMove /= 1.1;
			MainCharacterPosition.x += MainCharacterVelocityMove * Speed * 24;
			MovesCount++;

		}
	}
	
	MainCharacterSprite.setPosition(MainCharacterPosition);
	if (MainCharacterPosition.y >= (GroundLevel * 0.75f))
	{
		MainCharacterPosition.y = GroundLevel * 0.75f;
		MainCharacterVelocity = 0;
		if (!MainCharacterOnGround)
		{
			MovesCount = 12;
			MainCharacterVelocityMove /= 1.6;
		}
		MainCharacterOnGround = true;
		JumpCount = 0;
	}
}

void MainCharacter::Jump(float Velocity)
{
//Local Variables

//Main "Jump()"
	if (JumpCount < 2)
	{
		JumpCount++;
		MainCharacterVelocity = Velocity;
		MainCharacterOnGround = false;
	}
}

void MainCharacter::Move(float Velocity)
{
//Local Variables

//Main "Move()"
	MainCharacterVelocityMove = Velocity;
	MainCharacterOnMove = true;
	MovesCount = 0;
}

sf::RectangleShape MainCharacter::GetSprite()
{
//Local Variables

//Main "GetSprite()"

return MainCharacterSprite;
}