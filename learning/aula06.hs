------- Aula 06: Tuplas -------

-- >> Teoria: Tuplas
-- Media de notas
type NomeAluno = String
type MediaNota = Float
type Aluno = (NomeAluno, MediaNota)
type Turma = [Aluno]

aprovados :: Turma -> Float -> [NomeAluno]
aprovados tma corte = [ nome | (nome, nota)<-tma, nota>=corte ]

-- >> Exercicios
-- Ex. 1: Distancia entre pontos
type Point3D = (Float, Float, Float)

dist3D :: Point3D -> Point3D -> Float
dist3D (x1, y1, z1) (x2, y2, z2) = sqrt(dx^2 + dy^2 + dz^2)
    where
        dx = x1-x2
        dy = y1-y2
        dz = z1-z2
