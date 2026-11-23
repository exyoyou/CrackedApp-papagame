.class Lcom/join/mgps/socket/fight/arena/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/socket/fight/arena/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/socket/fight/arena/b;


# direct methods
.method constructor <init>(Lcom/join/mgps/socket/fight/arena/b;)V
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
    iput-object p1, p0, Lcom/join/mgps/socket/fight/arena/b$a;->b:Lcom/join/mgps/socket/fight/arena/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "service"
        }
    .end annotation

    .line 1
    instance-of p1, p2, Lcom/join/mgps/socket/fight/arena/ArenaService$b;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/b$a;->b:Lcom/join/mgps/socket/fight/arena/b;

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-static {p1, v0}, Lcom/join/mgps/socket/fight/arena/b;->a(Lcom/join/mgps/socket/fight/arena/b;Z)Z

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/b$a;->b:Lcom/join/mgps/socket/fight/arena/b;

    .line 12
    .line 13
    check-cast p2, Lcom/join/mgps/socket/fight/arena/ArenaService$b;

    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/join/mgps/socket/fight/arena/ArenaService$b;->getService()Lcom/join/mgps/socket/fight/arena/ArenaService;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    check-cast p2, Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 20
    .line 21
    invoke-static {p1, p2}, Lcom/join/mgps/socket/fight/arena/b;->b(Lcom/join/mgps/socket/fight/arena/b;Lcom/join/mgps/socket/fight/arena/ArenaService_;)Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/b$a;->b:Lcom/join/mgps/socket/fight/arena/b;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/join/mgps/socket/fight/arena/b;->c(Lcom/join/mgps/socket/fight/arena/b;)Lcom/join/mgps/socket/fight/arena/b$b;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/b$a;->b:Lcom/join/mgps/socket/fight/arena/b;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/join/mgps/socket/fight/arena/b;->c(Lcom/join/mgps/socket/fight/arena/b;)Lcom/join/mgps/socket/fight/arena/b$b;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-interface {p1}, Lcom/join/mgps/socket/fight/arena/b$b;->c()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/b$a;->b:Lcom/join/mgps/socket/fight/arena/b;

    .line 43
    .line 44
    const/4 p2, 0x0

    .line 45
    invoke-static {p1, p2}, Lcom/join/mgps/socket/fight/arena/b;->a(Lcom/join/mgps/socket/fight/arena/b;Z)Z

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/b$a;->b:Lcom/join/mgps/socket/fight/arena/b;

    .line 49
    .line 50
    const/4 p2, 0x0

    .line 51
    invoke-static {p1, p2}, Lcom/join/mgps/socket/fight/arena/b;->b(Lcom/join/mgps/socket/fight/arena/b;Lcom/join/mgps/socket/fight/arena/ArenaService_;)Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/b$a;->b:Lcom/join/mgps/socket/fight/arena/b;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lcom/join/mgps/socket/fight/arena/b;->a(Lcom/join/mgps/socket/fight/arena/b;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/b$a;->b:Lcom/join/mgps/socket/fight/arena/b;

    .line 8
    .line 9
    invoke-static {p1}, Lcom/join/mgps/socket/fight/arena/b;->c(Lcom/join/mgps/socket/fight/arena/b;)Lcom/join/mgps/socket/fight/arena/b$b;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/b$a;->b:Lcom/join/mgps/socket/fight/arena/b;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/join/mgps/socket/fight/arena/b;->c(Lcom/join/mgps/socket/fight/arena/b;)Lcom/join/mgps/socket/fight/arena/b$b;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p1}, Lcom/join/mgps/socket/fight/arena/b$b;->b()V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/b$a;->b:Lcom/join/mgps/socket/fight/arena/b;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-static {p1, v0}, Lcom/join/mgps/socket/fight/arena/b;->b(Lcom/join/mgps/socket/fight/arena/b;Lcom/join/mgps/socket/fight/arena/ArenaService_;)Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 28
    .line 29
    .line 30
    return-void
.end method
