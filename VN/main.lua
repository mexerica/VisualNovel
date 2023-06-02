txt = [[
 testtesttesttesttesttesttesttesttesttesttesttesttesttesttestestte
testtesttesttesttesttesttesttesttesttesttesttesttesttesttesttestte
testtesttesttesttesttesttesttesttesttesttesttesttesttesttesttestte
testtesttesttesttesttesttesttesttesttesttesttesttesttesttesttestte
testtesttesttesttesttesttesttesttesttesttesttesttesttesttesttestte
]]
who = [[???]]
continueTxt = true
letter = 1

option1 = "Talk"
option2 = "Move"
option3 = "Check"
option4 = "Notes"
option5 = "Menu"

color1 = {1, 1, 1}
color2 = {1, 1, 1}
color3 = {1, 1, 1}
color4 = {1, 1, 1}
color5 = {1, 1, 1}

x = 0
y = 0

function love.load()
    --img = love.graphics.newImage("img/mainChar.png")
end

function love.draw()
    --love.graphics.draw(img,10,10)
    love.graphics.setColor(1, 1, 1)
    love.graphics.rectangle("line", 10, 450, 780, 140, 5)
    love.graphics.rectangle("line", 550, 10, 240, 435, 5)
    love.graphics.print(string.sub(txt, 1, letter), 20, 450, 0, 2)
    love.graphics.rectangle("line", 10, 410, 150, 40, 5)
    love.graphics.print(who, 20, 415, 0, 2)
    love.graphics.rectangle("fill", 10, 20, 520, 380, 5)
    if (letter < txt:len()) then letter = letter + 1 end
    love.graphics.setColor(color1)
    love.graphics.print(option1, 640, 20, 0, 3)
    love.graphics.setColor(color2)
    love.graphics.print(option2, 630, 115, 0, 3)
    love.graphics.setColor(color3)
    love.graphics.print(option3, 625, 210, 0, 3)
    love.graphics.setColor(color4)
    love.graphics.print(option4, 625, 300, 0, 3)
    love.graphics.setColor(color5)
    love.graphics.print(option5, 630, 390, 0, 3)
end

function love.keypressed(key)
    if key == 'z' then 
        if letter < txt:len() then letter = txt:len() 
        else letter = 1 end 
    end
end

function love.mousepressed(x, y, button, istouch)
    if button == 1 and continueTxt then 
        if letter < txt:len() then letter = txt:len() 
        else letter = 1 end 
    end
 end

function love.update(dt)
    x, y = love.mouse.getPosition()
    if (x > 550 and x < 785) then
        continueTxt = false 
        if (y > 10 and y < 60) then color1 = {1,0,0} 
        else color1 = {1,1,1} end
        if (y > 105 and y < 155) then color2 = {1,0,0} 
        else color2 = {1,1,1} end
        if (y > 200 and y < 250) then color3 = {1,0,0} 
        else color3 = {1,1,1} end
        if (y > 290 and y < 340) then color4 = {1,0,0} 
        else color4 = {1,1,1} end
        if (y > 380 and y < 430) then color5 = {1,0,0} 
        else color5 = {1,1,1} end
    else
        continueTxt = true
    end
end