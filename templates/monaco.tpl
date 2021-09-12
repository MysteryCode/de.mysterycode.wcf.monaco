{if !$monacoLoaded|isset}
	{js application='wcf' lib='monaco/loader'}
	<script data-relocate="true">
		['{@$__wcf->getPath()}js/3rdParty/monaco/editor/editor.main.css'].forEach((href) => {
			const link = document.createElement('link');
			link.rel = 'stylesheet';
			link.href = href;
			document.head.appendChild(link);
		});
	</script>
	{assign var='monacoLoaded' value=true}
{/if}
{event name='javascriptIncludes'}

{if $monacoMode|isset}
	<script data-relocate="true">
		require(['Dom/Util', 'vs/editor/editor.main'], function (DomUtil) {
			const elements = document.querySelectorAll('{@$monacoSelector|encodeJS}');

			elements.forEach((element) => {
				DomUtil.hide(element);

				const editorContainer = document.createElement('div');
				const editorContainerId = DomUtil.identify(editorContainer);
				editorContainer.classList.add('monacoInstance');
				element.parentNode.insertBefore(editorContainer, element);

				const editor = monaco.editor.create(editorContainer, {
					value: element.value,
					language: '{$monacoMode}',
					theme: '{MONACO_THEME}',
				});

				{event name='monacoInit'}
			});
		});
	</script>
{/if}
{event name='monacoLoaded'}
