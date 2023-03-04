
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

        -- draw ends here -- 
        love.graphics.setLineWidth(2)
        love.graphics.rectangle("line", 0, 0, 480, 360) --border
    love.graphics.setCanvas()
    sX, sY = love.graphics.getDimensions()
    canvasScale = math.min(sX/gameCanvas:getWidth(), sY/gameCanvas:getHeight())
    love.graphics.draw(gameCanvas, sX/2, sY/2, 0, canvasScale, canvasScale, gameCanvas:getWidth()/2, gameCanvas:getHeight()/2)

end