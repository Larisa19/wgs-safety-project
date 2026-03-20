#!/bin/bash

# ============================================
# Script to assembly bacteria genome with SPADES
# ============================================

# Rutas
INPUT_DIR="./results/trimmed"
OUTPUT_DIR="./results/spades"
THREADS=4

# Crear carpeta de salida
mkdir -p $OUTPUT_DIR

# Ejecutar SPAdes
spades.py \
  -1 $INPUT_DIR/SRR2584863_1_paired.fastq.gz \
  -2 $INPUT_DIR/SRR2584863_2_paired.fastq.gz \
  -t $THREADS \
  -o $OUTPUT_DIR

echo "✅ Assembly ready. Contigs in $OUTPUT_DIR/contigs.fasta"
