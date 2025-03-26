#!/bin/bash  

# Définir les répertoires à sauvegarder  
SOURCE="/home/user/Documents"  
DESTINATION="/home/user/Sauvegardes"  

# Créer un dossier de sauvegarde avec la date  
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")  
BACKUP_FOLDER="${DESTINATION}/backup_${TIMESTAMP}"  
mkdir -p "$BACKUP_FOLDER"  

# Copier les fichiers  
cp -r "$SOURCE"/* "$BACKUP_FOLDER"  

echo "Sauvegarde effectuée à : $BACKUP_FOLDER"  
