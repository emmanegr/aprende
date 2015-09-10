$(document).ready(function(){
	$('.eliminarProyecto').on('click', eliminarProyecto)
});

function eliminarProyecto(){
	elimnarId = $(this).data('id');
	var confirmacion = confirm("¿Estas seguro que quieres Eliminar el proyecto?");

	if(confirmacion){
		$.ajax({
			type: 'DELETE',
			url: '/adminitratus/eliminar/'+elimnarId,
		}).done(function(){

		});
		window.location= '/adminitratus';
	}else{
		return false;
	}
}