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

class CursosSerializers(serializers.ModelSerializer):
    class Meta:
        model = Curso
        fields = '__all__'

class UsuariosSerializers(serializers.ModelSerializer):
    class Meta:
        model = Usuario
        fields = '__all__'