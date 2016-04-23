<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GraffitiFormListView.aspx.cs" Inherits="GraffitiListView.GraffitiFormListView" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Bootstrap -->
    <link href="../css/common.css" rel="stylesheet">
    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <!-- flexigrid -->
    <link rel="stylesheet" type="text/css" href="../css/flexigrid.pack.css" />
    <title>graffitiFormListView</title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        
        <%-- *** ListViewにバインドするデータベースの定義 *** --%>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
          DataFile="~/data/資産管理1.mdb" SelectCommand="SELECT * FROM [社員マスター]">
        </asp:AccessDataSource>

        <%-- *** ListViewタグの解説 *** --%>
        <%-- ItemTemplate   説明：個々の項目に対して表示するコンテンツを制御します。
             LayoutTemplate 説明：ItemTemplateまたはGroupTemplateで定義されるコンテンツを囲む、
                                  table、div、またはspan要素などのコンテナオブジェクトを定義するルート要素を指定します。
             ID="itemPlaceholder"説明：ItemTemplateテンプレートを始めとするXxxxxItemTemplateテンプレートの内容が
        　　　　　　　　　　　　　　　　実際に埋め込まれるプレイスホルダを表すもので、省略することはできない
                                     <tr ID="itemPlaceholder" runat="server"></tr>
                                     <asp:PlaceHolder runat="server" ID="itemPlaceholder" />
        --%>

        <%-- *** flexigridによるListViewのヘッダー部固定テスト *** --%>
        <%--
              1.ListViewのLayoutTemplate内に固定するヘッダー部用のtableタグとデータ部用のtableタグを用意
              2.flexigridを適用するため、ヘッダー部用のtableタグをhDiv＆hDivBoxのdivタグで囲みました。
              3.flexigridを適用するため、ヘッダー部用のtableタグ内のセル（divタグ）にclass="sundefined"を追記しました。
              4.flexigridを適用するため、データ部用のtableタグにclass="flexme"を追記しました。
        --%>
        <h1>flexigridによるListViewのヘッダー部固定</h1>
        <asp:listview ID="Listview1" runat="server" DataKeyNames="社員ID" DataSourceID="AccessDataSource1">

          <ItemTemplate>
            <tr style="">
              <td>
                <asp:Label ID="社員IDLabel" runat="server" Text='<%# Eval("社員ID") %>' />
              </td>
              <td>
                <asp:Label ID="氏名Label" runat="server" Text='<%# Eval("氏名") %>' />
              </td>
              <td>
                <asp:Label ID="シメイLabel" runat="server" Text='<%# Eval("シメイ") %>' />
              </td>
              <td>
                <asp:Label ID="タイトルLabel" runat="server" Text='<%# Eval("タイトル") %>' />
              </td>
              <td>
                <asp:Label ID="内線番号Label" runat="server" Text='<%# Eval("内線番号") %>' />
              </td>
              <td>
                <asp:Label ID="会社直通TELLabel" runat="server" Text='<%# Eval("会社直通TEL") %>' />
              </td>
              <td>
                <asp:Label ID="支社名Label" runat="server" Text='<%# Eval("支社名") %>' />
              </td>
            </tr>
          </ItemTemplate>

          <LayoutTemplate>
              <div class="col-lg-10">
                  <%-- 固定するヘッダー部の定義--%>
	                <div class="hDiv"> 
	                    <div class="hDivBox">
	                        <table class="">
                              <thead>
                              <tr id="Tr2" runat="server" style="">
                                  <th id="Th1" runat="server"  axis="社員ID">
                                      <div style="width: 120px;" class="sundefined bg-primary">社員ID</div>
                                  </th>
                                  <th id="Th2" runat="server"  axis="氏名">
                                      <div style="width: 120px;" class="sundefined bg-primary">氏名</div>
                                  </th>
                                  <th id="Th3" runat="server" axis="シメイ">
                                      <div style="width: 120px;" class="sundefined bg-primary">シメイ</div>
                                  </th>
                                  <th id="Th4" runat="server" axis="タイトル">
                                      <div style="width: 120px;" class="sundefined bg-primary">タイトル</div>
                                  </th>
                                  <th id="Th5" runat="server" axis="内線番号">
                                      <div style="width: 120px;" class="sundefined bg-primary"> 内線番号</div>
                                  </th>
                                  <th id="Th6" runat="server" axis="会社直通TEL">
                                      <div style="width: 120px;" class="sundefined bg-primary">会社直通TEL</div>
                                  </th>
                                  <th id="Th7" runat="server" axis="支社名">
                                      <div style="width: 120px;" class="sundefined bg-primary">支社名</div>
                                  </th>
                              </tr>
                              </thead>
                          </table>
                      </div>
                  </div>
                  <%-- データ部のスタイル定義＆データ部表示 --%>
                  <table ID="itemPlaceholderContainer" runat="server" border="0" style="" class="flexme">
                      <%-- データ部のスタイル定義 ヘッダー部とデータ部のwidthを合わせることを忘れずに！ --%>
                      <thead>
                          <tr id="Tr1" runat="server" style="">
                            <th id="Th8" runat="server" axis="社員ID" style="width: 120px;"></th>
                            <th id="Th9" runat="server" axis="氏名" style="width: 120px;"></th>
                            <th id="Th10" runat="server" axis="シメイ" style="width: 120px;"></th>
                            <th id="Th11" runat="server" axis="タイトル" style="width: 120px;"></th>
                            <th id="Th12" runat="server" axis="内線番号" style="width: 120px;"></th>
                            <th id="Th13" runat="server" axis="会社直通TEL" style="width: 120px;"></th>
                            <th id="Th14" runat="server" axis="支社名" style="width: 120px;"></th>
                          </tr>
                      </thead>
                      <%-- データ部表示・ItemTemplateと紐付け --%>
                      <tbody>
                          <tr ID="itemPlaceholder" runat="server">
                          </tr>
                      </tbody>
                  </table>

              </div>
          </LayoutTemplate>

        </asp:listview>    


        <%-- *** cssによるListViewのヘッダー部固定テスト *** --%>
        <br clear="left">
        <h1>cssによるListViewのヘッダー部固定</h1>

        <style type="text/css">
        <!--
          .scr {
            overflow-y: scroll:auto;   /* スクロール表示               */ 
            overflow-x: hidden;
            width: 840px;         /* テーブルのwidthの合計値を設定 */
            height: 300px;
          }
        -->
        </style>

        <asp:ListView ID="ListView2" runat="server" DataKeyNames="社員ID" DataSourceID="AccessDataSource1">

          <ItemTemplate>
            <tr style="">
              <td>
                <asp:Label ID="社員IDLabel" runat="server" Text='<%# Eval("社員ID") %>' />
              </td>
              <td>
                <asp:Label ID="氏名Label" runat="server" Text='<%# Eval("氏名") %>' />
              </td>
              <td>
                <asp:Label ID="シメイLabel" runat="server" Text='<%# Eval("シメイ") %>' />
              </td>
              <td>
                <asp:Label ID="タイトルLabel" runat="server" Text='<%# Eval("タイトル") %>' />
              </td>
              <td>
                <asp:Label ID="内線番号Label" runat="server" Text='<%# Eval("内線番号") %>' />
              </td>
              <td>
                <asp:Label ID="会社直通TELLabel" runat="server" Text='<%# Eval("会社直通TEL") %>' />
              </td>
              <td>
                <asp:Label ID="支社名Label" runat="server" Text='<%# Eval("支社名") %>' />
              </td>
            </tr>
          </ItemTemplate>

          <LayoutTemplate>
              <div class="col-lg-11">
                  <%-- 固定するヘッダー部の定義 ヘッダー部とデータ部のwidthを合わせることを忘れずに！ --%>
	                <table>
                      <thead>
                      <tr id="Tr2" runat="server" style="">
                          <th id="Th1" runat="server">
                              <div style="width: 120px;" class="bg-primary">社員ID</div>
                          </th>
                          <th id="Th2" runat="server">
                              <div style="width: 120px;" class="bg-primary">氏名</div>
                          </th>
                          <th id="Th3" runat="server">
                              <div style="width: 120px;" class="bg-primary">シメイ</div>
                          </th>
                          <th id="Th4" runat="server">
                              <div style="width: 120px;" class="bg-primary">タイトル</div>
                          </th>
                          <th id="Th5" runat="server">
                              <div style="width: 120px;" class="bg-primary"> 内線番号</div>
                          </th>
                          <th id="Th6" runat="server">
                              <div style="width: 120px;" class="bg-primary">会社直通TEL</div>
                          </th>
                          <th id="Th7" runat="server">
                              <div style="width: 120px;" class="bg-primary">支社名</div>
                          </th>
                      </tr>
                      </thead>
                  </table>

                  <%-- データ部のスタイル定義＆データ部表示 divタグにclass="scr"を適用してデータ部の領域にスクロールバーを表示 --%>
                  <div class="scr">
                  <table ID="itemPlaceholderContainer" runat="server" border="0" style="" class="table table-striped table-hover">
                      <%-- データ部のスタイル定義 ヘッダー部とデータ部のwidthを合わせることを忘れずに！ --%>
                      <thead>
                          <tr id="Tr1" runat="server" style="">
                            <th id="Th8" runat="server" axis="社員ID" style="width: 120px;"></th>
                            <th id="Th9" runat="server" axis="氏名" style="width: 120px;"></th>
                            <th id="Th10" runat="server" axis="シメイ" style="width: 120px;"></th>
                            <th id="Th11" runat="server" axis="タイトル" style="width: 120px;"></th>
                            <th id="Th12" runat="server" axis="内線番号" style="width: 120px;"></th>
                            <th id="Th13" runat="server" axis="会社直通TEL" style="width: 120px;"></th>
                            <th id="Th14" runat="server" axis="支社名" style="width: 120px;"></th>
                          </tr>
                      </thead>
                      <%-- データ部表示・ItemTemplateと紐付け --%>
                      <tbody>
                          <tr ID="itemPlaceholder" runat="server">
                          </tr>
                      </tbody>
                  </table>
                  </div>
              </div>
          </LayoutTemplate>

        </asp:ListView>

    </div>
<%-- jQuery & Bootstrap & quicksearch --%>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
<script type="text/javascript" src="../js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="../js/flexigrid.pack.js"></script>
<script type="text/javascript">
   $(document).ready(function () {
     $('.flexme').flexigrid();
   });
</script>
    </form>
</body>
</html>

