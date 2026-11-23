.class public Lcom/join/mgps/event/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Z

.field private c:I

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Lcom/join/mgps/dto/FriendInviteBean;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Lcom/papa91/battle/protocol/GameRoom;

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/event/w;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/event/w;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/event/w;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/event/w;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Lcom/papa91/battle/protocol/GameRoom;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/event/w;->i:Lcom/papa91/battle/protocol/GameRoom;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()Lcom/join/mgps/dto/FriendInviteBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/event/w;->f:Lcom/join/mgps/dto/FriendInviteBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/event/w;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/event/w;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/event/w;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/event/w;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/event/w;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public k(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "accept"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/event/w;->b:Z

    .line 2
    .line 3
    return-void
.end method

.method public l(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/event/w;->a:I

    .line 2
    .line 3
    return-void
.end method

.method public m(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fromAccountId"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/event/w;->c:I

    .line 2
    .line 3
    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/event/w;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public o(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameRoom"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/event/w;->i:Lcom/papa91/battle/protocol/GameRoom;

    .line 2
    .line 3
    return-void
.end method

.method public p(Lcom/join/mgps/dto/FriendInviteBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inviteBean"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/event/w;->f:Lcom/join/mgps/dto/FriendInviteBean;

    .line 2
    .line 3
    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "joinSpectatorReason"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/event/w;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public r(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roomId"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/event/w;->e:I

    .line 2
    .line 3
    return-void
.end method

.method public s(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roomLive"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/event/w;->g:I

    .line 2
    .line 3
    return-void
.end method

.method public t(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/event/w;->j:I

    .line 2
    .line 3
    return-void
.end method
