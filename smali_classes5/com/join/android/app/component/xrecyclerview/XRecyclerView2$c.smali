.class Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->setNoMore()V
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
    iput-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$c;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

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
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$c;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->a(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$g;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$c;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->a(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$g;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$g;->onRefresh()V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$c;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->l:Lcom/join/mgps/customview/XListViewFooter;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$c;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    invoke-static {p1, v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->f(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;Z)Z

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$c;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->l:Lcom/join/mgps/customview/XListViewFooter;

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method
