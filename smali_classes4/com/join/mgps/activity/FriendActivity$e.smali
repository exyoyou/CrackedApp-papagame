.class Lcom/join/mgps/activity/FriendActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/input/InputNumView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/FriendActivity;->showInputRoomPwdDialog(Lapp/mgsim/arena/ArenaRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/input/a;

.field final synthetic b:Lapp/mgsim/arena/ArenaRequest;

.field final synthetic c:Lcom/join/mgps/activity/FriendActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/FriendActivity;Lcom/join/mgps/customview/input/a;Lapp/mgsim/arena/ArenaRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$mInputGameRoomPwdDialog",
            "val$request"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity$e;->c:Lcom/join/mgps/activity/FriendActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/FriendActivity$e;->a:Lcom/join/mgps/customview/input/a;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/FriendActivity$e;->b:Lapp/mgsim/arena/ArenaRequest;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity$e;->a:Lcom/join/mgps/customview/input/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/input/a;->c()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "num"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity$e;->a:Lcom/join/mgps/customview/input/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/input/a;->c()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity$e;->b:Lapp/mgsim/arena/ArenaRequest;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance v0, Lcom/join/mgps/dto/FriendBean;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/join/mgps/dto/FriendBean;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lcom/join/mgps/activity/FriendActivity$e;->b:Lapp/mgsim/arena/ArenaRequest;

    .line 22
    .line 23
    iget-wide v2, v2, Lapp/mgsim/arena/ArenaRequest;->gameId:J

    .line 24
    .line 25
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v2, ""

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setGameId(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity$e;->b:Lapp/mgsim/arena/ArenaRequest;

    .line 41
    .line 42
    iget v1, v1, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setRoomId(I)V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity$e;->b:Lapp/mgsim/arena/ArenaRequest;

    .line 48
    .line 49
    iget-boolean v1, v1, Lapp/mgsim/arena/ArenaRequest;->isElite:Z

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setElite(Z)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/FriendBean;->setRoomPwd(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1, v0}, Lcom/wufan/friend/chat/c;->p(Lcom/join/mgps/dto/FriendBean;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method
