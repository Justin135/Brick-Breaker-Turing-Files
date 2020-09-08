View.Set ("graphics:800;650,title:Brick Breaker,position:centre;centre,nocursor")





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%LEVELS%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%





procedure drawBricks (var x, y, x2, y2, c : array 1 .. * of int, var numBricks, ytime : int)
    x (1) := 0
    y (1) := 400
    x2 (1) := 100
    y2 (1) := 420
    c (1) := 12
    ytime := 390
    numBricks := 64
    for i : 1 .. numBricks
        drawfillbox (x (i), y (i), x2 (i), y2 (i), c (i))
        drawbox (x (i), y (i), x2 (i), y2 (i), 255)
        if i mod 8 = 0 then
            y (i + 1) := y (i) + 20
            y2 (i + 1) := y2 (i) + 20
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
            else
            end if
        elsif i = numBricks then
        else
            x (i + 1) := x (i) + 100
            x2 (i + 1) := x2 (i) + 100
            y (i + 1) := y (i)
            y2 (i + 1) := y2 (i)
            c (i + 1) := c (i)
        end if
    end for
end drawBricks

procedure drawBricks2 (var x, y, x2, y2, c : array 1 .. * of int, var times, numBricks, ytime : int)
    x (1) := 0
    y (1) := 350
    x2 (1) := 100
    y2 (1) := 370
    c (1) := 12
    times := 1
    ytime := 340
    numBricks := 64
    for i : 1 .. numBricks
        drawfillbox (x (i), y (i), x2 (i), y2 (i), c (i))
        drawbox (x (i), y (i), x2 (i), y2 (i), 255)
        if times = 1 or times = 3 or times = 5 or times = 7 or times = 9 or times = 11 then
            if i = 4 or i = 12 or i = 16 or i = 24 or i = 28 or i = 36 or i = 40 or i = 48 or i = 52 or i = 60 then
                y (i + 1) := y (i) + 20
                y2 (i + 1) := y2 (i) + 20
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
                end if
                times += 1
            else
                if i = numBricks then
                else
                    x (i + 1) := x (i) + 200
                    x2 (i + 1) := x2 (i) + 200
                    y (i + 1) := y (i)
                    y2 (i + 1) := y2 (i)
                    c (i + 1) := c (i)
                end if
            end if
        else
            if i mod 12 = 0 then
                y (i + 1) := y (i) + 20
                y2 (i + 1) := y2 (i) + 20
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
                end if
                times += 1
            else
                x (i + 1) := x (i) + 100
                x2 (i + 1) := x2 (i) + 100
                y (i + 1) := y (i)
                y2 (i + 1) := y2 (i)
                c (i + 1) := c (i)
            end if
        end if
    end for
end drawBricks2

procedure drawBricks3 (var x, y, x2, y2, c : array 1 .. * of int, var numBricks, ytime : int)
    x (1) := 0
    y (1) := 250
    x2 (1) := 100
    y2 (1) := 270
    c (1) := 12
    ytime := 240
    numBricks := 64
    for i : 1 .. numBricks
        drawfillbox (x (i), y (i), x2 (i), y2 (i), c (i))
        drawbox (x (i), y (i), x2 (i), y2 (i), 255)
        if i mod 4 = 0 then
            y (i + 1) := y (i) + 20
            y2 (i + 1) := y2 (i) + 20
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
            end if
        else
            if i = 64 then
            else
                x (i + 1) := x (i) + 200
                x2 (i + 1) := x2 (i) + 200
                y (i + 1) := y (i)
                y2 (i + 1) := y2 (i)
                c (i + 1) := c (i)
            end if
        end if
    end for
end drawBricks3

