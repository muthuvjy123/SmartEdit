CKEDITOR.plugins.add( 'inlinecancel',
{
	init: function( editor )
	{
		editor.addCommand( 'inlinecancel',
			{
				exec : function( editor )
				{

					LoadDiv();

				}
			});
		editor.ui.addButton( 'Inlinecancel',
		{
			label: 'Refresh',
			command: 'inlinecancel',
			icon: this.path + 'images/refresh_16x16.png'
		} );
	}
} );