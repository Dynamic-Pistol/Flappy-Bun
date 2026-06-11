function _config()
    ---@type Usagi.Config
    return { name = "Flappy Bird", game_id = "com.usagiengine.Flappy_bird" }
end

function _init()
    -- Live reload preserves globals across saved edits but resets locals.
    -- Stash mutable game state in a capitalized global like `State` so it
    -- survives reloads; F5 calls _init again to reset.
    State = {
        score = 0
    }
    Bird = {
        px = 30,
        py = 0,
    }
end

function _update(dt)
    Bird.py = dt
end

function _draw(dt)
    gfx.clear(gfx.COLOR_BLACK)

    gfx.text("Hello, Usagi!", 10, 10, gfx.COLOR_WHITE)
    gfx.rect_fill(Bird.px, Bird.py, 10, 10, gfx.COLOR_YELLOW)
    gfx.text(tostring(State.score), 10, 10, gfx.COLOR_WHITE)
end