procedure drawBricks4 (var x, y, x2, y2, c : array 1 .. * of int, var times, numBricks, ytime : int)
    x (1) := 0
    y (1) := 350
    x2 (1) := 100
    y2 (1) := 370
    c (1) := 12
    times := 1
    ytime := 340
    numBricks := 64
    for i : 1 .. numBricks
        drawfillbox (x (i), y (i), x2 (i), y2 (i), c (i))
        drawbox (x (i), y (i), x2 (i), y2 (i), 255)
        if times = 2 or times = 4 or times = 6 or times = 8 or times = 10 or times = 12 then
            if i = 4 or i = 12 or i = 16 or i = 24 or i = 28 or i = 36 or i = 40 or i = 48 or i = 52 or i = 60 then
                y (i + 1) := y (i) + 20
                y2 (i + 1) := y2 (i) + 20
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
                end if
                times += 1
            else
                if i = numBricks then
                else
                    x (i + 1) := x (i) + 200
                    x2 (i + 1) := x2 (i) + 200
                    y (i + 1) := y (i)
                    y2 (i + 1) := y2 (i)
                    c (i + 1) := c (i)
                end if
            end if
        else
            if i mod 12 = 0 then
                y (i + 1) := y (i) + 20
                y2 (i + 1) := y2 (i) + 20
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
                end if
                times += 1
            else
                x (i + 1) := x (i) + 100
                x2 (i + 1) := x2 (i) + 100
                y (i + 1) := y (i)
                y2 (i + 1) := y2 (i)
                c (i + 1) := c (i)
            end if
        end if
    end for
end drawBricks4

procedure drawBricks5 (var x, y, x2, y2, c : array 1 .. * of int, var numBricks, ytime : int)
    x (1) := 100
    y (1) := 250
    x2 (1) := 200
    y2 (1) := 270
    c (1) := 12
    ytime := 240
    numBricks := 64
    for i : 1 .. numBricks
        drawfillbox (x (i), y (i), x2 (i), y2 (i), c (i))
        drawbox (x (i), y (i), x2 (i), y2 (i), 255)
        if i mod 4 = 0 then
            y (i + 1) := y (i) + 20
            y2 (i + 1) := y2 (i) + 20
            x (i + 1) := 100
            x2 (i + 1) := 200
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
            end if
        else
            if i = numBricks then
            else
                x (i + 1) := x (i) + 200
                x2 (i + 1) := x2 (i) + 200
                y (i + 1) := y (i)
                y2 (i + 1) := y2 (i)
                c (i + 1) := c (i)
            end if
        end if
    end for
end drawBricks5

procedure drawBricks6 (var x, y, x2, y2, c : array 1 .. * of int, var numBricks, ytime : int)
    x (1) := 0
    y (1) := 300
    x2 (1) := 100
    y2 (1) := 315
    c (1) := 12
    ytime := 290
    numBricks := 128
    for i : 1 .. numBricks
        drawfillbox (x (i), y (i), x2 (i), y2 (i), c (i))
        drawbox (x (i), y (i), x2 (i), y2 (i), 255)
        if i mod 8 = 0 then
            y (i + 1) := y (i) + 15
            y2 (i + 1) := y2 (i) + 15
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
            end if
        elsif i = numBricks then
        else
            x (i + 1) := x (i) + 100
            x2 (i + 1) := x2 (i) + 100
            y (i + 1) := y (i)
            y2 (i + 1) := y2 (i)
            c (i + 1) := c (i)
        end if
    end for
end drawBricks6

procedure drawBricks7 (var x, y, x2, y2, c : array 1 .. * of int, var numBricks, ytime : int)
    x (1) := 0
    y (1) := 400
    x2 (1) := 100
    y2 (1) := 420
    c (1) := 19
    ytime := 390
    numBricks := 64
    for i : 1 .. numBricks
        drawfillbox (x (i), y (i), x2 (i), y2 (i), c (i))
        drawbox (x (i), y (i), x2 (i), y2 (i), 255)
        if i mod 8 = 0 then
            y (i + 1) := y (i) + 20
            y2 (i + 1) := y2 (i) + 20
            x (i + 1) := 0
            x2 (i + 1) := 100
            if c (i) = 19 then
                c (i + 1) := 5
            elsif c (i) = 5 then
                c (i + 1) := 9
            elsif c (i) = 9 then
                c (i + 1) := 11
            elsif c (i) = 11 then
                c (i + 1) := 10
            elsif c (i) = 10 then
                c (i + 1) := 44
            elsif c (i) = 44 then
                c (i + 1) := 42
            elsif c (i) = 42 then
                c (i + 1) := 12
            else
            end if
        elsif i = numBricks then
        else
            x (i + 1) := x (i) + 100
            x2 (i + 1) := x2 (i) + 100
            y (i + 1) := y (i)
            y2 (i + 1) := y2 (i)
            c (i + 1) := c (i)
        end if
    end for
