/// @description Live reactions to triggers

#region -- left trigger

if (leftTrigger)
{	
	if (canChomp)
	{
		isChompingLeft=true;
		
		event_user(0);	//inherits chomping effect
		event_user(2);	//move player and check for death
		
		if ( treearr[1] = 1 )//or treearr[0] = 1 )
		{
			if (playerLives > 1)
			{
				playerLives -= 1;
				sio_emit_hp_send(playerLives)
				event_user(3);
				
				with (player)
				{
					event_user(0);
				}
			}
			else
			{
				playerLives -= 1;
				sio_emit_hp_send(playerLives)
				isPlayerLive=false;
				canChomp=false;
				
				with (player)
				{
					event_user(0);
				}
			}
			
		}
		sio_emit_treearr_update(treearr);
		event_user(1);  //shift all cells in array
	}
	leftTrigger = false;
}

#endregion

#region -- right trigger

if (rightTrigger)
{
	if (canChomp)
	{
		isChompingRight=true;
		
		event_user(0);	//inherits chomping effect
		event_user(2);	//move player and check for death
		
		if ( treearr[1] = 2 )//or treearr[0] = 2 )
		{
			if (playerLives > 1)
			{
				playerLives -= 1;
				sio_emit_hp_send(playerLives)
				event_user(3);
				
				with (player)
				{
					event_user(0);
				}
			}
			else
			{
				playerLives -= 1;
				sio_emit_hp_send(playerLives)
				isPlayerLive = false;
				canChomp = false;
				
				with (player)
				{
					event_user(0);
				}
			}
		}
		sio_emit_treearr_update(treearr);
		event_user(1);  //shift all cells in array
		
	}
	rightTrigger = false;
}

#endregion

//