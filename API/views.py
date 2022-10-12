from django.shortcuts import render
from .serializers import *
from .models import *
from rest_framework import generics

# Create your views here.

class EstudiantesViewSet(generics.ListAPIView):
    serializer_class = EstudiantesSerializers
    queryset = Estudiante.objects.all()

class EstudianteBuscarViewSet(generics.ListAPIView):
	serializer_class = EstudiantesSerializers
	def get_queryset(self): #Recupera un elemento desde al ruta
		usuario = self.kwargs['user'] #Recuperamos el parametro ID como argumento
		password = self.kwargs['contrasena'] #Recuperamos el parametro ID como argumento
		return Estudiante.objects.filter(user = usuario, contrasena = password)

class TipoUserViewSet(generics.ListAPIView):
	serializer_class = TipoUserSerializers
	queryset =TipoUser.objects.all()

class TipoUserBuscarViewSet(generics.ListAPIView):
	serializer_class = TipoUserSerializers
	def get_queryset(self): #Recupera un elemento desde al ruta
		id = self.kwargs['tipo'] #Recuperamos el parametro ID como argumento
		return TipoUser.objects.filter(tipo = id)

class ProfesoresViewSet(generics.ListAPIView):
	serializer_class = ProfesoresSerializers
	queryset = Profesor.objects.all()

class ProfesoresBuscarViewSet(generics.ListAPIView):
	serializer_class = ProfesoresSerializers
	def get_queryset(self): #Recupera un elemento desde al ruta
		id = self.kwargs['run'] #Recuperamos el parametro ID como argumento
		return Profesor.objects.filter(run = id)

class AsignaturasViewSet(generics.ListAPIView):
	serializer_class = AsignaturasSerializers
	queryset = Asignatura.objects.all()

class AsignaturasBuscarViewSet(generics.ListAPIView):
	serializer_class = AsignaturasSerializers
	def get_queryset(self): #Recupera un elemento desde al ruta
		id = self.kwargs['codigo'] #Recuperamos el parametro ID como argumento
		return Asignatura.objects.filter(codigo = id)

class CursosViewSet(generics.ListAPIView):
	serializer_class = CursosSerializers
	queryset = Curso.objects.all()

class CursosBuscarViewSet(generics.ListAPIView):
	serializer_class = CursosSerializers
	def get_queryset(self): #Recupera un elemento desde al ruta
		id = self.kwargs['codigo'] #Recuperamos el parametro ID como argumento
		return Curso.objects.filter(codigo = id)