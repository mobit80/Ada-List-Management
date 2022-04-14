-- Lab 1 in fle Lab1.adb
with Ada.Text_IO; use Ada.Text_IO;
with CreateList;

procedure Lab1  is -- in file Lab1.adb
-- declartions

   package IIO is new Ada.Text_IO.Integer_IO(Integer); use IIO;
  
   pt, size, length: Integer;
   
begin
	put("enter size for 'C' option: ");
   	get(size);
   	Put_Line(Integer'Image(size));
   declare
   	 
   procedure Put_Integer (Value: Integer) is 
	begin
		IIO.Put(Value);
	end Put_Integer;
   
     
      package Clist is new CreateList("LabList", size, Integer, Put_Integer); use Clist;   -- Allocate in stack;
  	-- Create list
		-- MakeList( intList, 20, Integer);  
   begin
   	pt:=0;
	Clist.PrintList;  -- [ null ]
	Clist.AddToList(12);  
	Clist.AddToList(3);  
	Clist.AddToList(7);  
	Clist.PrintList;  -- [12, 3, 7].  Note items appear in the order placed in the list.
	
	Put_Line("");

	length := ListLength;
	for pt in 1..length loop
		PrintList(pt);  -- produces [12, 3, 7].  
	end loop;
	
	Put_Line("");
	
	Clist.DeleteList(2);
	Clist.PrintList;  -- [12, 7]
   end;
-- CList no longer in scope.  Space popped/reclaimed automatically from stack.

end Lab1;
