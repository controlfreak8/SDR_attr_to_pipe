#include "SET_UPS.H"


void main(){
	
	Element super;
	Integer ret=0, i=1, no_verts, att_no=6;
	Text text, name;
	Attributes att;
	
	Prompt("Select a string");
	
	while (ret != -1) {
		ret = Select_string("Select a string",super); //message to Output Window
		if(ret == -1) Prompt("Macro finished - cancel selected");
		else if (ret == 1) {
			if(Get_points(super,no_verts) !=0) continue;
			//	text = To_text(no_verts);
			//	text = "There are " + text + " vertices in the string. Select another string";
			//	Prompt(text);
			//}
			//for (i; i<=no_verts; i++){
				//Super_vertex_attribute_dump(super, i);
				//Get_super_vertex_attributes(super,i,att);
				//Get_attribute_name(att,att_no, name);
				//Print(name);
			//}
			Super_vertex_attribute_dump(Element super, Integer vert);
				
			}
			
			
			
		else Prompt("Invalid pick. Select again");
	}
	return;
}
	








