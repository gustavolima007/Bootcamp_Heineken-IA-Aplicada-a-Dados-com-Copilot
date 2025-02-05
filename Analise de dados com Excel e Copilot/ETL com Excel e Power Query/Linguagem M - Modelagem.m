let
    Fonte = Excel.Workbook(File.Contents("C:\Github\Bootcamp_Heineken-IA-Aplicada-a-Dados-com-Copilot\Analise de dados com Excel e Copilot\ETL com Excel e Power Query\Datasets\nintendo-sentind-packages-dados.xlsx"), null, true),
    #"SAP-EXTRACT_Sheet" = Fonte{[Item="SAP-EXTRACT",Kind="Sheet"]}[Data],
    #"Cabeçalhos Promovidos" = Table.PromoteHeaders(#"SAP-EXTRACT_Sheet", [PromoteAllScalars=true]),
    #"Tipo Alterado" = Table.TransformColumnTypes(#"Cabeçalhos Promovidos",{{"Package Id", type any}, {"Game", type text}, {"Send Date", type any}, {"Region", type text}, {"Order Status", type text}, {"E-commerce", type text}, {"Stock Quantity", type any}, {"Preço Unit Price", type text}, {"Store Manager", type text}, {"Batch", type text}, {"Age Rating", type text}, {"Publisher", type text}}),
    #"Colunas Removidas" = Table.RemoveColumns(#"Tipo Alterado",{"Package Id"}),
    #"Linhas Filtradas" = Table.SelectRows(#"Colunas Removidas", each ([Game] <> null and [Game] <> "---" and [Game] <> "----" and [Game] <> "-----")),
    #"Dividir Coluna por Delimitador" = Table.SplitColumn(#"Linhas Filtradas", "Game", Splitter.SplitTextByEachDelimiter({"-"}, QuoteStyle.Csv, true), {"Game.1", "Game.2"}),
    #"Colunas Renomeadas" = Table.RenameColumns(#"Dividir Coluna por Delimitador",{{"Game.1", "Game_Name"}, {"Game.2", "Console"}}),
    #"Valor Substituído" = Table.ReplaceValue(#"Colunas Renomeadas","EN","English",Replacer.ReplaceText,{"Region"}),
    #"Valor Substituído1" = Table.ReplaceValue(#"Valor Substituído","PT","Portuguese",Replacer.ReplaceText,{"Region"}),
    #"Valor Substituído2" = Table.ReplaceValue(#"Valor Substituído1","JP","Japonese",Replacer.ReplaceText,{"Region"}),
    #"Tipo Alterado1" = Table.TransformColumnTypes(#"Valor Substituído2",{{"Stock Quantity", Int64.Type}}),
    #"Valor Substituído3" = Table.ReplaceValue(#"Tipo Alterado1","$","",Replacer.ReplaceText,{"Preço Unit Price"}),
    #"Valor Substituído4" = Table.ReplaceValue(#"Valor Substituído3",".",",",Replacer.ReplaceText,{"Preço Unit Price"}),
    #"Tipo Alterado2" = Table.TransformColumnTypes(#"Valor Substituído4",{{"Preço Unit Price", Currency.Type}}),
    #"Multiplicação Inserida" = Table.AddColumn(#"Tipo Alterado2", "Multiplicação", each [Stock Quantity] * [Preço Unit Price], Currency.Type),
    #"Colunas Reordenadas" = Table.ReorderColumns(#"Multiplicação Inserida",{"Game_Name", "Console", "Send Date", "Region", "Order Status", "E-commerce", "Stock Quantity", "Preço Unit Price", "Multiplicação", "Store Manager", "Batch", "Age Rating", "Publisher"}),
    #"Colunas Renomeadas1" = Table.RenameColumns(#"Colunas Reordenadas",{{"Multiplicação", "Estoque"}}),
    #"Valor Substituído5" = Table.ReplaceValue(#"Colunas Renomeadas1","Batch-","",Replacer.ReplaceText,{"Batch"}),
    #"Tipo Alterado3" = Table.TransformColumnTypes(#"Valor Substituído5",{{"Send Date", type date}})
in
    #"Tipo Alterado3"