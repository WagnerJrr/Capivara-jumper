lock = true
status = "100"

if(global.boto) 
{
	image_alpha = 1;
	lock = false
	status = "--"
} 
else
{
	image_alpha = 0.5
}