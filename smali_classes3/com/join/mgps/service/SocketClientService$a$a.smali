.class Lcom/join/mgps/service/SocketClientService$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/service/SocketClientService$a;->newSocket()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/service/SocketClientService$a;


# direct methods
.method constructor <init>(Lcom/join/mgps/service/SocketClientService$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/SocketClientService$a$a;->b:Lcom/join/mgps/service/SocketClientService$a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/service/SocketClientService$a$a;->b:Lcom/join/mgps/service/SocketClientService$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/service/SocketClientService$a;->this$0:Lcom/join/mgps/service/SocketClientService;

    .line 4
    .line 5
    iget v0, v0, Lcom/join/mgps/service/SocketClientService;->d:I

    .line 6
    .line 7
    if-lez v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0x3e8

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    :try_start_0
    invoke-static {v0}, Lcom/join/mgps/Util/g2;->b(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/service/SocketClientService$a$a;->b:Lcom/join/mgps/service/SocketClientService$a;

    .line 16
    .line 17
    new-instance v2, Ljava/net/Socket;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/net/Socket;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v2, v0, Lcom/join/mgps/service/SocketClientService$a;->socket:Ljava/net/Socket;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/service/SocketClientService$a$a;->b:Lcom/join/mgps/service/SocketClientService$a;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/join/mgps/service/SocketClientService$a;->socket:Ljava/net/Socket;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/service/SocketClientService$a$a;->b:Lcom/join/mgps/service/SocketClientService$a;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/join/mgps/service/SocketClientService$a;->socket:Ljava/net/Socket;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/join/mgps/service/SocketClientService$a$a;->b:Lcom/join/mgps/service/SocketClientService$a;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/join/mgps/service/SocketClientService$a;->socket:Ljava/net/Socket;

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/mgps/service/SocketClientService$a$a;->b:Lcom/join/mgps/service/SocketClientService$a;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/join/mgps/service/SocketClientService$a;->socket:Ljava/net/Socket;

    .line 49
    .line 50
    const/high16 v3, 0x100000

    .line 51
    .line 52
    invoke-virtual {v0, v3}, Ljava/net/Socket;->setSendBufferSize(I)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/join/mgps/service/SocketClientService$a$a;->b:Lcom/join/mgps/service/SocketClientService$a;

    .line 56
    .line 57
    iget-object v0, v0, Lcom/join/mgps/service/SocketClientService$a;->socket:Ljava/net/Socket;

    .line 58
    .line 59
    invoke-virtual {v0, v3}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/join/mgps/service/SocketClientService$a$a;->b:Lcom/join/mgps/service/SocketClientService$a;

    .line 63
    .line 64
    iget-object v0, v0, Lcom/join/mgps/service/SocketClientService$a;->socket:Ljava/net/Socket;

    .line 65
    .line 66
    new-instance v3, Ljava/net/InetSocketAddress;

    .line 67
    .line 68
    iget-object v4, p0, Lcom/join/mgps/service/SocketClientService$a$a;->b:Lcom/join/mgps/service/SocketClientService$a;

    .line 69
    .line 70
    iget-object v4, v4, Lcom/join/mgps/service/SocketClientService$a;->this$0:Lcom/join/mgps/service/SocketClientService;

    .line 71
    .line 72
    iget-object v4, v4, Lcom/join/mgps/service/SocketClientService;->b:Ljava/lang/String;

    .line 73
    .line 74
    const/16 v5, 0xfa0

    .line 75
    .line 76
    invoke-direct {v3, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    const/16 v4, 0x2710

    .line 80
    .line 81
    invoke-virtual {v0, v3, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/join/mgps/service/SocketClientService$a$a;->b:Lcom/join/mgps/service/SocketClientService$a;

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Lcom/join/mgps/service/SocketClientService$a;->postSocketConnectedStatus(I)V

    .line 87
    .line 88
    .line 89
    invoke-static {}, Lcom/join/mgps/service/SocketClientService;->a()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/join/mgps/service/SocketClientService$a$a;->b:Lcom/join/mgps/service/SocketClientService$a;

    .line 93
    .line 94
    iget-object v0, v0, Lcom/join/mgps/service/SocketClientService$a;->this$0:Lcom/join/mgps/service/SocketClientService;

    .line 95
    .line 96
    iput v2, v0, Lcom/join/mgps/service/SocketClientService;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    iget-object v2, p0, Lcom/join/mgps/service/SocketClientService$a$a;->b:Lcom/join/mgps/service/SocketClientService$a;

    .line 101
    .line 102
    iget-object v2, v2, Lcom/join/mgps/service/SocketClientService$a;->this$0:Lcom/join/mgps/service/SocketClientService;

    .line 103
    .line 104
    iget v3, v2, Lcom/join/mgps/service/SocketClientService;->d:I

    .line 105
    .line 106
    sub-int/2addr v3, v1

    .line 107
    iput v3, v2, Lcom/join/mgps/service/SocketClientService;->d:I

    .line 108
    .line 109
    if-gtz v3, :cond_0

    .line 110
    .line 111
    invoke-static {}, Lcom/join/mgps/service/SocketClientService;->a()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    iget-object v1, p0, Lcom/join/mgps/service/SocketClientService$a$a;->b:Lcom/join/mgps/service/SocketClientService$a;

    .line 115
    .line 116
    const/4 v2, 0x2

    .line 117
    invoke-virtual {v1, v2}, Lcom/join/mgps/service/SocketClientService$a;->postSocketConnectedStatus(I)V

    .line 118
    .line 119
    .line 120
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_1
    return-void
.end method
