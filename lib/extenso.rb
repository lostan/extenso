module Extenso
  
  NUM_SING = 0
  NUM_PLURAL = 1
  POS_GENERO = 2
  GENERO_MASC = 0
  GENERO_FEM = 1
  
  VALOR_MAXIMO = 999999999
  
  # As unidades 1 e 2 variam em gênero, pelo que precisamos de dois conjuntos de strings (masculinas e femininas) para as unidades
  UNIDADES = {
    GENERO_MASC => {
      1 => 'um',
      2 => 'dois',
      3 => 'três',
      4 => 'quatro',
      5 => 'cinco',
      6 => 'seis',
      7 => 'sete',
      8 => 'oito',
      9 => 'nove'
    },
    GENERO_FEM => {
      1 => 'uma',
      2 => 'duas',
      3 => 'três',
      4 => 'quatro',
      5 => 'cinco',
      6 => 'seis',
      7 => 'sete',
      8 => 'oito',
      9 => 'nove'
    }
  }
  
  DE11A19 = {
    11 => 'onze',
    12 => 'doze',
    13 => 'treze',
    14 => 'quatorze',
    15 => 'quinze',
    16 => 'dezesseis',
    17 => 'dezessete',
    18 => 'dezoito',
    19 => 'dezenove'
  }
  
  DEZENAS = {
    10 => 'dez',
    20 => 'vinte',
    30 => 'trinta',
    40 => 'quarenta',
    50 => 'cinquenta',
    60 => 'sessenta',
    70 => 'setenta',
    80 => 'oitenta',
    90 => 'noventa'
  }
  
  CENTENA_EXATA = 'cem'
  
  # As centenas, com exceção de 'cento', também variam em gênero. Aqui também se faz
  # necessário dois conjuntos de strings (masculinas e femininas).
   
  CENTENAS = {
    GENERO_MASC => {
      100 => 'cento',
      200 => 'duzentos',
      300 => 'trezentos',
      400 => 'quatrocentos',
      500 => 'quinhentos',
      600 => 'seiscentos',
      700 => 'setecentos',
      800 => 'oitocentos',
      900 => 'novecentos'
    },
    GENERO_FEM => {
      100 => 'cento',
      200 => 'duzentas',
      300 => 'trezentas',
      400 => 'quatrocentas',
      500 => 'quinhentas',
      600 => 'seiscentas',
      700 => 'setecentas',
      800 => 'oitocentas',
      900 => 'novecentas'
    }
  }
  
  #'Mil' é invariável, seja em gênero, seja em número
  MILHAR = 'mil'

  MILHOES = {
    NUM_SING => 'milhão',
    NUM_PLURAL => 'milhões'
  }

  UNIDADES_ORDINAL = {
    GENERO_MASC => {
      1 => 'primeiro',
      2 => 'segundo',
      3 => 'terceiro',
      4 => 'quarto',
      5 => 'quinto',
      6 => 'sexto',
      7 => 'sétimo',
      8 => 'oitavo',
      9 => 'nono'},
    GENERO_FEM => {
      1 => 'primeira',
      2 => 'segunda',
      3 => 'terceira',
      4 => 'quarta',
      5 => 'quinta',
      6 => 'sexta',
      7 => 'sétima',
      8 => 'oitava',
      9 => 'nona'}}

  DEZENAS_ORDINAL = {
    GENERO_MASC => {
      10 => 'décimo',
      20 => 'vigésimo',
      30 => 'trigésimo',
      40 => 'quadragésimo',
      50 => 'quinquagésimo',
      60 => 'sexagésimo',
      70 => 'septuagésimo',
      80 => 'octogésimo',
      90 => 'nonagésimo'},
    GENERO_FEM => {
      10 => 'décima',
      20 => 'vigésima',
      30 => 'trigésima',
      40 => 'quadragésima',
      50 => 'quinquagésima',
      60 => 'sexagésima',
      70 => 'septuagésima',
      80 => 'octogésima',
      90 => 'nonagésima'}}
   
  CENTENAS_ORDINAL = {
    GENERO_MASC => {
      100 => 'centésimo',
      200 => 'ducentésimo',
      300 => 'trecentésimo',
      400 => 'quadringentésimo',
      500 => 'quingentésimo',
      600 => 'seiscentésimo',
      700 => 'septingentésimo',
      800 => 'octingentésimo',
      900 => 'noningentésimo'},
    GENERO_FEM => {
      100 => 'centésima',
      200 => 'ducentésima',
      300 => 'trecentésima',
      400 => 'quadringentésima',
      500 => 'quingentésima',
      600 => 'seiscentésima',
      700 => 'septingentésima',
      800 => 'octingentésima',
      900 => 'noningentésima'}}
    
  
    MILHAR_ORDINAL = {
      GENERO_MASC => {
        1000 => 'milésimo'},
      GENERO_FEM =>{
        1000 => 'milésima'}}
  
    MESES = {
      1 => 'janeiro',
      2 => 'fevereiro',
      3 => 'março',
      4 => 'abril',
      5 => 'maio',
      6 => 'junho',
      7 => 'julho',
      8 => 'agosto',
      9 => 'setembro',
      10 =>'outubro',
      11 =>'novembro',
      12 =>'dezembro'}

  def Extenso.is_int(s) ## Rspec - Ok
    Integer(s) != nil rescue false
  end
  
  #######################################################################################################################################
  
  def Extenso.numero (valor, genero = GENERO_MASC) ## Rspec - Ok

    # Gera a representação por extenso de um número inteiro, maior que zero e menor ou igual a VALOR_MAXIMO.
    #
    # PARÂMETROS:
    # valor (Integer) O valor numérico cujo extenso se deseja gerar
    #
    # genero (Integer) [Opcional; valor padrão: GExtenso::GENERO_MASC] O gênero gramatical (GExtenso::GENERO_MASC ou GExtenso::GENERO_FEM)
    # do extenso a ser gerado. Isso possibilita distinguir, por exemplo, entre 'duzentos e dois homens' e 'duzentas e duas mulheres'.
    #
    # VALOR DE RETORNO:
    # (String) O número por extenso incluindo ponto flutuante caso exista
    
    # ----- VALIDAÇÃO DOS PARÂMETROS DE ENTRADA ---- 
    valor = valor.round(2)
    negativo = false
    str_tmp = ""
    if valor < 0
      str_tmp = "menos "
      negativo = true
      valor = valor.abs
    elsif valor > VALOR_MAXIMO
      return valor.to_s 
      Rollbar.log 'error', '[Exceção em GExtenso::numero] Parâmetro ''valor'' deve ser um inteiro entre 1 e ' + VALOR_MAXIMO.to_s + " (recebido: '#{valor}')"
    elsif genero != GENERO_MASC && genero != GENERO_FEM
      raise "Exceção em GExtenso: valor incorreto para o parâmetro 'genero' (recebido: '#{genero}')"
    end
    
    if (valor - Integer(valor)) == 0
      return str_tmp + Extenso.numero_inteiro(Integer(valor))
    else
      flutuante = valor - Integer(valor)
      flutuante = flutuante.round(3)
      zeros = (1..4).detect{|x| 1.0*flutuante*(10**x) >= 1} - 1
      zeros_str = ""
      (1..zeros).each {|x| zeros_str << "zero "}
      casas = (1..4).detect{|x| 1.0*flutuante*(10**x)%10 == 0} - 1
      return str_tmp + Extenso.numero_inteiro(Integer(valor)) + " ponto " + zeros_str + Extenso.numero_inteiro((1.0*(10**casas)*flutuante).to_i)
    end
  end

  def Extenso.numero_inteiro(valor, genero = GENERO_MASC) ## Rspec - Ok
    if valor == 0
      return "zero"
    elsif valor >= 1 && valor <= 9
      UNIDADES[genero][valor]
    
    elsif valor == 10
      DEZENAS[valor]

    elsif valor >= 11 && valor <= 19
      DE11A19[valor]
    
    elsif valor >= 20 && valor <= 99
      dezena = valor - (valor % 10)
      ret = DEZENAS[dezena]
      # Chamada recursiva à função para processar resto se este for maior que zero.
      # O conectivo 'e' é utilizado entre dezenas e unidades.
      resto = valor - dezena
      if resto > 0
        ret += ' e ' + Extenso.numero(resto, genero)
      end
      ret

    elsif valor == 100 
      CENTENA_EXATA

    elsif valor >= 101 && valor <= 999
      centena = valor - (valor % 100)
      ret = CENTENAS[genero][centena] # As centenas (exceto 'cento') variam em gênero
      # Chamada recursiva à função para processar resto se este for maior que zero.
      # O conectivo 'e' é utilizado entre centenas e dezenas.
      resto = valor - centena 
      if resto > 0
        ret += ' e ' + Extenso.numero(resto, genero)
      end
      ret

    elsif valor >= 1000 && valor <= 999999
      # A função 'floor' é utilizada para encontrar o inteiro da divisão de valor por 1000,
      # assim determinando a quantidade de milhares. O resultado é enviado a uma chamada recursiva
      # da função. A palavra 'mil' não se flexiona.
      milhar = (valor / 1000).floor
      ret = Extenso.numero(milhar, GENERO_MASC) + ' ' + MILHAR # 'Mil' é do gênero masculino
      resto = valor % 1000
      # Chamada recursiva à função para processar resto se este for maior que zero.
      # O conectivo 'e' é utilizado entre milhares e números entre 1 e 99, bem como antes de centenas exatas.
      if resto > 0 && ((resto >= 1 && resto <= 99) || resto % 100 == 0)
        ret += ' e ' + Extenso.numero(resto, genero)
      # Nos demais casos, após o milhar é utilizada a vírgula.
      elsif (resto > 0)
        ret += ', ' + Extenso.numero(resto, genero)
      end
      ret

    elsif valor >= 100000 && valor <= VALOR_MAXIMO
      # A função 'floor' é utilizada para encontrar o inteiro da divisão de valor por 1000000,
      # assim determinando a quantidade de milhões. O resultado é enviado a uma chamada recursiva
      # da função. A palavra 'milhão' flexiona-se no plural.
      milhoes = (valor / 1000000).floor
      ret = Extenso.numero(milhoes, GENERO_MASC) + ' ' # Milhão e milhões são do gênero masculino
      
      # Se a o número de milhões for maior que 1, deve-se utilizar a forma flexionada no plural
      ret += milhoes == 1 ? MILHOES[NUM_SING] : MILHOES[NUM_PLURAL]

      resto = valor % 1000000

      # Chamada recursiva à função para processar resto se este for maior que zero.
      # O conectivo 'e' é utilizado entre milhões e números entre 1 e 99, bem como antes de centenas exatas.
      if resto && ((resto >= 1 && resto <= 99) || resto % 100 == 0)
        ret += ' e ' + Extenso.numero(resto, genero)
      # Nos demais casos, após o milhão é utilizada a vírgula.
      elsif resto > 0
        ret += ', ' + Extenso.numero(resto, genero)
      end
      ret
    else
      return valor.to_s 
    end
  end
  
  #######################################################################################################################################
  
  def Extenso.moeda_extenso(
    valor,
    casas_decimais = 2,
    info_unidade = ['real', 'reais', GENERO_MASC],
    info_fracao = ['centavo', 'centavos', GENERO_MASC]
  ) ## Rspec - Ok
  
   # Gera a representação por extenso de um valor monetário, maior que zero e menor ou igual a GExtenso::VALOR_MAXIMO.
   #
   #
   # PARÂMETROS:
   # valor (Integer) O valor monetário cujo extenso se deseja gerar.
   #   ATENÇÃO: PARA EVITAR OS CONHECIDOS PROBLEMAS DE ARREDONDAMENTO COM NÚMEROS DE PONTO FLUTUANTE, O VALOR DEVE SER PASSADO
   #   JÁ DEVIDAMENTE MULTIPLICADO POR 10 ELEVADO A $casasDecimais (o que equivale, normalmente, a passar o valor com centavos
   #   multiplicado por 100)
   #
   # casas_decimais (Integer) [Opcional; valor padrão: 2] Número de casas decimais a serem consideradas como parte fracionária (centavos)
   #
   # info_unidade (Array) [Opcional; valor padrão: ['real', 'reais', GExtenso::GENERO_MASC]] Fornece informações sobre a moeda a ser
   #   utilizada. O primeiro valor da matriz corresponde ao nome da moeda no singular, o segundo ao nome da moeda no plural e o terceiro
   #   ao gênero gramatical do nome da moeda (GExtenso::GENERO_MASC ou GExtenso::GENERO_FEM)
   #
   # info_fracao (Array) [Opcional; valor padrão: ['centavo', 'centavos', GExtenso::GENERO_MASC]] Provê informações sobre a parte fracionária
   #   da moeda. O primeiro valor da matriz corresponde ao nome da parte fracionária no singular, o segundo ao nome da parte fracionária no plural
   #   e o terceiro ao gênero gramatical da parte fracionária (GExtenso::GENERO_MASC ou GExtenso::GENERO_FEM)
   #
   # VALOR DE RETORNO:
   # (String) O valor monetário por extenso
   
    # ----- VALIDAÇÃO DOS PARÂMETROS DE ENTRADA ----
    valor = valor.to_f
    valor = (100.0*valor).round(2)
    negativo = false
    str_tmp = ""
    if ! Extenso.is_int(valor)
      raise "[Exceção em GExtenso.moeda_extenso] Parâmetro 'valor' não é numérico (recebido: '#{valor}')"
    elsif valor < 0
      valor = valor.abs
      negativo = true
      str_tmp = "menos "
    elsif ! Extenso.is_int(casas_decimais) || casas_decimais < 0
      raise "[Exceção em GExtenso.moeda_extenso] Parâmetro 'casas_decimais' não é numérico ou é menor que zero (recebido: '#{casas_decimais}')"

    elsif info_unidade.class != Array || info_unidade.length < 3
      temp = info_unidade.class == Array ? '[' + info_unidade.join(', ') + ']' : "'#{info_unidade}'"
      raise "[Exceção em GExtenso.moeda_extenso] Parâmetro 'info_unidade' não é uma matriz com 3 (três) elementos (recebido: #{temp})"
    
    elsif info_unidade[POS_GENERO] != GENERO_MASC && info_unidade[POS_GENERO] != GENERO_FEM
      raise "Exceção em GExtenso: valor incorreto para o parâmetro 'info_unidade[POS_GENERO]' (recebido: '#{info_unidade[POS_GENERO]}')"

    elsif info_fracao.class != Array || info_fracao.length < 3
      temp = info_fracao.class == Array ? '[' + info_fracao.join(', ') + ']' : "'#{info_fracao}'"
      raise "[Exceção em GExtenso.moeda_extenso] Parâmetro 'info_fracao' não é uma matriz com 3 (três) elementos (recebido: #{temp})"
    
    elsif info_fracao[POS_GENERO] != GENERO_MASC && info_fracao[POS_GENERO] != GENERO_FEM
      raise "[Exceção em GExtenso.moeda_extenso] valor incorreto para o parâmetro 'info_fracao[POS_GENERO]' (recebido: '#{info_fracao[POS_GENERO]}')."
    elsif valor == 0
      return "zero reais"
    end

    # -----------------------------------------------

    ret = ''

    # A parte inteira do valor monetário corresponde ao valor passado dividido por 10 elevado a casas_decimais, desprezado o resto.
    # Assim, com o padrão de 2 casas_decimais, o valor será dividido por 100 (10^2), e o resto é descartado utilizando-se floor().
    parte_inteira = valor.floor / (10**casas_decimais)

    # A parte fracionária ('centavos'), por seu turno, corresponderá ao resto da divisão do valor por 10 elevado a casas_decimais.
    # No cenário comum em que trabalhamos com 2 casas_decimais, será o resto da divisão do valor por 100 (10^2).
    fracao = valor % (10**casas_decimais)

    # O extenso para a parte_inteira somente será gerado se esta for maior que zero. Para tanto, utilizamos
    # os préstimos do método GExtenso::numero().
    if parte_inteira > 0
      ret = Extenso.numero(parte_inteira, info_unidade[POS_GENERO]) + ' '
      ret += parte_inteira == 1 ? info_unidade[NUM_SING] : info_unidade[NUM_PLURAL]
    end

    # De forma semelhante, o extenso da fracao somente será gerado se esta for maior que zero. */
    if fracao > 0
      # Se a parte_inteira for maior que zero, o extenso para ela já terá sido gerado. Antes de juntar os
      # centavos, precisamos colocar o conectivo 'e'.
      if parte_inteira > 0
        ret += ' e '
      end
      ret += Extenso.numero(fracao, info_fracao[POS_GENERO]) + ' '
      ret += fracao == 1 ? info_fracao[NUM_SING] : info_fracao[NUM_PLURAL]
    end

    return str_tmp + ret

  end
