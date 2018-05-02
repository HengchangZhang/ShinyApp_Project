
# dashiboardPage(header,sidebar,body)
dashboardPage(skin = "green",
  #1 Header
  dashboardHeader(title = "Economic Broadcast"),
 
  
  #2 Sidebar
   dashboardSidebar(
    sidebarUserPanel("Fan(Jacky) Zhang", image = "headshot.jpg",'zf881228@gmail.com'),
    
    sidebarMenu(
      menuItem('App Info', tabName = 'info', icon = icon('dashboard')),
      menuItem('Economic Indicators', tabName = 'indicator', icon = icon('map')),
      menuSubItem('PMI', tabName = 'pmi'),
      menuSubItem('NMI', tabName = 'nmi'),
      menuSubItem('Housing Starts', tabName = 'housing'),
      menuSubItem('UMCSI', tabName = 'umcsi'),
      br(),
      menuItem('Gross Domestic Product', tabName = 'gdp', icon = icon('map')),
      menuSubItem('U.S Real GDP', tabName = 'realgdp'),
      br(),
      menuItem('Market Index', tabName = 'index', icon = icon('map')),
      menuSubItem('S&P 500', tabName = 'sp'),
      br(),
      menuItem('Correlation Analysis', tabName = 'charts', icon = icon('bar-chart-o')),    
      br(),
      br(),
      br(),
      menuItem('About Fan(Jacky) :'),
      menuItem('blog', icon = icon('wordpress')), # href = 'NYCDataSci blog'
      menuItem('LinkedIn', icon = icon('linkedin'),
               href = 'http://www.linkedin.com/in/fanjz/'),
      menuItem('GitHub', icon = icon('github'),
               href = 'https://github.com/HengchangZhang/ShinyApp_Project')
)),
      
      
  #3 Body
  dashboardBody(
    tabItems(
             
    # Info page ==================================================================================
      tabItem(tabName = 'info',
            h1('The Correlation between Leading Economic Indicators and GDP Growth',
               align = "center"),
            br(),
            h3('Information about the datasets:'),
            h4(p('- The Institute for Supply Management',
              style = "font-family: 'times'; font-si16pt",
              strong('ISM Manufacturing Report On Business',
                     style = "font-family: 'times'; font-si16pt"),
              ', Purchase Manager Index (PMI).',
                 style = "font-family: 'times'; font-si16pt")),
            h4(p('- The Institute for Supply Management',
                 style = "font-family: 'times'; font-si16pt",
                 strong('ISM Non-Manufacturing Report On Business',
                        style = "font-family: 'times'; font-si16pt"),
                 ', NMI (aka Service PMI).',
                 style = "font-family: 'times'; font-si16pt")),
            br(),
            h3(strong('What is ISM report and Why is It Important?'),align = 'center'),
            h4(p('ISM Survey Committee conducts series questions that asks largest 
                  300 U.S Manufacturing companies and 400 Non- Manufacturing  companies,
                 questions relating their business activity in the previous month covering five areas with equal weighting. 
                 The survey realses on the first business day of each month.
                 The reading above 50 percent indicates that the economy is generally expanding; 
                 below 50 percent indicates that it is generally declining.',style = "font-family: 'times'; font-si16pt")),
            br(),
            h4(p('"The ISM Manufacturing Report On Business has one of the shortest reporting lags of any macro-economic series and
                  gives an important early look at the economy. It also measures some concepts (such as lead times and delivery lags) 
                  that can be found nowhere else. It makes an important contribution to the American statistical system and to economic policy."',
                 style = "font-family: 'times'; font-si16pt")),
            h4(strong("Joseph E. Stiglitz, former chairman of President Clinton's Council of Economic Advisors"), align = 'right'),
            img(src = "pmi.PNG", height = 400, width = 500), img(src = "nmi2.PNG", height = 400, width = 500),img(src = "nmi.PNG", height = 400, width = 500),
            br(),
            br(),
            h4(strong(p('- US Housing Starts', style = "font-family: 'times'; font-si16pt"))),
            h3(strong('What is Housing Starts and Why is Housing Starts Report Important?'),align = 'center'),
            h4(p("Housing starts reports the number of new residential construction projects that have begun during any particular month. 
                 The Census Bureau's Monthly Report on Building Permits from U.S Housing Starts Report, is anather Leading Indicator.
                It is a critical to test the strength of the US Economy. 
                 Housing start statistics are released on or around the 17th of each month by the U.S. Commerce Department. 
                 The report includes building permits, housing starts and housing completions data.",style = "font-family: 'times'; font-si16pt")),
            br(),
            h4(strong(p('Building Permit Defination:'))),
            h4(p('- The building (residential home) has received planning permission by local state planning department.', 
                        style = "font-family: 'times'; font-si16pt")),
            br(),
            h4(strong(p('Housing Start Defination:'))),
            h4(p('- The fundations of the building(residential home) have been laid. The project has "started".',
                 style = "font-family: 'times'; font-si16pt")),
            br(),
            h4(strong(p('Housing Completions Defination:'))),
            h4(p('- The structure and major interior work has been completed and home is currently marked for sale.',
                        style = "font-family: 'times'; font-si16pt")),
            br(),
            h4(strong(p('By defination, the Building Permits number tells us several things:'))),
            h4(p('1. Whether or not develpers are bullish / bearish on the prospects of the future home sales.
                 More applications for Building Permits means an expectation of future sales. It costs anything between
                 $500 - $1000 per home to make an application.',style = "font-family: 'times'; font-si16pt")),
            br(),
            h4(p('2. The demand for Housing from US consumer. This may eventually lead to changes in Consumer
                 Sentiment and Consumer Spending.',style = "font-family: 'times'; font-si16pt")),
            br(),
            h4(p('3. The supply of loans (Banking Lquility). Developers in the U.S do not finance projects with 100%
                 Equity / Cash. They use a mix of Equity / Debt. Consumers in U.S do not buy houses for cash. 
                 They buy them with deb (mortgages). Therefore, the Building Permits number gives us an insight into
                 the liquility and health of U.S lending environment i.e the health of the banking sector.'
                 ,style = "font-family: 'times'; font-si16pt")),
            br(),
            br(),
            h4(strong(p('- The University of Michigan Consumer Sentiment Index (UMCSI)', 
                        style = "font-family: 'times'; font-si16pt"))),
            h3(strong('What is UMCSI and Why is It Important?'),align = 'center'),
            h4(p('The University of Michigan Consumer Research Centre, conduct a telephone survey asking 500 consumers a series of questions on 
                  their person finances and their opinions on business conditions. It is important becasue:',
                 style = "font-family: 'times'; font-si16pt")),
            br(),
            h4(p('1. The level of confidence that consumers have about the stability and future perspects of their incomes can be used to 
                 understand the overall trend of the economy.',style = "font-family: 'times'; font-si16pt")),
            br(),
            h4(p('2. The demand for Housing from US consumer. This may eventually lead to changes in Consumer
                 Sentiment and Consumer Spending.',style = "font-family: 'times'; font-si16pt")),
            br(),
            h4(p('3. If Consumer Sentiment is high, consumers will spend more, save less and cause the economy to expand.',
                 style = "font-family: 'times'; font-si16pt")),
            br(),
            h4(p('4. Consumer Spending is around 65% ~ 70% of U.S GDP - The remainder is Business and Government Spending. ',
                 style = "font-family: 'times'; font-si16pt")),
            br(),
            h4(strong(p('- For more Information, please visit the References:', 
                        style = "font-family: 'times'; font-si16pt"))),
            a("1. Institute for Supply Management: ISM", 
              href = "https://www.instituteforsupplymanagement.org/certification/content.cfm?ItemNumber=28965&navItemNumber=30165", style = "font-family: 'times'; font-si16pt"),
            
            br(),
            a("2. Econimic Research, Federal Reserve Bank of St. Louis", 
            href = 'https://research.stlouisfed.org/publications/economic-synopses/2016/03/25/pmi-and-gdp-do-they-correlate-for-the-united-states-for-china/', style = "font-family: 'times'; font-si16pt"),
            br(),
            
            a("3. University of Michigan, Survey of Consumers Research Center", 
              href = 'http://www.sca.isr.umich.edu/', style = "font-family: 'times'; font-si16pt"),
            br(),
            
            a("4. United States Census Bureau", 
              href = 'https://www.census.gov/construction/nrc/index.html', style = "font-family: 'times'; font-si16pt") 
            
            ),
            
    
    # PMI page ===================================================================================================================
    tabItem(tabName = 'pmi',
            fluidRow(box(background = 'blue',checkboxGroupInput('pmigroup',label = h3('ISM Manufacturing Components'),
                                            choices = list('ISM Manufacturing Index' =  "ISM.Manufacturing.Index",'New.Orders' = "New.Orders", 'Production' = "Production",'Employment' = "Employment" ,
                                                           'Deliveries' = "Deliveries", 'Inventories' = "Inventories", 'Customers Inventories' = "Customers..Inventories", 'Prices' = "Prices",
                                                           'Order Backlog' = "Order.Backlog", 'Exports' = "Exports", 'Imports' =  "Imports"),width = 'auto')),
                     box(dygraphOutput("dygraph_pmi"), width = 12, length = 35),
                     box(DT::dataTableOutput("pmi"), width = 12, length = 12))),
    
    
    # NMI page ===================================================================================================================
    tabItem(tabName = 'nmi',
            fluidRow(box(background = 'blue',checkboxGroupInput('nmigroup',label = h3('ISM Non-manufacturing Components'),
                                                                choices = list('ISM Non-manufacturing Index' =  "NMI", "Business.Activity" =  "Business.Activity", 'New.Orders' = "New.Orders",'Employment' = "Employment",
                                                                               'Deliveries' = "Deliveries", 'Inventories' = "Inventories", 'Prices' = "Prices",
                                                                               'Order Backlog' = "Ord.Backlog", 'Exports' = "Exports", 'Imports' =  "Imports"),width = 'auto')),
                     box(dygraphOutput("dygraph_nmi"),width = 12,length = 12),
                         box(DT::dataTableOutput("nmi"), width = 12,length = 12))),
    
    
    # Housing Starts page ========================================================================================================
    tabItem(tabName = 'housing',
            fluidRow(box(background = 'blue',checkboxGroupInput('hsgroup',label = h3('U.S Housing Starts Components'),
                                                                choices = list('Building Permits' = "Permits", 'Housing Starts' = "Starts", 'Housing Completion' = "Completion"),width = 'auto')),
                     box(dygraphOutput("dygraph_hs"),width = 12,length = 12),
                     box(DT::dataTableOutput("hs"), width = 11,length = 12))),
    
    
    # UMCSI page ===================================================================================================================
    tabItem(tabName = 'umcsi', 
            fluidRow(box(background = 'blue',checkboxGroupInput('umcsigroup',label = h3('University of Michigan Consumer Sentiment Index Components'),
                                                                choices = list('UMCSI' = "UMCSI", 'Expectation Index' =  "Expectations.Index", 'Current Condition Index' = "Current.Conditions.Index"),width = 'auto')),
                     box(dygraphOutput("dygraph_umcsi"),width = 12,length = 12),
                     box(DT::dataTableOutput("umcsi"), width = 12,length = 12))),
    
    
    # real gdp page ===================================================================================================================
    tabItem(tabName = 'realgdp', 
            fluidRow(box(dygraphOutput("dygraph_gdp"),width = 12,length = 12),
                     box(DT::dataTableOutput("gdp"), width = 8,length = 12))),
    
    
    
    # sp 500 page ===================================================================================================================
   
     tabItem(tabName = 'sp',
             fluidRow(box(dygraphOutput("dygraph_sp"),width = 12,length = 12),
                      box(DT::dataTableOutput("sp"), width = 8,length = 12))),
    
    # correlation analysis page ===================================================================================================================
    tabItem(tabName = 'charts', 
            fluidRow(box(background = 'blue',selectizeInput('allgroup',label = h3('GDP vs other key indicators analysis'),
                                                                choices = list("ISM.Manufacturing.Index" = "ISM.Manufacturing.Index",
                                                                               "New Orders (PMI)" = "New.Orders",
                                                                              "Production (PMI)" = "Production",
                                                                              "Employment (PMI)" = "Employment",
                                                                              "Deliveries (PMI)" ="Deliveries",
                                                                              "Inventories (PMI)" = "Inventories", 
                                                                              "Customers Inventories (PMI)" = "Customers..Inventories",
                                                                              "Prices (PMI)" ="Prices",
                                                                              "Order Backlog (PMI)" = "Order.Backlog",
                                                                              "Exports (PMI)" ="Exports",
                                                                              "Imports (PMI)"="Imports",
                                                                              "ISM Non-manifacturing Idex"="NMI",
                                                                              "Business Activity (NMI)" ="Business.Activity",
                                                                              "New Orders (NMI)" = "New.Orders.1",
                                                                              "Employment (NMI)" ="Employment.1",
                                                                              "Deliveries (NMI)"= "Deliveries.1", 
                                                                              "Inventories (NMI)" = "Inventories.1", 
                                                                              "Prices (NMI)" = "Prices.1", 
                                                                              "Order Backlog (NMI)" = "Ord.Backlog", 
                                                                              "Exports (NMI)" = "Exports.1",
                                                                              "Imports (NMI)" = "Imports.1", 
                                                                              "Inventory Sentiment (NMI)" = "Inventory.Sentiment", 
                                                                              "University of Michigan Consumer Sentiment Index" =  "UMCSI",
                                                                              "UMCSI Expectations Index" = "Expectations.Index",
                                                                              "UMCSI Current Conditions Index" = 'Current.Conditions.Index',
                                                                              "U.S Housing Permits" = "Permits", 
                                                                              "U.S Housing Starts" =  "Starts", 
                                                                              "U.S Housing Completion" = "Completion", 
                                                                              "S&P 500 Market Index (Monthly)" = "S.P.500"),multiple = TRUE)),
                     box(dygraphOutput("dygraph_all"),width = 12,length = 12)))
                     
                    
)
))
  
