.class Lcom/wufan/friend/chat/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/activity/arena/GameRoomActivity$x;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wufan/friend/chat/c;->o(Lcom/join/mgps/dto/FriendBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/FriendBean;

.field final synthetic b:Lcom/wufan/friend/chat/c;


# direct methods
.method constructor <init>(Lcom/wufan/friend/chat/c;Lcom/join/mgps/dto/FriendBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$bean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/wufan/friend/chat/c$a;->b:Lcom/wufan/friend/chat/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/wufan/friend/chat/c$a;->a:Lcom/join/mgps/dto/FriendBean;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onFail(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    return-void
.end method

.method public onSuccess(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "duration"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/wufan/friend/chat/c$a;->b:Lcom/wufan/friend/chat/c;

    iget-object p2, p0, Lcom/wufan/friend/chat/c$a;->a:Lcom/join/mgps/dto/FriendBean;

    iput-object p2, p1, Lcom/wufan/friend/chat/c;->h:Lcom/join/mgps/dto/FriendBean;

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string p1, "invite"

    .line 3
    invoke-virtual {p2, p1}, Lcom/join/mgps/dto/FriendBean;->setAction(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/wufan/friend/chat/c$a;->b:Lcom/wufan/friend/chat/c;

    iget-object p2, p0, Lcom/wufan/friend/chat/c$a;->a:Lcom/join/mgps/dto/FriendBean;

    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->getGameId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/wufan/friend/chat/c;->k(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(IILcom/papa91/arc/bean/ButtonBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "duration",
            "buttonBean"
        }
    .end annotation

    .line 1
    return-void
.end method
