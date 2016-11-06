<link rel="stylesheet" type="text/css" href="/css/top.css">

<div id="top">
		<div id="top-title">
			<div class="top-title" firstcategoryid="index-title" onclick="titleChoice(this)">首页</div>
			<#list firstCategory as x>
				<div class="top-title" firstcategoryid="${x.id}">${x.name}</div>
			</#list>
		</div>
</div>

