/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT TOP 1000 [id_pelicula]
      ,[nombre_pelicula]
      ,[web_pelicula]
      ,[descripcion]
      ,[id_genero]
      ,[anio]
  FROM [parcial2_dai5].[dbo].[Peliculas]