.class Lcom/join/mgps/activity/GameMainActivity3$p;
.super Lcom/join/mgps/socket/fight/arena/b$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/GameMainActivity3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GameMainActivity3;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameMainActivity3;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3$p;->a:Lcom/join/mgps/activity/GameMainActivity3;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/join/mgps/socket/fight/arena/b$c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public b()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/socket/fight/arena/b$c;->b()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/join/mgps/socket/fight/arena/b$c;->c()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3$p;->a:Lcom/join/mgps/activity/GameMainActivity3;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/join/mgps/activity/GameMainActivity3;->access$500(Lcom/join/mgps/activity/GameMainActivity3;)Lcom/join/mgps/socket/fight/arena/b;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3$p;->a:Lcom/join/mgps/activity/GameMainActivity3;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/join/mgps/activity/GameMainActivity3;->access$500(Lcom/join/mgps/activity/GameMainActivity3;)Lcom/join/mgps/socket/fight/arena/b;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3$p;->a:Lcom/join/mgps/activity/GameMainActivity3;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/join/mgps/activity/GameMainActivity3;->access$500(Lcom/join/mgps/activity/GameMainActivity3;)Lcom/join/mgps/socket/fight/arena/b;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3$p;->a:Lcom/join/mgps/activity/GameMainActivity3;

    .line 35
    .line 36
    invoke-static {v1}, Lcom/join/mgps/activity/GameMainActivity3;->access$600(Lcom/join/mgps/activity/GameMainActivity3;)Lapp/mgsim/arena/SocketListener$NotifyObserver;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->z(Lapp/mgsim/arena/SocketListener$NotifyObserver;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method
