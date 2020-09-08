View.Set ("graphics:800;650,title:Brick Breaker,position:centre;centre,nocursor")

procedure drawBricks (var x, y, x2, y2, c : array 1 .. * of int, var numBricks, height, ytime : int, count : int)
	x (1) := 0
	y (1) := 300
	x2 (1) := 100
	if count = 66 then
		c (1) := 42
	elsif count = 67 then
		c (1) := 44
	elsif count = 68 then
		c (1) := 10
	elsif count = 69 then
		c (1) := 11
	elsif count = 70 then
		c (1) := 9
	elsif count = 71 then
		c (1) := 5
	elsif count = 72 then
		c (1) := 25
	elsif count = 73 then
		c (1) := 23
	elsif count = 74 then
		c (1) := 103
	elsif count = 75 then
		c (1) := 100
	elsif count = 76 then
		c (1) := 187
	elsif count = 77 then
		c (1) := 188
	elsif count = 78 then
		c (1) := 176
	elsif count = 79 then
		c (1) := 151
	elsif count = 80 then
		c (1) := 20
	elsif count = 81 then
		c (1) := 19
	elsif count >= 82 then
		c (1) := 18
	else
		c (1) := 12
	end if
	ytime := 290
	if count >= 65 then
		numBricks := 520
	else
		numBricks := count * 8
	end if
	if count > 5 and count <= 12 then
		height := 20
	elsif count > 12 and count <= 17 then
		height := 15
	elsif count > 17 and count <= 25 then
		height := 10
	elsif count > 25 and count <= 55 then
		height := 5
	elsif count > 55 then
		height := 4
	else
		height := 20
	end if
	y2 (1) := 300 + height
	for i : 1 .. numBricks
		drawfillbox (x (i), y (i), x2 (i), y2 (i), c (i))
		drawbox (x (i), y (i), x2 (i), y2 (i), 255)
		if i mod 8 = 0 then
			if i = numBricks then
			else
				y (i + 1) := y (i) + height
				y2 (i + 1) := y2 (i) + height
				x (i + 1) := 0
				x2 (i + 1) := 100
				if c (i) = 12 then
					c (i + 1) := 42
				elsif c (i) = 42 then
					c (i + 1) := 44
				elsif c (i) = 44 then
					c (i + 1) := 10
				elsif c (i) = 10 then
					c (i + 1) := 11
				elsif c (i) = 11 then
					c (i + 1) := 9
				elsif c (i) = 9 then
					c (i + 1) := 5
				elsif c (i) = 5 then
					c (i + 1) := 25
				elsif c (i) = 25 then
					c (i + 1) := 23
				elsif c (i) = 23 then
					c (i + 1) := 103
				elsif c (i) = 103 then
					c (i + 1) := 100
				elsif c (i) = 100 then
					c (i + 1) := 187
				elsif c (i) = 187 then
					c (i + 1) := 188
				elsif c (i) = 188 then
					c (i + 1) := 176
				elsif c (i) = 176 then
					c (i + 1) := 151
				elsif c (i) = 151 then
					c (i + 1) := 20
				elsif c (i) = 20 then
					c (i + 1) := 19
				elsif c (i) = 19 then
					c (i + 1) := 18
				else
					c (i + 1) := 18
				end if
			end if
		else
			if i = numBricks then
			else
				x (i + 1) := x (i) + 100
				x2 (i + 1) := x2 (i) + 100
				y (i + 1) := y (i)
				y2 (i + 1) := y2 (i)
				c (i + 1) := c (i)
			end if
		end if
	end for
end drawBricks

procedure left (var cx, cx2 : int, cy, cy2, cc : int)
	drawfillbox (cx, cy, cx2, cy2, 255)
	if cx <= 0 then
	else
		cx -= 2
		cx2 -= 2
	end if
	drawfillbox (cx, cy, cx2, cy2, cc)
end left

procedure right (var cx, cx2 : int, cy, cy2, cc : int)
	drawfillbox (cx, cy, cx2, cy2, 255)
	if cx2 >= maxx then
	else
		cx += 2
		cx2 += 2
	end if
	drawfillbox (cx, cy, cx2, cy2, cc)
end right