end drawBricks7

procedure drawBricks8 (var x, y, x2, y2, c : array 1 .. * of int, var times, numBricks, ytime : int)
    x (1) := 0
    y (1) := 260
    x2 (1) := 100
    y2 (1) := 275
    c (1) := 12
    times := 1
    ytime := 250
    numBricks := 124
    for i : 1 .. numBricks
        drawfillbox (x (i), y (i), x2 (i), y2 (i), c (i))
        drawbox (x (i), y (i), x2 (i), y2 (i), 255)
        if times = 1 or times = 3 or times = 5 or times = 7 or times = 9 or times = 11 or times = 13 or times = 15 or times = 17 or times = 19 or times = 21 then
            if i = 4 or i = 12 or i = 16 or i = 24 or i = 28 or i = 36 or i = 40 or i = 48 or i = 52 or i = 60 or i = 64 or i = 72 or i = 76 or i = 84 or i = 88 or i = 96 or i = 100 or i = 108 or i =
                    112 or i = 120 then
                y (i + 1) := y (i) + 15
                y2 (i + 1) := y2 (i) + 15
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
                    c (i + 1) := 25
                end if
                times += 1
            else
                if i = numBricks then
                else
                    x (i + 1) := x (i) + 200
                    x2 (i + 1) := x2 (i) + 200
                    y (i + 1) := y (i)
                    y2 (i + 1) := y2 (i)
                    c (i + 1) := c (i)
                end if
            end if
        else
            if i mod 12 = 0 then
                y (i + 1) := y (i) + 15
                y2 (i + 1) := y2 (i) + 15
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
                    c (i + 1) := 25
                end if
                times += 1
            else
                x (i + 1) := x (i) + 100
                x2 (i + 1) := x2 (i) + 100
                y (i + 1) := y (i)
                y2 (i + 1) := y2 (i)
                c (i + 1) := c (i)
            end if
        end if
    end for
end drawBricks8

procedure drawBricks9 (var x, y, x2, y2, c : array 1 .. * of int, var numBricks, ytime : int)
    x (1) := 0
    x2 (1) := 50
    y (1) := 400
    y2 (1) := 420
    c (1) := 12
    ytime := 390
    numBricks := 128
    for i : 1 .. numBricks
        drawfillbox (x (i), y (i), x2 (i), y2 (i), c (i))
        drawbox (x (i), y (i), x2 (i), y2 (i), 255)
        if i mod 16 = 0 then
            y (i + 1) := y (i) + 20
            y2 (i + 1) := y2 (i) + 20
            x (i + 1) := 0
            x2 (i + 1) := 50
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
            else
            end if
        elsif i = numBricks then
        else
            x (i + 1) := x (i) + 50
            x2 (i + 1) := x2 (i) + 50
            y (i + 1) := y (i)
            y2 (i + 1) := y2 (i)
            c (i + 1) := c (i)
        end if
    end for
end drawBricks9

procedure drawBricks10 (var x, y, x2, y2, c : array 1 .. * of int, var numBricks, ytime : int)
    x (1) := 0
    y (1) := 300
    x2 (1) := 50
    y2 (1) := 315
    c (1) := 12
    ytime := 290
    numBricks := 256
    for i : 1 .. numBricks
        drawfillbox (x (i), y (i), x2 (i), y2 (i), c (i))
        drawbox (x (i), y (i), x2 (i), y2 (i), 255)
        if i mod 16 = 0 then
            y (i + 1) := y (i) + 15
            y2 (i + 1) := y2 (i) + 15
            x (i + 1) := 0
            x2 (i + 1) := 50
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
            end if
        elsif i = numBricks then
        else
            x (i + 1) := x (i) + 50
            x2 (i + 1) := x2 (i) + 50
            y (i + 1) := y (i)
            y2 (i + 1) := y2 (i)
            c (i + 1) := c (i)
        end if
    end for
