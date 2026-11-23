.class Lcom/join/mgps/activity/arena/GameRoomActivity$e;
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
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$e;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

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
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$e;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

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
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$e;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getElite()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$e;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 23
    .line 24
    const-string v0, "\u666e\u901a\u573a\u4e0d\u53ef\u4ee5\u8bbe\u7f6e\u6311\u6218\u91d1\uff0c\u5982\u9700\u8981\u8bbe\u7f6e\uff0c\u8bf7\u8fdb\u5165\u7cbe\u82f1\u573a!"

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$e;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 31
    .line 32
    iget-object p1, p1, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$e;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomActivity;->accountUtil:Lcom/join/mgps/Util/b;

    .line 37
    .line 38
    invoke-static {p1, v0}, Lcom/join/mgps/socket/fight/arena/c;->a(Lcom/papa91/battle/protocol/GameRoom;Lcom/join/mgps/Util/b;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$e;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 45
    .line 46
    const-string v0, "\u5df2\u6709\u73a9\u5bb6\u8fdb\u5165\uff0c\u65e0\u6cd5\u518d\u8bbe\u7f6e\u6311\u6218\u91d1!"

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$e;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 53
    .line 54
    iget-object p1, p1, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getState()Lcom/papa91/battle/protocol/RoomState;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    sget-object v0, Lcom/papa91/battle/protocol/RoomState;->START:Lcom/papa91/battle/protocol/RoomState;

    .line 61
    .line 62
    if-ne p1, v0, :cond_3

    .line 63
    .line 64
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$e;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 65
    .line 66
    const-string v0, "\u6e38\u620f\u5df2\u7ecf\u5f00\u59cb\uff0c\u65e0\u6cd5\u8bbe\u7f6e\u6311\u6218\u91d1!"

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$e;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 73
    .line 74
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$1400(Lcom/join/mgps/activity/arena/GameRoomActivity;)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_4

    .line 79
    .line 80
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$e;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 81
    .line 82
    const-string v0, "\u623f\u95f4\u5df2\u7ecf\u8fdb\u5165\u5012\u8ba1\u65f6\u72b6\u6001\uff0c\u4e0d\u80fd\u518d\u8bbe\u7f6e\u6311\u6218\u91d1\uff01"

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$e;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 89
    .line 90
    iget-object v0, p1, Lcom/join/mgps/activity/arena/GameRoomActivity;->battleChallengeConfig:Lcom/join/mgps/dto/BattleChallengeConfig;

    .line 91
    .line 92
    if-eqz v0, :cond_5

    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showSetGoldDialog()V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_5
    const-string v0, "\u6b63\u5728\u83b7\u53d6\u914d\u7f6e\u4fe1\u606f..."

    .line 99
    .line 100
    invoke-static {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$1500(Lcom/join/mgps/activity/arena/GameRoomActivity;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$e;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->getChallengeConfig()V

    .line 106
    .line 107
    .line 108
    :goto_0
    return-void
.end method
