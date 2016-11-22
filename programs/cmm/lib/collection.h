#ifndef INCLUDE_COLLECTION_H
#define INCLUDE_COLLECTION_H
#print "[include <collection.h>]\n"

/*========================================================
=                                                        =
=                       String                           =
=                                                        =
========================================================*/

struct collection
{
	int realloc_size, count;
	dword data_start;
	dword data_size;
	dword element_offset[4090];
	int add();
	dword get();
	void drop();
	void increase_data_size();
};

void collection::increase_data_size() {
	int filled_size;
	if (realloc_size<4096) realloc_size = 4096;
	if (!data_size) {
		data_size = realloc_size;
		data_start = malloc(realloc_size);		
	}
	else {
		data_size = data_size + realloc_size;
		data_start = realloc(data_start, data_size);
	}
}

int collection::add(dword in) {
	if (count >= 4090) return 0;
	if (element_offset[count]+strlen(in)+2 > data_size) {
		increase_data_size();
		add(in);
		return;
	}
	strcpy(data_start+element_offset[count], in);
	count++;
	element_offset[count] = element_offset[count-1] + strlen(in) + 1;
	return 1;
}

dword collection::get(dword pos) {
	if (pos<0) || (pos>=count) return 0;
	return data_start + element_offset[pos];
}

void collection::drop() {
	if (data_start) free(data_start);
	data_size = data_start = element_offset[count] = count = 0;
}


/*========================================================
=                                                        =
=                       Integer                          =
=                                                        =
========================================================*/

:struct collection_int
{
	int count;
	dword element[4096*3];
	int add();
	dword get();
	void drop();
};

:int collection_int::add(dword in) {
	if (count >= 4096*3) return 0;
	element[count] = in;
	count++;
	return 1;
}

:dword collection_int::get(dword pos) {
	if (pos<0) || (pos>=count) return 0;
	return element[pos];
}

:void collection_int::drop() {
	element[0] = 
	count = 0;
}

#endif