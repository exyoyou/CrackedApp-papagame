.class public Lcom/join/mgps/aidl/MGWifiClientThread;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/aidl/MGWifiClientThread$c;
    }
.end annotation


# static fields
.field public static final SERVERPORT:I = 0x2001


# instance fields
.field private TAG:Ljava/lang/String;

.field private bufferedOutputStream:Ljava/io/BufferedOutputStream;

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

.field private jsonMapper:Lcom/join/android/app/common/utils/JsonMapper;

.field lastSyncTime:J

.field private mHandler:Landroid/os/Handler;

.field monitoring:Z

.field private ping:Z

.field public socket:Ljava/net/Socket;

.field private ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "handler",
            "ssid"
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
    iput-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread;->jsonMapper:Lcom/join/android/app/common/utils/JsonMapper;

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread;->ping:Z

    .line 22
    .line 23
    new-instance v1, Ljava/util/ArrayList;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/join/mgps/aidl/MGWifiClientThread;->datas:Ljava/util/List;

    .line 30
    .line 31
    const-wide/16 v1, 0x0

    .line 32
    .line 33
    iput-wide v1, p0, Lcom/join/mgps/aidl/MGWifiClientThread;->lastSyncTime:J

    .line 34
    .line 35
    iput-boolean v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread;->monitoring:Z

    .line 36
    .line 37
    iput-object p1, p0, Lcom/join/mgps/aidl/MGWifiClientThread;->context:Landroid/content/Context;

    .line 38
    .line 39
    iput-object p2, p0, Lcom/join/mgps/aidl/MGWifiClientThread;->mHandler:Landroid/os/Handler;

    .line 40
    .line 41
    iput-object p3, p0, Lcom/join/mgps/aidl/MGWifiClientThread;->ssid:Ljava/lang/String;

    .line 42
    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/aidl/MGWifiClientThread;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/aidl/MGWifiClientThread;->ping:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$100(Lcom/join/mgps/aidl/MGWifiClientThread;)Ljava/io/DataInputStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/aidl/MGWifiClientThread;->ind:Ljava/io/DataInputStream;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$102(Lcom/join/mgps/aidl/MGWifiClientThread;Ljava/io/DataInputStream;)Ljava/io/DataInputStream;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/aidl/MGWifiClientThread;->ind:Ljava/io/DataInputStream;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$200(Lcom/join/mgps/aidl/MGWifiClientThread;)Ljava/io/BufferedOutputStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/aidl/MGWifiClientThread;->bufferedOutputStream:Ljava/io/BufferedOutputStream;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$202(Lcom/join/mgps/aidl/MGWifiClientThread;Ljava/io/BufferedOutputStream;)Ljava/io/BufferedOutputStream;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/aidl/MGWifiClientThread;->bufferedOutputStream:Ljava/io/BufferedOutputStream;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$300(Lcom/join/mgps/aidl/MGWifiClientThread;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/aidl/MGWifiClientThread;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcom/join/mgps/aidl/MGWifiClientThread;)Lcom/join/android/app/common/utils/JsonMapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/aidl/MGWifiClientThread;->jsonMapper:Lcom/join/android/app/common/utils/JsonMapper;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$500(Lcom/join/mgps/aidl/MGWifiClientThread;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/aidl/MGWifiClientThread;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$602(Lcom/join/mgps/aidl/MGWifiClientThread;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/aidl/MGWifiClientThread;->ssid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "signalShutDown"

    const-string v1, "gbk"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/aidl/MGWifiClientThread;->send([B)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread;->socket:Ljava/net/Socket;

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
    const-string v0, "-1"

    .line 5
    iput-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread;->ssid:Ljava/lang/String;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread;->socket:Ljava/net/Socket;

    .line 7
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

    :try_start_0
    const-string v0, "-1"

    .line 8
    iput-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread;->ssid:Ljava/lang/String;

    .line 9
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    :cond_0
    if-eqz p1, :cond_1

    .line 11
    iget-object p1, p0, Lcom/join/mgps/aidl/MGWifiClientThread;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x232a

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread;->ping:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread;->socket:Ljava/net/Socket;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    :try_start_0
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    :goto_0
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread;->socket:Ljava/net/Socket;

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public disConnect()V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/aidl/MGWifiClientThread$b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/aidl/MGWifiClientThread$b;-><init>(Lcom/join/mgps/aidl/MGWifiClientThread;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public get()[B
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread;->datas:Ljava/util/List;

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
    iget-object v2, p0, Lcom/join/mgps/aidl/MGWifiClientThread;->datas:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread;->ssid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public run()V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/aidl/MGWifiClientThread$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/aidl/MGWifiClientThread$a;-><init>(Lcom/join/mgps/aidl/MGWifiClientThread;)V

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
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread;->socket:Ljava/net/Socket;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread;->bufferedOutputStream:Ljava/io/BufferedOutputStream;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/join/mgps/aidl/MGWifiClientThread;->bufferedOutputStream:Ljava/io/BufferedOutputStream;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/join/mgps/aidl/MGWifiClientThread;->close()V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method public setSsid(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ssid"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/aidl/MGWifiClientThread;->ssid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
