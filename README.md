# la prova es troba en el directori hostpam19:prova

##prova pam walid
- He creat un fitxer pamaware.py que comprova si el que l'executa es un usuari unix.

- Seguidament he crat un modul pam anomenat pam\_mates.py que fa una pregunta matematica que cal resoldre per superar l'auntenticacio, per fer aixo m'he hagut de descarregar  pam-python-1.0.7.tar.gz i descomprimir-ho; editar línia 201 de: \/usr\/include\/features.h canviant 700 per 600 en la línia  define \_XOPEN_SOURCE 700 i seguidament fer un make del directori src per crear pam_mount.so i aquest copiar-ho a /usr/lib64/security.

- L'imatge te dos usuairs locals, anna i walid, i la contrasenya es el mateix nom d'usuari.

- Finalment he editat el modul chfn per tal que utilizi el modul pam\_mates.

### Per comprovar:


- Comprobar amb python pamaware.py, si el usuari posat existeix o no.

- Com a usuari local, fent un chfn, et preguntara un problema matematic, si el respons correctament , et deixara canviar el teu finger, si falles, no.
