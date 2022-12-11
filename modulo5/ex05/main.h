#ifndef MAIN_H
#define MAIN_H

	typedef struct {
		char age;
		short number;
		int grades[5];
		char name[60];
		char address[100];
	} Student;

	void update_grades(Student *s, int *new_grades); 
#endif
