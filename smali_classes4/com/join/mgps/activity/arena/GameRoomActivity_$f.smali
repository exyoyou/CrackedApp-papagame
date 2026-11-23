.class Lcom/join/mgps/activity/arena/GameRoomActivity_$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/arena/GameRoomActivity_;->statGameByBattleServerIp(Lcom/papa91/battle/protocol/BattleServerAddr;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/papa91/battle/protocol/BattleServerAddr;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/join/mgps/activity/arena/GameRoomActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/arena/GameRoomActivity_;Lcom/papa91/battle/protocol/BattleServerAddr;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$battleServerAddr",
            "val$battleServerIp"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity_$f;->d:Lcom/join/mgps/activity/arena/GameRoomActivity_;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity_$f;->b:Lcom/papa91/battle/protocol/BattleServerAddr;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/arena/GameRoomActivity_$f;->c:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity_$f;->d:Lcom/join/mgps/activity/arena/GameRoomActivity_;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity_$f;->b:Lcom/papa91/battle/protocol/BattleServerAddr;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity_$f;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/arena/GameRoomActivity_;->access$1301(Lcom/join/mgps/activity/arena/GameRoomActivity_;Lcom/papa91/battle/protocol/BattleServerAddr;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
