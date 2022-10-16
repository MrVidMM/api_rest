from django.shortcuts import render
from .serializers import *
from .models import *
from rest_framework import generics

# Create your views here.

class UsuariosViewSet(generics.ListAPIView):
	queryset = Usuario.objects.all()
	serializer_class = UsuariosSerializers

class UsuarioBuscarViewSet(generics.ListAPIView):
	serializer_class = UsuariosSerializers
	def get_queryset(self): #Recupera un elemento desde al ruta
		usuario = self.kwargs['user'] #Recuperamos el parametro ID como argumento
		password = self.kwargs['contrasena'] #Recuperamos el parametro ID como argumento
		#tipo_user = self.kwargs['id_tipo'] #Recuperamos el parametro ID como argumento
		return Usuario.objects.filter(user = usuario, contrasena = password)
class TipoUserViewSet(generics.ListAPIView):
	serializer_class = TipoUserSerializers
	queryset =TipoUser.objects.all()

class TipoUserBuscarViewSet(generics.ListAPIView):
	serializer_class = TipoUserSerializers
	def get_queryset(self): #Recupera un elemento desde al ruta
		id = self.kwargs['id_tipo'] #Recuperamos el parametro ID como argumento
		return TipoUser.objects.filter(id_tipo = id)

class AsignaturasViewSet(generics.ListAPIView):
	serializer_class = AsignaturasSerializers
	queryset = Asignatura.objects.all()

class AsignaturasBuscarViewSet(generics.ListAPIView):
	serializer_class = AsignaturasSerializers
	def get_queryset(self): #Recupera un elemento desde al ruta
		rut = self.kwargs['run']
		return Asignatura.objects.filter(run = rut)

class CursosViewSet(generics.ListAPIView):
	serializer_class = CursosSerializers
	queryset = Curso.objects.all()

class CursosBuscarViewSet(generics.ListAPIView):
	serializer_class = CursosSerializers
	def get_queryset(self): #Recupera un elemento desde al ruta
		id = self.kwargs['id_curso'] #Recuperamos el parametro ID como argumento
		return Curso.objects.filter(id_curso = id)