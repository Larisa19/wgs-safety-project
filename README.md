# WGS Safety Assessment Project

This repository contains a reproducible workflow for analyzing whole genome sequencing (WGS) data of bacterial strains for research and safety assessment purposes.

## Project Structure

- `data/raw/` – Raw sequencing reads (FASTQ, not included in repo due to size)
- `results/` – Analysis outputs (QC, trimmed reads, assembly, annotations)
- `scripts/` – Scripts used for preprocessing and analysis

## Requirements

The following bioinformatics tools are required:

- FastQC – quality control of raw sequencing reads
- Trimmomatic 0.40 – read trimming (`scripts/run_trimming.sh`)
- SPAdes – genome assembly
- Prokka – genome annotation

Environment: Unix-based system, Java installed for Trimmomatic.

## Quality Control

Quality control was performed using FastQC to evaluate sequencing read quality, GC content, and potential adapter contamination.

### Quality Control Summary

FastQC analysis indicated:

- High overall read quality, with minor drops at read ends (yellow)
- GC content mostly within expected range, no signs of contamination
- Low-level adapter sequences detected

These minor issues can be addressed with trimming. Overall, reads are suitable for downstream analysis for genome assembly, annotation, and safety assessment.

## Read Trimming

Trimmomatic 0.40 was used to remove low-quality bases and adapter sequences.  
The trimming script is located at:

`scripts/run_trimming.sh`

Paired-end reads after trimming are stored in:

`results/trimmed/`

## Notes

- Raw FASTQ files are **not included** in this repository due to size limits (>100 MB).  
- This workflow demonstrates a reproducible pipeline suitable for bacterial WGS safety assessment.
