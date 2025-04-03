import pandas as pd
gene_cols = ['gene_description', 'gene_nomenclature_authority_identifier', 'gene_symbol', 'gene_synonyms_0', 'gene_synonyms_1', 'gene_nomenclature_authority_identifier', 'query_0']
mel_ana_GSC_ortholog_df = pd.read_csv('mel_ana_ortholog.tsv', sep = '\t', usecols = gene_cols) #use pd.read_csv instead of read_tables bc it is going to be deprecated soon
