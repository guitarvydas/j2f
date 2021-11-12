:- use_module(library(http/json)).
%:- open("fb.json",read,Strm),json_read(Strm,Final),write(user_output,Final).
:- open("fb.json",read,Strm),
   json_read_dict(Strm,Diagrams),
   write(user_output,Diagrams),
   length(Diagrams,L),
   nl(user_output),
   nl(user_output),
   write(user_output,L).


fetchFB(ArrayOfDiagrams):-
    open("fb.json",read,Strm),
    json_read_dict(Strm,ArrayOfDiagrams).

    
