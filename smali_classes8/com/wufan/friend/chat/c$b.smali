.class Lcom/wufan/friend/chat/c$b;
.super Lcom/join/mgps/socket/fight/arena/b$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wufan/friend/chat/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/wufan/friend/chat/c;


# direct methods
.method constructor <init>(Lcom/wufan/friend/chat/c;)V
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
    iput-object p1, p0, Lcom/wufan/friend/chat/c$b;->a:Lcom/wufan/friend/chat/c;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/join/mgps/socket/fight/arena/b$c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/socket/fight/arena/b$c;->c()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/wufan/friend/chat/c$b;->a:Lcom/wufan/friend/chat/c;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/wufan/friend/chat/c;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    instance-of v0, v0, Lcom/join/mgps/activity/GameMainActivity3;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/wufan/friend/chat/c$b;->a:Lcom/wufan/friend/chat/c;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/wufan/friend/chat/c;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    instance-of v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 21
    .line 22
    :cond_0
    return-void
.end method
