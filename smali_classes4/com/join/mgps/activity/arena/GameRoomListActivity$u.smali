.class Lcom/join/mgps/activity/arena/GameRoomListActivity$u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/arena/GameRoomListActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/arena/GameRoomListActivity;


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
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$u;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

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
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$u;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showLoadingView()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$u;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$1600(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$u;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->getGameConfig()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$u;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$100(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/socket/fight/arena/b;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lcom/join/mgps/socket/fight/arena/b;->e()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$u;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->handleServiceConnected()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$u;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$100(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/socket/fight/arena/b;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lcom/join/mgps/socket/fight/arena/b;->bindService()V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$u;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->hideLoadingView()V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void
.end method
