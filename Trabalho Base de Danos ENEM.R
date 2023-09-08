#obtem e prepara banco para uso
-data.frame(Enem_)
attach(Enem_)



#                 Questão 1
#   1.1 tabelas simples
#1.1.1 Estado civil
EC=table(Enem_$`Estado Civil`)
EC

#1.1.2 Dependencia administrativa(Escola)
Da=table(Enem_$`Dependência administrativa (Escola)`)
Da

#1.1.3 Renda mensal da familia 
Rm=table(Enem_$`Qual é a renda mensal de sua família?`)
Rm

#1.1.4 Sua residencia tem ascesso a internet
AI=table(Enem_$`Na sua residência tem acesso à Internet?`)
AI

#1.1.5 Lingua estrangeira
LI= table(Enem_$`Língua Estrangeira`)
LI

#1.1.6 Escola do ensino medio 
EM= table(Enem_$`Tipo de escola do Ensino Médio`)
EM


#   1.2Tabelas relativas (da questão 1)
#1.2.1 Estado civil relativo
ECR= prop.table(table(Enem_$`Estado Civil`))
round(ECR, digits = 4)

#1.2.3 Dependencia administrativa(Escola)
DAR= prop.table(table(Enem_$`Dependência administrativa (Escola)`))
round(DAR, digits = 4 )

#1.2.4 Renda familiar 
RMF= prop.table(table(Enem_$`Qual é a renda mensal de sua família?`))
round(RMF, digits = 4)

#1.2.5 Sua residencia tem acesso a internet 
AIR= prop.table(table(Enem_$`Na sua residência tem acesso à Internet?`))
round(AIR, digits = 4)

#1.2.6 lingua estrangeira
LIR= prop.table(table(Enem_$`Língua Estrangeira`))
round(LIR, digits = 4)

#1.2.7 escola do ensino medio 
EMR= prop.table(table(Enem_$`Tipo de escola do Ensino Médio`))
round(EMR, digits = 4)

#Questão 2 
#2.2 Tabela cruzada Qual é a renda mensal de sua família versus na sua residência tem acesso à Internet.
X=table(Enem_$`Qual é a renda mensal de sua família?`, Enem_$ `Na sua residência tem acesso à Internet?`)
X

#2.3 Na sua residência tem TV por assinatura versus na sua residência tem acesso à Internet.
Y=table(Enem_$`Na sua residência tem TV por assinatura?`,Enem_$`Na sua residência tem acesso à Internet?`)
Y
#2.4 Tipo de escola do Ensino Médio versus Língua Estrangeira
Z=table(Enem_$`Tipo de escola do Ensino Médio`,Enem_$`Língua Estrangeira`)
Z

#Questão 3 -Montar um gráfico de barra para a variável:
barplot(table(Enem_$`Qual é a renda mensal de sua família?`),xlab = "Tipo de Renda", ylab = "Valor da Renda", ylim =c(0,10000),col =c("green","yellow","red"),main = "renda mensal de sua família")

barplot(table(Enem_$`Na sua residência tem acesso à Internet?`),xlab="Tem acesso a internet",ylab = "Quantidade", ylim = c(0,15000),col = c("red","green"), main= "Acesso a internet" )

