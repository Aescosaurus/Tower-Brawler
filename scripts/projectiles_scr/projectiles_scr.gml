function create_bullet( bx,by,dir,type )
{
	var b = instance_create_layer( bx,by,"instances",type )
	
	b.direction = dir
	b.owner = self
	
	return( b )
}