procedure breakBricks (var x, y, x2, y2, c : array 1 .. * of int, i : int, var numberBricks, points : int)
	drawfillbox (x (i), y (i), x2 (i), y2 (i), 255)
	if c (i) = 18 then
		c (i) := 19
		points += 80
	elsif c (i) = 19 then
		c (i) := 20
		points += 80
	elsif c (i) = 20 then
		c (i) := 151
		points += 80
	elsif c (i) = 151 then
		c (i) := 176
		points += 80
	elsif c (i) = 176 then
		c (i) := 188
		points += 80
	elsif c (i) = 188 then
		c (i) := 187
		points += 80
	elsif c (i) = 187 then
		c (i) := 100
		points += 80
	elsif c (i) = 100 then
		c (i) := 103
		points += 80
	elsif c (i) = 103 then
		c (i) := 23
		points += 70
	elsif c (i) = 23 then
		c (i) := 25
		points += 60
	elsif c (i) = 25 then
		c (i) := 5
		points += 50
	elsif c (i) = 5 then
		c (i) := 9
		points += 40
	elsif c (i) = 9 then
		c (i) := 11
		points += 30
	elsif c (i) = 11 then
		c (i) := 10
		points += 20
	elsif c (i) = 10 then
		c (i) := 44
		points += 20
	elsif c (i) = 44 then
		c (i) := 42
		points += 10
	elsif c (i) = 42 then
		c (i) := 12
		points += 10
	elsif c (i) = 12 then
		x (i) := 0
		y (i) := 0
		x2 (i) := 0
		y2 (i) := 0
		c (i) := 255
		numberBricks -= 1
		points += 100
	end if
	drawfillbox (x (i), y (i), x2 (i), y2 (i), c (i))
	drawbox (x (i), y (i), x2 (i), y2 (i), 255)
end breakBricks

procedure stats (points, lives, count, scoreFont : int)
	drawfillbox (0, 600, maxx, maxy, 255)
	Font.Draw ("Lives:", round (maxx div 4 - 3 * length (intstr (lives)) - 150), maxy - 40, scoreFont, 0)
	Font.Draw (intstr (lives), round (maxx div 4 - 3 * length (intstr (lives)) - 50), maxy - 40, scoreFont, 0)
	Font.Draw ("Points:", round (maxx div 2 - 3 * length (intstr (points)) - 100), maxy - 40, scoreFont, 0)
	Font.Draw (intstr (points), round (maxx div 2 - 3 * length (intstr (points))), maxy - 40, scoreFont, 0)
	Font.Draw ("Round:", round (maxx - 3 * length (intstr (count)) - 170), maxy - 40, scoreFont, 0)
	Font.Draw (intstr (count), round (maxx - 3 * length (intstr (count)) - 50), maxy - 40, scoreFont, 0)
end stats

procedure ballmove (var ballx, bally, xd, yd, xa, ya, numBricks, numberBricks, points, lives, count, times2, ytime, scoreFont : int, ballx2, bally2, cc, cx, cx2 : int, var x, y, x2, y2, c : array 1
		.. * of int)
	drawfilloval (ballx, bally, ballx2, bally2, 255)
	if (bally - bally2) >= 10 and (bally - bally2) <= 30 then
		if ballx + ballx2 >= cx and ballx - ballx2 <= cx2 then
			yd := 1
			if ballx + ballx2 >= cx and ballx <= (cx + 14) then
				xa := 3
				xd := 0
			elsif ballx >= (cx + 14) and ballx <= (cx + 28) then
				xa := 2
				xd := 0
			elsif ballx >= (cx + 28) and ballx <= (cx + 45) then
				xa := 1
				xd := 0
			elsif ballx >= (cx + 45) and ballx <= (cx + 55) then
				xa := 0
			elsif ballx >= (cx + 55) and ballx <= (cx + 73) then
				xa := 1
				xd := 1
			elsif ballx >= (cx + 73) and ballx <= (cx + 87) then
				xa := 2
				xd := 1
			elsif ballx >= (cx + 87) and ballx - ballx2 <= cx2 then
				xa := 3
				xd := 1
			end if
		end if
	elsif bally + bally2 = maxy - 45 then
		yd := 0
	else
	end if
	if (ballx - ballx2) <= 0 then
		xd := 1
	elsif (ballx + ballx2) >= maxx then
		xd := 0
	else
	end if
	if bally + bally2 >= ytime then
		for i : 1 .. numBricks
			if ballx + ballx2 >= x (i) and ballx - ballx2 <= x2 (i) then
				if bally + bally2 >= y (i) and bally + bally2 <= y (i) + 10 then
					yd := 0
					breakBricks (x, y, x2, y2, c, i, numberBricks, points)
					stats (points, lives, count, scoreFont)
					if ballx - ballx2 >= x2 (i) - 3 and ballx - ballx2 <= x2 (i) then
						xd := 0
					elsif ballx + ballx2 >= x (i) + 3 and ballx + ballx2 <= x (i) then
						xd := 1
					end if
				elsif bally + bally2 >= y (i) + 10 and bally - bally2 <= y2 (i) then
					yd := 1
					breakBricks (x, y, x2, y2, c, i, numberBricks, points)
					stats (points, lives, count, scoreFont)
					if ballx - ballx2 >= x2 (i) - 3 and ballx - ballx2 <= x2 (i) then
						xd := 1
					elsif ballx + ballx2 >= x (i) + 3 and ballx + ballx2 <= x (i) then
						xd := 0
					end if
				else
				end if
			else
			end if
		end for
	end if
	if xd = 0 then
		if times2 = 1 then
			times2 += 1
		else
			ballx -= xa
			times2 -= 1
		end if
	elsif xd = 1 then
		if times2 = 1 then
			times2 += 1
		else
			ballx += xa
			times2 -= 1
		end if
	end if
	if yd = 0 then
		bally -= ya
	elsif yd = 1 then
		bally += ya
	end if
	drawfilloval (ballx, bally, ballx2, bally2, cc)
