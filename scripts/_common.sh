#!/bin/bash
# Chargement des helpers YunoHost
#source /usr/share/yunohost/helpers

# Port interne fixe (simple pour un squelette). Pour prod, préférer ynh_find_port.
internal_port=8080

# Nom DB par défaut
thalamus_db="federation"