.class Lcom/join/mgps/activity/arena/GameRoomListActivity_$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/arena/GameRoomListActivity_;->updateRoomCount(Lapp/mgsim/arena/ArenaResponse;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lapp/mgsim/arena/ArenaResponse;

.field final synthetic c:Z

.field final synthetic d:Lcom/join/mgps/activity/arena/GameRoomListActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Lapp/mgsim/arena/ArenaResponse;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$response",
            "val$isElite"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$d;->d:Lcom/join/mgps/activity/arena/GameRoomListActivity_;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$d;->b:Lapp/mgsim/arena/ArenaResponse;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$d;->c:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$d;->d:Lcom/join/mgps/activity/arena/GameRoomListActivity_;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$d;->b:Lapp/mgsim/arena/ArenaResponse;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$d;->c:Z

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/arena/GameRoomListActivity_;->access$301(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Lapp/mgsim/arena/ArenaResponse;Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
