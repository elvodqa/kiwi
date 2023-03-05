
local gameCanvas = love.graphics.newCanvas(480, 360)
local uiCanvas = love.graphics.newCanvas(480*2, 360*2)
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
        love.graphics.setLineWidth(1)
        love.graphics.rectangle("line", 0, 0, 480, 360) --border
    love.graphics.setCanvas(uiCanvas)
        love.graphics.clear()
        -- ui goes here -- 
        
        love.graphics.print("Points: 0", 0, 0)

        -- ui ends here -- 
        love.graphics.setLineWidth(1)
        love.graphics.rectangle("line", 0, 0, 480*2, 360*2) --border
    love.graphics.setCanvas()


    -- draw canvases
    local sX, sY = love.graphics.getDimensions()
    local gameCanvasScale = math.min(sX/gameCanvas:getWidth(), sY/gameCanvas:getHeight())
    love.graphics.draw(gameCanvas, sX/2, sY/2, 0, gameCanvasScale, gameCanvasScale, gameCanvas:getWidth()/2, gameCanvas:getHeight()/2)
    local uiCanvasScale = math.min(sX/uiCanvas:getWidth(), sY/uiCanvas:getHeight())
    love.graphics.draw(uiCanvas, sX/2, sY/2, 0, uiCanvasScale, uiCanvasScale, uiCanvas:getWidth()/2, uiCanvas:getHeight()/2)

end