end ballmove

var cx, cy, cx2, cy2, cc, ballx, bally, xd, yd, xa, ya, times, times2, times3 : int
var ytime : int
var ballx2, bally2 : int := 10
var numBricks : int := 100000
var lives : int := 3
var numberBricks : int
var height : int
var x, y, x2, y2, c : array 1 .. numBricks of int
var count : int := 1
var ch : string (1)
var playAgain : string
var controls : array char of boolean
var points : int := 0
var scoreFont : int := Font.New ("times new roman:25:bold")
var titleFont : int := Font.New ("times new roman:45:bold")
Font.Draw ("This is brick breaker. Move", 15, 450, titleFont, 255)
Font.Draw ("left and right with the arrow", 10, 400, titleFont, 255)
Font.Draw ("keys. Bounce the ball back at", 10, 350, titleFont, 255)
Font.Draw ("the bricks to win. Press any", 10, 300, titleFont, 255)
Font.Draw ("key to continue.", 10, 250, titleFont, 255)
getch (ch)

setscreen ("nocursor")
loop
	cls
	drawfillbox (0, 0, maxx, maxy, 255)
	cx := 350
	cx2 := 450
	cy := 10
	cy2 := 30
	xd := 0
	yd := 0
	xa := 0
	ya := 1
	cc := 0
	ballx := round (maxx div 2 - 10)
	bally := 200
	times2 := 1
	times3 := 1
	drawfillbox (cx, cy, cx2, cy2, cc)
	drawBricks (x, y, x2, y2, c, numBricks, height, ytime, count)
	numberBricks := numBricks
	delay (1000)
	stats (points, lives, count, scoreFont)
	loop
		Input.KeyDown (controls)
		if controls (KEY_LEFT_ARROW) then
			left (cx, cx2, cy, cy2, cc)
		elsif controls (KEY_RIGHT_ARROW) then
			right (cx, cx2, cy, cy2, cc)
		elsif controls (KEY_ENTER) then
			delay (200)
			getch (ch)
		end if
		ballmove (ballx, bally, xd, yd, xa, ya, numBricks, numberBricks, points, lives, count, times2, ytime, scoreFont, ballx2, bally2, cc, cx, cx2, x, y, x2, y2, c)
		drawfillbox (cx, cy, cx2, cy2, cc)
		drawfilloval (ballx, bally, ballx2, bally2, cc)
		View.Update
		if bally - bally2 <= 0 then
			if lives > 1 then
				drawfilloval (ballx, bally, ballx2, bally2, 255)
				drawfillbox (cx, cy, cx2, cy2, 255)
				lives -= 1
				cx := 350
				cx2 := 450
				xd := 0
				yd := 0
				xa := 0
				ya := 1
				cc := 0
				ballx := round (maxx div 2 - 10)
				bally := 200
				times2 := 1
				delay (1000)
				ballmove (ballx, bally, xd, yd, xa, ya, numBricks, numberBricks, points, lives, count, times2, ytime, scoreFont, ballx2, bally2, cc, cx, cx2, x, y, x2, y2, c)
				stats (points, lives, count, scoreFont)
			else
				exit
			end if
		end if
		if times3 = 1 then
			delay (1)
			times3 += 1
		elsif times3 = 2 then
			delay (2)
			times3 -= 1
		end if
		exit when numberBricks = 0
	end loop
	cls
	delay (1000)
	if numberBricks = 0 then
		Font.Draw ("Congratulations. You beat", 10, 450, titleFont, 255)
		Font.Draw ("round", 10, 400, titleFont, 255)
		Font.Draw (intstr (count), 175, 400, titleFont, 12)
		Font.Draw (". Proceed to next level?", 10, 350, titleFont, 255)
		Font.Draw ("(y/n)", round (maxx div 2 - 5 * 4), 300, titleFont, 255)
		loop
			getch (ch)
			if ch = "y" or ch = "Y" then
				count += 1
				numBricks += 8
				numberBricks += 8
				points := 0
				cls
				Font.Draw ("Alright. Let\'s go", 10, 350, titleFont, 255)
				Font.Draw ("to round", 10, 300, titleFont, 255)
				Font.Draw (intstr (count), 240, 300, titleFont, 12)
				delay (1000)
				exit
			elsif ch = "n" or ch = "N" then
				exit
			end if
		end loop
	end if
	if bally - 10 <= 0 then
		Font.Draw ("You lost. Play again? (y/n)", 10, 350, titleFont, 255)
		loop
			getch (ch)
			if ch = "y" or ch = "Y" then
				points := 0
				cls
				Font.Draw ("Alright. Let\'s go again!", 10, 350, titleFont, 255)
				delay (1000)
				exit
			elsif ch = "n" or ch = "N" then
				exit
			end if
		end loop
	end if
	exit when ch = "n" or ch = "N"
end loop

cls
Font.Draw ("I hope you had fun.", 10, 350, titleFont, 255)
