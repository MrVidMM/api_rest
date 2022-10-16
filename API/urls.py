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
        re_path(r'^api/Asistencia/$',views.AsistenciaViewSet.as_view()),
        re_path(r'^api/Asistencia/(?P<id_asis>.+)/$',views.AsistenciaBuscarViewSet.as_view()),
        re_path(r'^api/Jornada/$',views.JornadaViewSet.as_view()),
        re_path(r'^api/Jornada/(?P<id_jornada>.+)/$',views.JornadaBuscarViewSet.as_view()),
        re_path(r'^api/Secciones/$',views.SeccionesViewSet.as_view()),
        re_path(r'^api/Secciones/(?P<id_seccion>.+)/$',views.SeccionesBuscarViewSet.as_view()),
        
    ]
    