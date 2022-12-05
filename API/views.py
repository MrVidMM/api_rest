from django.shortcuts import render
from .serializers import *
from .models import *
from rest_framework import generics

# Create your views here.
class UsuariosViewSet(generics.ListAPIView):
	queryset = Usuario.objects.all()
	serializer_class = UsuariosSerializers

class UsuarioSesionViewSet(generics.ListAPIView):
	serializer_class = UsuariosSerializers
	def get_queryset(self): #Recupera un elemento desde al ruta
		usuario = self.kwargs['user'] #Recuperamos el parametro ID como argumento
		password = self.kwargs['contrasena'] #Recuperamos el parametro ID como argumento
		#tipo_user = self.kwargs['id_tipo'] #Recuperamos el parametro ID como argumento
		return Usuario.objects.filter(user = usuario, contrasena = password)

class UsuarioRunViewSet(generics.ListAPIView):
	serializer_class = UsuariosSerializers
	def get_queryset(self): 
		run = self.kwargs['run']
		return Usuario.objects.filter(run = run)
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

class AsignaturasProfesorViewSet(generics.ListAPIView):
	serializer_class = AsignaturasSerializers
	def get_queryset(self): #Recupera un elemento desde al ruta
		rut = self.kwargs['run']
		return Asignatura.objects.filter(run = rut)

class AsignaturasBuscarViewSet(generics.ListAPIView):
	serializer_class = AsignaturasSerializers
	def get_queryset(self): #Recupera un elemento desde al ruta
		id = self.kwargs['id_asig']
		return Asignatura.objects.filter(id_asig = id)
class JornadaViewSet(generics.ListAPIView):
	serializer_class = JornadaSerializers
	queryset = Jornada.objects.all()

class JornadaBuscarViewSet(generics.ListAPIView):
	serializer_class = JornadaSerializers
	def get_queryset(self): #Recupera un elemento desde al ruta
		id = self.kwargs['id_jornada'] #Recuperamos el parametro ID como argumento
		return Jornada.objects.filter(id_jornada = id)

class JornadaAsignatura(generics.ListAPIView):
	serializer_class = JornadaSerializers
	def get_queryset(self): #Recupera un elemento desde al ruta
		id = self.kwargs['id_asig'] #Recuperamos el parametro ID como argumento
		return Jornada.objects.filter(id_asig = id)

class SeccionesViewSet(generics.ListAPIView):
	serializer_class = SeccionesSerializers
	queryset = Secciones.objects.all()
class SeccionesJornadaViewSet(generics.ListAPIView):
	serializer_class = SeccionesSerializers
	def get_queryset(self): #Recupera un elemento desde al ruta
		id = self.kwargs['id_jornada'] #Recuperamos el parametro ID como argumento
		return Secciones.objects.filter(id_jornada = id)

class AsistenciaViewSet(generics.ListAPIView):
	serializer_class = AsistenciaSerializers
	queryset = Asistencia.objects.all()

class AsistenciaBuscarViewSet(generics.ListAPIView):
	serializer_class = AsistenciaSerializers
	def get_queryset(self): #Recupera un elemento desde al ruta
		id = self.kwargs['run'] #Recuperamos el parametro ID como argumento
		return Asistencia.objects.filter(run = id)
