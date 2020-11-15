#ifndef PQueue_H_
#define PQueue_H_
// Priority Queue ADO header ... COMP9024 20T2

#include "WGraph.h"
#include <stdbool.h>

#define MAX_NODES 1000

void   PQueueInit();
void   joinPQueue(Vertex);
Vertex leavePQueue(int[]);
bool   PQueueIsEmpty();

#endif // !PQueue_H_
