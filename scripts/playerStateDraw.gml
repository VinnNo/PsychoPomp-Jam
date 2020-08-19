

switch (state) 
{
    case IDLE:
        if (hitSprite)
        {
            sprite_index = sPompHit;
            image_speed = 0.1;
        }
        else
        {
            sprite_index = sPompIdle;
            image_speed = 0.1;
        }
    break;
    
    case RUN:
        if (hitSprite)
        {
            sprite_index = sPompHit;
            image_speed = 0.1;
        }
        else
        {
                //image_speed = 0.15;
                var runSpeed;
                runSpeed = vx;
                if (runSpeed < 0 )
                {
                    runSpeed = -runSpeed;
                }
                runAnim = runSpeed;
                image_speed = runAnim/7.5;
                sprite_index = sPompRun;
        }
    break;
    
    case JUMP:
        if (hitSprite)
        {
            sprite_index = sPompHit;
            image_speed = 0.1;
        }
        // Mid jump
        else
        {
            sprite_index = sPompJump;
        if (!(place_meeting(x, y + 2, oParSolid) && vy != 0) && vy >= -1.0 && vy <= 1.0) 
        {  
            image_speed = 0;
            image_index = 1; 
        } 
        else 
        { 
            // Rise + fall
            if (vy <= 0)
            { 
                image_speed = 0;
                image_index = 0;
            }  
            else
            {
                image_speed = 0;
                image_index = 2;
            }
        }
         
        // When against a wall   
        if (cRight || cLeft)
        {
            sprite_index = sPompWallClimb
            image_speed = 0;
            // Mid jump
            if (!(place_meeting(x, y + 2, oParSolid) && vy != 0) && vy >= -1.0 && vy <= 1.0) 
            {  
                image_index = 1 
            } 
            else 
            { 
                // Rise + fall
                if (vy <= 0)
                { 
                    image_index = 0;
                }  
                else
                {
                    image_index = 2;
                }
            }
        }
        }
        break;
}

//playerChargeDraw();
