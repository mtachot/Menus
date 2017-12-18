<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TreeView1.aspx.cs" Inherits="MenuExemples.Pages.TreeView" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Custom TreeView</title>
    <link rel="stylesheet" href="../Resources/CSS/TreeView1.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TreeView runat="server" ID="tvTreeView">
                <RootNodeStyle CssClass="rootNode" />
                <NodeStyle CssClass="treeNode" />
                <LeafNodeStyle CssClass="leafNode" />
                <SelectedNodeStyle CssClass="selectedNode" />
                <Nodes>
                    <asp:TreeNode Text="ROOT">
                        <asp:TreeNode Text="node1">
                            <asp:TreeNode Text="node1.1"></asp:TreeNode>
                            <asp:TreeNode Text="node1.2"></asp:TreeNode>
                        </asp:TreeNode>
                        <asp:TreeNode Text="node2">
                            <asp:TreeNode Text="node2.1"></asp:TreeNode>
                            <asp:TreeNode Text="node2.2"></asp:TreeNode>
                            <asp:TreeNode Text="node2.3">
                                <asp:TreeNode Text="node2.3.1"></asp:TreeNode>
                                <asp:TreeNode Text="node2.3.2"></asp:TreeNode>
                            </asp:TreeNode>
                            <asp:TreeNode Text="node2.4"></asp:TreeNode>
                        </asp:TreeNode>
                        <asp:TreeNode Text="node3"></asp:TreeNode>
                        <asp:TreeNode Text="node4"></asp:TreeNode>
                        <asp:TreeNode Text="node5">
                            <asp:TreeNode Text="node5.1"></asp:TreeNode>
                        </asp:TreeNode>
                    </asp:TreeNode>
                </Nodes>
            </asp:TreeView>
        </div>
    </form>
</body>
</html>
