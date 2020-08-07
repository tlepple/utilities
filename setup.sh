#!/bin/bash

##################################################################################################################
# load utilities
##################################################################################################################

. utils.sh

##################################################################################################################
# Input Parameters
##################################################################################################################

case "$1" in
        aws)
           echo "you chose aws"
            ;;
        azure)
           echo "you chose azure"
            ;;
        gcp)
	   echo "you chose gcp"
            ;;
        *)
            echo $"you chose something else... exit this block"
            echo $"example: ./setup.sh aws cdsw_template.json /dev/xvdb"
            exit 0
esac

CLOUD_PROVIDER=$1


##################################################################################################################
# Run the right setup block
##################################################################################################################
case "$CLOUD_PROVIDER" in
        aws)
            echo "execute aws code here... "
#	    . /app/datagen_cloud_env/provider/aws/aws_setup.sh
            echo "calling the log function from utils..."
            log "testing"
            ;;
        azure)
           echo "execute azure code here"
#         . /app/datagen_cloud_env/provider/azure/azure_setup.sh
            ;;
        gcp)
           echo "execute gcp code here"
            ;;
        *)
            echo "you had a different choice... is this block needed?"
	    ;;
esac
