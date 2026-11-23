.class public Lcom/join/mgps/aidl/MGWifiServerThread;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/aidl/MGWifiServerThread$b;,
        Lcom/join/mgps/aidl/MGWifiServerThread$c;
    }
.end annotation


# static fields
.field private static final SERVERPORT:I = 0x2001


# instance fields
.field private TAG:Ljava/lang/String;

.field private clientMap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/aidl/MGWifiServerThread$b;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private isDisconnected:Z

.field private isrun:Ljava/lang/Boolean;

.field lastSyncTime:J

.field private mContext:Landroid/content/Context;

.field monitoring:Z

.field private mserverSocket:Ljava/net/ServerSocket;

.field private shutDownPositive:Ljava/lang/Boolean;


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
    iput-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->isrun:Ljava/lang/Boolean;

    .line 17
    .line 18
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->shutDownPositive:Ljava/lang/Boolean;

    .line 21
    .line 22
    new-instance v0, Ljava/util/Vector;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->clientMap:Ljava/util/List;

    .line 29
    .line 30
    iput-boolean v1, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->isDisconnected:Z

    .line 31
    .line 32
    const-wide/16 v0, 0x0

    .line 33
    .line 34
    iput-wide v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->lastSyncTime:J

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->monitoring:Z

    .line 38
    .line 39
    iput-object p1, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    iput-object p2, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->handler:Landroid/os/Handler;

    .line 42
    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/aidl/MGWifiServerThread;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->clientMap:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/join/mgps/aidl/MGWifiServerThread;)Ljava/net/ServerSocket;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->mserverSocket:Ljava/net/ServerSocket;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$102(Lcom/join/mgps/aidl/MGWifiServerThread;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->mserverSocket:Ljava/net/ServerSocket;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$200(Lcom/join/mgps/aidl/MGWifiServerThread;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->isrun:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$202(Lcom/join/mgps/aidl/MGWifiServerThread;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->isrun:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$300(Lcom/join/mgps/aidl/MGWifiServerThread;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcom/join/mgps/aidl/MGWifiServerThread;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$500(Lcom/join/mgps/aidl/MGWifiServerThread;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->shutDownPositive:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$600(Lcom/join/mgps/aidl/MGWifiServerThread;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public disConnect()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->clientMap:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/aidl/MGWifiServerThread;->shutDown()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->clientMap:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/join/mgps/aidl/MGWifiServerThread$b;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/join/mgps/aidl/MGWifiServerThread$b;->c()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-void
.end method

.method public getData()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->clientMap:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-array v0, v1, [B

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    new-array v0, v1, [B

    .line 14
    .line 15
    return-object v0
.end method

.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->mserverSocket:Ljava/net/ServerSocket;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/aidl/MGWifiServerThread;->shutDown()V

    .line 6
    .line 7
    .line 8
    :cond_0
    new-instance v0, Lcom/join/mgps/aidl/MGWifiServerThread$a;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/join/mgps/aidl/MGWifiServerThread$a;-><init>(Lcom/join/mgps/aidl/MGWifiServerThread;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public send([B)V
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
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->clientMap:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "server send:"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    new-instance v1, Ljava/lang/String;

    .line 21
    .line 22
    const-string v2, "gbk"

    .line 23
    .line 24
    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method public shutDown()V
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->shutDownPositive:Ljava/lang/Boolean;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->mserverSocket:Ljava/net/ServerSocket;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->clientMap:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->mserverSocket:Ljava/net/ServerSocket;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 17
    .line 18
    .line 19
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->isrun:Ljava/lang/Boolean;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->mserverSocket:Ljava/net/ServerSocket;

    .line 25
    .line 26
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method public startGame()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->clientMap:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/aidl/MGWifiServerThread;->shutDown()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->clientMap:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/join/mgps/aidl/MGWifiServerThread$b;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/join/mgps/aidl/MGWifiServerThread$b;->e()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-void
.end method
