
local gameCanvas = love.graphics.newCanvas(480, 360)
local canvasScale = 1


function love.load()
    saul = love.graphics.newImage("assets/images/Goodman.png")
end

function love.update(dt)
    
end

function love.draw()
    love.graphics.setCanvas(gameCanvas)
        love.graphics.clear()
        -- draw goes here -- 
      
        love.graphics.draw(saul, 0, 0)

        -- draw neds here -- 
        love.graphics.rectangle("line", 0, 0, 480, 360) --border
    love.graphics.setCanvas()
    love.graphics.draw(gameCanvas, 20, 20, 0, canvasScale, canvasScale)

end