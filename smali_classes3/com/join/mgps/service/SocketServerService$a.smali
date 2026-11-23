.class public Lcom/join/mgps/service/SocketServerService$a;
.super Landroid/os/Binder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/service/SocketServerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private mSocket:Ljava/net/Socket;

.field private mSocketService:Ljava/net/ServerSocket;

.field private mointor:Z

.field final synthetic this$0:Lcom/join/mgps/service/SocketServerService;


# direct methods
.method public constructor <init>(Lcom/join/mgps/service/SocketServerService;)V
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
    iput-object p1, p0, Lcom/join/mgps/service/SocketServerService$a;->this$0:Lcom/join/mgps/service/SocketServerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/join/mgps/service/SocketServerService$a;->mointor:Z

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/join/mgps/service/SocketServerService$a;->mSocket:Ljava/net/Socket;

    .line 11
    .line 12
    return-void
.end method

.method private acceptClient()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    .line 3
    new-instance v1, Lcom/join/mgps/service/SocketServerService$a$a;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/join/mgps/service/SocketServerService$a$a;-><init>(Lcom/join/mgps/service/SocketServerService$a;)V

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

.method static synthetic access$000(Lcom/join/mgps/service/SocketServerService$a;)Ljava/net/ServerSocket;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/service/SocketServerService$a;->mSocketService:Ljava/net/ServerSocket;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/join/mgps/service/SocketServerService$a;)Ljava/net/Socket;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/service/SocketServerService$a;->mSocket:Ljava/net/Socket;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$102(Lcom/join/mgps/service/SocketServerService$a;Ljava/net/Socket;)Ljava/net/Socket;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/SocketServerService$a;->mSocket:Ljava/net/Socket;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$300(Lcom/join/mgps/service/SocketServerService$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/service/SocketServerService$a;->mointor:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$302(Lcom/join/mgps/service/SocketServerService$a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/service/SocketServerService$a;->mointor:Z

    .line 2
    .line 3
    return p1
.end method


# virtual methods
.method public getSocket()Ljava/net/Socket;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/service/SocketServerService$a;->mSocket:Ljava/net/Socket;

    .line 2
    .line 3
    return-object v0
.end method

.method public newServerSocket()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/join/mgps/service/SocketServerService;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/net/ServerSocket;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/net/ServerSocket;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/service/SocketServerService$a;->mSocketService:Ljava/net/ServerSocket;

    .line 10
    .line 11
    const/high16 v1, 0x100000

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReceiveBufferSize(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/service/SocketServerService$a;->mSocketService:Ljava/net/ServerSocket;

    .line 17
    .line 18
    new-instance v1, Ljava/net/InetSocketAddress;

    .line 19
    .line 20
    const/16 v2, 0xfa0

    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/join/mgps/service/SocketServerService$a;->acceptClient()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    const/4 v1, 0x2

    .line 34
    invoke-virtual {p0, v1}, Lcom/join/mgps/service/SocketServerService$a;->postSocketConnectedStatus(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    .line 39
    .line 40
    :goto_0
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

.method public setMonitor(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mointor"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/service/SocketServerService$a;->mointor:Z

    .line 2
    .line 3
    return-void
.end method
