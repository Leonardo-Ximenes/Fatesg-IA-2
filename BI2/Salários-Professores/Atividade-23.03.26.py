import pandas as pd

# 1. Criando o DataFrame com os dados da imagem
data = {
    'UF': ['MS', 'MA', 'PA', 'RR', 'MT', 'PB', 'RN', 'AP', 'DF', 'SE', 'TO', 'PE', 'AL', 'ES', 'AM', 'SP', 'AC', 'GO', 'RO', 'RS', 'SC', 'PI', 'BA', 'CE', 'PR', 'MG'],
    'Salario_inicial': [13007.12, 8452.03, 8289.86, 7700.47, 7343.44, 6944.09, 6814.88, 6600.98, 6427.71, 6176.76, 6130.70, 5841.91, 5767.15, 5685.97, 5631.18, 5565.00, 5370.35, 5160.49, 5118.41, 5111.05, 5026.80, 4984.17, 4965.24, 4961.73, 4920.55, 4867.97],
    'Regiao': ['Centro-Oeste', 'Nordeste', 'Norte', 'Norte', 'Centro-Oeste', 'Nordeste', 'Nordeste', 'Norte', 'Centro-Oeste', 'Nordeste', 'Norte', 'Nordeste', 'Nordeste', 'Sudeste', 'Norte', 'Sudeste', 'Norte', 'Centro-Oeste', 'Norte', 'Sul', 'Sul', 'Nordeste', 'Nordeste', 'Nordeste', 'Sul', 'Sudeste']
}

df = pd.DataFrame(data)

# --- ANÁLISES ---

# O estado com menor salário
menor_salario_estado = df.loc[df['Salario_inicial'].idxmin()]

# O estado com o maior salário
maior_salario_estado = df.loc[df['Salario_inicial'].idxmax()]

# Posição em que o estado de Goiás (GO) está (ordenado do maior para o menor)
df_sorted = df.sort_values(by='Salario_inicial', ascending=False).reset_index(drop=True)
posicao_go = df_sorted[df_sorted['UF'] == 'GO'].index[0] + 1

# Média salarial entre todos os estados
media_geral = df['Salario_inicial'].mean()

# Agrupamento por região para as demais métricas
agrupado_regiao = df.groupby('Regiao')['Salario_inicial']
media_por_regiao = agrupado_regiao.mean()
maior_por_regiao = agrupado_regiao.max()
menor_por_regiao = agrupado_regiao.min()

# Região com maior e menor média salarial
regiao_maior_media = media_por_regiao.idxmax()
regiao_menor_media = media_por_regiao.idxmin()

# --- RESULTADOS ---

print(f"1. Estado com menor salário: {menor_salario_estado['UF']} (R$ {menor_salario_estado['Salario_inicial']:.2f})")
print(f"2. Estado com maior salário: {maior_salario_estado['UF']} (R$ {maior_salario_estado['Salario_inicial']:.2f})")
print(f"3. Posição de Goiás (GO): {posicao_go}º lugar")
print(f"4. Média salarial geral: R$ {media_geral:.2f}")
print("\n--- Métricas por Região ---")
print("5. Média salarial por região:\n", media_por_regiao)
print("\n6. Maior salário por região:\n", maior_por_regiao)
print("\n7. Menor salário por região:\n", menor_por_regiao)
print(f"\n8. Região com maior média: {regiao_maior_media}")
print(f"9. Região com menor média: {regiao_menor_media}")