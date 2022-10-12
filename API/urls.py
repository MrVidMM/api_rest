from django.contrib import admin
from django.urls import re_path
from API import views

urlpatterns = [
        re_path(r'^api/Estudiantes/$',views.EstudiantesViewSet.as_view()),
        re_path(r'^api/Estudiantes/(?P<user>.+)/(?P<contrasena>.+)/$',views.EstudianteBuscarViewSet.as_view()),
        re_path(r'^api/TipoUser/$',views.TipoUserViewSet.as_view()),
        re_path(r'^api/TipoUser/(?P<tipo>.+)/$',views.TipoUserBuscarViewSet.as_view()),
        re_path(r'^api/Profesores/$',views.ProfesoresViewSet.as_view()),
        re_path(r'^api/Profesores/(?P<run>.+)/$',views.ProfesoresBuscarViewSet.as_view()),
        re_path(r'^api/Asignaturas/$',views.AsignaturasViewSet.as_view()),
        re_path(r'^api/Asignaturas/(?P<run>.+)/$',views.AsignaturasBuscarViewSet.as_view()),
        re_path(r'^api/Cursos/$',views.CursosViewSet.as_view()),
        re_path(r'^api/Cursos/(?P<run>.+)/$',views.CursosBuscarViewSet.as_view()),
    ]
    