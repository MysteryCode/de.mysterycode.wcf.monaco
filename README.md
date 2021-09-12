de.mysterycode.wcf.monaco || Monaco-Editor
====================================
Implementation of the code editor [Monaco](https://github.com/Microsoft/monaco-editoro).

API
---
In order to include the Monaco editor use:

`{include file='monaco' monacoMode='language' monacoSelector='id of your textarea'}`

If you want to view invisible characters you can add `$showInvisibles=true`:

`{include file='monaco' monacoMode='language' monacoSelector='id of your textarea' $showInvisibles=true}`


**Example:**
```
<section class="section marginTop">
    <legend>An awesome section-title</legend>
    
    <dl class="wide">
        <dt>Your message in here:</dt>
        <dd>
            <textarea id="scss" name="scss">/* some SCSS seclarations */</textarea>
            {include file='monaco' monacoMode='scss' monacoSelector='scss'}
        </dd>
    </dl>
</section>
```

Version
---
Monaco-Version: 0.27.0

Basic Support
-------------
If you have trouble including the Monaco editor or questions feel free to ask me: [Forum](https://support.mysterycode.de/)

If you got questions about Monaco itself, please visit their [GitHub Repository](https://github.com/Microsoft/monaco-editoro).

License
-------
Monaco is licensed under [MIT License](https://github.com/microsoft/monaco-editor/blob/main/LICENSE.md)