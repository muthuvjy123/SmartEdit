CKEDITOR.plugins.add( 'inlineback',
{
	init: function( editor )
	{
		editor.addCommand( 'inlineback',
			{
				exec : function( editor )
				{

					 //window.history.back();
                                         Back_Operation();

				}
			});
		editor.ui.addButton( 'Inlineback',
		{
			label: 'Back',
			command: 'inlineback',
			icon: this.path + 'images/Goback.png'
		} );
	}
} );