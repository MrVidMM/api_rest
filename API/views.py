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
		id = self.kwargs['user'] #Recuperamos el parametro ID como argumento
		password = self.kwargs['contrasena'] #Recuperamos el parametro ID como argumento
		return Estudiante.objects.filter(user = id, contrasena = password)