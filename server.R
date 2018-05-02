
shinyServer(function(input,output) {
  
  # PMI page ==================================================================================================================
  
  output$dygraph_pmi <- renderDygraph({
    filtered_PMI <- PMI_xts  
  
    if (length(input$pmigroup)) {
      filtered_PMI <- PMI_xts[,input$pmigroup]
    }
    
    dygraph(filtered_PMI, main = 'ISM Manufacturing Index') %>%
      dyOptions(fillGraph = FALSE, fillAlpha = 0.9) %>%
      dyAxis("x", drawGrid = FALSE) %>% dyLegend(width = 700) %>% dyRangeSelector()
   })
  
  output$pmi <- DT::renderDataTable({
    datatable(PMI, rownames=FALSE,options = list(pageLength = 25, scrollX = TRUE))})
  
  
  # NMI page ===================================================================================================================
 
  output$dygraph_nmi <- renderDygraph({
    filtered_NMI <- nmi_xts  
    
    if (length(input$nmigroup)) {
      filtered_NMI <- nmi_xts[,input$nmigroup]
    }
    
    dygraph(filtered_NMI, main = 'ISM Non-manufacturing Index') %>% 
    dyOptions(fillGraph = FALSE, fillAlpha = 0.9) %>% dyAxis("x", drawGrid = FALSE)%>% dyLegend(width = 700) %>% 
      dyRangeSelector()
    })
  
  
  output$nmi <- DT::renderDataTable({
    datatable(NMI, rownames=FALSE,options = list(pageLength = 25, scrollX = TRUE))}) 
  
  
  # HS page ===================================================================================================================
  output$dygraph_hs <- renderDygraph({
    filtered_hs <- housing_starts_xts  
    
    if (length(input$hsgroup)) {
      filtered_hs <-housing_starts_xts[,input$hsgroup]
    }
    
    dygraph(filtered_hs, main = 'U.S Housing Starts') %>%
    dyOptions(fillGraph = FALSE, fillAlpha = 0.9) %>%
    dyAxis("x", drawGrid = FALSE) %>% dyLegend(width = 600) %>% dyRangeSelector()
    }) 
  
  
  output$hs <- DT::renderDataTable({
     datatable(Housing.starts, rownames=FALSE,options = list(pageLength = 25,scrollX = TRUE))})
   
  
  # UMCSI page ===================================================================================================================
  output$dygraph_umcsi <- renderDygraph({
    filtered_umcsi <- umcsi_xts 
    
    if (length(input$umcsigroup)) {
      filtered_umcsi <-umcsi_xts[,input$umcsigroup]
    }
    
    
    dygraph(filtered_umcsi, main = 'University of Mechigan Consumer Sentiment Index') %>%
    dyOptions(fillGraph = FALSE, fillAlpha = 0.9) %>%
    dyAxis("x", drawGrid = FALSE) %>% dyLegend(width = 650) %>% dyRangeSelector()
    })
  
  output$umcsi <- DT::renderDataTable({
     datatable(UMCSI, rownames=FALSE,options = list(pageLength = 25, scrollX = TRUE))})
   
  
  # gdp page ===================================================================================================================
  output$dygraph_gdp <- renderDygraph({
    
    dygraph(gdp_xts, main = "U.S Quarterly Real GDP Growth Rate (Seasonally Adjusted) ") %>% 
      dyOptions(fillGraph = TRUE, fillAlpha = 0.4, colors = 'red') %>%
    dyAxis("x", drawGrid = FALSE) %>% dyBarChart() %>% dyAxis("y", label = "% Percentage as Annualized Rate") %>%
    
    dyLegend(width = 500)  %>% dyRangeSelector() 
    
    }) 
  
  
  output$gdp <- DT::renderDataTable({
     datatable(GDP, rownames=FALSE,options = list(pageLength = 25, scrollX = TRUE))})
  
  # sp 500 page ===================================================================================================================
  output$dygraph_sp <- renderDygraph({
    
    dygraph(sp_monthly_xts, main = 'S&P 500 Index (Monthly)') %>%
      dyOptions(fillGraph = TRUE, fillAlpha = 0.6) %>%
      dyHighlight(highlightSeriesOpts = list(strokeWidth = 3)) %>%
      dyAxis("x", drawGrid = FALSE) %>%
      dyAxis("y", label = "Monthly Adjusted closed Prices") %>%
      dyRangeSelector()  %>% dyLegend(width = 600) %>% 
      dyHighlight(highlightCircleSize = 5, highlightSeriesBackgroundAlpha = 0.8,hideOnMouseOut = FALSE)
    
    })
  
  output$sp <- DT::renderDataTable({
    datatable(SP500.monthly, rownames=FALSE,options = list(pageLength = 25, scrollX = TRUE))})
  
  # correlation analysis page =====================================================================================================
  output$dygraph_all <- renderDygraph({
    filtered_all <- all_xts
    
    if (length(input$allgroup)) {
      
      filtered_all <- filtered_all[, c("real.gdp",input$allgroup)]
    } 
    
    dygraph(filtered_all, main = 'Leading Economic Indicators  Compare  against  Real  GDP  Growth') %>%
      
      dyOptions(fillGraph = FALSE, fillAlpha = 0.9) %>%
     
      dyAxis("x", drawGrid = FALSE) %>% dyAxis("y", label = "Components  Against  GDP  growth") %>%
      dyBarSeries("real.gdp",fillGraph = TRUE, axis = 'y2') %>% 
      dyAxis("y2", label = "Quarterly Real GDP Growth Rate") %>%
      dyLegend(width = 700)  %>% dyRangeSelector() 
    
    
    
})
  
})

