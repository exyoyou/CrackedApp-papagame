.class Lcom/join/mgps/activity/arena/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/arena/a;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/arena/a;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/arena/a;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/arena/a$c;->b:Lcom/join/mgps/activity/arena/a;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a$c;->b:Lcom/join/mgps/activity/arena/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/arena/a;->N(Lcom/join/mgps/activity/arena/a;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a$c;->b:Lcom/join/mgps/activity/arena/a;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/join/mgps/activity/arena/a;->l:Landroid/app/Activity;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a$c;->b:Lcom/join/mgps/activity/arena/a;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/join/mgps/activity/arena/a;->f:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->stopLoadMore()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a$c;->b:Lcom/join/mgps/activity/arena/a;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/join/mgps/activity/arena/a;->l:Landroid/app/Activity;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/join/mgps/activity/arena/a$c;->b:Lcom/join/mgps/activity/arena/a;

    .line 35
    .line 36
    const v2, 0x7f12031e

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a$c;->b:Lcom/join/mgps/activity/arena/a;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/join/mgps/activity/arena/a;->W()V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void
.end method

.method public onRefresh()V
    .locals 0

    return-void
.end method
