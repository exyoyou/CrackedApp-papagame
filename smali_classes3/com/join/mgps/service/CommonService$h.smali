.class Lcom/join/mgps/service/CommonService$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/socket/fight/arena/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/service/CommonService;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/service/CommonService;


# direct methods
.method constructor <init>(Lcom/join/mgps/service/CommonService;)V
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
    iput-object p1, p0, Lcom/join/mgps/service/CommonService$h;->a:Lcom/join/mgps/service/CommonService;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isConnected"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/service/CommonService$h;->a:Lcom/join/mgps/service/CommonService;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/join/mgps/service/CommonService;->p(Lcom/join/mgps/service/CommonService;Z)Z

    .line 5
    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/service/CommonService$h;->a:Lcom/join/mgps/service/CommonService;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/join/mgps/service/CommonService;->i(Lcom/join/mgps/service/CommonService;)Lcom/join/mgps/socket/fight/arena/b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/join/mgps/service/CommonService$h;->a:Lcom/join/mgps/service/CommonService;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/join/mgps/service/CommonService;->q(Lcom/join/mgps/service/CommonService;)Lapp/mgsim/arena/SocketListener$NotifyObserver;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->A(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/service/CommonService$h;->a:Lcom/join/mgps/service/CommonService;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/join/mgps/service/CommonService;->p(Lcom/join/mgps/service/CommonService;Z)Z

    .line 5
    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/service/CommonService$h;->a:Lcom/join/mgps/service/CommonService;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/join/mgps/service/CommonService;->i(Lcom/join/mgps/service/CommonService;)Lcom/join/mgps/socket/fight/arena/b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/join/mgps/service/CommonService$h;->a:Lcom/join/mgps/service/CommonService;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/join/mgps/service/CommonService;->q(Lcom/join/mgps/service/CommonService;)Lapp/mgsim/arena/SocketListener$NotifyObserver;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->z(Lapp/mgsim/arena/SocketListener$NotifyObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method
