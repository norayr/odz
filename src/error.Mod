MODULE error;

TYPE
  err = POINTER TO ARRAY OF CHAR;

PROCEDURE New*(str: ARRAY OF CHAR): err;
VAR e: err;
BEGIN
  NEW(e, LEN(str));
  COPY(str, e^);
  RETURN e
END New;

END error.
