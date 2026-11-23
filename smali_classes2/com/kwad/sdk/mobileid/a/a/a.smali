.class public final Lcom/kwad/sdk/mobileid/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/mobileid/a/a/a$a;
    }
.end annotation


# instance fields
.field private aoL:Landroid/net/ConnectivityManager;

.field private biZ:Landroid/net/ConnectivityManager$NetworkCallback;

.field private volatile bja:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/kwad/sdk/mobileid/a/a/a;->bja:Z

    .line 6
    .line 7
    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/mobileid/a/a/a;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/sdk/mobileid/a/a/a;->aoL:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static synthetic a(Lcom/kwad/sdk/mobileid/a/a/a;Z)Z
    .locals 0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/kwad/sdk/mobileid/a/a/a;->bja:Z

    return p1
.end method

.method static synthetic b(Lcom/kwad/sdk/mobileid/a/a/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kwad/sdk/mobileid/a/a/a;->bja:Z

    .line 2
    .line 3
    return p0
.end method

.method private static cF(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 1

    .line 1
    const-string v0, "connectivity"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 8
    .line 9
    return-object p0
.end method


# virtual methods
.method public final Sg()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/mobileid/a/a/a;->biZ:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/kwad/sdk/mobileid/a/a/a;->aoL:Landroid/net/ConnectivityManager;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    :try_start_2
    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 21
    .line 22
    const/16 v1, 0x17

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    if-lt v0, v1, :cond_2

    .line 26
    .line 27
    iget-object v0, p0, Lcom/kwad/sdk/mobileid/a/a/a;->aoL:Landroid/net/ConnectivityManager;

    .line 28
    .line 29
    invoke-static {v0, v2}, Lcom/kwad/sdk/mobileid/a/a/b;->a(Landroid/net/ConnectivityManager;Landroid/net/Network;)Z

    .line 30
    .line 31
    .line 32
    :cond_2
    iput-object v2, p0, Lcom/kwad/sdk/mobileid/a/a/a;->biZ:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 33
    .line 34
    monitor-exit p0

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    throw v0
.end method

.method public final a(Landroid/content/Context;Lcom/kwad/sdk/mobileid/a/a/a$a;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-static {p1}, Lcom/kwad/sdk/mobileid/a/a/a;->cF(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/mobileid/a/a/a;->aoL:Landroid/net/ConnectivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_2

    .line 6
    new-instance p1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    const/16 v0, 0xc

    .line 8
    invoke-virtual {p1, v0}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/kwad/sdk/mobileid/a/a/a;->biZ:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Lcom/kwad/sdk/mobileid/a/a/a$1;

    invoke-direct {v0, p0, p2}, Lcom/kwad/sdk/mobileid/a/a/a$1;-><init>(Lcom/kwad/sdk/mobileid/a/a/a;Lcom/kwad/sdk/mobileid/a/a/a$a;)V

    iput-object v0, p0, Lcom/kwad/sdk/mobileid/a/a/a;->biZ:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 12
    :cond_0
    iget-boolean p2, p0, Lcom/kwad/sdk/mobileid/a/a/a;->bja:Z

    if-nez p2, :cond_1

    .line 13
    iget-object p2, p0, Lcom/kwad/sdk/mobileid/a/a/a;->aoL:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/kwad/sdk/mobileid/a/a/a;->biZ:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p2, p1, v0}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0

    :cond_1
    const-string p1, "MobileIdManager.RequestMobileDataOnWifiHelper"

    const-string p2, "isRequestUaidToken is true unbindNetwork"

    .line 14
    invoke-static {p1, p2}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcom/kwad/sdk/mobileid/a/a/a;->Sg()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16
    :try_start_2
    invoke-static {p1}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 17
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
