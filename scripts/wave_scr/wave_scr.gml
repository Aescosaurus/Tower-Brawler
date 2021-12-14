function wave_squad_create( enemy_type,amount )
{
	return(
	{
		enemy: enemy_type,
		quantity: amount
	} )
}

function wave_get( wave_index )
{
	return( wave_handler_obj.enemy_waves[wave_index] )
}

function wave_squad_get( wave_index,squad_index )
{
	return( wave_get( wave_index )[squad_index] )
}

