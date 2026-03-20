#!/bin/bash

# ============================================
# Script to annotate bacterial genome with Prokka
# ============================================

# Rutas
INPUT="./results/spades/contigs.fasta"
OUT_DIR="./results/prokka"
PREFIX="strain_annotation"

# Crear carpeta de salida
mkdir -p $OUT_DIR

# Ejecutar Prokka
prokka \
  --outdir $OUT_DIR \
  --prefix $PREFIX \
  --cpus 4 \
  $INPUT

echo "✅ Annotation completed. Results in $OUT_DIR"
