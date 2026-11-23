.class Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->enableLoadingMoreView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)V
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
    iput-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$d;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

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
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$d;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->i(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$d;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p1, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->m:Z

    .line 14
    .line 15
    iget-object p1, p1, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->l:Lcom/join/mgps/customview/XListViewFooter;

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$d;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->a(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$g;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$d;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->a(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$g;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$g;->onLoadMore()V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method
