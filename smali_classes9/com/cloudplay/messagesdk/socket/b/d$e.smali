.class Lcom/cloudplay/messagesdk/socket/b/d$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloudplay/messagesdk/socket/b/d;->a(Lcom/cloudplay/messagesdk/socket/b/g/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloudplay/messagesdk/socket/b/g/g;

.field final synthetic b:Lcom/cloudplay/messagesdk/socket/b/d;


# direct methods
.method constructor <init>(Lcom/cloudplay/messagesdk/socket/b/d;Lcom/cloudplay/messagesdk/socket/b/g/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/d$e;->b:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloudplay/messagesdk/socket/b/d$e;->a:Lcom/cloudplay/messagesdk/socket/b/g/g;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    const-string v0, "WebSocketConnection"

    .line 2
    .line 3
    const-string v1, "sendMessage() mWriterThread.submit()->run() "

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/cloudplay/messagesdk/socket/b/d$e;->b:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 6
    .line 7
    invoke-static {v2}, Lcom/cloudplay/messagesdk/socket/b/d;->v(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/io/BufferedOutputStream;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v3, p0, Lcom/cloudplay/messagesdk/socket/b/d$e;->b:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 12
    .line 13
    invoke-static {v3}, Lcom/cloudplay/messagesdk/socket/b/d;->u(Lcom/cloudplay/messagesdk/socket/b/d;)Lcom/cloudplay/messagesdk/socket/b/a;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    iget-object v4, p0, Lcom/cloudplay/messagesdk/socket/b/d$e;->a:Lcom/cloudplay/messagesdk/socket/b/g/g;

    .line 18
    .line 19
    invoke-virtual {v3, v4}, Lcom/cloudplay/messagesdk/socket/b/a;->a(Lcom/cloudplay/messagesdk/socket/b/g/g;)[B

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/cloudplay/messagesdk/socket/b/d$e;->b:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 27
    .line 28
    invoke-static {v2}, Lcom/cloudplay/messagesdk/socket/b/d;->v(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/io/BufferedOutputStream;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lcom/cloudplay/messagesdk/socket/b/d$e;->a:Lcom/cloudplay/messagesdk/socket/b/g/g;

    .line 36
    .line 37
    instance-of v3, v2, Lcom/cloudplay/messagesdk/socket/b/g/d;

    .line 38
    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    check-cast v2, Lcom/cloudplay/messagesdk/socket/b/g/d;

    .line 42
    .line 43
    iget-boolean v2, v2, Lcom/cloudplay/messagesdk/socket/b/g/d;->c:Z

    .line 44
    .line 45
    if-eqz v2, :cond_0

    .line 46
    .line 47
    iget-object v2, p0, Lcom/cloudplay/messagesdk/socket/b/d$e;->b:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 48
    .line 49
    invoke-static {v2}, Lcom/cloudplay/messagesdk/socket/b/d;->a(Lcom/cloudplay/messagesdk/socket/b/d;)Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    iget-object v3, p0, Lcom/cloudplay/messagesdk/socket/b/d$e;->a:Lcom/cloudplay/messagesdk/socket/b/g/g;

    .line 54
    .line 55
    invoke-interface {v2, v3}, Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;->notify(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/cloudplay/messagesdk/socket/websocket/exceptions/ParseFailed; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :catch_0
    move-exception v2

    .line 60
    goto :goto_0

    .line 61
    :catch_1
    move-exception v2

    .line 62
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lcom/cloudplay/messagesdk/socket/b/d$e;->b:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 71
    .line 72
    invoke-static {v1}, Lcom/cloudplay/messagesdk/socket/b/d;->C(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v1, ","

    .line 80
    .line 81
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-static {v0, v1}, Lcom/cloudplay/messagesdk/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$e;->b:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 99
    .line 100
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->a(Lcom/cloudplay/messagesdk/socket/b/d;)Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    new-instance v1, Lcom/cloudplay/messagesdk/socket/b/g/f;

    .line 105
    .line 106
    invoke-direct {v1, v2}, Lcom/cloudplay/messagesdk/socket/b/g/f;-><init>(Ljava/lang/Exception;)V

    .line 107
    .line 108
    .line 109
    invoke-interface {v0, v1}, Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;->notify(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :catch_2
    move-exception v2

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    iget-object v1, p0, Lcom/cloudplay/messagesdk/socket/b/d$e;->b:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 123
    .line 124
    invoke-static {v1}, Lcom/cloudplay/messagesdk/socket/b/d;->C(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v1, ",SocketException ("

    .line 132
    .line 133
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v1, ")"

    .line 140
    .line 141
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-static {v0, v1}, Lcom/cloudplay/messagesdk/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$e;->b:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 152
    .line 153
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->a(Lcom/cloudplay/messagesdk/socket/b/d;)Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    new-instance v1, Lcom/cloudplay/messagesdk/socket/b/g/e;

    .line 158
    .line 159
    const/4 v2, 0x0

    .line 160
    invoke-direct {v1, v2}, Lcom/cloudplay/messagesdk/socket/b/g/e;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-interface {v0, v1}, Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;->notify(Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    :cond_0
    :goto_1
    return-void
.end method
