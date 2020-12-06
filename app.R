#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(flashCard)
# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    h2("Flash Cards of useful Python Syntax!"),
    fluidRow(
        column(4,
           flashCardOutput("card1")
        ),
        column(4,
               flashCardOutput("card2")
        ),
        column(4,
               flashCardOutput("card3")
        )
    ),br(),
    fluidRow(
        column(4,
               flashCardOutput("card4")
        ),
        column(4,
               flashCardOutput("card5")
        ),
        column(4,
               flashCardOutput("card6")
        )
    ),br(),
    fluidRow(
        column(4,
               flashCardOutput("card7")
        ),
        column(4,
               flashCardOutput("card8")
        ),
        column(4,
               flashCardOutput("card9")
        )
    ),br(),
    fluidRow(
        column(4,
               flashCardOutput("card10")
        ),
        column(4,
               flashCardOutput("card11")
        ),
        column(4,
               flashCardOutput("card12")
        )
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {

    output$card1 <- renderFlashCard({
        df1 <- data.frame(
            front = c("Print top n rows","view first 5 rows", "view first 7 rows"),
            back =c("Code","data.head()", "data.head(7)")
        )
        flashCard(df1, elementId = "card", front_text_color = "white")
    })
    
    output$card2 <- renderFlashCard({
        df1 <- data.frame(
            front = c("Select","select 'Order ID' and 'Order Quantity' columns from data "),
            back =c("Code","data[['Order ID','Order Quantity']]")
        )
        flashCard(df1, elementId = "card", front_text_color = "white")
    })
    output$card3 <- renderFlashCard({
        df1 <- data.frame(
            front = c("Rename","Rename column A to a; column B to b "),
            back =c("Code","data.rename(columns={'A': 'a', 'B': 'b'})")
        )
        flashCard(df1, elementId = "card", front_text_color = "white")
    })
    
    output$card4 <- renderFlashCard({
        df1 <- data.frame(
            front = c("Drop","Drop all rows that contain null values"),
            back =c("Code","data.dropna()")
        )
        flashCard(df1, elementId = "card", front_text_color = "white")
    })
    
    output$card5 <- renderFlashCard({
        df1 <- data.frame(
            front = c("Drop","Drop all columns that contain null values"),
            back =c("Code","data.dropna(axis=1)")
        )
        flashCard(df1, elementId = "card", front_text_color = "white")
    })
    
    output$card6 <- renderFlashCard({
        df1 <- data.frame(
            front = c("Fill","Replace all null values with x"),
            back =c("Code","data.fillna(x)")
        )
        flashCard(df1, elementId = "card", front_text_color = "white")
    })
    
    output$card7 <- renderFlashCard({
        df1 <- data.frame(
            front = c("Filter","Rows where the column col is greater than 0.5"),
            back =c("Code","df[df[col] > 0.5]")
        )
        flashCard(df1, elementId = "card", front_text_color = "white")
    })
    
    
    output$card8 <- renderFlashCard({
        df1 <- data.frame(
            front = c("Sort","Sort values by col2 in descending order"),
            back =c("Code","df.sort_values(col2,ascending=False)")
        )
        flashCard(df1, elementId = "card", front_text_color = "white")
    })
    
    output$card8 <- renderFlashCard({
        df1 <- data.frame(
            front = c("Sort","Sort values by col1 in ascending order then col2 in descending order"),
            back =c("Code","df.sort_values([col1,col2],ascending=[True,False])")
        )
        flashCard(df1, elementId = "card", front_text_color = "white")
    })
    
    output$card9 <- renderFlashCard({
        df1 <- data.frame(
            front = c("group by","Returns a groupby object for values from one column"),
            back =c("Code","df.groupby(col)")
        )
        flashCard(df1, elementId = "card", front_text_color = "white")
    })
    
    output$card10 <- renderFlashCard({
        df1 <- data.frame(
            front = c("group by","Find the average across all columns for every unique col1 group"),
            back =c("Code","df.groupby(col1).agg(np.mean)")
        )
        flashCard(df1, elementId = "card", front_text_color = "white")
    })
    
    
    output$card11 <- renderFlashCard({
        df1 <- data.frame(
            front = c("Join","SQL-style join the columns in df1 with the columns on df2 where the rows for col have identical values."),
            back =c("Code","df1.join(df2,on=col1,how='inner')")
        )
        flashCard(df1, elementId = "card", front_text_color = "white")
    })
    
    output$card12 <- renderFlashCard({
        df1 <- data.frame(
            front = c("Correlation","Returns the correlation between columns in a DataFrame"),
            back =c("Code","df.corr()")
        )
        flashCard(df1, elementId = "card", front_text_color = "white")
    })
}

# Run the application 
shinyApp(ui = ui, server = server)
