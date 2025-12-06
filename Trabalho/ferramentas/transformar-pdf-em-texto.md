# Transformar PDF em texto com pdftotext
O pdftotext é uma ferramenta de linha de comando para converter arquivos PDF em texto simples. Faz parte do pacote poppler-utils, disponível na maioria das distribuições Linux e também no Windows via Cygwin ou WSL.
## Instalação
No Ubuntu/Debian:
```bash
sudo apt-get update
sudo apt-get install poppler-utils
```

## Preservar layout, páginas específicas, encoding

Algumas opções importantes do pdftotext:

Preservar layout de colunas/tabelas o melhor possível:

pdftotext -layout entrada.pdf saida.txt​

Extrair apenas um intervalo de páginas (ex.: da 2 à 5):

pdftotext -f 2 -l 5 entrada.pdf saida.txt​

Enforçar fonte com largura fixa (útil para alinhamento em tabelas simples):

pdftotext -layout -fixed 8 entrada.pdf saida.txt​

Definir encoding de saída (quando tiver problema de acentos):

pdftotext -enc UTF-8 entrada.pdf saida.txt​

A sintaxe geral é:

pdftotext [opções] arquivo.pdf [arquivo.txt]​

Se arquivo.txt não for informado, ele gera automaticamente arquivo.txt com o mesmo “basename” do PDF.​

Outras ferramentas úteis do poppler-utils
Além do pdftotext, o pacote traz:

pdfinfo – mostra metadados, número de páginas, etc.:

pdfinfo arquivo.pdf​

pdfimages – extrai imagens incorporadas:

pdfimages -list arquivo.pdf​

pdftohtml, pdftoppm, pdftops, pdfunite, pdfseparate – para converter para HTML, imagens, PS, unir ou separar PDFs.​

Para fluxos de trabalho em shell (por exemplo, ETL “pobre” de relatórios PDF), tende a ser mais robusto usar pdftotext com -layout para gerar um TXT razoavelmente estruturado e depois tratar com awk/python.​

## Exemplo prático
Converter um PDF dicionario-de-dados-icm.pdf em texto, preservando o layout e extraindo apenas as páginas 1 a 2:
```bash
pdftotext -layout -f 1 -l 2 dicionario-de-dados-icm.pdf dicionario-de-dados-icm.txt
```
