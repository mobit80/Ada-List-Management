with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings; use Ada.Strings;


package body CreateList is -- in file CreateList.adb
   listName: String := "";
   len: Integer:= 0;
   list: array(1..size) of itemType;
   

   procedure AddToList(ListItem: in itemType) is begin 
	  if len >= size then
		Put_Line("overflow, terminating");
	else 
		len := len+1;
		list(len) := ListItem;
		Put("Adding ");
		Put(ListItem);
		Put_Line("");
	end if;
   end AddToList;
   
   procedure PrintList is begin 
	if len = 0 then
		Put_Line("empty");
		else
			for i in 1 .. len loop
		
				Put(list(i));
				Put(" ");
			end loop;
		end if;
   end PrintList;
   
   procedure PrintList(pt: in Integer) is begin
 	Put(list(pt)); -- when used as Put_Line it would throw createlist.adb:29:09: no candidate interpretations match the actuals
 	Put(" ");
   end PrintList;
   
   procedure DeleteList(pt: in Integer) is begin 
  	 for i in pt .. (len-1) loop
   
  		Put("Deleting ");
   		Put(list(pt));
   		Put_Line("");
   	
   		list(i) := list(i+1);
   	end loop;
   	len := len-1;
   end DeleteList;
   
   function ListLength return Integer is 
   begin
        return len;
      end ListLength;

end CreateList;
