from rest_framework import serializers
from .models import *
from django.db.models import fields 

class EstudiantesSerializers(serializers.ModelSerializer):
    class Meta:
        model = Estudiante
        fields = '__all__' 

class ProfesoresSerializers(serializers.ModelSerializer):
    class Meta:
        model = Profesor
        fields = '__all__' 