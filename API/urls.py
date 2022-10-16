from django.contrib import admin
from django.urls import re_path
from API import views

urlpatterns = [
        re_path(r'^api/Usuarios/$',views.UsuariosViewSet.as_view()),
        re_path(r'^api/Usuarios/(?P<user>.+)/(?P<contrasena>.+)/$',views.UsuarioBuscarViewSet.as_view()),
        re_path(r'^api/TipoUser/$',views.TipoUserViewSet.as_view()),
        re_path(r'^api/TipoUser/(?P<id_tipo>.+)/$',views.TipoUserBuscarViewSet.as_view()),
        re_path(r'^api/Asignaturas/$',views.AsignaturasViewSet.as_view()),
        re_path(r'^api/Asignaturas/(?P<run>.+)/$',views.AsignaturasBuscarViewSet.as_view()),
        re_path(r'^api/Cursos/$',views.CursosViewSet.as_view()),
        re_path(r'^api/Cursos/(?P<id_curso>.+)/$',views.CursosBuscarViewSet.as_view()),
    ]
    