-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 01, 2014 at 07:31 PM
-- Server version: 5.5.28
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `itrixx`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE IF NOT EXISTS `administrator` (
  `username` varchar(128) NOT NULL,
  `password` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`username`, `password`) VALUES
('admin', '9786652fec772cd9bfef720283da5d6a');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE IF NOT EXISTS `candidates` (
  `cname` varchar(128) NOT NULL,
  `cpass` varchar(128) DEFAULT NULL,
  `ename` varchar(128) DEFAULT NULL,
  `event` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`cname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`cname`, `cpass`, `ename`, `event`) VALUES
('ds_candidate', '202cb962ac59075b964b07152d234b70', 'd_s', 'Data Structs'),
('order_of_1', '202cb962ac59075b964b07152d234b70', 'o_of_1', 'O(1)');

-- --------------------------------------------------------

--
-- Table structure for table `d_s_participants`
--

CREATE TABLE IF NOT EXISTS `d_s_participants` (
  `itrixid` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `degree` varchar(10) DEFAULT NULL,
  `branch` varchar(50) DEFAULT NULL,
  `college` varchar(60) DEFAULT NULL,
  `cno` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`itrixid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `d_s_pps`
--

CREATE TABLE IF NOT EXISTS `d_s_pps` (
  `itrixid` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `questions` varchar(200) DEFAULT NULL,
  `answers` varchar(200) DEFAULT NULL,
  `options` varchar(100) DEFAULT NULL,
  `score` float DEFAULT NULL,
  `status` int(1) DEFAULT '0',
  PRIMARY KEY (`itrixid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `d_s_q`
--

CREATE TABLE IF NOT EXISTS `d_s_q` (
  `qno` int(5) NOT NULL AUTO_INCREMENT,
  `question` varchar(5000) DEFAULT NULL,
  `difficulty` int(1) DEFAULT NULL,
  `a` varchar(5000) DEFAULT NULL,
  `b` varchar(5000) DEFAULT NULL,
  `c` varchar(5000) DEFAULT NULL,
  `d` varchar(5000) DEFAULT NULL,
  `e` varchar(5000) DEFAULT NULL,
  `qimg` varchar(5000) DEFAULT NULL,
  `aimg` varchar(5000) DEFAULT NULL,
  `bimg` varchar(500) DEFAULT NULL,
  `cimg` varchar(5000) DEFAULT NULL,
  `dimg` varchar(5000) DEFAULT NULL,
  `eimg` varchar(5000) DEFAULT NULL,
  `ans` int(1) DEFAULT NULL,
  PRIMARY KEY (`qno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=118 ;

--
-- Dumping data for table `d_s_q`
--

INSERT INTO `d_s_q` (`qno`, `question`, `difficulty`, `a`, `b`, `c`, `d`, `e`, `qimg`, `aimg`, `bimg`, `cimg`, `dimg`, `eimg`, `ans`) VALUES
(1, 'Which of the following cannot generate the full binary tree?', 0, 'Inorder and Preorder', 'Inorder and Postorder', 'Preorder and Postorder', 'None of these', '', '', '', '', '', '', '', 2),
(2, 'Following function is supposed to calculate the maximum depth or height of a Binary tree -- the number of nodes along the longest path from the root node down to the farthest leaf node. \r\nint maxDepth(struct node* node)\r\n{\r\n   if (node==NULL)\r\n       return 0;\r\n   else\r\n   {\r\n       /* compute the depth of each subtree */\r\n       int lDepth = maxDepth(node->left);\r\n       int rDepth = maxDepth(node->right);\r\n  \r\n       /* use the larger one */\r\n       if (lDepth > rDepth)\r\n           return X;\r\n       else return Y;\r\n   }\r\n}\r\nWhat should be the values of X and Y so that the function works correctly?\r\n', 0, 'X = lDepth, Y = rDepth', 'X = lDepth + 1, Y = rDepth + 1', 'X = lDepth - 1, Y = rDepth -1', 'None of these', '', '', '', '', '', '', '', 1),
(3, 'Which traversal of tree resembles the breadth first search of the graph?', 0, 'Preorder', 'Inorder', 'Postorder', 'Level order', '', '', '', '', '', '', '', 3),
(4, 'You are given the postorder traversal, P, of a binary search tree on the n elements 1, 2, …, n. You have to determine the unique binary search tree that has P as its postorder traversal. What is the time complexity of the most efficient algorithm for doing this?', 0, 'O(Logn)', 'O(n)', 'O(nLogn)', 'none of the these, as the tree cannot be uniquely determined.', '', '', '', '', '', '', '', 1),
(5, 'Guess the output: input array arr[]={15, 30, 14, 2, 23, 	81, 82} n=7\r\n\r\nint findPeakUtil(int arr[], int low, int high, int n)\r\n   {\r\n    \r\n    int mid = low + (high - low)/2;\r\n \r\n    if ((mid == 0 || arr[mid-1] <= arr[mid]) &&\r\n            (mid == n-1 || arr[mid+1] <= arr[mid]))\r\n        return mid;\r\n \r\n    \r\n    else if (mid > 0 && arr[mid-1] > arr[mid])\r\n        return findPeakUtil(arr, low, (mid -1), n);\r\n \r\n    \r\n    else return findPeakUtil(arr, (mid + 1), high, n);\r\n  }\r\n     int findPeak(int arr[], int n)\r\n  {\r\n    return findPeakUtil(arr, 0, n-1, n);\r\n  }\r\n', 2, '2', '30 ', '81', '82', '', '', '', '', '', '', '', 1),
(6, 'Consider the following C program segment \r\nstruct CellNode\r\n{\r\n  struct CelINode *leftchild;\r\n  int element;\r\n  struct CelINode *rightChild;\r\n}\r\n \r\nint Dosomething(struct CelINode *ptr)\r\n{\r\n    int value = 0;\r\n    if (ptr != NULL)\r\n    {\r\n      if (ptr->leftChild != NULL)\r\n        value = 1 + DoSomething(ptr->leftChild);\r\n      if (ptr->rightChild != NULL)\r\n        value = max(value, 1 + DoSomething(ptr->rightChild));\r\n    }\r\n    return (value);\r\n}\r\nThe value returned by the function DoSomething when a pointer to the root of a non-empty tree is passed as argument is\r\n', 0, 'The number of leaf nodes in the tree', 'The number of nodes in the tree', 'The number of internal nodes in the tree', 'The height of the tree', '', '', '', '', '', '', '', 3),
(7, 'We are given a set of n distinct elements and an unlabeled binary tree with n nodes. In how many ways can we populate the tree with the given set so that it becomes a binary search tree? ', 1, '0', '1', 'n!', '(1/(n+1)).2nCn', '', '', '', '', '', '', '', 1),
(8, 'The worst case running time to search for an element in a balanced in a binary search tree with n2^n elements is', 0, 'O(logn)', 'O(nlogn)', 'O(n)', 'O(n2^n)', '', '', '', '', '', '', '', 2),
(9, 'How many distinct binary search trees can be created out of 4 distinct keys?', 1, '4', '14', '24', '42', '', '', '', '', '', '', '', 1),
(10, 'Postorder traversal of a given binary search tree, T produces the following sequence of keys 10, 9, 23, 22, 27, 25, 15, 50, 95, 60, 40, 29 Which one of the following sequences of keys can be the result of an in-order traversal of the tree T?', 2, '9, 10, 15, 22, 23, 25, 27, 29, 40, 50, 60, 95', '9, 10, 15, 22, 40, 50, 60, 95, 23, 25, 27, 29', '29, 15, 9, 10, 25, 22, 23, 27, 40, 60, 50, 95', '95, 50, 60, 40, 27, 23, 22, 25, 10, 9, 15, 29', '', '', '', '', '', '', '', 0),
(12, 'Consider the following code snippet in C. The function print() receives root of a Binary Search Tree (BST) and a positive integer k as arguments. \r\n// A BST node\r\nstruct node {\r\n    int data;\r\n    struct node *left, *right;\r\n};\r\n \r\nint count = 0;\r\n \r\nvoid print(struct node *root, int k)\r\n{\r\n    if (root != NULL && count <= k)\r\n    {\r\n        print(root->right, k);\r\n        count++;\r\n        if (count == k)\r\n          printf("%d ", root->data);\r\n       print(root->left, k);\r\n    }\r\n}\r\nWhat is the output of print(root, 3) where root represent root of the following BST.', 1, '10', '20', '16', '10 20', '', 'd_s/tree123.jpg', '', '', '', '', '', 2),
(13, 'B+ trees are preferred to binary trees in databases because', 0, 'Disk capacities are greater than memory capacities', 'Disk access is much slower than memory access', 'Disk data transfer rates are much less than memory data transfer rates', 'Disks are more reliable than memory', '', '', '', '', '', '', '', 1),
(14, 'Here is an INCORRECT pseudocode for the algorithm which is supposed to determine whether a sequence of parentheses is balanced:\r\ndeclare a character stack\r\nwhile ( more input is available)\r\n   {\r\n      read a character\r\n      if ( the character is a ''('' )\r\n         push it on the stack\r\n      else if ( the character is a '')'' and the stack is not empty )\r\n         pop a character off the stack\r\n      else\r\n         print "unbalanced" and exit\r\n    }\r\n    print "balanced"\r\nWhich of these unbalanced sequences does the above code think is balanced?\r\n', 2, 'o	((())', 'o	())(()', 'o	(()()))', 'o	(()))()', '', '', '', '', '', '', '', 0),
(15, 'CONSIDER THIS CODE\r\n What does the function print() do in general? The function print() receives root of a Binary Search Tree (BST) and a positive integer k as arguments. \r\n// A BST node\r\nstruct node {\r\n    int data;\r\n    struct node *left, *right;\r\n};\r\n \r\nint count = 0;\r\n \r\nvoid print(struct node *root, int k)\r\n{\r\n    if (root != NULL && count <= k)\r\n    {\r\n        print(root->right, k);\r\n        count++;\r\n        if (count == k)\r\n          printf("%d ", root->data);\r\n       print(root->left, k);\r\n    }\r\n}\r\n', 1, 'Prints the kth smallest element in BST', 'Prints the kth largest element in BST', 'Prints the leftmost node at level k from root', 'Prints the rightmost node at level k from roo', '', '', '', '', '', '', '', 1),
(16, 'In a complete k-ary tree, every internal node has exactly k children or no child. The number of leaves in such a tree with n internal nodes is:', 0, 'Nk', '(n – 1) k+ 1', 'n( k – 1) + 1', 'n(k – 1)', '', '', '', '', '', '', '', 2),
(17, 'The maximum number of binary trees that can be formed with three unlabeled nodes is:', 0, '1', '5', '4', '3', '', '', '', '', '', '', '', 1),
(18, 'The number of leaf nodes in a rooted tree of n nodes, with each node having 0 or 3 children is: ', 0, 'n/2', '(n-1)/3', '(n-1)/2', '(2n+1)/3', '', '', '', '', '', '', '', 3),
(19, 'What is the output of the second pass of radix-sort of the following array:\r\n678, 368,590,310, 231,981, 457\r\n', 2, '678, 368,590,310, 231,981, 457', '590, 310, 231, 981,457, 678, 368', '310, 231, 457, 368, 678, 981, 590', '231, 310, 457, 368, 590, 678, 981', '', '', '', '', '', '', '', 2),
(20, 'The height of a binary tree is the maximum number of edges in any root to leaf path. The maximum number of nodes in a binary tree of height h is:', 0, '2^h -1', '2^(h-1) – 1', '2^(h+1) -1', '2*(h+1)', '', '', '', '', '', '', '', 2),
(22, 'Consider a B+-tree in which the maximum number of keys in a node is 5. What is the minimum number of keys in any non-root node? ', 1, '1', '2', '3', '4', '', '', '', '', '', '', '', 1),
(23, 'Which of the following is true about Red Black Trees?', 0, 'The path from the root to the furthest leaf is no more than twice as long as the path from the root to the nearest leaf', 'At least one children of every black node is red', 'Root may be red', 'A leaf node may be red', '', '', '', '', '', '', '', 0),
(24, 'A B-tree of order 4 is built from scratch by 10 successive insertions. What is the maximum number of node splitting operations that may take place?', 1, '3', '4', '5', '6', '', '', '', '', '', '', '', 2),
(25, 'A complete n-ary tree is a tree in which each node has n children or no children. Let I be the number of internal nodes and L be the number of leaves in a complete n-ary tree. If L = 41, and I = 10, what is the value of n?', 1, '6', '3', '4', '5', '', '', '', '', '', '', '', 3),
(26, 'One difference between a queue and a stack is:', 0, 'Queues require dynamic memory, but stacks do not', 'Stacks require dynamic memory, but queues do not.', 'Queues use two ends of the structure; stacks use only one.', 'Stacks use two ends of the structure, queues use only one.', '', '', '', '', '', '', '', 2),
(27, 'Suppose we have a singly linked list with a header node to store a sorted list of integers. The structure that defines the linked list is given as\r\nstruct LNode{\r\n            int data;\r\n            LNode *next; };\r\nA recursive solution to insertSorted function is given by\r\n', 2, 'void insertSorted (LNode *head, int val) {\r\nwhile (head->next != NULL && head->next->data < val)\r\n            head=head->next;\r\nif (head->next !=NULL && head->next->data == val)\r\n            return;\r\nLNode* newnode= new LNode;\r\nnewnode->data=val;\r\nnewnode->next=head->next;\r\nhead->next=node;\r\n}\r\n', 'void insertSorted (LNode *head, int val) {\r\nif (head->next !=NULL && head->next->data == val)\r\n            return;\r\nwhile (head->next != NULL && head->next->data > val)\r\n            head=head->next;\r\nLNode* newnode= new LNode;\r\nnewnode->data=val;\r\nnewnode->next=head->next;\r\nhead->next=node;\r\n}\r\n', 'void insertSorted (LNode *head, int val) {\r\nif(head->next == NULL || head->next->data >val) {\r\nLNode *p=new LNode;\r\np->data =val;\r\np->next=head->next;\r\nhead->next=p;}\r\nelse if (head->next->data < val)\r\ninsertSorted(head->next, val);\r\n}\r\n', 'void insertSorted (LNode *head, int val) {\r\nif(head->next == NULL || head->next->data < val) {\r\nLNode *p=new LNode;\r\np->data =val;\r\np->next=head->next;\r\nhead->next=p;}\r\nelse if (head->next->data >val)\r\ninsertSorted(head->next,val);\r\n}\r\n', '', '', '', '', '', '', '', 2),
(28, 'Consider the usual algorithm for determining whether a sequence of parentheses is balanced. What is the maximum number of parentheses that will appear on the stack AT ANY ONE TIME when the algorithm analyzes: (()(())(()))?', 1, '1', '2', '3', '5 or more', '', '', '', '', '', '', '', 2),
(29, 'consider the following operations on a Queue data structure that stores int values.\r\n            Queue q = new Queue( );\r\n            q.enqueue(3);\r\n            q.enqueue(5);\r\n            q.enqueue(9);\r\n            System.out.println(q.dequeue( ));                   // d1\r\n            q.enqueue(2);\r\n            q.enqueue(4);\r\n            System.out.println(q.dequeue( ));                   // d2\r\n            System.out.println(q.dequeue( ));                   // d3\r\n            q.enqueue(1);\r\n            q.enqueue(8);\r\n \r\nAfter the code above executes, how many elements would remain in q?\r\n', 1, '0', '4', '5', '6', '', '', '', '', '', '', '', 1),
(30, 'Consider the implementation of the queue using a circular array. What goes wrong if we try to keep all the items at the front of a partially-filled array (so that data[0] is always the front).', 0, 'The constructor would require linear time.', 'The get_front function would require linear time.', 'The dequeue function would require linear time.', 'The is_empty function would require linear time.', '', '', '', '', '', '', '', 2),
(31, 'consider the following operations on a Queue data structure that stores int values.\r\n            Queue q = new Queue( );\r\n            q.enqueue(3);\r\n            q.enqueue(5);\r\n            q.enqueue(9);\r\n            System.out.println(q.dequeue( ));                   // d1\r\n            q.enqueue(2);\r\n            q.enqueue(4);\r\n            System.out.println(q.dequeue( ));                   // d2\r\n            System.out.println(q.dequeue( ));                   // d3\r\n            q.enqueue(1);\r\n            q.enqueue(8);\r\n.     \r\nWhat value is returned by the last dequeue operation (denoted above with a d3 in comments)?\r\n', 1, '3', '5', '9', '2', '', '', '', '', '', '', '', 2),
(32, 'Choose the right implementation for evaluating a postfix expression: ', 2, 'Initialize stack\r\nWhile(x = nextToken())\r\n{\r\n	If( x is operator)\r\n	{\r\n		Operand1 = s.pop()\r\n		Operand2 = s.pop()\r\n		Result  = Evaluate(operand1, operand2, operator)\r\n		Push(result)\r\n	}\r\n	If( x is operand)\r\n		Push(x)\r\n}\r\nResult = pop();\r\n', 'Initialize stack\r\nWhile((x = nextToken())!=NULL)\r\n{\r\n	If( x is operator)\r\n	{\r\n		Operand1 = s.pop()\r\n		Operand2 = s.pop()\r\n		Result  = Evaluate(operand1, operand2, operator)\r\n		Push(result)\r\n	}\r\n	If( x is operand)\r\n		Push(x)\r\n}\r\nResult = pop();\r\n', 'Initialize stack\r\nWhile(x = nextToken())\r\n{\r\n	If( x is operator)\r\n	{\r\n		Operand2 = s.pop()\r\n		Operand1 = s.pop()\r\n		Result  = Evaluate(operand1, operand2, operator)\r\n		Push(result)\r\n	}\r\n	If( x is operand)\r\n		Push(x)\r\n}\r\n', 'Initialize stack\r\nWhile((x = nextToken())!=NULL)\r\n{\r\n	If( x is operator)\r\n	{\r\n		Operand2 = s.pop()\r\n		Operand1 = s.pop()\r\n		Result  = Evaluate(operand1, operand2, operator)\r\n		Push(result)\r\n	}\r\n	If( x is operand)\r\n		Push(x)\r\n}\r\nResult = pop();\r\n', '', '', '', '', '', '', '', 3),
(33, 'In the circular array version of the queue class (with a fixed-sized array), which operations require linear time for their worst-case behavior?', 0, 'front ', 'push', 'empty', 'None of these operations require linear time.', '', '', '', '', '', '', '', 1),
(34, 'consider the following operations on a Queue data structure that stores int values.\r\n            Queue q = new Queue( );\r\n            q.enqueue(3);\r\n            q.enqueue(5);\r\n            q.enqueue(9);\r\n            System.out.println(q.dequeue( ));                   // d1\r\n            q.enqueue(2);\r\n            q.enqueue(4);\r\n            System.out.println(q.dequeue( ));                   // d2\r\n            System.out.println(q.dequeue( ));                   // d3\r\n            q.enqueue(1);\r\n            q.enqueue(8);\r\n  \r\nIf we replace the System.out.println statements (denoted in comments as d1, d2 and d3) with the statement q.enqueue(q.dequeue( )); q would contain which order of int values after all instructions have executed?\r\n', 1, '3, 5, 9, 2, 4, 1, 8', '5, 9, 2, 4, 1, 8, 3', '3, 2, 4, 5, 9, 1, 8', '2, 4, 1, 8, 3, 5, 9', '', '', '', '', '', '', '', 2),
(35, 'Suppose top is called on a priority queue that has exactly two entries with equal priority. How is the return value of top selected?', 0, 'The implementation gets to choose either one.', 'The one which was inserted first.', 'The one which was inserted most recently.', ' This can never happen (violates the precondition)', '', '', '', '', '', '', '', 1),
(36, 'The correct  implementation of dequeue function of a queue using 2 stacks is:', 2, 'if(stack2.size()<= 0)\r\n    {\r\n        while(stack1.size()>0)\r\n        {\r\n            T& data = stack1.top();\r\n            stack1.pop();\r\n            stack1.push(data);\r\n        }\r\n    }\r\n\r\n    if(stack2.size() == 0)\r\n        print(“Empty queue”);\r\n	else\r\n    	T head = stack2.top();\r\n    	Stack2.pop();\r\n', 'if(stack2.size()<= 0)\r\n    {\r\n        while(stack1.size()>0)\r\n        {\r\n            T& data = stack2.top();\r\n            Stack2.pop();\r\n            stack2.push(data);\r\n        }\r\n    }\r\n\r\n    if(stack1.size() == 0)\r\n        print(“Empty queue”);\r\n	else\r\n    	T head = stack1.top();\r\n    	Stack1.pop();\r\n', 'if(stack2.size()<= 0)\r\n    {\r\n        while(stack1.size()>0)\r\n        {\r\n            T& data = stack1.top();\r\n            stack1.pop();\r\n            stack2.push(data);\r\n        }\r\n    }\r\n\r\n    if(stack2.size() == 0)\r\n        print(“Empty queue”);\r\n	else\r\n    	T head = stack2.top();\r\n    	stack2.pop();\r\n', 'if(stack1.size()<= 0)\r\n    {\r\n        while(stack2.size()>0)\r\n        {\r\n            T& data = stack1.top();\r\n            stack1.pop();\r\n            stack2.push(data);\r\n        }\r\n    }\r\n\r\n    if(stack2.size() == 0)\r\n        print(“Empty queue”);\r\n	else\r\n    	T head = stack2.top();\r\n    	stack2.pop();\r\n', '', '', '', '', '', '', '', 2),
(37, 'Let S be a stack of size n >= 1. Starting with the empty stack, suppose we push the first n natural numbers in sequence, and then perform n pop operations. Assume that Push and Pop operation take X seconds each, and Y seconds elapse between the end of one such stack operation and the start of the next operation. For m >= 1, define the stack-life of m as the time elapsed from the end of Push(m) to the start of the pop operation that removes m from S. The average stack-life of an element of this stack is', 1, 'n(X+ Y)', '3Y + 2X', 'n(X + Y)-X', 'Y + 2X ', '', '', '', '', '', '', '', 2),
(38, 'An array of queues can be used to implement a priority queue, with each possible priority corresponding to its own element in the array. When is this implementation not feasible?', 0, ' When the number of possible priorities is huge.', 'When the number of possible priorities is small.', 'When the queues are implemented using a linked list.', 'When the queues are implemented with circular arrays', '', '', '', '', '', '', '', 0),
(39, 'Which of the following function will correctly return minimum element in sorted rotated array?', 2, 'int findMin(int arr[], int low, int high)\r\n{\r\n    \r\n    if (high > low)  return arr[0];\r\n    if (high == low) return arr[low];\r\n    int mid = low + (high+ low)/2; \r\n    if (mid < high && arr[mid+1] > arr[mid])\r\n       return arr[mid+1];\r\n    if (mid > low && arr[mid] < arr[mid - 1])\r\n       return arr[mid];\r\n    if (arr[high] > arr[mid])\r\n       return findMin(arr, low, mid+1);\r\n    return findMin(arr, mid+1, high);\r\n}\r\n', 'int findMin(int arr[], int low, int high)\r\n{\r\n    \r\n    if (high < low)  return arr[0];\r\n    if (high == low) return arr[low];\r\n    int mid = low + (high - low)/2; \r\n    if (mid > low && arr[mid] < arr[mid - 2])\r\n       return arr[mid];\r\n    if (arr[high] < arr[mid])\r\n       return findMin(arr, low, mid-1);\r\n    return findMin(arr, mid, high);\r\n}\r\n', 'int findMin(int arr[], int low, int high)\r\n{\r\n    \r\n  if (high < low)  return arr[0];\r\n  if (high == low) return arr[low];\r\n  int mid = low + (high - low)/2; \r\n  if (mid < high && arr[mid+1] < arr[mid])\r\n       return arr[mid+1];\r\n  if (mid > low && arr[mid] < arr[mid - 1])\r\n       return arr[mid];\r\n   if (arr[high] > arr[mid])\r\n       return findMin(arr, low, mid-1);\r\n    return findMin(arr, mid+1, high);\r\n}\r\n', 'int findMin(int arr[], int low, int high)\r\n\r\n{    \r\n    if (high < low)  return arr[0];\r\n    \r\n    int mid = low + (high - low)/2; \r\n  \r\n    if (mid >low && arr[mid+1] < arr[low])\r\n       return arr[mid+1];\r\n \r\n    if (mid > low && arr[mid] < arr[mid - 1])\r\n       return arr[mid];\r\n    if (arr[high] > arr[mid+1])\r\n       return findMin(arr, low-1, mid-1);\r\n    return findMin(arr, mid+1, high-1);\r\n}\r\n', '', '', '', '', '', '', '', 2),
(40, 'An implementation of a queue Q, using two stacks S1 and S2, is given below:\r\nvoid insert(Q, x) {\r\n   push (S1, x);\r\n}\r\n \r\nvoid delete(Q){\r\n   if(stack-empty(S2)) then\r\n      if(stack-empty(S1)) then {\r\n          print(“Q is empty”);\r\n          return;\r\n      }\r\n      else while (!(stack-empty(S1))){\r\n          x=pop(S1);\r\n          push(S2,x);\r\n      }\r\n   x=pop(S2);\r\n}\r\nLet n insert and m (<=n) delete operations be performed in an arbitrary order on an empty queue Q. Let x and y be the number of push and pop operations performed respectively in the process. Which one of the following is true for all m and n?\r\n', 1, 'n+m <= x < 2n and 2m <= y <= n+m', 'n+m <= x < 2n and 2m<= y <= 2n', '2m <= x < 2n and 2m <= y <= n+m', '2m <= x <2n and 2m <= y <= 2n', '', '', '', '', '', '', '', 0),
(41, 'Consider the following four statements:\r\nA.       For a queue, "enqueue" and "dequeue" cancel each other out: an enqueue of any value followed by a dequeue leaves the queue in exactly the state it was in initially.\r\nB.       assert( true ) at any point in a program will cause that program to immediately abort.\r\nC.       The bool type with the values true and false, and the int type with the values 1 and 0 can both be used to represent Boolean values, but 1 and 0 should be used when possible because it makes the program faster.\r\nD.       Programs which have short variable names are generally faster than programs with long variables names.\r\n', 0, 'A is true', 'B is true', 'C is true', 'The statements A, B, C, and D are all false', '', '', '', '', '', '', '', 3),
(42, 'A single array A[1..MAXSIZE] is used to implement two stacks. The two stacks grow from opposite ends of the array. Variables top1 and top2 (topl< top 2) point to the location of the topmost element in each of the stacks. If the space is to be used efficiently, the condition for “stack full” is', 1, '(top1 = MAXSIZE/2) and (top2 = MAXSIZE/2+1)', 'top1 + top2 = MAXSIZE', '(top1= MAXSIZE/2) or (top2 = MAXSIZE)', 'top1= top2 -1', '', '', '', '', '', '', '', 3),
(43, 'Following function will delete alternative node of a single linked list for example?\r\ni/p:1->2->3->4->5\r\no/p:1->3->5\r\nvoid func(struct node *head)\r\n{\r\n    if (head == NULL)\r\n      return;\r\n \r\n  struct node *prev = head; \r\n  struct node *node = head->next;\r\n \r\n  while (prev != NULL && node != NULL)\r\n  {        \r\n     \r\n     \r\n     /*snippet to  be added*/\r\n \r\n  }      \r\n }\r\n', 2, 'if(prev != NULL)\r\n        node = prev->next;\r\n    prev->next = node->next;   \r\n    free(node);\r\n    prev = prev->next;\r\n', 'prev->next = node->next;   \r\n     free(node);\r\n     node = prev->next;\r\n     if(prev != NULL)\r\n        prev = node->next;\r\n', 'node->next = prev->next;   \r\n     prev = prev->next;\r\n     node = prev->next;\r\n     free(node);\r\n', 'prev->next = node->next;   \r\n     free(node);\r\n     prev = prev->next;\r\n     if(prev != NULL)\r\n        node = prev->next;\r\n', '', '', '', '', '', '', '', 3),
(44, 'Match a best pair\r\na.      vertices of a polygon                               \r\nb.      tower of Hanoi                             \r\nc.       a road map with places and distances\r\nd.      ticket counter\r\ne.      graph\r\nf.        stack\r\ng.      queue\r\nh.      circular linked list\r\n', 1, 'a-e , b-f , c-h , d-g', 'a-e , b-g , c-h , d-f', 'a-h , b-g , c-h , d-f', 'a-h , b-f , c-e , d-g', '', '', '', '', '', '', '', 3),
(45, 'Insert these following number 20,10,11,15,12,14,21 in a max heap.what will be the output after doing level order traversal In the final tree?', 2, '21 15 20 10 12 11 14', '21 20 15 10 12 14 11', '21 20 10 12 11 14 15', '21 15 20 10 12 14 11', '', '', '', '', '', '', '', 0),
(46, 'A circularly linked list is used to represent a Queue. A single variable p is used to access the Queue. To which node should p point such that both the operations enQueue and deQueue can be performed in constant time? ', 0, 'rear node', 'front node', 'not possible with a single pointer', ' node next to front', '', '', '', '', '', '', '', 0),
(47, 'Insert these following number 14,7,9,12,15,10,18in a max heap.Delete max element in heap.what will be the output after doing inorder traversal In the final tree?', 2, '15 12 14 7 10 9', '7 12 10 15 9 14', '15 12 7 10 14 9', '7  10 12 9 14 15', '', '', '', '', '', '', '', 1),
(48, ' Consider the following operation along with Enqueue and Dequeue operations on\r\nqueues, where k is a global parameter \r\nMultiDequeue(Q){\r\n   m = k\r\n   while (Q is not empty and m  > 0) {\r\n      Dequeue(Q)\r\n      m = m - 1\r\n   }\r\n}\r\nWhat is the worst case time complexity of a sequence of n MultiDequeue() operations on an initially empty queue? \r\n', 0, 'theta(n)', 'theta(n+k)', 'theta(nk)', 'theta(n2)', '', '', '', '', '', '', '', 0),
(50, 'Insert these following number 20,10,11,15,12,14,21 in \r\na min heap.what will be the output after doing post order traversal In the final tree?\r\n', 2, '20 15 12 14 21 10 11', '20 12 15 14 21 11 10', '10 12 20 15 11 14 21', '20 15 12 14 21 11 10', '', '', '', '', '', '', '', 3),
(51, 'Which of the following is false for radix sort: (k is the number of digits)', 0, 'Worst case performance is O(kn)', ' Worst case space complexity is O(k+n)', 'Radix sort is applicable to floating point numbers too.', 'None of these', '', '', '', '', '', '', '', 2),
(52, 'Insert these following number 14,7,9,12,15,10,18 in a min heap.Delete min element in heap.what will be the output after Right view In the final tree?', 2, '9 14 15', '9 18 10 ', ' 9 10 18', '9 15 14', '', '', '', '', '', '', '', 2),
(53, 'You are given the head pointer of a circular linked list of size n. You then start traversing the linked list and stop when you encounter null pointer. How many nodes would you have covered?', 0, 'n-1 nodes', 'n nodes', 'it can be any number between 1 to n nodes ', 'none of these', '', '', '', '', '', '', '', 3),
(54, 'Your friend, while programming, accidently changed the location of the head pointer of circular linked list to a different node (different from first node). He now asks you to find the initial location of the head pointer. You can find it in', 0, '  &#1138;(1) time', '&#1138;(n) time', 'it cannot be found out', ' time will be too small to even calculate', '', '', '', '', '', '', '', 2),
(55, 'Guess the output of following code\r\n import java.util.*;\r\n \r\npublic class LinkedListDemo {\r\n \r\n   public static void main(String args[]) {\r\n      // create a linked list\r\n      LinkedList ll = new LinkedList();\r\n      // add elements to the linked list\r\n      ll.add("F");\r\n      ll.add("B");\r\n      ll.add("D");\r\n      ll.add("E");\r\n      ll.add("C");\r\n      ll.addLast("Z");\r\n      ll.addFirst("A");\r\n      ll.add(1, "A2");\r\n      System.out.println("Original contents of ll: " + ll);\r\n \r\n      // remove elements from the linked list\r\n      ll.remove("F");\r\n      ll.remove(2);\r\n      System.out.println("Contents of ll after deletion: "\r\n       + ll);\r\n     \r\n      // remove first and last elements\r\n      ll.removeFirst();\r\n      ll.removeLast();\r\n      System.out.println("ll after deleting first and last: "\r\n       + ll);\r\n \r\n      // get and set a value\r\n      Object val = ll.get(2);\r\n      ll.set(2, (String) val + " Changed");\r\n      System.out.println("ll after change: " + ll);\r\n   }\r\n}\r\n', 1, 'Original contents of l1: [A2, A, F, B, D, E, C, Z]\r\nContents of l1 after deletion: [A2, B, D, E, C, Z]\r\nl1 after deleting first and last: [B, D, E, C]\r\nl1 after change: [B, D, E changed, C]\r\n', 'Original contents of l1: [A2, A, F, B, D, E, C, Z]\r\nContents of l1 after deletion: [A2, A, D, E, C, Z]\r\nl1 after deleting first and last: [A, D, E, C]\r\nl1 after change: [A, D, E changed, C]\r\n', 'Original contents of l1: [A, A2, F, B, D, E, C, Z]\r\nContents of l1 after deletion: [A, A2, D, E, C, Z]\r\nl1 after deleting first and last: [A2, D, E, C]\r\nl1 after change: [A2, D, E changed, C]\r\n', 'None of these', '', '', '', '', '', '', '', 2),
(56, 'After converting a simple linked list of size n into circular linked list, it will take', 0, '&#1138;(1) time to move from 1st  to last node and &#1138;(n) time to move from last to 1st node', '&#1138;(n) time to move from 1st  to last node and &#1138;(n) time to move from last to 1st node', '&#1138;(1) time to move from 1st  to last node and &#1138;(1) time to move from last to 1st node', '&#1138;(n) time to move from 1st  to last node and &#1138;(1) time to move from last to 1st node', '', '', '', '', '', '', '', 3),
(57, 'Consider the directed graph shown in the figure below. There are multiple shortest paths between vertices S and T. Which one will be reported by Dijstra?s shortest path algorithm? Assume that, in any iteration, the shortest path to a vertex v is updated only when a strictly shorter path to v is discovered.', 2, 'SDT', 'SBDT', 'SACDT', 'SACET', '', 'd_s/dijkstra.png', '', '', '', '', '', 3),
(58, 'What does the following function do?\r\nListNode* function( ListNode* pListHead, int k){\r\nif(pListHead == NULL || K==0)\r\nreturn NULL;\r\nListNode *head= pListHead;\r\nListNode *tail= NULL;\r\nfor(int i=0;i<k-1;++i){\r\nif(head->next != NULL)\r\nhead=head->next;\r\nelse\r\nreturn NULL;}\r\ntail=pListHead;\r\nwhile(head->next !=NULL){\r\nhead=head->next;\r\ntail=tail->next;}\r\nreturn tail;\r\n}\r\n', 0, 'reverse k elements in list', 'find kth node from tail', 'sort initial  k elements of lists', 'none of these', '', '', '', '', '', '', '', 1),
(59, 'The following functions checks for a loop in the linked list.\r\nfunction Boolean hasLoop(Node startNode){\r\nNode currentNode =startNode.net();\r\nint i=0;\r\ndo{\r\nNode checkNode = startNode;\r\nint j=0;\r\ndo{\r\nif(checknode == currentNode) return true;\r\nj++;\r\n}while ( j < i && checkNode = checkNode.next());\r\ni++;\r\n}while(CurrentNode = currentNode.next());\r\nreturn false;}\r\nThe above function\r\n', 1, 'gives incorrect solution', 'modifies the list', 'correct solution', 'becomes inefficient in some cases', '', '', '', '', '', '', '', 3),
(60, 'What may be the possible error/exception thrown by the following Stack Initialization code?\r\n\r\nvoid StackInit(stackT *stackP, int maxSize)\r\n{\r\n stackElementT *newContents;\r\n newContents = (stackElementT *)malloc(sizeof(stackElementT) * maxSize);\r\n stackP->contents = newContents;\r\n stackP->maxSize = maxSize;\r\n stackP->top = -1; \r\n}\r\n', 0, 'Null Pointer Exception', 'Malloc failure leading to Null Pointer Exception', 'Both', 'None.', '', '', '', '', '', '', '', 2),
(61, 'what is the cost of shortest path from s to t for a given Graph using Djkstra algorithm?', 2, '48', '49', '50', '51', '', 'd_s/1.png', '', '', '', '', '', 3),
(62, 'Given the function and linked list 1->2->3->4->5, Guess the output\r\nvoid func(ListNode *head) {\r\nif(head== NULL)\r\nreturn;\r\nprintf(“%d ”,head->data);\r\nif(head->next != NULL)\r\nfunc(head->next->next);\r\nprintf(“%d “ ,head->data); }\r\n', 1, '1 2 3 4 5 1', '1 3 5 5 3 1', '1 3 5 2 4 1', '1 2 3 3 2 1', '', '', '', '', '', '', '', 1),
(63, 'Insert  these  elements in a BST  in the order 92,101,99,28,72,110,84 and form a new AVL tree by the elements of Postorder traversal of BST.What  is the ROOT element and INORDER PREDECESSOR of root in final AVL TREE?', 2, '92,99', '99,92', '99,100', '100,99', '', '', '', '', '', '', '', 1),
(64, 'An undirected graph G has n nodes. Its adjacency matrix is given by an n × n square matrix whose (i) diagonal elements are 0‘s and (ii) non-diagonal elements are 1‘s. which one of the following is TRUE?', 0, 'Graph G has no minimum spanning tree (MST)', 'Graph G has a unique MST of cost n-1', 'Graph G has multiple distinct MSTs, each of cost n-1', 'Graph G has multiple spanning trees of different costs', '', '', '', '', '', '', '', 2),
(66, 'Elements  17,14,10,9,8,7,4 are inserted in minimum heap tree.what is the middle element of Level order,preorder,inorder,postorder traversals of minimum heap tree?', 2, '10,10,14,14', '14,17,10,10', '17,10,8,14', '17,10,14,14', '', '', '', '', '', '', '', 3),
(67, 'consider this Graph as undirected graph. what is the total cost of minimum spanning tree?', 2, '57', '58', '59', '60', '', 'd_s/2.png', '', '', '', '', '', 3),
(68, 'Graph G has multiple spanning trees of different costs', 0, 'P- can be solved in polynomial time', 'NP-solution can be verified in polynomial time', 'P- can be solved in polynomial time and NP-solution can be verified in polynomial time', 'neither P- can be solved in polynomial time nor NP-solution can be verified in polynomial time', '', '', '', '', '', '', '', 1),
(69, 'Choose the right implementation of push function for a array implementation of stack defined by:\r\n\r\nclass stack{\r\n private: T data[size];\r\n int stack_ptr;\r\n public:\r\n stack(void);\r\n void push(T x);\r\n T pop();\r\n};', 1, 'push(T x)\r\n{\r\n if(stack_ptr>=size)\r\n {\r\n cout<<"OVERFLOW"<<endl;\r\n return;\r\n }\r\n data[stack_ptr]=x;\r\n return;\r\n}', 'push(T x)\r\n{\r\n if(stack_ptr>=size)\r\n {\r\n cout<<"OVERFLOW"<<endl;\r\n return;\r\n }\r\n data[stack_pt++]=x;\r\n return;\r\n}', 'push(T x)\r\n{\r\n if(stack_ptr>size)\r\n {\r\n cout<<"OVERFLOW"<<endl;\r\n return;\r\n }\r\n data[stack_ptr++]=x;\r\n return;\r\n}', 'push(T x)\r\n{\r\n if(stack_ptr>size)\r\n {\r\n cout<<"OVERFLOW"<<endl;\r\n return;\r\n }\r\n data[stack_ptr]=x;\r\n return;\r\n}\r\n', '', '', '', '', '', '', '', 1),
(70, 'Assuming P != NP, which of the following is true ?', 0, 'NP-complete = NP', 'NP-complete  problem cannot solved in polynomial time', 'NP-hard = NP', 'P = NP-complete', '', '', '', '', '', '', '', 1),
(71, 'Consider a hash table of size seven, with starting index zero, and a hash function (3x + 4)mod7. Assuming the hash table is initially empty, which of the following is the contents of the table when the sequence 1, 3, 8, 10 is inserted into the table using closed hashing? Note that ‘_’ denotes an empty location in the table.', 2, ' 8, _, _, _, _, _, 10', '1, 8, 10, _, _, _, 3', '1, _, _, _, _, _,3', '1, 10, 8, _, _, _, 3', '', '', '', '', '', '', '', 1),
(72, 'consider below graph as undirected graph minimum color required to color the below graph?', 2, '2', '3', '4', '5', '', 'd_s/3.png', '', '', '', '', '', 2),
(73, 'The correct implementation of enqueue of a circular queue is given by:', 1, 'if(front==(rear+1)%MAX)\r\n printf("overflow");\r\n else\r\n {\r\n  if(front==0)\r\n  front=rear=0;\r\n  else\r\n  rear=(rear+1)%MAX;\r\n  arr[rear+1]=data;\r\n }\r\n', 'if(front==(rear+1)%MAX)\r\n printf("overflow ");\r\n else\r\n {\r\n  if(front==-1)\r\n  front=rear=0;\r\n  else\r\n  rear=(rear+1)%MAX;\r\n  arr[rear+1]=data;\r\n }\r\n', 'if(front==(rear)%MAX)\r\n printf("overflow ");\r\n else\r\n {\r\n  if(front==-1)\r\n  front=rear=0;\r\n  else\r\n  rear=(rear+1)%MAX;\r\n  arr[rear+1]=data;\r\n }\r\n', 'if(front==(rear+1)%MAX)\r\n printf("overflow ");\r\n else\r\n {\r\n  if(front==-1)\r\n  front=rear=0;\r\n  else\r\n  rear=(rear+1)%MAX;\r\n  arr[rear]=data;\r\n }\r\n', '', '', '', '', '', '', '', 3),
(74, 'Minimum no of colour required for colouring the binary search tree?', 0, '1', '2', '3', '4', '', '', '', '', '', '', '', 1),
(75, 'Time complexity of topological sorting is ?', 0, 'O(v)', 'O(E)', 'theta(V+E)', 'O(V+E)', '', '', '', '', '', '', '', 3),
(77, 'Convert the following infix expression  (((A+B)*(C-E))/(F+G))  into  postfix expression?', 0, 'A B + C E - * F G + /', 'A B C+E F*-G+/', 'A B *+C E-F G+/', 'AB+C E *-FG+/', '', '', '', '', '', '', '', 0),
(79, 'construct a connected weighted graph  from the given  weighted adjacent matrix and find minimum capacity s-t cut of the given network where source=0 target=5?\r\n', 2, '21', '22', '23', '24', '', 'd_s/Capture.JPG', '', '', '', '', '', 2),
(80, 'When each node in the Trie has most of its children used, ', 0, 'the Trie is substantially more space efficient and time efficient than the ternary search tree', 'the ternary search tree is substantially more space efficient and time efficient than the trie.', 'The Trie is more time-efficient but less space-efficient than the ternary search tree.', 'All of these', '', '', '', '', '', '', '', 0),
(81, 'The following C function takes a simply-linked list as input argument. It modifies the list by moving the last element to the front of the list and returns the modified list. Some part of the code is left blank.\r\n\r\ntypedef struct node\r\n{\r\nint value;\r\nstruct node *next;\r\n}Node;\r\nNode *move_to_front(Node *head)\r\n{\r\n  Node *p, *q;\r\nif ((head == NULL: || (head->next == NULL))\r\nreturn head;\r\n  q = NULL; p = head;\r\nwhile (p-> next !=NULL)\r\n  {\r\n    q = p;\r\n    p = p->next;\r\n}\r\n _______________________________\r\nreturn head;\r\n}\r\n\r\nChoose the correct alternative to replace the blank line.\r\n', 2, 'q = NULL; p->next = head; head = p;', ' q->next = NULL; head = p; p->next = head;', 'head = p; p->next = q; q->next = NULL;', 'q->next = NULL; p->next = head; head = p;', '', '', '', '', '', '', '', 3),
(82, 'An undirected graph G(V, E) contains n ( n > 2 ) nodes named v1 , v2 ,….vn. Two nodes vi , vj are connected if and only if 0 < |i – j| <= 2. Each edge (vi, vj ) is assigned a weight i + j. A sample graph with n = 4 is shown below.\r\n \r\nWhat will be the cost of the minimum spanning tree (MST) of such a graph with n nodes?\r\n', 1, '1/12(11n^2 – 5n)', 'n^2 – n + 1', '6n – 11', '2n + 1', '', '', '', '', '', '', '', 1),
(83, 'Given a word, we have to find the next word in dictionary. Which of these data structures will you use such that space-efficiency is the only constraint.', 0, 'Trie', 'Fenwick tree', 'Interval Tree', 'Ternary Search Tree', '', '', '', '', '', '', '', 3),
(84, 'In open addressing  given table size is 10, insert all the keys  89,18,49,58,69 in the hash table  using linear probing, quadratic  probing, dynamic  probing collision avoidance strategies separately. what is the index of the element ‘69’ in all the three Hash table? ', 1, '3,2,0', '2,3,0', '2,0,3', '1,2,4', '', '', '', '', '', '', '', 1),
(85, 'Two files each of size terabytes. A file comparison tool compares ith line of file1 with ith line of file2. If they are same it prints. Which data structure is suitable?', 0, 'B-tree', 'ternary search tree', 'hash tables ', 'Binary index tree.', '', '', '', '', '', '', '', 0),
(86, 'A hash table of length 10 uses open addressing with hash function h(k)= k mod 10 , and linear probing. After inserting 6 values into an empty hash table , the table is shown as below:\r\n0	\r\n1	\r\n2	42\r\n3	23\r\n4	34\r\n5	52\r\n6	46\r\n7	33\r\n8	\r\n9	\r\n\r\nWhich one of the following choices gives a possible order in which the key values could have been inserted in the table?\r\n', 2, '46,42,34,52,23,33', '34,42,23,52,33,46', '46,34,42,23,52,33', '42,46,33,23,34,52', '', '', '', '', '', '', '', 2),
(87, 'What of these data structures is best suited to solve this problem?\r\nJapan is a huge island with N cities on the East coast and M cities on the West coast (M &#8804; 1000, N &#8804; 1000). K superhighways will be built. Cities on each coast are numbered 1, 2, ... from North to South. Each superhighway is straight line and connects city on the East coast with city of the West coast.\r\nA major portion of the funding for the project is determined by the number of crossings between superhighways. At most two superhighways cross at one location. Write a program that calculates the number of the crossings between superhighways.\r\n', 1, 'Segment Tree', 'Binary Index Tree', 'B-tree', 'None of these', '', '', '', '', '', '', '', 1),
(88, 'Preorder traversal of a tree: 700,500,300,600,550,525,650,800,725,850. What would be the resulting postorder after splaying 600.', 2, '300,525,550,650,500,725,800,825,700,600', ' 300,525,550,500,650,725,850,800,700,600', '300,500,525,550,650,700,725,800,850,600', 'None of these', '', '', '', '', '', '', '', 1),
(89, 'The following are the real world implementation of which data structure?\r\ni. Tracking requests by CFQ IO and deadline schedulers\r\nii. Organising outstanding timer requests by high resolution timer\r\niii. Tracking of directories by ext3 file system \r\niv. Tracking packets in the hierarchical token bucket scheduler', 0, 'Red-blacks Tree\r\n\r\n', 'Splay ', 'Avl trees', 'Binary search tree', '', '', '', '', '', '', '', 0),
(90, 'Convert the given postfix form to infix form x=(@b+(b   2-4*a*c)  1/2)/(2*a)', 0, 'xb@b2  4ac**-1/2  +2a*/=', 'xb@b+2  4a*c*-1/2  2a*/=', 'xb@b2  4a*c*-1/2  2a*/+=', 'xb@b2  4a*c*-1/2  +2a*/=', '', '', '', '', '', '', '', 3),
(91, 'While converting 2*3/(2-1)+5*(4-1) into postfix form using a single stack, what would be the maximum width(max no of elements that stack has at any point of time) of the stack?', 1, '2', '3', '4', '5', '', '', '', '', '', '', '', 1),
(92, 'An operation swap tree takes a binary tree and swaps the left and right children of every node. Consider the following tree. What will be the post order traversal of the tree after applying swap operation?\r\n\r\n\r\n\r\n', 0, 'G D E B H F C A', 'G E D C H F b A', 'H F C E G D B A', 'G D E C H F B A', '', 'd_s/qus.jpg', '', '', '', '', '', 2),
(93, 'To implement Dijkstra’s shortest path algorithm on unweighted\r\ngraphs so that it runs in linear time, the data structure to be used\r\nis:\r\n', 0, 'Queue', 'Heap', 'Stack', 'Heap-tree', '', '', '', '', '', '', '', 0),
(94, ' Choose the right function to rotate a linked list by “k” positions:', 2, 'void rotate (structnode **head_ref, intk)\r\n{\r\n     if(k == 0)\r\n       return;\r\n    structnode* current = *head_ref;\r\n    intcount = 1;\r\n    while(count < k && current != NULL)\r\n    {\r\n        current = current->next;\r\n        count++;\r\n    }\r\n    if(current == NULL)\r\n        return;\r\n    structnode *kthNode = current;\r\n    while(current->next != NULL)\r\n        current = current->next;\r\n    current->next = *head_ref;\r\n    *head_ref = kthNode;\r\n    kthNode->next = NULL;\r\n}\r\n', 'void rotate (structnode **head_ref, intk)\r\n{\r\n     if(k == 0)\r\n       return;\r\n    structnode* current = *head_ref;\r\n    intcount = 1;\r\n    while(count < k && current != NULL)\r\n    {\r\n        current = current->next;\r\n        count++;\r\n    }\r\n    if(current == NULL)\r\n        return;\r\n    structnode *kthNode = current;\r\n    while(current != NULL)\r\n        current = current->next;\r\n    current->next = *head_ref;\r\n    *head_ref = kthNode;\r\n    kthNode->next = NULL;\r\n}\r\n', 'void rotate (structnode **head_ref, intk)\r\n{\r\n     if(k == 0)\r\n       return;\r\n    structnode* current = *head_ref;\r\n    intcount = 1;\r\n    while(count < k && current != NULL)\r\n    {\r\n        current = current->next;\r\n        count++;\r\n    }\r\n    if(current == NULL)\r\n        return;\r\n    structnode *kthNode = current;\r\n    while(current != NULL)\r\n        current = current->next;\r\n    current->next = *head_ref;\r\n    *head_ref = kthNode;\r\n    kthNode->next = NULL;\r\n}\r\n', 'void rotate (structnode **head_ref, intk)\r\n{\r\n     if(k == 0)\r\n       return;\r\n    structnode* current = *head_ref;\r\n    intcount = 1;\r\n    while(count < k && current != NULL)\r\n    {\r\n        current = current->next;\r\n        count++;\r\n    }\r\n    if(current == NULL)\r\n        return;\r\n    structnode *kthNode = current;\r\n    while(current != NULL)\r\n        current = current->next;\r\n    current->next = *head_ref;\r\n    *head_ref = kthNode->next;\r\n    kthNode->next = NULL;\r\n}\r\n', '', '', '', '', '', '', '', 2),
(95, 'The below algorithm is a greedy approach to color a graph such that no adjacent vertices have the same color. The colors assigned are stored in an int array result[]. Result[] takes an integer value, each value denoting different color. If color is not assigned yet the value of result is -1.  The missing statements A, B should be:\r\nvoidGraph::greedyColoring()\r\n{\r\n    intresult[V];\r\n    result[0]  = 0;\r\n    for(intu = 1; u < V; u++)\r\n        result[u] = -1; \r\n    boolavailable[V]; //To denote if a particular color is available\r\n				//for assignment or not.\r\n    for(intcr = 0; cr< V; cr++)\r\n        available[cr] = false;\r\n    for(intu = 1; u < V; u++)\r\n    {\r\n        list<int>::iterator i;\r\n        for(i = adj[u].begin(); i != adj[u].end(); ++i)\r\n            if(result[*i] != -1)\r\n                A;\r\n        intcr;\r\n        for(cr = 0; cr< V; cr++)\r\n            if(available[cr] == false)\r\n                break;\r\n        result[u] = cr;\r\n        for(i = adj[u].begin(); i != adj[u].end(); ++i)\r\n            if(result[*i] != -1)\r\n                B;\r\n    }\r\n}\r\n', 2, 'A: available[result[*i]] = false; B: available[result[*i]] = false;', 'A: available[result[*i]] = true; B: available[result[*i]] = false;', 'A: available[result[*i]] = true; B: available[result[*i]] = true;', 'A: available[result[*i]] = false; B: available[result[*i]] = true;', '', '', '', '', '', '', '', 1),
(96, 'Consider the following graph:\r\n\r\nAmong the following sequences which are depth first traversals of the above graph?\r\n\r\n1 .a b e g h f\r\n2. a b f e h g\r\n3 .a b f  h g e\r\n4. a f g h b e\r\n', 1, '1,2 and 4 only', '1 and 4 only', '2,3 and 4 only ', '1,3 and 4 only', '', 'd_s/Capture1.PNG', '', '', '', '', '', 2),
(98, 'The expression corresponding to the below tree is', 1, '2(a+b)-2(c+b)', ' 2(a+b-c+b)', '2*-(a+b)(c+b)', '2((a+b)-(c+b))', '', 'd_s/Capture2.PNG', '', '', '', '', '', 3),
(99, 'The code for determining whether 2 trees are isomorphic is given below.Choose the right one:', 2, 'boolisIsomorphic(node* n1, node *n2)\r\n{\r\n if(n1 == NULL && n2 == NULL)\r\n    returntrue;\r\n if(n1 == NULL || n2 == NULL)\r\n    returnfalse;\r\n \r\n if(n1->data != n2->data)\r\n    returnfalse;\r\n return\r\n (isIsomorphic(n1->left,n2->right) &&isIsomorphic(n1->right,n2->right))||\r\n (isIsomorphic(n1->left,n2->right) &&isIsomorphic(n1->right,n2->left));\r\n}\r\n', 'boolisIsomorphic(node* n1, node *n2)\r\n{\r\n if(n1 == NULL && n2 == NULL)\r\n    returntrue;\r\n if(n1 == NULL || n2 == NULL)\r\n    returnfalse;\r\n \r\n if(n1->data != n2->data)\r\n    returnfalse;\r\n return\r\n (isIsomorphic(n1->left,n2->left) &&isIsomorphic(n1->right,n2->right))||\r\n (isIsomorphic(n1->left,n2->right) &&isIsomorphic(n1->right,n2->right));\r\n}\r\n', 'boolisIsomorphic(node* n1, node *n2)\r\n{\r\n if(n1 == NULL && n2 == NULL)\r\n    returntrue;\r\n if(n1 == NULL || n2 == NULL)\r\n    returnfalse;\r\n \r\n if(n1->data != n2->data)\r\n    returnfalse;\r\n return\r\n (isIsomorphic(n1->left,n2->left) &&isIsomorphic(n1->right,n2->right))||\r\n (isIsomorphic(n1->left,n2->left) &&isIsomorphic(n1->right,n2->left));\r\n}\r\n', 'boolisIsomorphic(node* n1, node *n2)\r\n{\r\n if(n1 == NULL && n2 == NULL)\r\n    returntrue;\r\n if(n1 == NULL || n2 == NULL)\r\n    returnfalse;\r\n \r\n if(n1->data != n2->data)\r\n    returnfalse;\r\n return\r\n (isIsomorphic(n1->left,n2->left) &&isIsomorphic(n1->right,n2->right))||\r\n (isIsomorphic(n1->left,n2->right) &&isIsomorphic(n1->right,n2->left));\r\n}\r\n', '', '', '', '', '', '', '', 3),
(100, 'In a doubly linked list pointed by head node, a pointer p points to an arbitrary element in the middle of the list. Which of the following sets of operations would correctly insert a new node, pointed to by pointer n to the right of p?', 1, 'n->right=p->right\r\nn->left=p\r\np->right=n\r\nn->right->left=n', 'n->left=p\r\np->right=n\r\nn->right=p->right\r\np->right=n->left', 'n->right=p->right\r\nn->left=p->left\r\nn->right->left=p\r\np->right=n', 'none of these', '', '', '', '', '', '', '', 0),
(101, 'What is the functionality of the following code.\n#include "stdio.h"\n#include "stdlib.h"\nstruct node\n{\n  int data;\n  struct node *next;\n};\nvoid func(struct node **head_ref)\n{\n  struct node *end = *head_ref;  \n  struct node *prev = NULL;\n  struct node *curr = *head_ref;\n  \n  while(end->next != NULL)\n       end = end->next; \n  \n  struct node *new_end = end;\n  \n  while(curr->data %2 != 0 && curr != end)\n  {\n    new_end->next = curr;\n    curr = curr->next;\n    new_end->next->next = NULL;\n    new_end = new_end->next;\n  }   \n  \n  if (curr->data%2 == 0)\n  {\n    *head_ref = curr;     \n  \n    while(curr != end)\n    {\n      if ( (curr->data)%2 == 0 )\n      {\n         prev = curr;\n         curr = curr->next;\n      }\n      else\n      {\n         prev->next = curr->next;\n                      curr->next = NULL;\n                      new_end->next = curr;\n  \n        new_end = curr;\n  \n        curr = prev->next;\n      }\n    }\n  }\n  \n else  \n    prev = curr;\n  \n  if((end->data)%2 != 0)\n  {\n      prev->next = end->next;\n      end->next = NULL;\n      new_end->next = end;\n  }\n  return;\n}\n  \nvoid push(struct node** head_ref, int new_data)\n{\n  struct node* new_node =\n       (struct node*) malloc(sizeof(struct node));\n  \n  new_node->data  = new_data; \n  \n  new_node->next = (*head_ref);     \n  \n   (*head_ref)    = new_node;\n}\n  \nvoid printList(struct node *node)\n{\n  while(node!=NULL)\n  {\n   printf("%d ", node->data);\n   node = node->next;\n  }\n}\n  \nint main()\n{\n  struct node* head = NULL;\n  \n    17->15->8->12->10->5->4->1->7->6 */\n  push(&head, 6);\n  push(&head, 7);\n  push(&head, 1);\n  push(&head, 4);\n  push(&head, 5);\n  push(&head, 10);\n  push(&head, 12);\n  push(&head, 8);\n  push(&head, 15);\n  push(&head, 17);  \n  printf("\\n Original Linked list ");\n  printList(head);\n  \n  func(&head);\n  \n  printf("\\n Modified Linked list ");\n  printList(head);          \n return 0;\n}\n', 2, 'The code fails compilation.', 'It  segregates even and odd numbered nodes in a Linked List  in a stable manner', 'It segregates even and odd positioned nodes in the linked list in descending order', 'It segregates even and odd numbered nodes in the linked list in ascending order', '', '', '', '', '', '', '', 1);
INSERT INTO `d_s_q` (`qno`, `question`, `difficulty`, `a`, `b`, `c`, `d`, `e`, `qimg`, `aimg`, `bimg`, `cimg`, `dimg`, `eimg`, `ans`) VALUES
(102, 'What does the following code do?\r\nFunction(Heap h1,Heap h2)\r\n{\r\nHeap dummy;\r\nif (h1 == null)\r\n	return h2;\r\nelse if (h2 == null)\r\n	return h1;\r\nelse\r\n{\r\n	if (h1.key > h2.key)\r\n	{\r\nNode dummy = h1;\r\n		h1 = h2;\r\n		h2 = dummy;\r\n	}\r\n}\r\n\r\nif (h1.right == null) // Hook h2 directly to h1\r\n	h1.right = h2;\r\nelse \r\n	h1.right = Function (h1.right, h2);\r\ndummy = h1.right;\r\nh1.right = h1.left;\r\nh1.left = dummy;\r\n}\r\n', 1, 'Forms a new heap in which h2 is right sub tree of h1', 'Forms a new heap in which h1 is right sub tree of h2', 'Forms a new heap which is the union of heaps h1 and h2', 'Forms a new heap which is the intersection of heaps h1 and h2', '', '', '', '', '', '', '', 2),
(103, 'How many different trees are possible with 10 nodes ?', 1, '1014', '1024', '1000', '1200', '', '', '', '', '', '', '', 0),
(104, 'How many stack permutation exists for 4 different objects?', 1, '12', '31', '14', '15', '', '', '', '', '', '', '', 2),
(105, 'Suppose we are sorting an array of ten integers using some quadratic sorting algorithm. After four iterations of the algorithm''s main loop, the array elements are ordered as shown here:\r\n1 2 3 4 5 0 6 7 8 9\r\nWhich statement is correct? (Note: Our selection sort picks largest items first.)\r\n', 1, 'The algorithm might be either selection sort or insertion sort', 'The algorithm might be selection sort, but could not be insertion sort', 'The algorithm might be insertion sort, but could not be selection sort', 'The algorithm is neither selection sort nor insertion sort', '', '', '', '', '', '', '', 2),
(106, 'Guess the output of the following  function given the input\r\n1->2->3->4->5->6->7->8->9\r\nint func(struct node *p){\r\nint num;\r\nstruct node *p1,*p2;\r\np1=p2=p;\r\nwhile(p2->link != NULL && p2->link->link != NULL){\r\np1=p1->link;\r\np2=p2->link->link;\r\n}\r\nreturn p1->data;\r\n}\r\n', 2, '9', '5', '7', '8', '', '', '', '', '', '', '', 1),
(107, 'How will you develop a data structure that perform addition,deletion,retrieval in O(1)?', 1, 'stack with hash', 'heap', 'Linked List with hash', 'Doubly linked list with hash', '', '', '', '', '', '', '', 3),
(108, '#include "stdio.h"\nenum power{\n    Dalai,\n    Vladimir=3,\n    Barack,\n    Hillary\n};\nvoid main(){\n    float leader[Dalai+Hillary]={1.f,2.f,3.f,4.f,5.f};\n    enum power p=Barack;\n    printf("%0.f",leader[p>>1+1]);\n}\n\no/p:\n', 1, '1', '2', '3', 'Compilation error', '', '', '', '', '', '', '', 1),
(109, 'Statement 1: Insertion & Deletion is easier in an array compared to a linked list.\r\n    Statement 2: Random access is not allowed in a linked list.\r\n    Statement 3: Arrays have better cache locality that can make a pretty big difference in performance.\r\n   Statement 4: In applications involving frequent searches an array is preferred.\r\nWhich of these statements are true?\r\n', 1, '1,2,4', '2,3,4	', '2,4', '3,4', '', '', '', '', '', '', '', 1),
(110, 'Root in avl tree after the insertion of elements 10, 85, 15, 70, 20, 60, 30, 50 ', 1, '20', '70', '15', '10', '', '', '', '', '', '', '', 0),
(111, 'A 25×4 matrix array DATA is stored in memory in ‘row-major order’. If base address is 200 and w = 4 words per memory cell. Calculate the address of DATA [12, 3] ', 1, '404', '505', '444', '447', '', '', '', '', '', '', '', 2),
(113, 'Guess the output of the function given input 1->7->2->9->4->5->8->5->NULL\r\nvoid foo(struct node **head){\r\nif(*head == NULL || (*head)->next == NULL)\r\nreturn;\r\nStruct node  *prev=*head;\r\nstruct node *curr=(*head)->next;\r\n*head=curr;\r\nwhile(true){\r\nstruct node *next=curr->next;\r\ncurr->next=prev;\r\nif(next==NULL || next->next ==NULL){\r\nprev->next =next;\r\nbreak;\r\n}\r\nprev->next=next->next;\r\nprev=next;\r\ncurr=prev->next;\r\n}\r\n}\r\n', 2, '1->2->4->5->5->7->8->9', '5->8->5->4->9->2->7->1', '7->1->9->2->5->4->5->8', '1->7->2->9->5->8->5->4', '', '', '', '', '', '', '', 2),
(114, 'Consider the following code snippet in C. The function print() receives root of a Binary Search Tree (BST) and a positive integer k as arguments. \r\n// A BST node\r\nstruct node {\r\n    int data;\r\n    struct node *left, *right;\r\n};\r\n \r\nint count = 0;\r\n \r\nvoid print(struct node *root, int k)\r\n{\r\n    if (root != NULL && count <= k)\r\n    {\r\n        print(root->right, k);\r\n        count++;\r\n        if (count == k)\r\n          printf("%d ", root->data);\r\n       print(root->left, k);\r\n    }\r\n}\r\nWhat is the output of print(root, 3) where root represent root of the following BST. \r\n', 1, '10\r\n', '20', '16', '10 20\r\n', '', '', '', '', '', '', '', 2),
(115, 'Consider the following left-rotate and right-rotate functions commonly used in self-adjusting BSTs \r\nT1, T2 and T3 are subtrees of the tree rooted with y (on left side) \r\nor x (on right side)  \r\nWhich of the following is tightest upper bound for left-rotate and right-rotate operations?         \r\n', 1, 'O(1)', 'O(Logn)', 'O(LogLogn)', 'O(n)', '', 'd_s/tr1.jpg', '', '', '', '', '', 0),
(116, 'output when the tree root is passed to the func?\r\nvoid func1(struct node *root, int level, int *max_level)\r\n{\r\n    if (root==NULL)  return;\r\n    if (*max_level < level)\r\n    {\r\n        printf("%d\\t", root->data);\r\n        *max_level = level;\r\n    }\r\n    func1(root->left, level+1, max_level);\r\n    func1(root->right, level+1, max_level);\r\n}\r\nvoid func(struct node *root)\r\n{\r\n    int max_level = 0;\r\n    func1(root, 1, &max_level);\r\n}\r\n', 1, '12    30     40', '12   10    11   22', '12     10     22    11         ', '12      10     11   25', '', 'd_s/tr2.jpg', '', '', '', '', '', 1),
(117, 'output when below shown Binary tree given as input to the function func(root)?\r\nint func1(struct node *root, int val)\r\n{\r\n    if (root == NULL)  return 0;\r\n\r\n \r\n    val = (val*10 + root->data);\r\n\r\n    if (root->left==NULL && root->right==NULL)\r\n       return val;\r\n\r\n    return func1(root->left, val) +\r\n           func1(root->right, val);\r\n}\r\n\r\nint func(struct node *root)\r\n{\r\n  \r\n    return func1(root, 0);\r\n}\r\n\r\n', 1, '12997	', '13997', '12979', '13979', '', 'd_s/tr3.png', '', '', '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `ename` varchar(128) NOT NULL,
  `epass` varchar(128) DEFAULT NULL,
  `event` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`ename`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`ename`, `epass`, `event`) VALUES
('d_s', '390b212d0c2289a7edfdc8480d64df7d', 'Data Structs'),
('o_of_1', '7d152f0100978b4ad4a43209a65a62b1', 'O(1)');

-- --------------------------------------------------------

--
-- Table structure for table `numbers`
--

CREATE TABLE IF NOT EXISTS `numbers` (
  `numbers` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `numbers`
--

INSERT INTO `numbers` (`numbers`) VALUES
(0),
(1),
(2),
(3);

-- --------------------------------------------------------

--
-- Table structure for table `o_of_1_participants`
--

CREATE TABLE IF NOT EXISTS `o_of_1_participants` (
  `itrixid` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `degree` varchar(10) DEFAULT NULL,
  `branch` varchar(50) DEFAULT NULL,
  `college` varchar(60) DEFAULT NULL,
  `cno` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`itrixid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `o_of_1_pps`
--

CREATE TABLE IF NOT EXISTS `o_of_1_pps` (
  `itrixid` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `questions` varchar(200) DEFAULT NULL,
  `answers` varchar(200) DEFAULT NULL,
  `options` varchar(100) DEFAULT NULL,
  `score` float DEFAULT NULL,
  `status` int(1) DEFAULT '0',
  PRIMARY KEY (`itrixid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `o_of_1_q`
--

CREATE TABLE IF NOT EXISTS `o_of_1_q` (
  `qno` int(5) NOT NULL AUTO_INCREMENT,
  `question` varchar(5000) DEFAULT NULL,
  `difficulty` int(1) DEFAULT NULL,
  `a` varchar(5000) DEFAULT NULL,
  `b` varchar(5000) DEFAULT NULL,
  `c` varchar(5000) DEFAULT NULL,
  `d` varchar(5000) DEFAULT NULL,
  `e` varchar(5000) DEFAULT NULL,
  `qimg` varchar(5000) DEFAULT NULL,
  `aimg` varchar(5000) DEFAULT NULL,
  `bimg` varchar(500) DEFAULT NULL,
  `cimg` varchar(5000) DEFAULT NULL,
  `dimg` varchar(5000) DEFAULT NULL,
  `eimg` varchar(5000) DEFAULT NULL,
  `ans` int(1) DEFAULT NULL,
  PRIMARY KEY (`qno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `o_of_1_q`
--

INSERT INTO `o_of_1_q` (`qno`, `question`, `difficulty`, `a`, `b`, `c`, `d`, `e`, `qimg`, `aimg`, `bimg`, `cimg`, `dimg`, `eimg`, `ans`) VALUES
(1, 'You have to run an application whose code is of size 1000 bytes. It also needs an additional 500 bytes for I/O. But the size of your main memory is 500 bytes. How will you run the application?', 0, 'Increase the size of main memory', 'Use Virtual Memory', 'Use base register and limit register', 'None of these', '', '', '', '', '', '', '', 1),
(2, 'What will be the output of the following C code statement?\r\n\r\nprintf(“%s”, “ITrix” “Onsite” “Programming”);\r\n', 0, 'ITrixOnsiteProgramming', 'ITrix', 'Programming', 'ITrix Onsite Programming', '', '', '', '', '', '', '', 0),
(3, 'What does the following C expression do?\r\n\r\nx = (x << 1) + x + (x >> 1);\r\n', 0, 'Multiplies x with 4.5', 'Multiplies x with 7', 'Multiplies x with 9', 'Multiplies x with 3.5', '', '', '', '', '', '', '', 3),
(4, 'In how many ways can you form a new rectangle, with 4 rectangles of equal area, but possibly of different dimensions?', 0, '19', '20', '21', '22', '', '', '', '', '', '', '', 2),
(5, 'Let a = b^x, if a = 1296 and b = 6, what is the value of x?', 0, '4', '5', '6', '7', '', '', '', '', '', '', '', 0),
(6, 'If a bear eats 65 pounds of fish every day except every 6th day which it only eats 45 pounds of fish. If the bear continues this, how many pounds of fish will it eat in 200 days?', 0, '12440', '13340', '13440', '12340', '', '', '', '', '', '', '', 3),
(7, 'A number leaves a remainder 0, when divided by 9. What will be the sum of digits of the number reduced to a single digit?', 0, '36', '27', '18', '9', '', '', '', '', '', '', '', 3),
(8, 'A program executes the following statements:\r\n\r\nfork();\r\nfork();\r\nfork();\r\n\r\nWhat will be the total number of child processes created?\r\n', 0, '3', '6', '7', '8', '', '', '', '', '', '', '', 2),
(9, 'A frog is at the bottom of a 30 meter well. Each day he summons enough energy for one 3 meter leap up the well. Exhausted, he then hangs there for the rest of the day. At night, while he is asleep, he slips 2 meters backwards. How many days does it take him to escape from the well?', 0, '10', '26', '28', '27', '', '', '', '', '', '', '', 2),
(10, 'A program X reads in 1000 integers in the range [0...200] representing the scores of 1000 students in a college. It then prints the frequency of odd scores. What would be the best way for X to store the frequencies?', 0, 'An array of 50 numbers', 'An array of 100 numbers', 'An array of 1000 numbers', 'A dynamically allocated array of 1100 numbers', '', '', '', '', '', '', '', 1),
(11, 'Two friends decide to get together; so they start riding bikes towards each other. They plan to meet halfway. Each is riding at 6 MPH. They live 36 miles apart. One of them has a pet carrier pigeon and it starts flying the instant the friends start traveling. The pigeon flies back and forth at 18 MPH between the 2 friends until the friends meet. How many miles does the pigeon travel?', 0, '53', '54', '55', '56', '', '', '', '', '', '', '', 1),
(12, 'Assuming the size of an integer and a pointer as 4 bytes, what is the output of the following code?\r\n\r\n#define R 10\r\n#define C 20\r\nint main()\r\n{\r\n		int (*p)[R][C];\r\n		printf(“%d”, sizeof(*p));\r\n		return 0;\r\n}\r\n', 0, '200', '800', '4', '40', '', '', '', '', '', '', '', 1),
(13, 'Arrange the functions p, q, r and s in the increasing order of asymptotic complexity.\r\n\r\np(n) = 2^n\r\nq(n) = n^(3/2)\r\nr(n) = n log n\r\ns(n) = n^(log n)\r\n', 0, 'r q s p', 'r q p s', 'q r p s', 'q r s p', '', '', '', '', '', '', '', 0),
(14, 'What is the next number in the series?\r\n1, 8, 11, 18, 80, 81, _\r\n', 0, '82', '88', '84', '108', '', '', '', '', '', '', '', 0),
(15, 'Consider the following function\r\n\r\nint foo(int n)\r\n{\r\n	int i, j, k = 0;\r\n	for(int i = n/2; i <= n; i++)\r\n		for(j = 2; j <= n; j = j * 2)\r\n			k = k + n/2;\r\n	return k;\r\n}\r\n\r\nWhat is the asymptotic complexity of the above function?\r\n', 0, 'O(n^2)', 'O(n^2 log n)', 'O(n^3)', 'O(n^3 log n)', '', '', '', '', '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

CREATE TABLE IF NOT EXISTS `participants` (
  `itrixid` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `degree` varchar(10) DEFAULT NULL,
  `branch` varchar(50) DEFAULT NULL,
  `college` varchar(60) DEFAULT NULL,
  `cno` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`itrixid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pps`
--

CREATE TABLE IF NOT EXISTS `pps` (
  `itrixid` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `questions` varchar(200) DEFAULT NULL,
  `answers` varchar(200) DEFAULT NULL,
  `options` varchar(100) DEFAULT NULL,
  `score` float DEFAULT NULL,
  `status` int(1) DEFAULT '0',
  PRIMARY KEY (`itrixid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `q`
--

CREATE TABLE IF NOT EXISTS `q` (
  `qno` int(5) NOT NULL AUTO_INCREMENT,
  `question` varchar(5000) DEFAULT NULL,
  `difficulty` int(1) DEFAULT NULL,
  `a` varchar(5000) DEFAULT NULL,
  `b` varchar(5000) DEFAULT NULL,
  `c` varchar(5000) DEFAULT NULL,
  `d` varchar(5000) DEFAULT NULL,
  `e` varchar(5000) DEFAULT NULL,
  `qimg` varchar(5000) DEFAULT NULL,
  `aimg` varchar(5000) DEFAULT NULL,
  `bimg` varchar(500) DEFAULT NULL,
  `cimg` varchar(5000) DEFAULT NULL,
  `dimg` varchar(5000) DEFAULT NULL,
  `eimg` varchar(5000) DEFAULT NULL,
  `ans` int(1) DEFAULT NULL,
  PRIMARY KEY (`qno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE IF NOT EXISTS `test` (
  `ename` varchar(128) NOT NULL,
  `easy` int(2) DEFAULT NULL,
  `moderate` int(2) DEFAULT NULL,
  `hard` int(2) DEFAULT NULL,
  `easym` int(2) DEFAULT NULL,
  `moderatem` int(2) DEFAULT NULL,
  `hardm` int(2) DEFAULT NULL,
  `instructions` varchar(10000) DEFAULT NULL,
  `neg` float DEFAULT NULL,
  `duration` int(3) DEFAULT NULL,
  PRIMARY KEY (`ename`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`ename`, `easy`, `moderate`, `hard`, `easym`, `moderatem`, `hardm`, `instructions`, `neg`, `duration`) VALUES
('d_s', 10, 10, 10, 1, 2, 4, '1. Don''t Refresh the Page.\r\n2. Don''t Close the Window.\r\n3. Don''t Navigate Away from the Window.\r\n4. Duration of the test will be 45 Minutes.\r\n5. Total No. of Questions : 30\r\n6. There will be negative marking for Wrong answers.', 0.25, 45),
('o_of_1', 15, 0, 0, 1, 0, 0, '1. Don''t Refresh the Page.\r\n2. Don''t Close the Window.\r\n3. Don''t Navigate Away from the Window.\r\n4. No negative marking.\r\n5. You will be given 15 minutes to answer 15 questions.', 0, 15);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
