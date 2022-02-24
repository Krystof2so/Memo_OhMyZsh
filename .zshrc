##########
## PATH ##
##########
# $PATH à définir sur GNU/Linux Debian.
export PATH=$PATH:/usr/sbin
# $PATH user
export PATH=$PATH:~/.local/bin
# Path pour votre installation de 'oh-my-zsh'.
export ZSH="/home/krystof/.oh-my-zsh"

##########################
##  Définition du thème ##
##########################
# Cf. https://github.com/ohmyzsh/ohmyzsh/wiki/Themes pour une liste des thèmes
# Le thème choisi (ici mon préféré)
ZSH_THEME="jonathan"
# Si nous voulions un thème aléatoire parmi ~/.oh-my-zsh/themes/
#ZSH_THEME="random"
# A ajouter si nous voulions des thèmes aléaltoires parmi 
# des thèmes définis
# ZSH_THEME_RANDOM_CANDIDATES=( "jonathan" "nom_thème" nom_thème "etc" )

################
## Complétion ##
################
# Décommentez la ligne suivante pour utiliser la complétion 
# sensible à la casse.
#CASE_SENSITIVE="true"
# Décommentez la ligne suivante pour utiliser la complétion sensible au 
# trait d'union.
HYPHEN_INSENSITIVE="true"
# Décommentez la ligne suivante pour afficher des points rouges en attendant
# la fin de la complétion.
COMPLETION_WAITING_DOTS="True"

#################
## Mise à jour ##
#################
# Décommentez l'une des lignes suivantes pour changer le comportement de la
# mise à jour automatique.
# zstyle ':omz:update' mode disabled  # désactiver la mise à jour automatique
zstyle ':omz:update' mode auto      # mettre à jour automatiquement sans demander
# zstyle ':omz:update' mode reminder  # me rappeler de mettre à jour quand il est temps
# Décommentez la ligne suivante pour modifier la fréquence de mise à jour 
# automatique (en jours).
# zstyle ':omz:update' frequency 13

###############################
## Quelques caractéristiques ##
###############################
# Décommentez la ligne suivante pour désactiver la couleur dans ls
# DISABLE_LS_COLORS="true"
# Décommentez la ligne suivante pour désactiver le réglage automatique du 
# titre du terminal
# DISABLE_AUTO_TITLE="true"
# Décommentez la ligne suivante pour activer l'autocorrection des commandes
ENABLE_CORRECTION="true"
# Décommentez la ligne suivante si vous souhaitez modifier l'horodatage de 
# l'exécution de la commande affichée en sortie de l'historique des commandes. 
# Trois formats de sortie possibles:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

#################
## Les plugins ##
#################
# Quels plugins souhaitez-vous charger ?
# Liste des plugins: ~/.oh-my-zsh/plugins/
# Format pour ajout des plugins: plugins=(plugin1 plugin2 etc)
# Attention: trop de plugins ralenti le démarrage du shell
plugins=(git zsh-autosuggestions pip poetry)
##################################
## Paramétrages complémentaires ##
##################################
source $ZSH/oh-my-zsh.sh
# Définir manuellement l'environnement linguistique
# export LANG=en_US.UTF-8
# Editeur préféré pour les sessions locales et distantes:
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

###############
## Mes alias ##
###############
alias aptiup="su -c 'aptitude update'"
alias aptitude="su -c 'aptitude'"
alias pyth="python3"
alias pyth10="python3.10"
alias python="python3"
alias adios="systemctl poweroff"
alias lsla="lsd -la"

##########################
## Programmation Python ##
##########################
# Pour la création avec pipenv d'un environnement virtuel dans le répertoire du projet.
# Afin d'éviter les problèmes liés aux changements de chemins.
PIPENV_VENV_IN_PROJECT=1
# Pour ne plus écrire les fichiers Bytecode (.pyc) sur le disque dur
PYTHONDONTWRITEBYTECODE=1
