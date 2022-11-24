#include<iostream>
#include <thread>
#include <atomic>
#include <cstdint>
#include <random>
#include <thread>
#include <vector>

using namespace std;

struct Node
{
	int data;
	Node *link;
};

int num_push = 0, num_pop = 0;

void reset_sum(){
	num_push = 0;
	num_pop = 0;
}

int size_of_SL(){
	return (num_push-num_pop);
}
 
Node *top=NULL;
void push_ll(int ele)
{	
    Node *temp= new Node();
	temp->data= ele;
	temp->link= NULL;

	if(top==NULL)
		top= temp;
    else{
	    temp->link=top;
	    top=temp;
    }
    return;
}
void pop_ll()
{	
   
    if(top != NULL)	
    {
	    Node *next= top->link;
	    Node *del_node= top;
	    delete del_node;
	    top= next;
    }   
    return;
}
void push_pop_func(int i)
{
        num_push++;
        push_ll(i);
        if(i%2==0)
        {
	   num_pop++;
           pop_ll(); 
        }
}
/* 
 // Fetch and add routine using a mutex
 uint64_t fetch_and_add(uint64_t &pos, std::mutex &m) {
   std::lock_guard<std::mutex> g(m);
   auto ret_val = pos;
   pos += 16;
   return ret_val;
 }
 double *gen_sub_matrix(int pid,        // the process id of the job calling.  This should be a number between 0 and num processes - 1
		       int test_set,   // the test set command line argument
		       int matrix_num, // the matrix number [0, num_arg_matrices - 1] 
		       double *result, // a pointer to storage for the flattened array of the requested sub matrix
		       int x_lo,       // the starting x value of the requested sub matrix
		       int x_hi,       // the ending x value of the requested sub matrix
		       int x_stride,   // the stride in the x dimension
		       int y_lo,       // the starting y value of the requested sub matrix
		       int y_hi,       // the ending y value of the requested sub matrix
		       int y_stride,   // the stride in the y dimension
		       int row_major_p)// whether the returned sub matrix is in row_major or column_major order
{
  int i = 0;
  int y;
  int x;

  double_call_check(matrix_num);

  // bounds check
  if ((matrix_dimension_size - 1) < x_hi) {
    printf("error: x_hi is too large\n");
    exit(1);
  }

  if ((matrix_dimension_size - 1) < y_hi) {
    printf("error: y_hi is too large\n");
    exit(1);
  }

  if (!row_major_p) {
    for (y = y_lo; y <= y_hi; y += y_stride) {
      for (x = x_lo; x <= x_hi; x += x_stride) {
	result[i++] = gen_one_element(test_set, matrix_num, x, y);
      }
    }
  } else { // column major
    for (x = x_lo; x <= x_hi; x += x_stride) {
      for (y = y_lo; y <= y_hi; y += y_stride) {
	result[i++] = gen_one_element(test_set, matrix_num, x, y);
      }
    }
  }

  return(result);
}
 // Blocked column parallel implementation w/ atomics
 void blocked_column_multi_output_parallel_mutex_gemm(
													  std::size_t N,
                                                      std::atomic<uint64_t> &pos) {
	double **r;
	double *result;

	
	num_arg_matrices = 2;
	 
  
	// allocate arrays
	r = (double **)my_malloc(sizeof(double *) * num_arg_matrices);
	result = (double **)my_malloc(sizeof(double *) * 2);
	result[0] = (double *)my_malloc(sizeof(double) * matrix_dimension_size * matrix_dimension_size);
	result[1] = (double *)my_malloc(sizeof(double) * matrix_dimension_size * matrix_dimension_size); 
  
      printf("mpi_mm has started with %d tasks.\n",numtasks);
      printf("Initializing arrays...\n");

	  // get sub matrices
	  for (i = 0; i < num_arg_matrices; ++i) {
		r[i] = (double *)my_malloc(sizeof(double) * matrix_dimension_size * matrix_dimension_size);
		if (gen_sub_matrix(0, test_set, i, r[i], 0, matrix_dimension_size - 1, 1, 0, matrix_dimension_size - 1, 1, 1) == NULL) {
		  printf("inconsistency in gen_sub_matrix\n");
		  exit(1);
		}
	  }
 // For each chunk of columns
  for (std::size_t col_chunk = pos.fetch_add(16); col_chunk < N;
       col_chunk = pos.fetch_add(16))
    // For each chunk of rows
    for (std::size_t row_chunk = 0; row_chunk < N; row_chunk += 16)
      // For each block of elements in this row of this column chunk
      // Solve for 16 elements at a time
      for (std::size_t tile = 0; tile < N; tile += 16)
        // For apply that tile to each row of the row chunk
        for (std::size_t row = 0; row < 16; row++)
          // For each row in the tile
          for (std::size_t tile_row = 0; tile_row < 16; tile_row++)
            // Solve for each element in this tile row
            for (std::size_t idx = 0; idx < 16; idx++)
              C[(row + row_chunk) * N + col_chunk + idx] +=
                  A[(row + row_chunk) * N + tile + tile_row] *
                  B[tile * N + tile_row * N + col_chunk + idx];
 }*/ 
