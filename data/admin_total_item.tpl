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

<h2>日別アイテム集計</h2>

<table class="box">
	<tr>
	<th>
	日時
	</th>
	<th>
	資金
	</th>
	<th>
	友情pt
	</th>
	<th>
	AP
	</th>
	<th>
	AP(自分用)
	</th>
	<th>
	SP
	</th>
	<th>
	SP(自分用)
	</th>
	<th>
	ﾀｲﾑﾊﾟｳﾀﾞｰ
	</th>
	<th>
	ﾀｲﾑﾊﾟｳﾀﾞｰﾐﾆ
	</th>
	<th>
	ｺﾞｰﾙﾄﾞﾁｹｯﾄ
	</th>
	<th>
	ﾚｷﾞｺｲﾝ
	</th>
	<th>
	最終更新日時
	</th>
	<th>
	DAU
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

<h2>ユーザーアイテム集計</h2>

<form action="http://test.giant-recs.froute.jp/admin/admin_block.php">

<select name="sort">
<option  value="1" {if 1 eq $input_data.sort}selected{/if}>資金多い順</option>
<option  value="2" {if 2 eq $input_data.sort}selected{/if}>友情pt多い順</option>
<option  value="3" {if 3 eq $input_data.sort}selected{/if}>AP多い順</option>
<option  value="4" {if 4 eq $input_data.sort}selected{/if}>AP(自分用)多い順</option>
<option  value="5" {if 5 eq $input_data.sort}selected{/if}>SP多い順</option>
<option  value="6" {if 6 eq $input_data.sort}selected{/if}>SP(自分用)多い順</option>
<option  value="7" {if 7 eq $input_data.sort}selected{/if}>ﾀｲﾑﾊﾟｳﾀﾞｰ多い順</option>
<option  value="8" {if 8 eq $input_data.sort}selected{/if}>ﾀｲﾑﾊﾟｳﾀﾞｰﾐﾆ多い順</option>
<option  value="9" {if 9 eq $input_data.sort}selected{/if}>ｺﾞｰﾙﾄﾞﾁｹｯﾄ多い順</option>
<option  value="10" {if 10 eq $input_data.sort}selected{/if}>ﾚｷﾞｺｲﾝ多い順</option>
</select>
<input type="hidden" name="type" value="8" />
<input type="submit" class="submitbtn" value="検索">
</form>

<table class="box">
	<tr>
	<th>
	ﾕｰｻﾞｰID
	</th>
	<th>
	資金
	</th>
	<th>
	友情pt
	</th>
	<th>
	AP
	</th>
	<th>
	AP(自分用)
	</th>
	<th>
	SP
	</th>
	<th>
	SP(自分用)
	</th>
	<th>
	ﾀｲﾑﾊﾟｳﾀﾞｰ
	</th>
	<th>
	ﾀｲﾑﾊﾟｳﾀﾞｰﾐﾆ
	</th>
	<th>
	ｺﾞｰﾙﾄﾞﾁｹｯﾄ
	</th>
	<th>
	ﾚｷﾞｺｲﾝ
	</th>
	<th>
	最終更新日時
	</th>
	<th>
	ﾕｰｻﾞｰ名
	</th>
	<th>
	課金額
	</th>
	</tr>
	{foreach from=$input_data.data2 key=key item=item}
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