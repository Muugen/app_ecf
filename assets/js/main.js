new Morris.Line({
    // ID of the element in which to draw the chart.
    element: 'myfirstchart',
    lineColors: ['orange'],
    // Chart data records -- each entry in this array corresponds to a point on
    // the chart.
    data: [
      { year: '2014', value: 20 },
      { year: '2015', value: 10 },
      { year: '2016', value: 15 },
      { year: '2017', value: 25 },
      { year: '2018', value: 30 },
      { year: '2019', value: 20 },
      { year: '2020', value: 40 }
    ],
    // The name of the data record attribute that contains x-values.
    xkey: 'year',
    // A list of names of data record attributes that contain y-values.
    ykeys: ['value'],
    // Labels for the ykeys -- will be displayed when you hover over the
    // chart.
    labels: ['Value']
  });

  Morris.Donut({
      element: 'donut-example',
      data: [
        {label: "Abonnement", value: 35},
        {label: "Revenue publicitaire", value: 25},
        {label: "Placement de produit", value: 20},
        {label: "Contenue sponsorisé", value: 10},
    ],
    colors: ['orange', '#0072f2', '#f42a26', '#3e454d'],
    labelColor: '#ffffff'
  });