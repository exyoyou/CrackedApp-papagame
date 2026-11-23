.class Lcom/join/mgps/activity/arena/GameRoomActivity$t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/arena/GameRoomActivity;
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
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$t;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$t;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$508(Lcom/join/mgps/activity/arena/GameRoomActivity;)I

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$t;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 7
    .line 8
    iget-object v1, v0, Lcom/join/mgps/activity/arena/GameRoomActivity;->tv_game_time_state:Landroid/widget/TextView;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$500(Lcom/join/mgps/activity/arena/GameRoomActivity;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-static {v0}, Lcom/join/mgps/Util/e0;->f(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$t;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$700(Lcom/join/mgps/activity/arena/GameRoomActivity;)Landroid/os/Handler;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$t;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 28
    .line 29
    invoke-static {v1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$600(Lcom/join/mgps/activity/arena/GameRoomActivity;)Ljava/lang/Runnable;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-wide/16 v2, 0x3e8

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 36
    .line 37
    .line 38
    return-void
.end method
