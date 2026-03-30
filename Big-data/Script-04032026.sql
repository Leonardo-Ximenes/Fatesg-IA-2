INSERT INTO public.fornecedores (nome_fornecedor, cnpj) VALUES('Leonardo', '12584688000198');
INSERT INTO public.fornecedores (nome_fornecedor, cnpj) VALUES('Karem', '58125364000185');
INSERT INTO public.fornecedores (nome_fornecedor, cnpj) VALUES('Melissa', '12465987000135');
INSERT INTO public.fornecedores (nome_fornecedor, cnpj) VALUES('Vitória', '25789465000132');
INSERT INTO public.fornecedores (nome_fornecedor, cnpj) VALUES('Nicolas', '58674588000156');
INSERT INTO public.fornecedores (nome_fornecedor, cnpj) VALUES('Gustavo', '46857255000139');
INSERT INTO public.fornecedores (nome_fornecedor, cnpj) VALUES('Walisson', '68478299000154');
INSERT INTO public.fornecedores (nome_fornecedor, cnpj) VALUES('Ujeverson', '68459155000170');
INSERT INTO public.fornecedores (nome_fornecedor, cnpj) VALUES('Marco', '67589244000132');
INSERT INTO public.fornecedores (nome_fornecedor, cnpj) VALUES('Hudsoney', '15247688000136')

INSERT INTO public.produtos ( nome_produto, valor_unitario) VALUES('Panela', 20);
INSERT INTO public.produtos ( nome_produto, valor_unitario) VALUES('Bombril', 10);
INSERT INTO public.produtos ( nome_produto, valor_unitario) VALUES('Iphone 15', 20);
INSERT INTO public.produtos ( nome_produto, valor_unitario) VALUES('Sansumg S25', 4200);
INSERT INTO public.produtos ( nome_produto, valor_unitario) VALUES('Brinco', 100);
INSERT INTO public.produtos ( nome_produto, valor_unitario) VALUES('Camisa', 150);
INSERT INTO public.produtos ( nome_produto, valor_unitario) VALUES('Mochila', 200);
INSERT INTO public.produtos ( nome_produto, valor_unitario) VALUES('Blush', 60);
INSERT INTO public.produtos ( nome_produto, valor_unitario) VALUES('Anel', 2000);
INSERT INTO public.produtos ( nome_produto, valor_unitario) VALUES('Cueca', 25);

INSERT INTO public.categorias_produtos (nome_categoria) VALUES( 'samsung');
INSERT INTO public.categorias_produtos (nome_categoria) VALUES( 'Apple');
INSERT INTO public.categorias_produtos (nome_categoria) VALUES( 'Acessório de mão');
INSERT INTO public.categorias_produtos (nome_categoria) VALUES( 'Acessório de orelha');
INSERT INTO public.categorias_produtos (nome_categoria) VALUES( 'Maquiagem');
INSERT INTO public.categorias_produtos (nome_categoria) VALUES( 'Roupa íntima');
INSERT INTO public.categorias_produtos (nome_categoria) VALUES( 'Bolsas');
INSERT INTO public.categorias_produtos (nome_categoria) VALUES( 'Roupa');
INSERT INTO public.categorias_produtos (nome_categoria) VALUES( 'Utensílio para louça');
INSERT INTO public.categorias_produtos (nome_categoria) VALUES( 'cozinha');

UPDATE public.fornecedores SET nome_fornecedor='Karem', cnpj='12584688000198' WHERE id_fornecedor=2;
UPDATE public.fornecedores SET nome_fornecedor='Leonardo', cnpj='58125364000185' WHERE id_fornecedor=8;
UPDATE public.fornecedores SET nome_fornecedor='Vitória', cnpj='12465987000135' WHERE id_fornecedor=7;
UPDATE public.fornecedores SET nome_fornecedor='Gustavo', cnpj='46857255000189' WHERE id_fornecedor=3;
UPDATE public.fornecedores SET nome_fornecedor='Melissa', cnpj='25789465000132' WHERE id_fornecedor=6;

UPDATE public.produtos SET nome_produto='Panela 7', valor_unitario=21, id_fornecedor=0, id_categoria_produtos=0 WHERE id_produto=8;
UPDATE public.produtos SET nome_produto='Iphone 15', valor_unitario=3600, id_fornecedor=0, id_categoria_produtos=0 WHERE id_produto=4;
UPDATE public.produtos SET nome_produto='Sansumg S25', valor_unitario=6000, id_fornecedor=0, id_categoria_produtos=0 WHERE id_produto=1;
UPDATE public.produtos SET nome_produto='Blush', valor_unitario=50, id_fornecedor=0, id_categoria_produtos=0 WHERE id_produto=3;
UPDATE public.produtos SET nome_produto='Cueca', valor_unitario=30, id_fornecedor=0, id_categoria_produtos=0 WHERE id_produto=4;


UPDATE public.categorias_produtos SET nome_categoria='1', valor_unitario=0 WHERE id_categoria=1 ;
UPDATE public.categorias_produtos SET nome_categoria='2', valor_unitario=0 WHERE id_categoria=2 ;
UPDATE public.categorias_produtos SET nome_categoria='3', valor_unitario=0 WHERE id_categoria=3 ;
UPDATE public.categorias_produtos SET nome_categoria='4', valor_unitario=0 WHERE id_categoria=4 ;
UPDATE public.categorias_produtos SET nome_categoria='5', valor_unitario=0 WHERE id_categoria=5 ;


DELETE FROM public.categorias_produtos WHERE id_categoria=6;
DELETE FROM public.categorias_produtos WHERE id_categoria=5;
DELETE FROM public.categorias_produtos WHERE id_categoria=4;
DELETE FROM public.categorias_produtos WHERE id_categoria=3;
DELETE FROM public.categorias_produtos WHERE id_categoria=2;


DELETE FROM public.produtos WHERE id_produto=9;
DELETE FROM public.produtos WHERE id_produto=8;
DELETE FROM public.produtos WHERE id_produto=7;
DELETE FROM public.produtos WHERE id_produto=6;
DELETE FROM public.produtos WHERE id_produto=5;


DELETE FROM public.fornecedores WHERE id_fornecedor=1;
DELETE FROM public.fornecedores WHERE id_fornecedor=9;
DELETE FROM public.fornecedores WHERE id_fornecedor=2;
DELETE FROM public.fornecedores WHERE id_fornecedor=8;
DELETE FROM public.fornecedores WHERE id_fornecedor=5;
