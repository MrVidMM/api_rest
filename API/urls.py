from django.contrib import admin
from django.urls import re_path
from API import views

urlpatterns = [
        re_path(r'^api/Estudiantes/$',views.EstudiantesViewSet.as_view()),
        re_path(r'api/personas/(?P<id>.+)/$',views.EstudianteBuscarViewSet.as_view()),
    ]
    