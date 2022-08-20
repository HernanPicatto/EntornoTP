#!/bin/bash

contar_lineas_vacias(){
        grep -cvP '\S' $1
}

contar_lineas_vacias $1 
