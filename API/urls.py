from django.contrib import admin
from django.urls import re_path
from API import views
from rest_framework.urlpatterns import format_suffix_patterns
from django.views.decorators.csrf import csrf_exempt
urlpatterns = [
        re_path(r'^api/Usuarios/$',csrf_exempt(views.UsuariosViewSet.as_view())),
        re_path(r'^api/Usuarios/(?P<user>.+)/(?P<contrasena>.+)/$',csrf_exempt(views.UsuarioSesionViewSet.as_view())),
        re_path(r'^api/Usuarios/(?P<run>.+)/$',csrf_exempt(views.UsuarioRunViewSet.as_view())),
        re_path(r'^api/TipoUser/$',csrf_exempt(views.TipoUserViewSet.as_view())),
        re_path(r'^api/TipoUser/(?P<id_tipo>.+)/$',csrf_exempt(views.TipoUserBuscarViewSet.as_view())),
        re_path(r'^api/Asignaturas/$',csrf_exempt(views.AsignaturasViewSet.as_view())),
        re_path(r'^api/AsignaturasRun/(?P<run>.+)/$',csrf_exempt(views.AsignaturasProfesorViewSet.as_view())),
        re_path(r'^api/Asignatura/(?P<id_asig>.+)/$',csrf_exempt(views.AsignaturasBuscarViewSet.as_view())),
        re_path(r'^api/Jornada/$',csrf_exempt(views.JornadaViewSet.as_view())),
        re_path(r'^api/Jornada/(?P<id_jornada>.+)/$',csrf_exempt(views.JornadaBuscarViewSet.as_view())),
        re_path(r'^api/JornadaAsignatura/(?P<id_asig>.+)/$',csrf_exempt(views.JornadaAsignatura.as_view())),
        re_path(r'^api/Secciones/$',csrf_exempt(views.SeccionesViewSet.as_view())),
        re_path(r'^api/Secciones/(?P<id_jornada>.+)/$',csrf_exempt(views.SeccionesJornadaViewSet.as_view())),
        re_path(r'^api/Asistencia/$',csrf_exempt(views.AsistenciaViewSet.as_view())),
        re_path(r'^api/Asistencia/(?P<run>.+)/$',csrf_exempt(views.AsistenciaBuscarViewSet.as_view())),
        re_path(r'^api/AsistenciaMod/(?P<run>.+)/$',csrf_exempt(views.AsistenciaModificarViewSet.as_view())),
        
    ]

urlpatterns=format_suffix_patterns(urlpatterns)
    