######################################################################################################################################################
  def Extenso.data_extenso(data) ## Rspec - Ok
    # Escreve uma data por extenso
    # A variavel data é um objeto da classe Date
    # Uso esta classe porque ela dá suporte à operações elementares com datas e mantém a consistência nos sistemas que estou programando
    # VALOR DE RETORNO: 
    # (String) A data escrita por extenso
    # Exemplo: GExtenso.data_extenso(Date.parse "23/12/1983") ==> "vinte e três de dezembro de mil novecentos e oitenta e três"
    if data.is_a? String 
      data = Date.parse(data)
    end
     
    if data.is_a? Date 
      %Q{#{Extenso.numero(data.day)} de #{MESES[data.month]} de #{Extenso.numero(data.year)}}
    else
      ''
    end
  end

  def Extenso.data_semi_extenso(data) ## RSpec - Ok
    if data.is_a? String 
      data = Date.parse(data)
    end
    return "#{data.day} de #{MESES[data.month]} de #{data.year}"
  end

######################################################################################################################################################
  def Extenso.ordinal (valor, genero = GENERO_MASC) ## RSpec - Ok

    # Gera a representação ordinal de um número inteiro de 1 à 1000

    # PARÂMETROS:
    # valor (Integer) O valor numérico cujo extenso se deseja gerar
    #
    # genero (Integer) [Opcional; valor padrão: GExtenso::GENERO_MASC] O gênero gramatical (GExtenso::GENERO_MASC ou GExtenso::GENERO_FEM)
    # do extenso a ser gerado. Isso possibilita distinguir, por exemplo, entre 'duzentos e dois homens' e 'duzentas e duas mulheres'.
    #
    # VALOR DE RETORNO:
    # (String) O número por extenso
    
    # ----- VALIDAÇÃO DOS PARÂMETROS DE ENTRADA ---- 
    
    if !is_int(valor)
      raise "[Exceção em GExtenso.numero] Parâmetro 'valor' não é numérico (recebido: '#{valor}')"
    elsif valor <= 0
      raise "[Exceção em GExtenso.numero] Parâmetro 'valor' igual a ou menor que zero (recebido: '#{valor}')"
    elsif valor > VALOR_MAXIMO
      return valor.to_s 
      Rollbar.log 'error', '[Exceção em GExtenso::numero] Parâmetro ''valor'' deve ser um inteiro entre 1 e ' + VALOR_MAXIMO.to_s + " (recebido: '#{valor}')"
    elsif genero != GENERO_MASC && genero != GENERO_FEM
      raise "Exceção em GExtenso: valor incorreto para o parâmetro 'genero' (recebido: '#{genero}')"
  # ------------------------------------------------
    elsif valor >= 1 && valor <= 9
      return UNIDADES_ORDINAL[genero][valor]
    elsif valor >= 10 && valor <= 99
      dezena = valor - (valor % 10)
      resto = valor - dezena
      ret = DEZENAS_ORDINAL[genero][dezena]+" "
      if resto > 0 then ret+= Extenso.ordinal(resto,genero); end
      return ret
    elsif valor >= 100 && valor <= 999
      centena = valor - (valor % 100)
      resto = valor - centena 
      ret = CENTENAS_ORDINAL[genero][centena]+" "
      if resto > 0 then ret += Extenso.ordinal(resto, genero); end
      return ret
    elsif valor == 1000
      return MILHAR_ORDINAL[genero][valor]+" "
    end
  end

  def Extenso.moeda_numero(numero) ## Rspec - Ok
    unit = "R$"
    separator = ","
    delimiter = "."
    mystring = sprintf("%s %.2f",unit, numero)
    mystring = mystring.gsub(".",separator)
    pos = mystring.match(separator).begin(0) - 3
    while !(/[0-9]/.match(mystring[pos-1])== nil) do
      mystring.insert(pos,delimiter)
      pos-=3
    end 
    return mystring
  end

  def Extenso.moeda_numero_e_extenso(numero) ## Rspec - Ok
    unit = "R$"
    separator = ","
    delimiter = "."
    mystring = sprintf("%s %.2f",unit, numero)
    mystring = mystring.gsub(".",separator)
    pos = mystring.match(separator).begin(0) - 3
    while !(/[0-9]/.match(mystring[pos-1])== nil) do
      mystring.insert(pos,delimiter)
      pos-=3
    end
    numero = numero.to_f
    str_tmp = ""
    if numero < 0 then 
      numero = numero.abs
      str_tmp = "menos "
    end

    return mystring << " (" << str_tmp << Extenso.moeda_extenso(numero.round(2)) << ")"
  end 

  def Extenso.periodo(dias) ## Rspec - Ok
    if dias < 0 
      dias = dias.abs
    end
    years_partial = (1.0*dias/365).floor
    months_partial = ((1.0*dias - 365*years_partial)/30.4166666666667).to_i
    days_partial = (1.0*dias - years_partial*365 - months_partial*30.4166666666667).ceil

    str_array = Array.new
    str_extenso = ""
    str_array[0] = Extenso.numero_inteiro(years_partial) + (years_partial == 1 ? " ano" : " anos") if years_partial > 0
    str_array[1] = Extenso.numero_inteiro(months_partial) + (months_partial == 1 ? " mês" : " meses") if months_partial > 0
    str_array[2] = Extenso.numero_inteiro(days_partial) + (days_partial == 1 ? " dia" : " dias") if days_partial > 0
    str_array.compact!

    connector = ''
    str_extenso = ''
    str_array.each_with_index do |word,index|
      str_extenso = str_extenso + connector + word
      connector = ', ' if index < str_array.size - 1
      connector = ' e ' if index == str_array.size - 2
      connector = '' if index == str_array.size - 1  
    end
    
    return str_extenso
  end

end