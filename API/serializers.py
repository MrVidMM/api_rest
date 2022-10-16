from rest_framework import serializers
from .models import *
from django.db.models import fields 

class TipoUserSerializers(serializers.ModelSerializer):
    class Meta:
        model = TipoUser
        fields = '__all__'

class AsignaturasSerializers(serializers.ModelSerializer):
    class Meta:
        model = Asignatura
        fields = '__all__'

class UsuariosSerializers(serializers.ModelSerializer):
    class Meta:
        model = Usuario
        fields = '__all__'

class AsistenciaSerializers(serializers.ModelSerializer):
    class Meta:
        model = Asistencia
        fields = '__all__'
class JornadaSerializers(serializers.ModelSerializer):
    class Meta:
        model = Jornada
        fields = '__all__'

class SeccionesSerializers(serializers.ModelSerializer):
    class Meta:
        model = Secciones
        fields = '__all__'