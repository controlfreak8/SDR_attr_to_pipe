#include "SET_UPS.H"


void main(){
	
	Element super; //super;
	Integer ret=0, i=1, no_verts, no_atts;
	Text text, att_name="Material", elt_type;
	//Attributes att;
	//Uid uid;
	
	// Try the different types of data
	//Integer att_value;
	//Uid att_value;
	//Attributes att_value;
	//Guid att_value;
	Text att_value;
	
	Prompt("Select a string");
	
	while (ret != -1) {
		ret = Select_string("Select a string", super); //message to Output Window
		if(ret == -1) Prompt("Macro finished - cancel selected");
		else if (ret == 1) {
			if(Get_points(super, no_verts) !=0) continue;
				text = To_text(no_verts);
				text = "There are " + text + " vertices in the string. Select another string";
				//Get_type(super, elt_type);
				//if(elt_type == "Super"){
				//	Print("\nIt is a Super string\n");
				//};
				for (i; i<=no_verts; i++){
					// For each vertex 'i' dump it's attributes
					//Super_vertex_attribute_dump(super, i);
					//Get_super_vertex_attribute(Element super,Integer vert,Text att_name,Uid &uid)
					//Get_super_vertex_attribute(Element super,Integer vert,Text att_name,Attributes &att)
					//Get_super_vertex_attribute(Element elt,Integer vert,Integer att_no,Uid &uid)
					//Get_super_vertex_attribute(Element elt,Integer vert,Integer att_no,Attributes &att)

					//if(Get_super_vertex_number_of_attributes(super,i,no_atts) == 0){
					if(Get_super_vertex_attribute(super,i,att_name,att_value) == 0){ // att_name
						// value of zero means there are attributes
						
						Print(att_value);//att_value);
						
					}; // closes if_
				}; // closes for_loop
				Prompt(text);
			}
			
			else Prompt("Invalid pick. Select again");
			
		};
	return;
};
	








