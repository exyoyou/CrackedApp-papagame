.class Lcom/haima/hmcp/websocket/WebSocketConnection$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/dns/interfaces/DnsAsyncCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/websocket/WebSocketConnection;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/websocket/WebSocketConnection;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$6;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public dnsAsyncCallback(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$6;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1900(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0, p1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1102(Lcom/haima/hmcp/websocket/WebSocketConnection;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    sget-object p1, Lcom/haima/hmcp/websocket/WebSocketConnection;->TAG:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    new-array v1, v0, [Ljava/lang/Object;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$6;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 22
    .line 23
    invoke-static {v2}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$700(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/4 v3, 0x0

    .line 28
    aput-object v2, v1, v3

    .line 29
    .line 30
    iget-object v2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$6;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 31
    .line 32
    invoke-static {v2}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$2000(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/net/URI;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const/4 v4, 0x1

    .line 41
    aput-object v2, v1, v4

    .line 42
    .line 43
    iget-object v2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$6;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 44
    .line 45
    invoke-static {v2}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1900(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const/4 v5, 0x2

    .line 50
    aput-object v2, v1, v5

    .line 51
    .line 52
    iget-object v2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$6;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 53
    .line 54
    invoke-static {v2}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1100(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    const/4 v6, 0x3

    .line 59
    aput-object v2, v1, v6

    .line 60
    .line 61
    const-string v2, "dnsAsyncCallback Websockets: %s,url: %s, host: %s -> ip: %s"

    .line 62
    .line 63
    invoke-static {p1, v2, v1}, Lcom/haima/hmcp/utils/LogUtils;->ifmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 67
    .line 68
    new-array v0, v0, [Ljava/lang/Object;

    .line 69
    .line 70
    iget-object v1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$6;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 71
    .line 72
    invoke-static {v1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$700(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    aput-object v1, v0, v3

    .line 77
    .line 78
    iget-object v1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$6;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 79
    .line 80
    invoke-static {v1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$2000(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/net/URI;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    aput-object v1, v0, v4

    .line 89
    .line 90
    iget-object v1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$6;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 91
    .line 92
    invoke-static {v1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1900(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    aput-object v1, v0, v5

    .line 97
    .line 98
    iget-object v1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$6;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 99
    .line 100
    invoke-static {v1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1100(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    aput-object v1, v0, v6

    .line 105
    .line 106
    invoke-static {p1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$6;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 111
    .line 112
    invoke-static {p1}, Lcom/haima/hmcp/utils/StringUtils;->encodeToBase64String(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    const-string v1, "12511"

    .line 117
    .line 118
    invoke-static {v0, v1, p1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1300(Lcom/haima/hmcp/websocket/WebSocketConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    new-instance p1, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;

    .line 122
    .line 123
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$6;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 124
    .line 125
    invoke-direct {p1, v0, v3}, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;-><init>(Lcom/haima/hmcp/websocket/WebSocketConnection;Z)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 129
    .line 130
    .line 131
    return-void
.end method
