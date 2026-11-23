.class public Lcom/join/mgps/aidl/MGWifiServerThread$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/aidl/MGWifiServerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field private b:Ljava/net/Socket;

.field private c:Ljava/io/BufferedOutputStream;

.field private d:Ljava/io/DataInputStream;

.field private e:Z

.field final synthetic f:Lcom/join/mgps/aidl/MGWifiServerThread;


# direct methods
.method public constructor <init>(Lcom/join/mgps/aidl/MGWifiServerThread;Ljava/net/Socket;)V
    .locals 0
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
    iput-object p1, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->f:Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->e:Z

    .line 8
    .line 9
    iput-object p2, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->b:Ljava/net/Socket;

    .line 10
    .line 11
    :try_start_0
    new-instance p1, Ljava/io/BufferedOutputStream;

    .line 12
    .line 13
    iget-object p2, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->b:Ljava/net/Socket;

    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-direct {p1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->c:Ljava/io/BufferedOutputStream;

    .line 23
    .line 24
    new-instance p1, Ljava/io/DataInputStream;

    .line 25
    .line 26
    iget-object p2, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->b:Ljava/net/Socket;

    .line 27
    .line 28
    invoke-virtual {p2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-direct {p1, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->d:Ljava/io/DataInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/aidl/MGWifiServerThread$b;)Ljava/io/BufferedOutputStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->c:Ljava/io/BufferedOutputStream;

    .line 2
    .line 3
    return-object p0
.end method

.method private d([B)V
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
    iget-object v1, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->f:Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$400(Lcom/join/mgps/aidl/MGWifiServerThread;)Ljava/lang/String;

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
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->c:Ljava/io/BufferedOutputStream;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->c:Ljava/io/BufferedOutputStream;

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
    iget-object p1, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->f:Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 42
    .line 43
    invoke-static {p1}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$300(Lcom/join/mgps/aidl/MGWifiServerThread;)Landroid/os/Handler;

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
    iget-object p1, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->f:Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 53
    .line 54
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 55
    .line 56
    invoke-static {p1, v0}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$202(Lcom/join/mgps/aidl/MGWifiServerThread;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void
.end method


# virtual methods
.method public b(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "positive"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->b:Ljava/net/Socket;

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
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->b:Ljava/net/Socket;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->b:Ljava/net/Socket;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->b:Ljava/net/Socket;

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
    if-eqz p1, :cond_1

    .line 32
    .line 33
    iget-object p1, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->f:Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$300(Lcom/join/mgps/aidl/MGWifiServerThread;)Landroid/os/Handler;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const/16 v0, 0x2331

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->f:Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 46
    .line 47
    invoke-static {p1}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$300(Lcom/join/mgps/aidl/MGWifiServerThread;)Landroid/os/Handler;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const/16 v0, 0x232a

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 54
    .line 55
    .line 56
    :goto_1
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/aidl/MGWifiServerThread$b$c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/aidl/MGWifiServerThread$b$c;-><init>(Lcom/join/mgps/aidl/MGWifiServerThread$b;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/aidl/MGWifiServerThread$b$b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/aidl/MGWifiServerThread$b$b;-><init>(Lcom/join/mgps/aidl/MGWifiServerThread$b;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public run()V
    .locals 4

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->c:Ljava/io/BufferedOutputStream;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->f:Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 6
    .line 7
    invoke-static {v2}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$600(Lcom/join/mgps/aidl/MGWifiServerThread;)Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v0, v0, v2}, Lcom/join/mgps/aidl/FightProtocalManager;->ackSignal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->c:Ljava/io/BufferedOutputStream;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    .line 43
    .line 44
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->b:Ljava/net/Socket;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_6

    .line 51
    .line 52
    :try_start_1
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->d:Ljava/io/DataInputStream;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    :goto_1
    if-nez v0, :cond_1

    .line 59
    .line 60
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->d:Ljava/io/DataInputStream;

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    new-array v1, v0, [B

    .line 68
    .line 69
    iget-object v2, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->d:Ljava/io/DataInputStream;

    .line 70
    .line 71
    invoke-virtual {v2, v1}, Ljava/io/DataInputStream;->read([B)I

    .line 72
    .line 73
    .line 74
    new-instance v2, Ljava/lang/String;

    .line 75
    .line 76
    const-string v3, "gbk"

    .line 77
    .line 78
    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->f:Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 82
    .line 83
    invoke-static {v1}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$400(Lcom/join/mgps/aidl/MGWifiServerThread;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v3, "tbl>>>server receive:"

    .line 92
    .line 93
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 97
    .line 98
    .line 99
    :try_start_2
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    const-class v1, Lcom/join/mgps/aidl/FightProtocal;

    .line 104
    .line 105
    invoke-virtual {v0, v2, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Lcom/join/mgps/aidl/FightProtocal;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :catch_1
    move-exception v0

    .line 113
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 114
    .line 115
    .line 116
    const/4 v0, 0x0

    .line 117
    :goto_2
    if-nez v0, :cond_2

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/aidl/FightProtocal;->getType()B

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    sget-byte v2, Lcom/join/mgps/aidl/FightProtocal;->TYPE_ACK:B

    .line 125
    .line 126
    if-ne v1, v2, :cond_3

    .line 127
    .line 128
    invoke-static {v0}, Lcom/join/mgps/aidl/FightProtocalManager;->ackReceivedSignal(Lcom/join/mgps/aidl/FightProtocal;)Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-eqz v1, :cond_3

    .line 133
    .line 134
    iget-object v1, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->f:Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 135
    .line 136
    invoke-static {v1}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$400(Lcom/join/mgps/aidl/MGWifiServerThread;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    new-instance v1, Landroid/os/Message;

    .line 140
    .line 141
    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 142
    .line 143
    .line 144
    const/16 v2, 0x2329

    .line 145
    .line 146
    iput v2, v1, Landroid/os/Message;->what:I

    .line 147
    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Lcom/join/mgps/aidl/FightProtocal;->getBrand()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v3, "-"

    .line 161
    .line 162
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0}, Lcom/join/mgps/aidl/FightProtocal;->getOpponent()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 177
    .line 178
    iget-object v2, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->f:Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 179
    .line 180
    invoke-static {v2}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$300(Lcom/join/mgps/aidl/MGWifiServerThread;)Landroid/os/Handler;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 185
    .line 186
    .line 187
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 188
    .line 189
    invoke-virtual {v0, v1}, Lcom/join/mgps/aidl/FightProtocal;->setBrand(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    iget-object v1, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->f:Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 193
    .line 194
    invoke-static {v1}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$600(Lcom/join/mgps/aidl/MGWifiServerThread;)Landroid/content/Context;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-virtual {v0, v1}, Lcom/join/mgps/aidl/FightProtocal;->setOpponent(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-virtual {v1, v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-direct {p0, v0}, Lcom/join/mgps/aidl/MGWifiServerThread$b;->d([B)V

    .line 226
    .line 227
    .line 228
    new-instance v0, Lcom/join/mgps/aidl/MGWifiServerThread$c;

    .line 229
    .line 230
    iget-object v1, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->f:Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 231
    .line 232
    invoke-direct {v0, v1}, Lcom/join/mgps/aidl/MGWifiServerThread$c;-><init>(Lcom/join/mgps/aidl/MGWifiServerThread;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 236
    .line 237
    .line 238
    new-instance v0, Lcom/join/mgps/aidl/MGWifiServerThread$b$a;

    .line 239
    .line 240
    invoke-direct {v0, p0}, Lcom/join/mgps/aidl/MGWifiServerThread$b$a;-><init>(Lcom/join/mgps/aidl/MGWifiServerThread$b;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 244
    .line 245
    .line 246
    goto/16 :goto_0

    .line 247
    .line 248
    :cond_3
    invoke-virtual {v0}, Lcom/join/mgps/aidl/FightProtocal;->getType()B

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    sget-byte v2, Lcom/join/mgps/aidl/FightProtocal;->TYPE_DISCONNECT:B

    .line 253
    .line 254
    const/4 v3, 0x0

    .line 255
    if-ne v1, v2, :cond_4

    .line 256
    .line 257
    iget-object v1, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->f:Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 258
    .line 259
    invoke-static {v1}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$400(Lcom/join/mgps/aidl/MGWifiServerThread;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    iget-object v1, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->f:Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 263
    .line 264
    iput-boolean v3, v1, Lcom/join/mgps/aidl/MGWifiServerThread;->monitoring:Z

    .line 265
    .line 266
    invoke-static {v0}, Lcom/join/mgps/aidl/FightProtocalManager;->ackDisconnect(Lcom/join/mgps/aidl/FightProtocal;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-direct {p0, v0}, Lcom/join/mgps/aidl/MGWifiServerThread$b;->d([B)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {p0, v3}, Lcom/join/mgps/aidl/MGWifiServerThread$b;->b(Z)V

    .line 278
    .line 279
    .line 280
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->f:Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 281
    .line 282
    invoke-virtual {v0}, Lcom/join/mgps/aidl/MGWifiServerThread;->shutDown()V

    .line 283
    .line 284
    .line 285
    goto/16 :goto_0

    .line 286
    .line 287
    :cond_4
    invoke-virtual {v0}, Lcom/join/mgps/aidl/FightProtocal;->getType()B

    .line 288
    .line 289
    .line 290
    move-result v1

    .line 291
    sget-byte v2, Lcom/join/mgps/aidl/FightProtocal;->TYPE_AckDISCONNECT:B

    .line 292
    .line 293
    if-ne v1, v2, :cond_5

    .line 294
    .line 295
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->f:Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 296
    .line 297
    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$400(Lcom/join/mgps/aidl/MGWifiServerThread;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->f:Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 301
    .line 302
    iput-boolean v3, v0, Lcom/join/mgps/aidl/MGWifiServerThread;->monitoring:Z

    .line 303
    .line 304
    const/4 v0, 0x1

    .line 305
    invoke-virtual {p0, v0}, Lcom/join/mgps/aidl/MGWifiServerThread$b;->b(Z)V

    .line 306
    .line 307
    .line 308
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->f:Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 309
    .line 310
    invoke-virtual {v0}, Lcom/join/mgps/aidl/MGWifiServerThread;->shutDown()V

    .line 311
    .line 312
    .line 313
    goto/16 :goto_0

    .line 314
    .line 315
    :cond_5
    invoke-virtual {v0}, Lcom/join/mgps/aidl/FightProtocal;->getType()B

    .line 316
    .line 317
    .line 318
    move-result v0

    .line 319
    sget-byte v1, Lcom/join/mgps/aidl/FightProtocal;->TYPE_SYNC:B

    .line 320
    .line 321
    if-ne v0, v1, :cond_0

    .line 322
    .line 323
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->f:Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 324
    .line 325
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 326
    .line 327
    .line 328
    move-result-wide v1

    .line 329
    iput-wide v1, v0, Lcom/join/mgps/aidl/MGWifiServerThread;->lastSyncTime:J
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 330
    .line 331
    goto/16 :goto_0

    .line 332
    .line 333
    :catch_2
    move-exception v0

    .line 334
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 335
    .line 336
    .line 337
    goto/16 :goto_0

    .line 338
    .line 339
    :cond_6
    return-void
.end method
