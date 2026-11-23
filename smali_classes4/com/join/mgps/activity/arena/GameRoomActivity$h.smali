.class Lcom/join/mgps/activity/arena/GameRoomActivity$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/arena/GameRoomActivity;->initOnClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/arena/GameRoomActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/arena/GameRoomActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$h;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

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
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$h;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$300(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lapp/mgsim/arena/UserType;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget-object v0, Lapp/mgsim/arena/UserType;->OWNER:Lapp/mgsim/arena/UserType;

    .line 8
    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$h;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getState()Lcom/papa91/battle/protocol/RoomState;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    sget-object v0, Lcom/papa91/battle/protocol/RoomState;->START:Lcom/papa91/battle/protocol/RoomState;

    .line 21
    .line 22
    if-ne p1, v0, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$h;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 25
    .line 26
    const-string v0, "\u6e38\u620f\u5df2\u7ecf\u5f00\u59cb\uff0c\u65e0\u6cd5\u8bbe\u7f6e\u5916\u8bbe!"

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$h;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$1400(Lcom/join/mgps/activity/arena/GameRoomActivity;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$h;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 41
    .line 42
    const-string v0, "\u623f\u95f4\u5df2\u7ecf\u8fdb\u5165\u5012\u8ba1\u65f6\u72b6\u6001\uff0c\u4e0d\u80fd\u518d\u8bbe\u7f6e\uff01"

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$h;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 49
    .line 50
    iget-object p1, p1, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 51
    .line 52
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$h;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 53
    .line 54
    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomActivity;->accountUtil:Lcom/join/mgps/Util/b;

    .line 55
    .line 56
    invoke-static {p1, v0}, Lcom/join/mgps/socket/fight/arena/c;->a(Lcom/papa91/battle/protocol/GameRoom;Lcom/join/mgps/Util/b;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$h;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 63
    .line 64
    const-string v0, "\u5df2\u6709\u73a9\u5bb6\u8fdb\u5165\uff0c\u65e0\u6cd5\u518d\u8bbe\u7f6e!"

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$h;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 71
    .line 72
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$000(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/socket/fight/arena/b;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$h;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 77
    .line 78
    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$h;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 85
    .line 86
    invoke-static {v1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$2200(Lcom/join/mgps/activity/arena/GameRoomActivity;)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    const-string v2, "register_type_GameRoomActivity"

    .line 91
    .line 92
    invoke-static {v2, v0, v1}, Lapp/mgsim/arena/ArenaRequestFactory;->setRoomPeripheralJoin(Ljava/lang/String;IZ)Lapp/mgsim/arena/ArenaRequest;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {p1, v0}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method
