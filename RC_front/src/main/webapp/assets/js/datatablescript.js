$(document).ready(function() {
$('#myDataTable').DataTable( {
	"lengthMenu": [[1, 3, 5, 7, -1], [1, 3, 5, 7, "All"]],
	ajax: {
	        url: '/ZenSportsFrontEnd/product',
	        dataSrc: ''
	    },
    columns: [
        { data: 'productId' },
        { data: 'productName' },
        { data: null,
        	mRender: function ( data, type, row ) {
                return '<img src="/ZenSportsFrontEnd/resources/images/'+ row.productImage +'" height="70" width="70">'; }
        },
        { data: 'productCategory' },
        { data: 'productKeyword' },
        { "data": "",
        	"render":function(data,type,row)
        	{
        	 return "&#8377; "+row.productPrice+"";
          }  
          
          },

        {data: null,
        	mRender: function ( data, type, row ) {
                return '<a  href="/ZenSportsFrontEnd/user/'+row.productId+'/singleproduct" role="button" class="btn btn-default btn-md" data-toggle="" data-target="#'+row.productId+'">View Item</a>';}
        }/*,
        {data: null,
        	mRender: function ( data, type, row ) {
                return '<a class="btn btn-primary" href="'+data+'">Add To Cart</a>';}
        }*/
    ]
} );

$('#myDataTable1').DataTable( {
	"lengthMenu": [[1, 3, 5, 7, -1], [1, 3, 5, 7, "All"]],
	ajax: {
	        url: '/ZenSportsFrontEnd/product',
	        dataSrc: ''
	    },
    columns: [
        { data: 'productId' },
        { data: 'productName' },
        { data: null,
        	mRender: function ( data, type, row ) {
                return '<img src="/ZenSportsFrontEnd/resources/images/'+ row.productImage +'" height="70" width="70">'; }
        },
        { data: 'productCategory' },
        { data: 'productKeyword' },
        { "data": "",
        	"render":function(data,type,row)
        	{
        	 return "&#8377; "+row.productPrice+"";
          }  
          
          },
        { data: 'productQuantity' },
        {data: null,
        	mRender: function ( data, type, row ) {
                return '<a class="btn btn-info btn-md" href="/ZenSportsFrontEnd/admin/'+row.productId+'" role="button"><span class="glyphicon glyphicon-pencil"></span></a>';}
        },
        {data: null,
        	mRender: function ( data, type, row ) {
        		return '<a  class="btn btn-warning btn-md" href="/ZenSportsFrontEnd/delete/'+row.productId+'/productD" role="button"><span class="glyphicon glyphicon-trash"></span></a>' ;}               
        }
    ]
} );

});