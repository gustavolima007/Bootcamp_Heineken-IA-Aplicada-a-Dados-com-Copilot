# ETL sem o dolar:

let
    Fonte = Excel.Workbook(File.Contents("C:\Github\Bootcamp_Heineken-IA-Aplicada-a-Dados-com-Copilot\Analise de dados com Excel e Copilot\ETL com Excel e Power Query\nintendo-sending-packages.xlsx"), null, true),
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
    #"Tipo Alterado2" = Table.TransformColumnTypes(#"Valor Substituído3",{{"Preço Unit Price", Currency.Type}})
in
    #"Tipo Alterado2"


# ETL com o dolar:

let
    Fonte = Excel.Workbook(File.Contents("C:\Github\Bootcamp_Heineken-IA-Aplicada-a-Dados-com-Copilot\Analise de dados com Excel e Copilot\ETL com Excel e Power Query\nintendo-sending-packages.xlsx"), null, true),
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
    #"Valor Substituído3" = Table.ReplaceValue(#"Tipo Alterado1","R$","",Replacer.ReplaceText,{"Preço Unit Price"}),
    #"Convertido para Número" = Table.TransformColumnTypes(#"Valor Substituído3",{{"Preço Unit Price", type number}}),
    #"Convertido para USD" = Table.TransformColumns(#"Convertido para Número", {{"Preço Unit Price", each _ / 5, type number}}),
    #"Tipo Alterado2" = Table.TransformColumnTypes(#"Convertido para USD",{{"Preço Unit Price", Currency.Type}})
in
    #"Tipo Alterado2"