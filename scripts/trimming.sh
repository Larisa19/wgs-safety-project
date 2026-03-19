#!/bin/bash

# ============================================
# Script para trimming de reads paired-end
# usando Trimmomatic 0.40
# ============================================

# Rutas dentro del proyecto
TRIMMOMATIC_JAR="./scripts/trimmomatic-0.40.jar"
ADAPTERS="./scripts/adapters/TruSeq3-PE.fa"

RAW_DIR="./data/raw"
OUT_DIR="./results/trimmed"
THREADS=4

# Crear carpeta de resultados si no existe
mkdir -p $OUT_DIR

# Ejecutar Trimmomatic PE
java -jar $TRIMMOMATIC_JAR PE \
  -threads $THREADS \
  $RAW_DIR/SRR2584863_1.fastq.gz $RAW_DIR/SRR2584863_2.fastq.gz \
  $OUT_DIR/SRR2584863_1_paired.fastq.gz $OUT_DIR/SRR2584863_1_unpaired.fastq.gz \
  $OUT_DIR/SRR2584863_2_paired.fastq.gz $OUT_DIR/SRR2584863_2_unpaired.fastq.gz \
  ILLUMINACLIP:$ADAPTERS:2:30:10 \
  LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

echo "✅ Trimming completado. Paired-end reads en $OUT_DIR"
