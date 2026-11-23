.class public Lcom/join/mgps/helper/WifiServerThread$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/helper/WifiServerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field private b:Ljava/net/Socket;

.field private c:Ljava/io/BufferedOutputStream;

.field private d:Ljava/io/DataInputStream;

.field private e:Z

.field private f:Z

.field final synthetic g:Lcom/join/mgps/helper/WifiServerThread;


# direct methods
.method public constructor <init>(Lcom/join/mgps/helper/WifiServerThread;Ljava/net/Socket;)V
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
    iput-object p1, p0, Lcom/join/mgps/helper/WifiServerThread$c;->g:Lcom/join/mgps/helper/WifiServerThread;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/join/mgps/helper/WifiServerThread$c;->e:Z

    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/join/mgps/helper/WifiServerThread$c;->f:Z

    .line 10
    .line 11
    iput-object p2, p0, Lcom/join/mgps/helper/WifiServerThread$c;->b:Ljava/net/Socket;

    .line 12
    .line 13
    :try_start_0
    new-instance p1, Ljava/io/BufferedOutputStream;

    .line 14
    .line 15
    iget-object p2, p0, Lcom/join/mgps/helper/WifiServerThread$c;->b:Ljava/net/Socket;

    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-direct {p1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/join/mgps/helper/WifiServerThread$c;->c:Ljava/io/BufferedOutputStream;

    .line 25
    .line 26
    new-instance p1, Ljava/io/DataInputStream;

    .line 27
    .line 28
    iget-object p2, p0, Lcom/join/mgps/helper/WifiServerThread$c;->b:Ljava/net/Socket;

    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-direct {p1, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/join/mgps/helper/WifiServerThread$c;->d:Ljava/io/DataInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/helper/WifiServerThread$c;)Ljava/io/BufferedOutputStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/helper/WifiServerThread$c;->c:Ljava/io/BufferedOutputStream;

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
    const-string v1, "utf8"

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/join/mgps/helper/WifiServerThread$c;->g:Lcom/join/mgps/helper/WifiServerThread;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/join/mgps/helper/WifiServerThread;->access$400(Lcom/join/mgps/helper/WifiServerThread;)Ljava/lang/String;

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
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$c;->c:Ljava/io/BufferedOutputStream;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/join/mgps/helper/WifiServerThread$c;->c:Ljava/io/BufferedOutputStream;

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
    iget-object p1, p0, Lcom/join/mgps/helper/WifiServerThread$c;->g:Lcom/join/mgps/helper/WifiServerThread;

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    invoke-static {p1, v0}, Lcom/join/mgps/helper/WifiServerThread;->access$1002(Lcom/join/mgps/helper/WifiServerThread;Z)Z

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/join/mgps/helper/WifiServerThread$c;->g:Lcom/join/mgps/helper/WifiServerThread;

    .line 48
    .line 49
    invoke-static {p1}, Lcom/join/mgps/helper/WifiServerThread;->access$200(Lcom/join/mgps/helper/WifiServerThread;)Landroid/os/Handler;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const/16 v0, 0x232a

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/join/mgps/helper/WifiServerThread$c;->g:Lcom/join/mgps/helper/WifiServerThread;

    .line 59
    .line 60
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 61
    .line 62
    invoke-static {p1, v0}, Lcom/join/mgps/helper/WifiServerThread;->access$302(Lcom/join/mgps/helper/WifiServerThread;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 63
    .line 64
    .line 65
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
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$c;->b:Ljava/net/Socket;

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
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$c;->b:Ljava/net/Socket;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$c;->b:Ljava/net/Socket;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$c;->b:Ljava/net/Socket;

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
    iget-object p1, p0, Lcom/join/mgps/helper/WifiServerThread$c;->g:Lcom/join/mgps/helper/WifiServerThread;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/join/mgps/helper/WifiServerThread;->access$200(Lcom/join/mgps/helper/WifiServerThread;)Landroid/os/Handler;

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
    iget-object p1, p0, Lcom/join/mgps/helper/WifiServerThread$c;->g:Lcom/join/mgps/helper/WifiServerThread;

    .line 46
    .line 47
    invoke-static {p1}, Lcom/join/mgps/helper/WifiServerThread;->access$200(Lcom/join/mgps/helper/WifiServerThread;)Landroid/os/Handler;

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
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    .line 3
    new-instance v1, Lcom/join/mgps/helper/WifiServerThread$c$a;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/join/mgps/helper/WifiServerThread$c$a;-><init>(Lcom/join/mgps/helper/WifiServerThread$c;)V

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

.method public e()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$c;->c:Ljava/io/BufferedOutputStream;

    .line 2
    .line 3
    invoke-static {}, Lcom/join/mgps/aidl/FightProtocalManager;->startGame()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$c;->c:Ljava/io/BufferedOutputStream;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method public run()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$c;->g:Lcom/join/mgps/helper/WifiServerThread;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/helper/WifiServerThread;->access$600(Lcom/join/mgps/helper/WifiServerThread;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/helper/WifiServerThread$c;->g:Lcom/join/mgps/helper/WifiServerThread;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/join/mgps/helper/WifiServerThread;->access$700(Lcom/join/mgps/helper/WifiServerThread;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/join/mgps/helper/WifiServerThread$c;->g:Lcom/join/mgps/helper/WifiServerThread;

    .line 14
    .line 15
    invoke-static {v2}, Lcom/join/mgps/helper/WifiServerThread;->access$800(Lcom/join/mgps/helper/WifiServerThread;)Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {v0, v1, v2}, Lcom/join/mgps/aidl/FightProtocalManager;->ackSignal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-direct {p0, v0}, Lcom/join/mgps/helper/WifiServerThread$c;->d([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 45
    .line 46
    .line 47
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$c;->b:Ljava/net/Socket;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_6

    .line 54
    .line 55
    :try_start_1
    new-instance v0, Landroid/os/Message;

    .line 56
    .line 57
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/join/mgps/helper/WifiServerThread$c;->d:Ljava/io/DataInputStream;

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    :goto_1
    if-nez v1, :cond_1

    .line 67
    .line 68
    iget-object v1, p0, Lcom/join/mgps/helper/WifiServerThread$c;->d:Ljava/io/DataInputStream;

    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    goto :goto_1

    .line 75
    :cond_1
    new-array v2, v1, [B

    .line 76
    .line 77
    iget-object v3, p0, Lcom/join/mgps/helper/WifiServerThread$c;->d:Ljava/io/DataInputStream;

    .line 78
    .line 79
    invoke-virtual {v3, v2}, Ljava/io/DataInputStream;->read([B)I

    .line 80
    .line 81
    .line 82
    new-instance v3, Ljava/lang/String;

    .line 83
    .line 84
    const-string v4, "utf8"

    .line 85
    .line 86
    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object v2, p0, Lcom/join/mgps/helper/WifiServerThread$c;->g:Lcom/join/mgps/helper/WifiServerThread;

    .line 90
    .line 91
    invoke-static {v2}, Lcom/join/mgps/helper/WifiServerThread;->access$400(Lcom/join/mgps/helper/WifiServerThread;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v4, "server receive:"

    .line 100
    .line 101
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    iget-object v1, p0, Lcom/join/mgps/helper/WifiServerThread$c;->g:Lcom/join/mgps/helper/WifiServerThread;

    .line 108
    .line 109
    invoke-static {v1}, Lcom/join/mgps/helper/WifiServerThread;->access$900(Lcom/join/mgps/helper/WifiServerThread;)Lcom/join/android/app/common/utils/JsonMapper;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    const-class v2, Lcom/join/mgps/aidl/FightProtocal;

    .line 114
    .line 115
    invoke-virtual {v1, v3, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    check-cast v1, Lcom/join/mgps/aidl/FightProtocal;

    .line 120
    .line 121
    if-nez v1, :cond_2

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_2
    invoke-virtual {v1}, Lcom/join/mgps/aidl/FightProtocal;->getType()B

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    sget-byte v3, Lcom/join/mgps/aidl/FightProtocal;->TYPE_ACK:B

    .line 129
    .line 130
    const/4 v4, 0x1

    .line 131
    const/4 v5, 0x0

    .line 132
    if-ne v2, v3, :cond_3

    .line 133
    .line 134
    invoke-static {v1}, Lcom/join/mgps/aidl/FightProtocalManager;->ackReceivedSignal(Lcom/join/mgps/aidl/FightProtocal;)Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-eqz v2, :cond_3

    .line 139
    .line 140
    iput-boolean v5, p0, Lcom/join/mgps/helper/WifiServerThread$c;->f:Z

    .line 141
    .line 142
    const/16 v2, 0x2329

    .line 143
    .line 144
    iput v2, v0, Landroid/os/Message;->what:I

    .line 145
    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1}, Lcom/join/mgps/aidl/FightProtocal;->getBrand()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v3, "-"

    .line 159
    .line 160
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1}, Lcom/join/mgps/aidl/FightProtocal;->getOpponent()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 175
    .line 176
    iget-object v2, p0, Lcom/join/mgps/helper/WifiServerThread$c;->g:Lcom/join/mgps/helper/WifiServerThread;

    .line 177
    .line 178
    invoke-static {v2}, Lcom/join/mgps/helper/WifiServerThread;->access$200(Lcom/join/mgps/helper/WifiServerThread;)Landroid/os/Handler;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 183
    .line 184
    .line 185
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 186
    .line 187
    invoke-virtual {v1, v0}, Lcom/join/mgps/aidl/FightProtocal;->setBrand(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$c;->g:Lcom/join/mgps/helper/WifiServerThread;

    .line 191
    .line 192
    invoke-static {v0}, Lcom/join/mgps/helper/WifiServerThread;->access$800(Lcom/join/mgps/helper/WifiServerThread;)Landroid/content/Context;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-virtual {v1, v0}, Lcom/join/mgps/aidl/FightProtocal;->setOpponent(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$c;->g:Lcom/join/mgps/helper/WifiServerThread;

    .line 212
    .line 213
    invoke-static {v0}, Lcom/join/mgps/helper/WifiServerThread;->access$900(Lcom/join/mgps/helper/WifiServerThread;)Lcom/join/android/app/common/utils/JsonMapper;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-virtual {v0, v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

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
    invoke-direct {p0, v0}, Lcom/join/mgps/helper/WifiServerThread$c;->d([B)V

    .line 226
    .line 227
    .line 228
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$c;->g:Lcom/join/mgps/helper/WifiServerThread;

    .line 229
    .line 230
    invoke-static {v0}, Lcom/join/mgps/helper/WifiServerThread;->access$400(Lcom/join/mgps/helper/WifiServerThread;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    iput-boolean v4, p0, Lcom/join/mgps/helper/WifiServerThread$c;->f:Z

    .line 234
    .line 235
    goto/16 :goto_0

    .line 236
    .line 237
    :cond_3
    invoke-virtual {v1}, Lcom/join/mgps/aidl/FightProtocal;->getType()B

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    sget-byte v2, Lcom/join/mgps/aidl/FightProtocal;->TYPE_DISCONNECT:B

    .line 242
    .line 243
    if-ne v0, v2, :cond_5

    .line 244
    .line 245
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$c;->g:Lcom/join/mgps/helper/WifiServerThread;

    .line 246
    .line 247
    invoke-static {v0}, Lcom/join/mgps/helper/WifiServerThread;->access$400(Lcom/join/mgps/helper/WifiServerThread;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    iget-boolean v0, p0, Lcom/join/mgps/helper/WifiServerThread$c;->f:Z

    .line 251
    .line 252
    if-nez v0, :cond_4

    .line 253
    .line 254
    return-void

    .line 255
    :cond_4
    invoke-static {v1}, Lcom/join/mgps/aidl/FightProtocalManager;->ackDisconnect(Lcom/join/mgps/aidl/FightProtocal;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-direct {p0, v0}, Lcom/join/mgps/helper/WifiServerThread$c;->d([B)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p0, v5}, Lcom/join/mgps/helper/WifiServerThread$c;->b(Z)V

    .line 267
    .line 268
    .line 269
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$c;->g:Lcom/join/mgps/helper/WifiServerThread;

    .line 270
    .line 271
    invoke-virtual {v0}, Lcom/join/mgps/helper/WifiServerThread;->shutDown()V

    .line 272
    .line 273
    .line 274
    goto/16 :goto_0

    .line 275
    .line 276
    :cond_5
    invoke-virtual {v1}, Lcom/join/mgps/aidl/FightProtocal;->getType()B

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    sget-byte v1, Lcom/join/mgps/aidl/FightProtocal;->TYPE_AckDISCONNECT:B

    .line 281
    .line 282
    if-ne v0, v1, :cond_0

    .line 283
    .line 284
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$c;->g:Lcom/join/mgps/helper/WifiServerThread;

    .line 285
    .line 286
    invoke-static {v0}, Lcom/join/mgps/helper/WifiServerThread;->access$400(Lcom/join/mgps/helper/WifiServerThread;)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    iput-boolean v5, p0, Lcom/join/mgps/helper/WifiServerThread$c;->f:Z

    .line 290
    .line 291
    invoke-virtual {p0, v4}, Lcom/join/mgps/helper/WifiServerThread$c;->b(Z)V

    .line 292
    .line 293
    .line 294
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$c;->g:Lcom/join/mgps/helper/WifiServerThread;

    .line 295
    .line 296
    invoke-virtual {v0}, Lcom/join/mgps/helper/WifiServerThread;->shutDown()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 297
    .line 298
    .line 299
    goto/16 :goto_0

    .line 300
    .line 301
    :catch_1
    move-exception v0

    .line 302
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 303
    .line 304
    .line 305
    goto/16 :goto_0

    .line 306
    .line 307
    :cond_6
    return-void
.end method
