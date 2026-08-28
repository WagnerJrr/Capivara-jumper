lock = true
status = "350"

//se o taman tiver sido comprado ira aparecer sem transparencia e sem preço
if(global.taman) 
{
	image_alpha = 1;
	lock = false
	status = "--"
} 
else
{
	//se nao tiver sido comprado, fica meio transp
	image_alpha = 0.5
}