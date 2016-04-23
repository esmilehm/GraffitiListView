<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GraffitiFormListViewParagraph.aspx.cs" Inherits="GraffitiListView.GraffitiFormListViewParagraph" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <!-- Bootstrap -->
    <link href="../css/common.css" rel="stylesheet">
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <title>graffitiFormListView</title>
</head>

<body>
    <form id="form1" runat="server">
    <div class="container">

        <%-- *** ListViewにバインドするデータベースの定義 *** --%>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
          DataFile="~/data/資産管理1.mdb" SelectCommand="SELECT * FROM [社員マスター]">
        </asp:AccessDataSource>


        <%-- *** cssによるListViewのヘッダー部固定テスト *** --%>
        <%--
         【NOTE】
         　１．colgroupで、29列（元となるTABLEのcolspanより算出）の列を定義。40px ×　29列　＝　1160px。
         　２．固定するヘッダー部をブラウザ（chrome）で確認したところ、なぜかwidthが1140pxであったため、データ部とズレていた。
         　３．データ部を囲むdivのwidthをヘッダー部（なぜか1140px）＋スクロールバー（15px）　＝　1155pxに設定。
         　４．ブラウザを小さくするとヘッダー部の方が小さく縮んでデータ部と幅が合わなくなるため、ヘッダー部をdivタグで囲みwidthを1140pxに設定。
         　５．ItemTemplateにあるTextboxタグのままだと、幅が合わないため、Labelタグに変更。
         --%>
        <h1>cssによるListViewのヘッダー部固定２ テーブル段組版</h1>
        <style type="text/css">
        <!--
          .hdr {
            width: 1140px;             /* テーブルのwidthの合計値を設定 ヘッダー部（なぜか1140px） */
          }        
          .scr {
            overflow-y: scroll:auto;   /* スクロール表示         */ 
            overflow-x: hidden;
            width: 1155px;             /* テーブルのwidthの合計値を設定 ヘッダー部（なぜか1140px）＋スクロールバー（15px） */
            height: 300px;
          }
        -->
        </style>

        <asp:ListView ID="ListView2" runat="server" DataKeyNames="社員ID" DataSourceID="AccessDataSource1">

          <ItemTemplate>
              <%-- colgroupで列幅を設定（colspanとwidthをthタグ内で一緒に定義すると表示が崩れるため colgroupで設定） --%>
              <colgroup>
                  <col style='width:40px;background-color:#f0f8ff'>
                  <col style='width:40px;background-color:#faebd7'>
                  <col style='width:40px;background-color:#00ffff'>
                  <col style='width:40px;background-color:#7fffd4'>
                  <col style='width:40px;background-color:#f0ffff'>
                  <col style='width:40px;background-color:#f5f5dc'>
                  <col style='width:40px;background-color:#ffe4c4'>
                  <col style='width:40px;background-color:#ffb6c1'>
                  <col style='width:40px;background-color:#ffa07a'>
                  <col style='width:40px;background-color:#20b2aa'>

                  <col style='width:40px;background-color:#eee8aa'>
                  <col style='width:40px;background-color:#98fb98'>
                  <col style='width:40px;background-color:#afeeee'>
                  <col style='width:40px;background-color:#db7093'>
                  <col style='width:40px;background-color:#ffefd5'>
                  <col style='width:40px;background-color:#ffdab9'>
                  <col style='width:40px;background-color:#cd853f'>
                  <col style='width:40px;background-color:#ffc0cb'>
                  <col style='width:40px;background-color:#dda0dd'>
                  <col style='width:40px;background-color:#b0e0e6'>

                  <col style='width:40px;background-color:#800080'>
                  <col style='width:40px;background-color:#ff0000'>
                  <col style='width:40px;background-color:#bc8f8f'>
                  <col style='width:40px;background-color:#4169e1'>
                  <col style='width:40px;background-color:#8b4513'>
                  <col style='width:40px;background-color:#fa8072'>
                  <col style='width:40px;background-color:#f4a460'>
                  <col style='width:40px;background-color:#2e8b57'>
                  <col style='width:40px;background-color:#fff5ee'>

              </colgroup>

			        <tr id="Tr1" runat="server">
				        <td class="check" rowspan="3"><input type="checkbox" name="select1" value="x"></td>
				        <td colspan="3"><asp:Label ID="Textbox1" runat="server" Text='<%# Eval("社員ID") %>' ReadOnly="true"/></td>
				        <td colspan="6"><asp:Label ID="Textbox2" runat="server" Text='<%# Eval("氏名") %>' ReadOnly="true"/></td>
				        <td colspan="3" ><asp:Label ID="Textbox3" runat="server" Text='<%# Eval("社員ID") %>' ReadOnly="true"/></td>
				        <td colspan="6"><asp:Label ID="Textbox4" runat="server" Text='<%# Eval("氏名") %>' ReadOnly="true"/></td>
				        <td colspan="3"><asp:Label ID="Textbox5" runat="server" Text='<%# Eval("社員ID") %>' ReadOnly="true"/></td>
				        <td colspan="3"><asp:Label ID="Textbox6" runat="server" Text='<%# Eval("氏名") %>' ReadOnly="true"/></td>
				        <td colspan="2"><asp:Label ID="Textbox7" runat="server" Text='<%# Eval("社員ID") %>' ReadOnly="true"/></td>
				        <td colspan="2"><asp:Label ID="Textbox8" runat="server" Text='<%# Eval("氏名") %>' ReadOnly="true"/></td>
			        </tr>

			        <tr id="Tr2" runat="server">
				        <td colspan="3"><asp:Label ID="Textbox9" runat="server" Text='<%# Eval("社員ID") %>' ReadOnly="true"/></td>
				        <td colspan="6"><asp:Label ID="Textbox10" runat="server" Text='<%# Eval("氏名") %>' ReadOnly="true"/></td>
				        <td colspan="4"><asp:Label ID="Textbox11" runat="server" Text='<%# Eval("社員ID") %>' ReadOnly="true"/></td>
				        <td colspan="2"><asp:Label ID="Textbox12" runat="server" Text='<%# Eval("氏名") %>' ReadOnly="true"/></td>
				        <td colspan="1"><asp:Label ID="Textbox13" runat="server" Text='<%# Eval("社員ID") %>' ReadOnly="true"/></a></td>
				        <td colspan="1"><asp:Label ID="Textbox14" runat="server" Text='<%# Eval("氏名") %>' ReadOnly="true"/></td>
				        <td colspan="5"><asp:Label ID="Textbox15" runat="server" Text='<%# Eval("社員ID") %>' ReadOnly="true"/></td>
				        <td colspan="2"><asp:Label ID="Textbox16" runat="server" Text='<%# Eval("氏名") %>' ReadOnly="true"/></td>
				        <td colspan="2"><asp:Label ID="Textbox17" runat="server" Text='<%# Eval("社員ID") %>' ReadOnly="true"/></td>
				        <td colspan="2"><asp:Label ID="Textbox18" runat="server" Text='<%# Eval("氏名") %>' ReadOnly="true"/></td>
			        </tr>

			        <tr id="Tr3" runat="server">
				        <td colspan="2"><asp:Label ID="Textbox19" runat="server" Text='<%# Eval("社員ID") %>' ReadOnly="true"/></td>
				        <td colspan="7"><asp:Label ID="Textbox20" runat="server" Text='<%# Eval("氏名") %>' ReadOnly="true"/></td>
				        <td colspan="6"><asp:Label ID="Textbox21" runat="server" Text='<%# Eval("社員ID") %>' ReadOnly="true"/></td>
				        <td colspan="7"><asp:Label ID="Textbox22" runat="server" Text='<%# Eval("氏名") %>' ReadOnly="true"/></td>
				        <td colspan="6"><asp:Label ID="Textbox23" runat="server" Text='<%# Eval("社員ID") %>' ReadOnly="true"/></td>
			        </tr>
          </ItemTemplate>

          <LayoutTemplate>

              <%-- 固定するヘッダー部の定義 ヘッダー部とデータ部のwidthを合わせることを忘れずに！ --%>
              <div class="hdr">
	            <table>
                  <%-- colgroupで列幅を設定（colspanとwidthをthタグ内で一緒に定義すると表示が崩れるため colgroupで設定） --%>
                  <colgroup>
                      <col style='width:40px;background-color:#f0f8ff'>
                      <col style='width:40px;background-color:#faebd7'>
                      <col style='width:40px;background-color:#00ffff'>
                      <col style='width:40px;background-color:#7fffd4'>
                      <col style='width:40px;background-color:#f0ffff'>
                      <col style='width:40px;background-color:#f5f5dc'>
                      <col style='width:40px;background-color:#ffe4c4'>
                      <col style='width:40px;background-color:#ffb6c1'>
                      <col style='width:40px;background-color:#ffa07a'>
                      <col style='width:40px;background-color:#20b2aa'>

                      <col style='width:40px;background-color:#eee8aa'>
                      <col style='width:40px;background-color:#98fb98'>
                      <col style='width:40px;background-color:#afeeee'>
                      <col style='width:40px;background-color:#db7093'>
                      <col style='width:40px;background-color:#ffefd5'>
                      <col style='width:40px;background-color:#ffdab9'>
                      <col style='width:40px;background-color:#cd853f'>
                      <col style='width:40px;background-color:#ffc0cb'>
                      <col style='width:40px;background-color:#dda0dd'>
                      <col style='width:40px;background-color:#b0e0e6'>

                      <col style='width:40px;background-color:#800080'>
                      <col style='width:40px;background-color:#ff0000'>
                      <col style='width:40px;background-color:#bc8f8f'>
                      <col style='width:40px;background-color:#4169e1'>
                      <col style='width:40px;background-color:#8b4513'>
                      <col style='width:40px;background-color:#fa8072'>
                      <col style='width:40px;background-color:#f4a460'>
                      <col style='width:40px;background-color:#2e8b57'>
                      <col style='width:40px;background-color:#fff5ee'>

                  </colgroup>

                  <thead>
				              <tr>
					              <th rowspan="3" id="Th1" runat="server">選択</th>
					              <th colspan="3" id="Th2" runat="server">薬品登録番号</th>
					              <th colspan="6" id="Th3" runat="server">薬品名</th>
					              <th colspan="3" id="Th4" runat="server">CAS No.</th>
					              <th colspan="6" id="Th5" runat="server">薬品会社</th>
					              <th colspan="3" id="Th6" runat="server">カタログコード</th>
					              <th colspan="3" id="Th7" runat="server">伝票番号</th>
					              <th colspan="2" id="Th8" runat="server">容量</th>
					              <th colspan="2" id="Th9" runat="server">残量</th>
				              </tr>

				              <tr>
					              <th colspan="3" id="Th11" runat="server">薬品管理者</th>
					              <th colspan="6" id="Th12" runat="server">保管場所</th>
					              <th colspan="4" id="Th13" runat="server">ボックス</th>
					              <th colspan="2" id="Th14" runat="server">状態</th>
					              <th colspan="1" id="Th15" runat="server">RA</th>
					              <th colspan="1" id="Th16" runat="server">結果</th>
					              <th colspan="5" id="Th17" runat="server">入手会社</th>
					              <th colspan="2" id="Th18" runat="server">入手年月日</th>
					              <th colspan="2" id="Th19" runat="server">登録年月日</th>
					              <th colspan="2" id="Th20" runat="server">廃棄年月日</th>
				              </tr>

				              <tr>
					              <th colspan="2" id="Th22" runat="server">計量義務</th>
					              <th colspan="7" id="Th23" runat="server">抵触法令等</th>
					              <th colspan="6" id="Th24" runat="server">消防法</th>
					              <th colspan="7" id="Th25" runat="server">所属</th>
					              <th colspan="6" id="Th26" runat="server">備考</th>
				              </tr>
                  </thead>
              </table>
              </div>
              <%-- データ部のスタイル定義＆データ部表示 divタグにclass="scr"を適用してデータ部の領域にスクロールバーを表示 --%>
              <div class="scr">
              <table ID="itemPlaceholderContainer" runat="server" border="0" style="" class="table-dummy table-striped-dummy table-hover-dummy">
                  <%-- ItemTemplate内でcolgroupを設定しているため、データ部の定義は不要 --%>
                  <%-- データ部表示・ItemTemplateと紐付け --%>
                  <tbody>
                      <tr ID="itemPlaceholder" runat="server">
                      </tr>
                  </tbody>
              </table>
              </div>

          </LayoutTemplate>

        </asp:ListView>

    </div>
<%-- jQuery & Bootstrap & quicksearch --%>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
<script type="text/javascript" src="../js/jquery-1.7.2.min.js"></script>
    </form>
</body>
</html>
