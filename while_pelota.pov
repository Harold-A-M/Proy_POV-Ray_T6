/*
 Imagen creada por Harold Aguilar Mejia
 Imagen de una pelota de tenis iluminada por una lámpara
 usando una textura para representar la pelota 
*/

#include "colors.inc"
//establecemos un fondo de color gris
background {
    color Gray
}
//posicionamos la camara
camera{
    location<5,2,-10>
    look_at<5,0.7,0>
}
//representamos la lampara por medio del spotlight
//le decimos que tiene un radio de 5 y el falloff nos ayuda 
// a representar la iluminación de la lámpara en el piso
// de igual manera le decimos que la luz apunta hacia el point_at
light_source{
    <2,10,0>
    color White
    spotlight
    radius 5
    falloff 50
    point_at <2, 0, 0>
}


//declaramos la varible para usar en el while
#declare Posicion_x = 0;
                                                
//realizamos el while
#while(Posicion_x <= 10 )

//usamos object para poder manejar la esfera 
object { 
	//Le decimos que tome la esfera antes declarada
	sphere {
        <Posicion_x,0.7,0>, 0.7
    }
	//Hacemos la textura del objeto
	texture {
		//Color	
		pigment {
		    image_map{
                jpeg "pt.jpeg"
            }
            scale <1.6,1.4,1>
        }
	}
    finish{
        diffuse 1
        ambient 0.3
    }
}
#declare Posicion_x = Posicion_x + 2;
   
#end //para el while

//creamos el plano, que nos servira como piso donde esta la pelota
// justo por debajo de la pelota y de color gris 
plane{
    <0,0.8,0>0
    pigment{
        color Gray
    }
}