end drawBricks10

procedure drawBricks11 (var x, y, x2, y2, c : array 1 .. * of int, var numBricks, ytime : int)
    x (1) := 0
    y (1) := 300
    x2 (1) := 25
    y2 (1) := 315
    c (1) := 12
    ytime := 290
    numBricks := 512
    for i : 1 .. numBricks
        drawfillbox (x (i), y (i), x2 (i), y2 (i), c (i))
        drawbox (x (i), y (i), x2 (i), y2 (i), 255)
        if i mod 32 = 0 then
            y (i + 1) := y (i) + 15
            y2 (i + 1) := y2 (i) + 15
            x (i + 1) := 0
            x2 (i + 1) := 25
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
            end if
        elsif i = numBricks then
        else
            x (i + 1) := x (i) + 25
            x2 (i + 1) := x2 (i) + 25
            y (i + 1) := y (i)
            y2 (i + 1) := y2 (i)
            c (i + 1) := c (i)
        end if
    end for
end drawBricks11




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%OTHER%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%





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

procedure stats (points, lives, count, scoreFont : int)
    drawfillbox (0, 600, maxx, maxy, 255)
    Font.Draw ("Lives:", round (maxx div 4 - 3 * length (intstr (lives)) - 150), maxy - 40, scoreFont, 0)
    Font.Draw (intstr (lives), round (maxx div 4 - 3 * length (intstr (lives)) - 50), maxy - 40, scoreFont, 0)
    Font.Draw ("Points:", round (maxx div 2 - 3 * length (intstr (points)) - 100), maxy - 40, scoreFont, 0)
    Font.Draw (intstr (points), round (maxx div 2 - 3 * length (intstr (points))), maxy - 40, scoreFont, 0)
    Font.Draw ("Round:", round (maxx - 3 * length (intstr (count)) - 170), maxy - 40, scoreFont, 0)
    Font.Draw (intstr (count), round (maxx - 3 * length (intstr (count)) - 50), maxy - 40, scoreFont, 0)
end stats

procedure breakBricks (var x, y, x2, y2, c : array 1 .. * of int, i : int, var numberBricks, points, lives, scoreFont, count : int)
    drawfillbox (x (i), y (i), x2 (i), y2 (i), 255)
    if c (i) = 19 then
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
    if points mod 5000 = 0 then
        lives += 1
        stats (points, lives, count, scoreFont)
    end if
end breakBricks

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
    elsif bally + bally2 = maxy - 50 then
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
                    breakBricks (x, y, x2, y2, c, i, numberBricks, points, lives, scoreFont, count)
                    stats (points, lives, count, scoreFont)
                    if ballx - ballx2 >= x2 (i) - 3 and ballx - ballx2 <= x2 (i) then
                        xd := 0
                    elsif ballx + ballx2 >= x (i) + 3 and ballx + ballx2 <= x (i) then
                        xd := 1
                    end if
                elsif bally + bally2 >= y (i) + 10 and bally - bally2 <= y2 (i) then
                    yd := 1
                    breakBricks (x, y, x2, y2, c, i, numberBricks, points, lives, scoreFont, count)
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





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%MAIN%PROGRAM%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%





