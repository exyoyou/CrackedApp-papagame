.class public Lcom/join/mgps/service/SocketClientService$a;
.super Landroid/os/Binder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/service/SocketClientService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public socket:Ljava/net/Socket;

.field final synthetic this$0:Lcom/join/mgps/service/SocketClientService;


# direct methods
.method public constructor <init>(Lcom/join/mgps/service/SocketClientService;)V
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
    iput-object p1, p0, Lcom/join/mgps/service/SocketClientService$a;->this$0:Lcom/join/mgps/service/SocketClientService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/join/mgps/service/SocketClientService$a;->socket:Ljava/net/Socket;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public getSocket()Ljava/net/Socket;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/service/SocketClientService$a;->socket:Ljava/net/Socket;

    .line 2
    .line 3
    return-object v0
.end method

.method public newSocket()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    .line 3
    new-instance v1, Lcom/join/mgps/service/SocketClientService$a$a;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/join/mgps/service/SocketClientService$a$a;-><init>(Lcom/join/mgps/service/SocketClientService$a;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method postSocketConnectedStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/socket/entity/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/socket/entity/f;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p1, v0, Lcom/join/mgps/socket/entity/f;->a:I

    .line 7
    .line 8
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
