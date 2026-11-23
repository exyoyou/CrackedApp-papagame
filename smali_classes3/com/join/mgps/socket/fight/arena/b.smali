.class public Lcom/join/mgps/socket/fight/arena/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/socket/fight/arena/b$b;,
        Lcom/join/mgps/socket/fight/arena/b$c;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/join/mgps/socket/fight/arena/ArenaService_;

.field private c:Lcom/join/mgps/socket/fight/arena/b$b;

.field private volatile d:Z

.field private final e:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/join/mgps/socket/fight/arena/b$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "callback"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/socket/fight/arena/b;->d:Z

    .line 6
    .line 7
    new-instance v0, Lcom/join/mgps/socket/fight/arena/b$a;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/join/mgps/socket/fight/arena/b$a;-><init>(Lcom/join/mgps/socket/fight/arena/b;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/b;->e:Landroid/content/ServiceConnection;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/join/mgps/socket/fight/arena/b;->a:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/join/mgps/socket/fight/arena/b;->c:Lcom/join/mgps/socket/fight/arena/b$b;

    .line 17
    .line 18
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/socket/fight/arena/b;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/socket/fight/arena/b;->d:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic b(Lcom/join/mgps/socket/fight/arena/b;Lcom/join/mgps/socket/fight/arena/ArenaService_;)Lcom/join/mgps/socket/fight/arena/ArenaService_;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/socket/fight/arena/b;->b:Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic c(Lcom/join/mgps/socket/fight/arena/b;)Lcom/join/mgps/socket/fight/arena/b$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/socket/fight/arena/b;->c:Lcom/join/mgps/socket/fight/arena/b$b;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public bindService()V
    .locals 4

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/join/mgps/socket/fight/arena/b;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/b;->a:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/b;->a:Landroid/content/Context;

    .line 13
    .line 14
    const-class v2, Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 15
    .line 16
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/b;->a:Landroid/content/Context;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/join/mgps/socket/fight/arena/b;->e:Landroid/content/ServiceConnection;

    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 25
    .line 26
    .line 27
    :try_start_1
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/b;->a:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_1
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_0
    return-void
.end method

.method public d()Lcom/join/mgps/socket/fight/arena/ArenaService_;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/b;->b:Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/b;->b:Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public f(Lapp/mgsim/arena/ArenaRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/socket/fight/arena/b;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService_;->C(Lapp/mgsim/arena/ArenaRequest;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/join/mgps/socket/fight/arena/b;->d:Z

    .line 23
    .line 24
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/b;->c:Lcom/join/mgps/socket/fight/arena/b$b;

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-interface {p1}, Lcom/join/mgps/socket/fight/arena/b$b;->b()V

    .line 29
    .line 30
    .line 31
    :cond_1
    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Lcom/join/mgps/socket/fight/arena/b;->b:Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 33
    .line 34
    :cond_2
    :goto_0
    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/join/mgps/socket/fight/arena/b;->d:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/b;->a:Landroid/content/Context;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/b;->e:Landroid/content/ServiceConnection;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/join/mgps/socket/fight/arena/b;->d:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    :cond_0
    :goto_0
    return-void
.end method

.method public h()V
    .locals 0

    .line 1
    return-void
.end method

.method public stopService()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/b;->a:Landroid/content/Context;

    .line 4
    .line 5
    const-class v2, Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/b;->a:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method
