.class public Lcom/join/mgps/aidl/WifiServerThread$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/aidl/WifiServerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field private b:Ljava/net/Socket;

.field private c:Ljava/io/BufferedReader;

.field private d:Ljava/io/BufferedOutputStream;

.field e:Ljava/io/DataInputStream;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Lcom/join/mgps/aidl/Client;

.field private i:Ljava/lang/Object;

.field final synthetic j:Lcom/join/mgps/aidl/WifiServerThread;


# direct methods
.method public constructor <init>(Lcom/join/mgps/aidl/WifiServerThread;Ljava/net/Socket;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "_socket"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->j:Lcom/join/mgps/aidl/WifiServerThread;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->b:Ljava/net/Socket;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->c:Ljava/io/BufferedReader;

    .line 10
    .line 11
    new-instance p1, Ljava/util/ArrayList;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->f:Ljava/util/List;

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->g:Z

    .line 20
    .line 21
    iput-object p2, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->b:Ljava/net/Socket;

    .line 22
    .line 23
    :try_start_0
    new-instance p1, Ljava/io/BufferedOutputStream;

    .line 24
    .line 25
    iget-object p2, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->b:Ljava/net/Socket;

    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-direct {p1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->d:Ljava/io/BufferedOutputStream;

    .line 35
    .line 36
    new-instance p1, Ljava/io/DataInputStream;

    .line 37
    .line 38
    iget-object p2, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->b:Ljava/net/Socket;

    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-direct {p1, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->e:Ljava/io/DataInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception p1

    .line 51
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->b:Ljava/net/Socket;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->b:Ljava/net/Socket;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->b:Ljava/net/Socket;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->b:Ljava/net/Socket;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

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
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->j:Lcom/join/mgps/aidl/WifiServerThread;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/join/mgps/aidl/WifiServerThread;->access$500(Lcom/join/mgps/aidl/WifiServerThread;)Landroid/os/Handler;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/16 v1, 0x232a

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public b()[B
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->f:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, [B

    .line 9
    .line 10
    iget-object v2, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->f:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->b:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->b:Ljava/net/Socket;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->b:Ljava/net/Socket;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->b:Ljava/net/Socket;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    return v0

    .line 27
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 28
    return v0
.end method

.method public e([B)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "gbk"

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->j:Lcom/join/mgps/aidl/WifiServerThread;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/join/mgps/aidl/WifiServerThread;->access$200(Lcom/join/mgps/aidl/WifiServerThread;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "server send="

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->d:Ljava/io/BufferedOutputStream;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->d:Ljava/io/BufferedOutputStream;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->j:Lcom/join/mgps/aidl/WifiServerThread;

    .line 42
    .line 43
    invoke-static {p1}, Lcom/join/mgps/aidl/WifiServerThread;->access$500(Lcom/join/mgps/aidl/WifiServerThread;)Landroid/os/Handler;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const/16 v0, 0x232a

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->j:Lcom/join/mgps/aidl/WifiServerThread;

    .line 53
    .line 54
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 55
    .line 56
    invoke-static {p1, v0}, Lcom/join/mgps/aidl/WifiServerThread;->access$102(Lcom/join/mgps/aidl/WifiServerThread;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void
.end method

.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->j:Lcom/join/mgps/aidl/WifiServerThread;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/aidl/WifiServerThread;->access$300(Lcom/join/mgps/aidl/WifiServerThread;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->b:Ljava/net/Socket;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/join/mgps/aidl/Client;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->h:Lcom/join/mgps/aidl/Client;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->j:Lcom/join/mgps/aidl/WifiServerThread;

    .line 26
    .line 27
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 32
    .line 33
    mul-double v1, v1, v3

    .line 34
    .line 35
    double-to-int v1, v1

    .line 36
    invoke-static {v0, v1}, Lcom/join/mgps/aidl/WifiServerThread;->access$402(Lcom/join/mgps/aidl/WifiServerThread;I)I

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->j:Lcom/join/mgps/aidl/WifiServerThread;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/join/mgps/aidl/WifiServerThread;->access$200(Lcom/join/mgps/aidl/WifiServerThread;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v1, "send =wifiap_single_acknowledge"

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->j:Lcom/join/mgps/aidl/WifiServerThread;

    .line 55
    .line 56
    invoke-static {v1}, Lcom/join/mgps/aidl/WifiServerThread;->access$400(Lcom/join/mgps/aidl/WifiServerThread;)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v1, "wifiap_single_acknowledge"

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget-object v2, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->j:Lcom/join/mgps/aidl/WifiServerThread;

    .line 74
    .line 75
    invoke-static {v2}, Lcom/join/mgps/aidl/WifiServerThread;->access$400(Lcom/join/mgps/aidl/WifiServerThread;)I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    :try_start_0
    iget-object v2, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->d:Ljava/io/BufferedOutputStream;

    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->d:Ljava/io/BufferedOutputStream;

    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 103
    .line 104
    .line 105
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->b:Ljava/net/Socket;

    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-nez v0, :cond_5

    .line 112
    .line 113
    :try_start_1
    new-instance v0, Landroid/os/Message;

    .line 114
    .line 115
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 116
    .line 117
    .line 118
    iget-object v2, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->e:Ljava/io/DataInputStream;

    .line 119
    .line 120
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    :goto_1
    if-nez v2, :cond_1

    .line 125
    .line 126
    iget-object v2, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->e:Ljava/io/DataInputStream;

    .line 127
    .line 128
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    goto :goto_1

    .line 133
    :cond_1
    new-array v3, v2, [B

    .line 134
    .line 135
    iget-object v4, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->e:Ljava/io/DataInputStream;

    .line 136
    .line 137
    invoke-virtual {v4, v3}, Ljava/io/DataInputStream;->read([B)I

    .line 138
    .line 139
    .line 140
    new-instance v4, Ljava/lang/String;

    .line 141
    .line 142
    const-string v5, "gbk"

    .line 143
    .line 144
    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 145
    .line 146
    .line 147
    iget-object v5, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->j:Lcom/join/mgps/aidl/WifiServerThread;

    .line 148
    .line 149
    invoke-static {v5}, Lcom/join/mgps/aidl/WifiServerThread;->access$200(Lcom/join/mgps/aidl/WifiServerThread;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    new-instance v5, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    const-string v6, "server receive:"

    .line 158
    .line 159
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    iget-object v2, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->h:Lcom/join/mgps/aidl/Client;

    .line 166
    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 168
    .line 169
    .line 170
    move-result-wide v5

    .line 171
    invoke-virtual {v2, v5, v6}, Lcom/join/mgps/aidl/Client;->setLastResponseTime(J)V

    .line 172
    .line 173
    .line 174
    iget-boolean v2, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->g:Z

    .line 175
    .line 176
    if-nez v2, :cond_2

    .line 177
    .line 178
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    if-eqz v2, :cond_2

    .line 183
    .line 184
    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    const/4 v5, 0x1

    .line 189
    aget-object v2, v2, v5

    .line 190
    .line 191
    const-string v6, "\n"

    .line 192
    .line 193
    const-string v7, ""

    .line 194
    .line 195
    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    iget-object v6, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->j:Lcom/join/mgps/aidl/WifiServerThread;

    .line 204
    .line 205
    invoke-static {v6}, Lcom/join/mgps/aidl/WifiServerThread;->access$400(Lcom/join/mgps/aidl/WifiServerThread;)I

    .line 206
    .line 207
    .line 208
    move-result v6

    .line 209
    add-int/2addr v6, v5

    .line 210
    if-ne v2, v6, :cond_2

    .line 211
    .line 212
    iget-object v2, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->j:Lcom/join/mgps/aidl/WifiServerThread;

    .line 213
    .line 214
    invoke-static {v2}, Lcom/join/mgps/aidl/WifiServerThread;->access$200(Lcom/join/mgps/aidl/WifiServerThread;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    iget-object v2, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->j:Lcom/join/mgps/aidl/WifiServerThread;

    .line 218
    .line 219
    invoke-static {v2}, Lcom/join/mgps/aidl/WifiServerThread;->access$300(Lcom/join/mgps/aidl/WifiServerThread;)Ljava/util/Map;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    iget-object v3, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->b:Ljava/net/Socket;

    .line 224
    .line 225
    invoke-virtual {v3}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    check-cast v2, Lcom/join/mgps/aidl/Client;

    .line 238
    .line 239
    sget-object v3, Lcom/join/mgps/aidl/Client$ClientStatus;->BOUND:Lcom/join/mgps/aidl/Client$ClientStatus;

    .line 240
    .line 241
    invoke-virtual {v2, v3}, Lcom/join/mgps/aidl/Client;->setStatus(Lcom/join/mgps/aidl/Client$ClientStatus;)V

    .line 242
    .line 243
    .line 244
    const/16 v2, 0x2329

    .line 245
    .line 246
    iput v2, v0, Landroid/os/Message;->what:I

    .line 247
    .line 248
    iget-object v2, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->j:Lcom/join/mgps/aidl/WifiServerThread;

    .line 249
    .line 250
    invoke-static {v2}, Lcom/join/mgps/aidl/WifiServerThread;->access$500(Lcom/join/mgps/aidl/WifiServerThread;)Landroid/os/Handler;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 255
    .line 256
    .line 257
    iput-boolean v5, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->g:Z

    .line 258
    .line 259
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->h:Lcom/join/mgps/aidl/Client;

    .line 260
    .line 261
    if-nez v0, :cond_0

    .line 262
    .line 263
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->b:Ljava/net/Socket;

    .line 264
    .line 265
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 266
    .line 267
    .line 268
    goto :goto_2

    .line 269
    :cond_2
    const-string v0, "wifiap_single_sync"

    .line 270
    .line 271
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    if-eqz v0, :cond_3

    .line 276
    .line 277
    goto/16 :goto_0

    .line 278
    .line 279
    :cond_3
    const-string v0, "signalShutDown"

    .line 280
    .line 281
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    if-eqz v0, :cond_4

    .line 286
    .line 287
    invoke-virtual {p0}, Lcom/join/mgps/aidl/WifiServerThread$b;->a()V

    .line 288
    .line 289
    .line 290
    goto/16 :goto_0

    .line 291
    .line 292
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->f:Ljava/util/List;

    .line 293
    .line 294
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 295
    .line 296
    .line 297
    goto/16 :goto_0

    .line 298
    .line 299
    :catch_1
    move-exception v0

    .line 300
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 301
    .line 302
    .line 303
    goto/16 :goto_0

    .line 304
    .line 305
    :cond_5
    :goto_2
    return-void
.end method
