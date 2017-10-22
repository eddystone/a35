



$.when($.ready).then(function(){
  connect();
});

var $container = $('#params');



$container.handsontable({
  data: Handsontable.helper.createSpreadsheetData(3, 5),
  rowHeaders: ["ATM", "RR", "Fly"],
  colHeaders: ["STV   ", "LTV   ", "HLife ", "Boost ", "bHLife"],
  contextMenu: true
});

$("#pair").autocomplete({source: Data.pairs});
