.class Lcom/join/mgps/fragment/roomlist/c$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/input/InputNumView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/roomlist/c;->F0(Lcom/papa91/battle/protocol/SimpleRoom;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/input/a;

.field final synthetic b:Lcom/papa91/battle/protocol/SimpleRoom;

.field final synthetic c:Lcom/join/mgps/fragment/roomlist/c;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/roomlist/c;Lcom/join/mgps/customview/input/a;Lcom/papa91/battle/protocol/SimpleRoom;)V
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
            "val$simpleRoom"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$j;->c:Lcom/join/mgps/fragment/roomlist/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/fragment/roomlist/c$j;->a:Lcom/join/mgps/customview/input/a;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/fragment/roomlist/c$j;->b:Lcom/papa91/battle/protocol/SimpleRoom;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c$j;->a:Lcom/join/mgps/customview/input/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/input/a;->c()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "num"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c$j;->a:Lcom/join/mgps/customview/input/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/input/a;->c()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c$j;->c:Lcom/join/mgps/fragment/roomlist/c;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/join/mgps/fragment/roomlist/c;->k:Lcom/join/mgps/activity/arena/GameRoomListActivity_;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/join/mgps/fragment/roomlist/c$j;->b:Lcom/papa91/battle/protocol/SimpleRoom;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/SimpleRoom;->getRoomId()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object v2, p0, Lcom/join/mgps/fragment/roomlist/c$j;->c:Lcom/join/mgps/fragment/roomlist/c;

    .line 17
    .line 18
    invoke-static {v2}, Lcom/join/mgps/fragment/roomlist/c;->S(Lcom/join/mgps/fragment/roomlist/c;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-virtual {v0, v1, p1, v2}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->joinRoom(ILjava/lang/String;Z)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
