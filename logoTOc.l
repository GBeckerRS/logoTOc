/* Grammar specification */
%{

%}

/* Tipos */
INTEIRO         [0-9]+
DECIMAL         {INTEIRO}.{INTEIRO}

/* Palavras reservadas*/
FD                      fd|FD|forward|FORWARD|avanca|AVANCA
BD                      bd|BD|backward|BACKWARD|recua|RECUA
RT                      rt|RT|right|RIGHT|direita|DIREITA
LT                      lt|LT|left|LEFT|esquerda|ESQUERDA
CS                      cs|CS|clearscreen|CLEARSCREEN|limpatela|LIMPATELA
PU                      pu|PU|penup|PENUP|sobecaneta|SOBECANETA
PD                      pd|PD|pendown|PENDOWN|baixacaneta|BAIXACANETA
HT                      ht|HT|hideturtle|HIDETURTLE|esconde|ESCONDE
ST                      st|ST|shorturtle|SHOWTURTLE|exibe|EXIBE
HOME                    home|HOME
LABEL                   label|LABEL
SETXY                   setxy|SETXY
MAKE                    make|MAKE
IF                      if|IF|se|SE
STOP                    stop|STOP|pare|PARE
FOR                     for|FOR|para|PARA

%%
{INTEIRO}       {printf("encontrei um numero: %s",yytext);}

{DECIMAL}       {printf("encontrei um numero: %s",yytext);}

{FD}            {
                    printf ("Palavra chave para acao de AVANCA");
                }

{BD}            {
                    printf ("Palavra chave para acao de RECUA");
                }

{RT}            {
                    printf ("Palavra chave para acao de DIREITA");
                }

{LT}            {
                    printf ("Palavra chave para acao de ESQUERDA");
                }

{CS}            {
                    printf ("Palavra chave para acao de LIMPA TELA");
                }

{PU}            {
                    printf ("Palavra chave para acao de LEVANTA CANETA");
                }

{PD}            {
                    printf ("Palavra chave para acao de BAIXA CANETA");
                }

{HT}            {
                    printf ("Palavra chave para acao de ESCONDE");
                }

{ST}            {
                    printf ("Palavra chave para acao de EXIBE");
                }

{HOME}          {
                    printf ("Palavra chave para acao de HOME");
                }

{LABEL}         {
                    printf ("Palavra chave para acao de LABEL");
                }

{SETXY}         {
                    printf ("Palavra chave para acao de SET");
                }

{MAKE}          {
                    printf ("Palavra chave para acao de FACA");
                }

{IF}            {
                    printf ("Palavra chave para acao de SE");
                }

{STOP}          {
                    printf ("Palavra chave para acao de PARE");
                }

{FOR}           {
                    printf ("Palavra chave para acao de PARA");
                }

"("             {
                    printf ("Abre parentes");
                }

")"             {
                    printf ("Fecha parenteses");
                }

%%

int main ()
{
    printf ("Digite um texto: ");
    yylex ();
    return 0;
}

