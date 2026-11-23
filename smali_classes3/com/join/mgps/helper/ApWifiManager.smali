.class public Lcom/join/mgps/helper/ApWifiManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ApWifiManager"


# instance fields
.field context:Landroid/content/Context;

.field mApWifiUtil:Lcom/join/mgps/Util/k;

.field wifiUtil:Lcom/join/mgps/Util/WifiUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mContext"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/join/mgps/Util/WifiUtils;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/WifiUtils;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/join/mgps/helper/ApWifiManager;->wifiUtil:Lcom/join/mgps/Util/WifiUtils;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/join/mgps/Util/k;->i(Landroid/content/Context;)Lcom/join/mgps/Util/k;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/join/mgps/helper/ApWifiManager;->mApWifiUtil:Lcom/join/mgps/Util/k;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/join/mgps/helper/ApWifiManager;->context:Landroid/content/Context;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public closeWifiAp()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/helper/ApWifiManager;->mApWifiUtil:Lcom/join/mgps/Util/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/Util/k;->f()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/helper/ApWifiManager;->wifiUtil:Lcom/join/mgps/Util/WifiUtils;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/join/mgps/helper/ApWifiManager;->context:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/WifiUtils;->openWifi(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public connectApWifi(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ssid",
            "pwd"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/helper/ApWifiManager;->mApWifiUtil:Lcom/join/mgps/Util/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/Util/k;->f()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/helper/ApWifiManager;->wifiUtil:Lcom/join/mgps/Util/WifiUtils;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/join/mgps/helper/ApWifiManager;->context:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/WifiUtils;->openWifi(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/helper/ApWifiManager;->wifiUtil:Lcom/join/mgps/Util/WifiUtils;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/Util/WifiUtils;->isWifiEnable()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/helper/ApWifiManager;->mApWifiUtil:Lcom/join/mgps/Util/k;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/join/mgps/Util/k;->h()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/helper/ApWifiManager;->mApWifiUtil:Lcom/join/mgps/Util/k;

    .line 27
    .line 28
    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/Util/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p1, 0x0

    .line 34
    :goto_0
    return p1
.end method

.method public createApWifi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "ssid",
            "pwd"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/helper/ApWifiManager;->wifiUtil:Lcom/join/mgps/Util/WifiUtils;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/helper/ApWifiManager;->context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/WifiUtils;->closeWifi(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/helper/ApWifiManager;->mApWifiUtil:Lcom/join/mgps/Util/k;

    .line 9
    .line 10
    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/Util/k;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
