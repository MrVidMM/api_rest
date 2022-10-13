# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Asignatura(models.Model):
    nombre = models.CharField(max_length=100)
    id_asig = models.AutoField(primary_key=True)
    codigo = models.CharField(max_length=10)
    run = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'asignatura'

class Curso(models.Model):
    id_curso = models.AutoField(primary_key=True)
    secciones = models.CharField(max_length=100)
    id_asig = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'curso'

class TipoUser(models.Model):
    id_tipo = models.AutoField(primary_key=True)
    tipo = models.CharField(max_length=30)

    class Meta:
        managed = False
        db_table = 'tipo_user'


class Usuario(models.Model):
    run = models.IntegerField(primary_key=True)
    dv = models.CharField(max_length=1)
    nombre = models.CharField(max_length=30)
    appaterno = models.CharField(max_length=30)
    apmaterno = models.CharField(max_length=30)
    user = models.CharField(max_length=30)
    contrasena = models.CharField(max_length=30)
    id_tipo = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'usuario'
