#include "fill_student.h"
#include <string.h>

void fill_student(Student* s, char age, short number, char* name, char* address) {		//fill the Student data
    s->age = age;
    
    s->number = number;
    
    strcpy(s->name, name);
    
    strcpy(s->address, address);
    
}
