.class Lcom/join/mgps/aidl/WifiServerThread$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/aidl/WifiServerThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/aidl/WifiServerThread;


# direct methods
.method constructor <init>(Lcom/join/mgps/aidl/WifiServerThread;)V
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
    iput-object p1, p0, Lcom/join/mgps/aidl/WifiServerThread$a;->b:Lcom/join/mgps/aidl/WifiServerThread;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread$a;->b:Lcom/join/mgps/aidl/WifiServerThread;

    .line 5
    .line 6
    new-instance v1, Ljava/net/ServerSocket;

    .line 7
    .line 8
    const/16 v2, 0x2001

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/net/ServerSocket;-><init>(I)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/join/mgps/aidl/WifiServerThread;->access$002(Lcom/join/mgps/aidl/WifiServerThread;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;

    .line 14
    .line 15
    .line 16
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread$a;->b:Lcom/join/mgps/aidl/WifiServerThread;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/join/mgps/aidl/WifiServerThread;->access$100(Lcom/join/mgps/aidl/WifiServerThread;)Ljava/lang/Boolean;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread$a;->b:Lcom/join/mgps/aidl/WifiServerThread;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/join/mgps/aidl/WifiServerThread;->access$000(Lcom/join/mgps/aidl/WifiServerThread;)Ljava/net/ServerSocket;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread$a;->b:Lcom/join/mgps/aidl/WifiServerThread;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/join/mgps/aidl/WifiServerThread;->access$200(Lcom/join/mgps/aidl/WifiServerThread;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread$a;->b:Lcom/join/mgps/aidl/WifiServerThread;

    .line 47
    .line 48
    invoke-static {v0}, Lcom/join/mgps/aidl/WifiServerThread;->access$000(Lcom/join/mgps/aidl/WifiServerThread;)Ljava/net/ServerSocket;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    new-instance v1, Lcom/join/mgps/aidl/WifiServerThread$b;

    .line 57
    .line 58
    iget-object v2, p0, Lcom/join/mgps/aidl/WifiServerThread$a;->b:Lcom/join/mgps/aidl/WifiServerThread;

    .line 59
    .line 60
    invoke-direct {v1, v2, v0}, Lcom/join/mgps/aidl/WifiServerThread$b;-><init>(Lcom/join/mgps/aidl/WifiServerThread;Ljava/net/Socket;)V

    .line 61
    .line 62
    .line 63
    new-instance v2, Lcom/join/mgps/aidl/Client;

    .line 64
    .line 65
    invoke-direct {v2}, Lcom/join/mgps/aidl/Client;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v2, v3}, Lcom/join/mgps/aidl/Client;->setUuid(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v1}, Lcom/join/mgps/aidl/Client;->setsClient(Lcom/join/mgps/aidl/WifiServerThread$b;)V

    .line 80
    .line 81
    .line 82
    iget-object v3, p0, Lcom/join/mgps/aidl/WifiServerThread$a;->b:Lcom/join/mgps/aidl/WifiServerThread;

    .line 83
    .line 84
    invoke-static {v3}, Lcom/join/mgps/aidl/WifiServerThread;->access$300(Lcom/join/mgps/aidl/WifiServerThread;)Ljava/util/Map;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    new-instance v0, Ljava/lang/Thread;

    .line 100
    .line 101
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread$a;->b:Lcom/join/mgps/aidl/WifiServerThread;

    .line 109
    .line 110
    invoke-static {v0}, Lcom/join/mgps/aidl/WifiServerThread;->access$200(Lcom/join/mgps/aidl/WifiServerThread;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread$a;->b:Lcom/join/mgps/aidl/WifiServerThread;

    .line 114
    .line 115
    invoke-static {v0}, Lcom/join/mgps/aidl/WifiServerThread;->access$000(Lcom/join/mgps/aidl/WifiServerThread;)Ljava/net/ServerSocket;

    .line 116
    .line 117
    .line 118
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 119
    if-eqz v0, :cond_2

    .line 120
    .line 121
    :try_start_1
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread$a;->b:Lcom/join/mgps/aidl/WifiServerThread;

    .line 122
    .line 123
    invoke-static {v0}, Lcom/join/mgps/aidl/WifiServerThread;->access$000(Lcom/join/mgps/aidl/WifiServerThread;)Ljava/net/ServerSocket;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :catch_0
    move-exception v0

    .line 132
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 133
    .line 134
    .line 135
    goto :goto_2

    .line 136
    :catch_1
    move-exception v0

    .line 137
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 138
    .line 139
    .line 140
    :cond_2
    :goto_2
    return-void
.end method
