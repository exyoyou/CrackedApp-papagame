.class Lcom/join/mgps/fragment/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/b;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/fragment/b;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/b;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/b$b;->b:Lcom/join/mgps/fragment/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/b$b;->b:Lcom/join/mgps/fragment/b;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/fragment/b;->b0(Lcom/join/mgps/fragment/b;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/b$b;->b:Lcom/join/mgps/fragment/b;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/fragment/b;->a0(Lcom/join/mgps/fragment/b;)Landroid/app/Activity;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/fragment/b$b;->b:Lcom/join/mgps/fragment/b;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/join/mgps/fragment/b;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->stopLoadMore()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/fragment/b$b;->b:Lcom/join/mgps/fragment/b;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/join/mgps/fragment/b;->d0()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/b$b;->b:Lcom/join/mgps/fragment/b;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/join/mgps/fragment/b;->loadData()V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public onRefresh()V
    .locals 0

    return-void
.end method
