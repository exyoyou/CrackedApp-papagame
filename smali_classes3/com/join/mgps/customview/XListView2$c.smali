.class Lcom/join/mgps/customview/XListView2$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/XListView2;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/XListView2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/XListView2$c;->b:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/XListView2$c;->b:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p1, Lcom/join/mgps/customview/XListView2;->p:Z

    .line 5
    .line 6
    iget-object p1, p1, Lcom/join/mgps/customview/XListView2;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/mgps/customview/XListView2$c;->b:Lcom/join/mgps/customview/XListView2;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/join/mgps/customview/XListView2;->f:Lcom/join/mgps/customview/i;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-interface {p1}, Lcom/join/mgps/customview/i;->onLoadMore()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
