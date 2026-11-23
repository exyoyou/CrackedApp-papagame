.class Lcom/join/mgps/activity/arena/GameRoomListActivity$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/activity/arena/GameRoomListActivity$w;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/arena/GameRoomListActivity;->initRoomSelecterlayout()V
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
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$g;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$g;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->gameInfoListData:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/join/mgps/dto/GameInfoBean;

    .line 10
    .line 11
    iput-object p1, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mGameInfo:Lcom/join/mgps/dto/GameInfoBean;

    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$g;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->getGameConfigv2()V

    .line 16
    .line 17
    .line 18
    return-void
.end method
