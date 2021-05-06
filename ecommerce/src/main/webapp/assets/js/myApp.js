$(function() {
	//highlighting nav menu
	switch(menu) {
	
	case 'About Us':
		$('#about').addClass('active');
		break;
	case 'Contact Us':
		$('#contact').addClass('active');
		break;
	case 'Products':
		$('#products').addClass('active');
		break;
	default:
		$('#home').addClass('active');
		break;
	}
});