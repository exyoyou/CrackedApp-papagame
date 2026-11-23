.class public Lcom/join/mgps/helper/WifiClientThread;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SERVERPORT:I = 0x2001


# instance fields
.field private IP:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private bufferedOutputStream:Ljava/io/BufferedOutputStream;

.field private checking:Z

.field public context:Landroid/content/Context;

.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public in:Ljava/io/InputStream;

.field private ind:Ljava/io/DataInputStream;

.field private mHandler:Landroid/os/Handler;

.field public socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "handler"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/join/mgps/helper/WifiClientThread;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/join/mgps/helper/WifiClientThread;->checking:Z

    .line 16
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/helper/WifiClientThread;->datas:Ljava/util/List;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/join/mgps/helper/WifiClientThread;->context:Landroid/content/Context;

    .line 26
    .line 27
    iput-object p2, p0, Lcom/join/mgps/helper/WifiClientThread;->mHandler:Landroid/os/Handler;

    .line 28
    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/helper/WifiClientThread;)Ljava/io/DataInputStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/helper/WifiClientThread;->ind:Ljava/io/DataInputStream;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$002(Lcom/join/mgps/helper/WifiClientThread;Ljava/io/DataInputStream;)Ljava/io/DataInputStream;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/helper/WifiClientThread;->ind:Ljava/io/DataInputStream;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$100(Lcom/join/mgps/helper/WifiClientThread;)Ljava/io/BufferedOutputStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/helper/WifiClientThread;->bufferedOutputStream:Ljava/io/BufferedOutputStream;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$102(Lcom/join/mgps/helper/WifiClientThread;Ljava/io/BufferedOutputStream;)Ljava/io/BufferedOutputStream;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/helper/WifiClientThread;->bufferedOutputStream:Ljava/io/BufferedOutputStream;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$200(Lcom/join/mgps/helper/WifiClientThread;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/helper/WifiClientThread;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/join/mgps/helper/WifiClientThread;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/helper/WifiClientThread;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "signalShutDown"

    const-string v1, "utf8"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/helper/WifiClientThread;->send([B)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/helper/WifiClientThread;->socket:Ljava/net/Socket;

    .line 6
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public close(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sendBroadcast"
        }
    .end annotation

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    :cond_0
    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/join/mgps/helper/WifiClientThread;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x232a

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public disConnect()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread;->bufferedOutputStream:Ljava/io/BufferedOutputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread;->socket:Ljava/net/Socket;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread;->bufferedOutputStream:Ljava/io/BufferedOutputStream;

    .line 15
    .line 16
    invoke-static {}, Lcom/join/mgps/aidl/FightProtocalManager;->disconnect()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread;->bufferedOutputStream:Ljava/io/BufferedOutputStream;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    .line 37
    .line 38
    :goto_1
    return-void
.end method

.method public get()[B
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread;->datas:Ljava/util/List;

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
    iget-object v2, p0, Lcom/join/mgps/helper/WifiClientThread;->datas:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public run(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "ip",
            "gameId"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/helper/WifiClientThread$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/helper/WifiClientThread$a;-><init>(Lcom/join/mgps/helper/WifiClientThread;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public send([B)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread;->socket:Ljava/net/Socket;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread;->bufferedOutputStream:Ljava/io/BufferedOutputStream;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/join/mgps/helper/WifiClientThread;->bufferedOutputStream:Ljava/io/BufferedOutputStream;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception p1

    .line 25
    iput-boolean v1, p0, Lcom/join/mgps/helper/WifiClientThread;->checking:Z

    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread;->mHandler:Landroid/os/Handler;

    .line 28
    .line 29
    const/16 v1, 0x232a

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/join/mgps/helper/WifiClientThread;->close()V

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void

    .line 41
    :cond_1
    :goto_1
    iput-boolean v1, p0, Lcom/join/mgps/helper/WifiClientThread;->checking:Z

    .line 42
    .line 43
    return-void
.end method
