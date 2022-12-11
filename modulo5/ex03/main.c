#include <stdio.h>
#include "fill_student.h"

int main(void) {

    // Initialize student
    Student stu;

    // Pointer to student
    Student* ptr = &stu;

    fill_student(ptr, 50, -1,(char*)"First Student",(char*)"Nowhere Street");

    printf("%d\n", ptr->age);
    printf("%d\n", ptr->number);
    printf("%s\n", ptr->name);
    printf("%s\n", ptr->address);

    return 0;

}
