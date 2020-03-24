/*
 * Copyright (c) 2020 Teodor G. (TeodorHMX1)
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 * 
 **/

// Created by TeodorHMX1 on 17/03/2020.

#include "../../header/screen/GameMenuScreen.h"

GameMenuScreen::GameMenuScreen()
{

	gameMenuScreenBackground.setFillColor(Color(52, 235, 116));
	rectangle.setSize(Vector2f(100, 50));
	rectangle.setColor(Color::Green);
	rectangle.setHoverColor(Color::Blue);
	rectangle.setActiveColor(Color::Cyan);

}

GameMenuScreen::~GameMenuScreen()
{

}

#ifdef _WIN32
#include <windows.h>

std::string getexepath()
{
	char result[ MAX_PATH ];
	return std::string( result, GetModuleFileName( NULL, result, MAX_PATH ) );
}
#endif

#ifdef _WIN64
#include <windows.h>

std::string getexepath()
{
	char result[ MAX_PATH ];
	return std::string( result, GetModuleFileName( NULL, result, MAX_PATH ) );
}
#endif

#ifdef __linux
#include <unistd.h>

std::string getexepath()
  {
  char result[ PATH_MAX ];
  ssize_t count = readlink( "/proc/self/exe", result, PATH_MAX );
  return std::string( result, (count > 0) ? count : 0 );

#endif

void GameMenuScreen::draw(RenderWindow &window)
{

	gameMenuScreenBackground.setSize(Vector2f(window.getSize().x, window.getSize().y));
	window.draw(gameMenuScreenBackground);

	rectangle.setPosition((float) window.getSize().x / 2, (float) window.getSize().y / 2);
	if (rectangle.isClicked(window))
	{
		printf("clicked!\n");
	}
	window.draw(rectangle);

	Text text;
	Font font;
	if (!font.loadFromFile("res/font/font1.otf"))
	{
		system("pause");
	}
	text.setFont(font);
	text.setString("Hello world");
	text.setCharacterSize(24);
	text.setFillColor(Color::Red);
	text.setPosition(100, 100);
	window.draw(text);

}
