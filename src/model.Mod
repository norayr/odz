MODULE model;

CONST 
  StatusCreated = "Created";
  StatusUpdated = "Updated";

TYPE
      string*      = ARRAY 256 OF CHAR;

       FileStatus* = string;

      fileMetadata = RECORD
              Path : string;
            Status : FileStatus;
  ModificationTime : string;
       GoToStaging : BOOLEAN;
      END;
   
   fileMetadataArr* = POINTER TO ARRAY OF fileMetadata;

      commitHistory = RECORD
            Version : string; (* computed *)
            Date, Message: string;
      END;

PROCEDURE Len*(VAR arr: fileMetadataArr): LONGINT;
BEGIN
  RETURN LEN(arr^)
END Len;

PROCEDURE Swap*(VAR arr: fileMetadataArr; i, j: INTEGER);
VAR tmp: fileMetadata;
BEGIN
  tmp := arr[j];
  arr[j] := arr[i];
  arr[i] := tmp;
END Swap;

PROCEDURE Less*(VAR arr: fileMetadataArr; i, j: INTEGER): BOOLEAN;
BEGIN
  RETURN arr[i].Path > arr[j].Path
END Less;




END model.
