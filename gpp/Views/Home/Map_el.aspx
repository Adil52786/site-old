<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site_el.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	���������, ������
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>������ ������-����������  </h2>

    <div id="theMap">
    </div>
    <div id="goThere">
    <h4>��� �� ���� ��� ���������; </h4>
    ��� �� ���� ��� ���������, ������������ ��� ������ ��� <b>�����-�������</b> ��� ���� �� ������ ��� ���������
    ������� ����� ��� <b>������-�������</b>.
    
    <br /><br />
    ���� ������� ��� ������ ������� ����� ���� <b> 111</b> ����� ���� <b>�������-������ (�����).</b>   
    <br /><br />
    
    ��������� ����� �� <b>���������</b> (������ ����� ��� ����� �����-������-��������) ��� ���������� ���� <b>������ (�����).</b>
    <br /><br />
    ���� ��� ������ ������� �������� ��� <b>����</b> ��� ��� �������� ����� ��� <b>������.</b> 
    ������ ���� ��� ������ �� ��������� ���� ����� ��� <b>������</b> ��� �� ����������� �� ���������.
    <p /> <br /><br />
    <p>
    [<b>Coordinates:</b> 37�44'N, 21�40'E]
    </p>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="jscriptContent" runat="server">
<script type="text/javascript">
$(document).ready(function(){
	createMap();
});
function createMap(){
	    var map = new GMap2(document.getElementById("theMap"));
        map.setCenter(new GLatLng(37.733, 21.66), 13);
        map.openInfoWindowHtml(map.getCenter(),
		"This is, <b>Kaloletsi</b><br/>Greece->Olympia->Foloi-><a href='http://kaloletsi.net/Home/Kaloletsi'>Neraida</a><br/><br/>[<b>Coordinates:</b> 37�44'N, 21�40'E]");
        map.setUIToDefault();							
		map.setMapType(G_HYBRID_MAP);
}

</script>

</asp:Content>
