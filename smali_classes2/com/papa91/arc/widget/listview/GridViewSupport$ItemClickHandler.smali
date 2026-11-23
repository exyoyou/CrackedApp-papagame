.class Lcom/papa91/arc/widget/listview/GridViewSupport$ItemClickHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/widget/listview/GridViewSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemClickHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/widget/listview/GridViewSupport;


# direct methods
.method private constructor <init>(Lcom/papa91/arc/widget/listview/GridViewSupport;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/widget/listview/GridViewSupport$ItemClickHandler;->this$0:Lcom/papa91/arc/widget/listview/GridViewSupport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/papa91/arc/widget/listview/GridViewSupport;Lcom/papa91/arc/widget/listview/GridViewSupport$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/papa91/arc/widget/listview/GridViewSupport$ItemClickHandler;-><init>(Lcom/papa91/arc/widget/listview/GridViewSupport;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/widget/listview/GridViewSupport$ItemClickHandler;->this$0:Lcom/papa91/arc/widget/listview/GridViewSupport;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa91/arc/widget/listview/GridViewSupport;->access$200(Lcom/papa91/arc/widget/listview/GridViewSupport;)Landroid/widget/AdapterView$OnItemClickListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/papa91/arc/widget/listview/GridViewSupport$ItemClickHandler;->this$0:Lcom/papa91/arc/widget/listview/GridViewSupport;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/papa91/arc/widget/listview/GridViewSupport;->getHeaderViewCount()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/papa91/arc/widget/listview/GridViewSupport$ItemClickHandler;->this$0:Lcom/papa91/arc/widget/listview/GridViewSupport;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/papa91/arc/widget/listview/GridViewSupport;->access$300(Lcom/papa91/arc/widget/listview/GridViewSupport;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    mul-int v0, v0, v1

    .line 22
    .line 23
    sub-int v4, p3, v0

    .line 24
    .line 25
    if-ltz v4, :cond_0

    .line 26
    .line 27
    iget-object p3, p0, Lcom/papa91/arc/widget/listview/GridViewSupport$ItemClickHandler;->this$0:Lcom/papa91/arc/widget/listview/GridViewSupport;

    .line 28
    .line 29
    invoke-static {p3}, Lcom/papa91/arc/widget/listview/GridViewSupport;->access$200(Lcom/papa91/arc/widget/listview/GridViewSupport;)Landroid/widget/AdapterView$OnItemClickListener;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    move-object v2, p1

    .line 34
    move-object v3, p2

    .line 35
    move-wide v5, p4

    .line 36
    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/widget/listview/GridViewSupport$ItemClickHandler;->this$0:Lcom/papa91/arc/widget/listview/GridViewSupport;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa91/arc/widget/listview/GridViewSupport;->access$400(Lcom/papa91/arc/widget/listview/GridViewSupport;)Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/papa91/arc/widget/listview/GridViewSupport$ItemClickHandler;->this$0:Lcom/papa91/arc/widget/listview/GridViewSupport;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/papa91/arc/widget/listview/GridViewSupport;->getHeaderViewCount()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/papa91/arc/widget/listview/GridViewSupport$ItemClickHandler;->this$0:Lcom/papa91/arc/widget/listview/GridViewSupport;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/papa91/arc/widget/listview/GridViewSupport;->access$300(Lcom/papa91/arc/widget/listview/GridViewSupport;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    mul-int v0, v0, v1

    .line 22
    .line 23
    sub-int v4, p3, v0

    .line 24
    .line 25
    if-ltz v4, :cond_0

    .line 26
    .line 27
    iget-object p3, p0, Lcom/papa91/arc/widget/listview/GridViewSupport$ItemClickHandler;->this$0:Lcom/papa91/arc/widget/listview/GridViewSupport;

    .line 28
    .line 29
    invoke-static {p3}, Lcom/papa91/arc/widget/listview/GridViewSupport;->access$400(Lcom/papa91/arc/widget/listview/GridViewSupport;)Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    move-object v2, p1

    .line 34
    move-object v3, p2

    .line 35
    move-wide v5, p4

    .line 36
    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    .line 37
    .line 38
    .line 39
    :cond_0
    const/4 p1, 0x1

    .line 40
    return p1
.end method
