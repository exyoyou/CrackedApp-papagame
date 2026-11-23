.class Lcom/join/mgps/activity/arena/ArenaGameListActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/arena/ArenaGameListActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/arena/ArenaGameListActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/arena/ArenaGameListActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity$b;->b:Lcom/join/mgps/activity/arena/ArenaGameListActivity;

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
    iget-object v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity$b;->b:Lcom/join/mgps/activity/arena/ArenaGameListActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->access$100(Lcom/join/mgps/activity/arena/ArenaGameListActivity;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity$b;->b:Lcom/join/mgps/activity/arena/ArenaGameListActivity;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity$b;->b:Lcom/join/mgps/activity/arena/ArenaGameListActivity;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity$b;->b:Lcom/join/mgps/activity/arena/ArenaGameListActivity;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity$b;->b:Lcom/join/mgps/activity/arena/ArenaGameListActivity;

    .line 31
    .line 32
    const v2, 0x7f12031e

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity$b;->b:Lcom/join/mgps/activity/arena/ArenaGameListActivity;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->requestRecentGameList()V

    .line 46
    .line 47
    .line 48
    :cond_1
    return-void
.end method
