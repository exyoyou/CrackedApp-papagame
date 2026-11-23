.class Lcom/join/mgps/activity/arena/GameRoomListActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/fragment/roomlist/c$n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/arena/GameRoomListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/arena/GameRoomListActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$e;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "newSize",
            "isElite"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$e;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->updateRoomCountsChanged(IZ)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$e;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->updateRoomCount()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public b(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isElite"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$e;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->hideLoadingView()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
