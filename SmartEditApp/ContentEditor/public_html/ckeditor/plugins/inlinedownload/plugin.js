CKEDITOR.plugins.add( 'inlinedownload',
{
	init: function( editor )
	{
		editor.addCommand( 'inlinedownload',
			{
				exec : function( editor )
				{

					 ExportAsWord();

				}
			});
		editor.ui.addButton( 'Inlinedownload',
		{
			label: 'Export as .doc',
			command: 'inlinedownload',
			icon: this.path + 'images/document_word_text_icon.png'
		} );
	}
} );