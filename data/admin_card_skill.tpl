<!DOCTYPE HTML>
<html lang="ja">
<head>
<meta charset="UTF-8">
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Cache-Control" content="no-cache" />
<title>{$smarty.const.GUILD_BATTLE_NAME}</title>

<style type="text/css">

body{
    font-size:10px;
    color:#FFFFFF;
    background-color:#1A1A1A;
    margin:0;
    font-family: Helvetica, Arial, 'ヒラギノ角ゴ ProN W3', 'モリサワ 新ゴ R', 'Droid Sans', 'Meiryo UI', 'sans-serif';
}

table.box{
    border: 0px #333 solid;
    border-radius: 3px;
    border-spacing: 0;
}

.box td.red{
    padding: 5px;
    max-width: 158px;
    border: 1px #411 solid;
    border-radius: 3px;
    color: #DD2222;
    background:rgba(20,10,10,1);
    text-align: center;
}

.box td.blue{
    padding: 5px;
    max-width: 158px;
    border: 1px #114 solid;
    border-radius: 3px;
    color: #0CB0E0;
    background:rgba(10,10,20,1);
    text-align: center;
}

.box td.green{
    padding: 5px;
    max-width: 158px;
    border: 1px #042 solid;
    border-radius: 3px;
    color: #0CF0A0;
    background:rgba(10,25,15,1);
    text-align: center;
}

.box th{
    padding: 5px;
    border: 1px #333 solid;
    border-radius: 3px;
    border-width: 0 0 1px 1px;
    background: #444;
    color: #FFFFFF;
    font-weight: bold;
    line-height: 120%;
    text-align: center;
}
.box td{
    padding: 5px;
    max-width: 158px;
    border: 1px #333 solid;
    border-radius: 3px;
    color: #DDDDDD;
    text-align: center;
}

button.submitbtn{
    border:solid 1px #444;
    padding:5px 15px;
    margin:0 0 10px;
    text-transform:uppercase;
    font-weight:bold;
    color:#fff;
    cursor:pointer;
    background-image: -webkit-linear-gradient(top, #666, #444 50%, #111 51%, #222);
    background-image: -moz-linear-gradient(top, #666, #444 50%, #111 51%, #222);
    background-image: linear-gradient(top, #666, #444 50%, #111 51%, #222);
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
    border-radius: 3px;"
    text-shadow: 0px -1px 1px rgba(200, 200, 200, 0.8);
    font-size:9px;
}


</style>

</head>
<body text="#ffffff" link="#ffcc00" vlink="#ffcc00" alink=""  background-color:#000000; color: #ffffff; font-size: xx-small; text-align:left;" bgcolor="#000000">

<h2>ｽｷﾙ一覧</h2>

<form action="http://test.giant-recs.froute.jp/admin/admin_block.php">

<select name="sort">
<option  value="0" {if 0 eq $input_data.sort}selected{/if}>ｽｷﾙID順</option>
<option  value="1" {if 1 eq $input_data.sort}selected{/if}>初期効果率高い順</option>
<option  value="2" {if 2 eq $input_data.sort}selected{/if}>初期発動率高い順</option>
</select>
<input type="hidden" name="type" value="9" />
<input type="submit" class="submitbtn" value="検索">
</form>


<table class="box">
	<tr>
	<th>
	ｽｷﾙID
	</th>
	<th>
	ｽｷﾙ名
	</th>
	<th>
	初期効果率
	</th>
	<th>
	効果率上昇値(LvUp毎)
	</th>
	<th>
	初期発動率
	</th>
	<th>
	発動率上昇値(LvUp毎)
	</th>
	<th>
	効果説明
	</th>
	<th>
	ﾚﾍﾞﾙMAX時効果率
	</th>
	<th>
	ﾚﾍﾞﾙMAX時発動率
	</th>
	</tr>
	{foreach from=$input_data.data key=key item=item}
		<tr>
		{foreach from=$item key=key2 item=value}
			<td>
			{$value}
			</td>
		{/foreach}
		</tr>
	{/foreach}
</table>


</body>
</html>