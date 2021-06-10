unit DeitosBiblib;	

interface
	uses crt;
	type provas = record
		port:real;
		math:real;
		Conhe:real;
	end;
		aluno = record
			nome:string;
			notas:provas;
			medias:real;
	end;
		alunox = array [1..5] of aluno;

	procedure LeInformacoes(var alunos:alunox);
	
implementation
	procedure LeInformacoes(var alunos:alunox);
	var i,j:integer;
	begin
		writeln('Primeiro quantos alunos você deseja inserir no programa');
		readln(i);
		for j:= 1 to i do
		begin
			writeln('------------Informações do aluno------------');
			writeln('Qual o nome do aluno ',j);
			readln(alunos[j].nome);
			writeln('------------Notas------------');
			writeln('Primeiro qual a sua nota em português ?');
			readln(alunos[j].notas.port);
			writeln('Primeiro qual a sua nota em matematica ?');
			readln(alunos[j].notas.math);
			writeln('Primeiro qual a sua nota em conhecimentos gerais ?');
			readln(alunos[j].notas.conhe);
			alunos[j].medias := (alunos[j].notas.port + alunos[j].notas.math + alunos[j].notas.conhe)/3;
			writeln('A media das notas do aluno ',j,' é : ',alunos[j].medias:0:2);
			if (alunos[j].medias >= 7) and (alunos[j].notas.port >= 5 ) and (alunos[j].notas.math >= 5 ) and (alunos[j].notas.conhe >= 5 ) then
				writeln(alunos[j].nome,' passou !!')
			else
				writeln(alunos[j].nome,' Não passou ;-:');
		end;
	end;

begin

end.