var cx, cy, cx2, cy2, cc, ballx, bally, xd, yd, xa, ya, times, times2, times3, ytime : int
var ballx2, bally2 : int := 10
var numBricks, numberBricks : int := 10000
var x, y, x2, y2, c : array 1 .. numBricks of int
var count : int := 1
var lives : int := 2
var ch : string (1)
var playAgain : string
var controls : array char of boolean
var points : int := 0
var scoreFont : int := Font.New ("times new roman:25:bold")
var titleFont : int := Font.New ("times new roman:45:bold")
Font.Draw ("This is brick breaker. Move", 15, 450, titleFont, 255)
Font.Draw ("left and right with the arrow", 10, 400, titleFont, 255)
Font.Draw ("keys. Bounce the ball back at", 10, 350, titleFont, 255)
Font.Draw ("the bricks to win. You have", 10, 300, titleFont, 255)
Font.Draw ("3 lives. Press any key to", 10, 250, titleFont, 255)
Font.Draw ("start the game.", 10, 200, titleFont, 255)
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
    if count = 1 then
        numberBricks := 64
        drawBricks (x, y, x2, y2, c, numBricks, ytime)
    elsif count = 2 then
        numberBricks := 64
        drawBricks2 (x, y, x2, y2, c, times, numBricks, ytime)
    elsif count = 3 then
        numberBricks := 64
        drawBricks3 (x, y, x2, y2, c, numBricks, ytime)
    elsif count = 4 then
        numberBricks := 64
        drawBricks4 (x, y, x2, y2, c, times, numBricks, ytime)
    elsif count = 5 then
        numberBricks := 64
        drawBricks5 (x, y, x2, y2, c, numBricks, ytime)
    elsif count = 6 then
        numberBricks := 128
        drawBricks6 (x, y, x2, y2, c, numBricks, ytime)
    elsif count = 7 then
        numberBricks := 64
        drawBricks7 (x, y, x2, y2, c, numBricks, ytime)
    elsif count = 8 then
        numberBricks := 124
        drawBricks8 (x, y, x2, y2, c, times, numBricks, ytime)
    elsif count = 9 then
        numberBricks := 128
        drawBricks9 (x, y, x2, y2, c, numBricks, ytime)
    elsif count = 10 then
        numberBricks := 256
        drawBricks10 (x, y, x2, y2, c, numBricks, ytime)
    elsif count = 11 then
        numberBricks := 512
        drawBricks11 (x, y, x2, y2, c, numBricks, ytime)
    end if
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
        if bally - 10 <= 0 then
            if lives >= 1 then
                drawfilloval (ballx, bally, ballx2, bally2, 255)
                drawfillbox (cx, cy, cx2, cy2, 255)
                lives -= 1
                ballx := round (maxx div 2 - 10)
                bally := 200
                xd := 0
                yd := 0
                xa := 0
                ya := 1
                cx := 350
                cx2 := 450
                delay (1000)
                drawfillbox (cx, cy, cx2, cy2, cc)
                drawfilloval (ballx, bally, ballx2, bally2, cc)
                stats (points, lives, count, scoreFont)
            else
                exit
            end if
        end if
        exit when numberBricks = 0
        if times3 = 1 then
            times3 += 1
            delay (1)
        elsif times3 = 2 then
            times3 -= 1
            delay (2)
        end if
    end loop
    cls
    if numberBricks = 0 then
        Font.Draw ("Congratulations. You beat", 10, 450, titleFont, 255)
        Font.Draw ("round", 10, 400, titleFont, 255)
        Font.Draw (intstr (count), 70, 400, titleFont, 12)
        Font.Draw (". Proceed to next level?", 10, 350, titleFont, 255)
        Font.Draw ("(y/n)", round (maxx div 2 - 5 * 4), 300, titleFont, 255)
        loop
            getch (ch)
            if ch = "y" or ch = "Y" then
                points := 0
                count += 1
                lives := 2
                cls
                Font.Draw ("Alright. Let\'s go", 10, 350, titleFont, 255)
                Font.Draw ("to round", 10, 300, titleFont, 255)
                Font.Draw (intstr (count), 7 * 6, 300, titleFont, 12)
                Font.Draw ("!", 8 * 7, 300, titleFont, 255)
                delay (1000)
                exit
            elsif ch = "n" or ch = "N" then
                exit
            end if
        end loop
    end if
    if bally - 10 <= 0 then
        Font.Draw ("You lost.", 250, 350, titleFont, 255)
        Font.Draw ("Play again? (y/n)", 150, 300, titleFont, 255)
        loop
            getch (ch)
            if ch = "y" or ch = "Y" then
                points := 0
                lives := 2
                cls
                Font.Draw ("Alright. Let\'s go again!", 100, 350, titleFont, 255)
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
Font.Draw ("I hope you had fun.", 150, 350, titleFont, 255)
