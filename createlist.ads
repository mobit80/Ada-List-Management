generic   -- in file CreateList.ads
	name: String:= "";
	size: Integer;
	type itemType is private;
	with procedure Put(Value : itemType);
	
package CreateList is  -- export the following behavior.
	procedure AddToList( listItem: in itemType);
	procedure PrintList; -- Ada does allows but not require empty ( ).
	procedure PrintList(pt: in integer);
	procedure DeleteList(pt: in integer);
	function ListLength return integer;  -- Ada does allows but not require empty ( ).
End CreateList;


