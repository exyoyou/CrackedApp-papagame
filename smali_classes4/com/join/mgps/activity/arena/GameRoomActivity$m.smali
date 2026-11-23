.class Lcom/join/mgps/activity/arena/GameRoomActivity$m;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/arena/GameRoomActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/arena/GameRoomActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/arena/GameRoomActivity;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "millisInFuture",
            "countDownInterval"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$m;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 1
    const-string v0, "GameRoomActivity"

    .line 2
    .line 3
    const-string v1, "mStartGameCountDowner onFinish---"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$m;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 9
    .line 10
    const-string v1, "\u542f\u52a8\u6e38\u620f\u8d85\u65f6\uff01"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$m;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->onLeaveRoom()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$m;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->finishActivity()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public onTick(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "millisUntilFinished"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "mStartGameCountDowner millisUntilFinished:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string p2, "GameRoomActivity"

    .line 19
    .line 20
    invoke-static {p2, p1}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
