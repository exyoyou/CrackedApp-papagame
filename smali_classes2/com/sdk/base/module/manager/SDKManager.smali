.class public abstract Lcom/sdk/base/module/manager/SDKManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALGO_A:Ljava/lang/String; = "A"

.field public static final ALGO_B_AES_SHA256_RSA:Ljava/lang/String; = "B"

.field public static final ALGO_C_RFU:Ljava/lang/String; = "C"

.field public static final ALGO_D_RFU:Ljava/lang/String; = "D"

.field public static final ALGO_E_SM4_SM3_SM2:Ljava/lang/String; = "E"

.field public static final HASH_FINGER_MD5:Ljava/lang/String; = "MD5"

.field public static final HASH_FINGER_SM3:Ljava/lang/String; = "SM3"

.field public static mContext:Landroid/content/Context; = null

.field private static statisticalTestHost:Ljava/lang/String; = ""

.field public static substring:Ljava/lang/String; = null

.field private static support_GM:Z = true

.field private static testHost:Ljava/lang/String; = ""

.field private static useCache:Z = true

.field private static userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/sdk/base/module/manager/SDKManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInitFlag()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/sdk/t/a;->c:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/sdk/r/a;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public static getStatisticalTestHost()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sdk/base/module/manager/SDKManager;->statisticalTestHost:Ljava/lang/String;

    return-object v0
.end method

.method public static getTestHost()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sdk/base/module/manager/SDKManager;->testHost:Ljava/lang/String;

    return-object v0
.end method

.method public static get_MobileHandlerTime()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "\n\u6700\u5927\u65f6\u957f = "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    sget-object v1, Lcom/sdk/x/a;->h:Ljava/lang/String;

    .line 12
    .line 13
    const-wide/16 v1, 0x0

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v3, "\n\u6700\u5c0f\u65f6\u957f = "

    .line 19
    .line 20
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v3, "\n\u65f6\u957f\u603b\u548c = "

    .line 27
    .line 28
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, "\n\u5f02\u6b65\u591a\u7ebf\u7a0b\uff0c\u65f6\u957f\u603b\u548c\u4e0d\u662f\u603b\u65f6\u95f4\n\n\u65f6\u957f\u5217\u8868 = "

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    sget-object v1, Lcom/sdk/x/a;->l:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    const-string v0, "B"

    const-string v1, "md5"

    invoke-static {p0, p1, p2, v0, v1}, Lcom/sdk/base/module/manager/SDKManager;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    const-string v0, "md5"

    invoke-static {p0, p1, p2, p3, v0}, Lcom/sdk/base/module/manager/SDKManager;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    sput-object p0, Lcom/sdk/base/module/manager/SDKManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sdk/t/a;->a(Landroid/content/Context;)Lcom/sdk/t/a;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sput-object p2, Lcom/sdk/t/a;->b:Ljava/lang/String;

    .line 5
    sput-object p1, Lcom/sdk/t/a;->c:Ljava/lang/String;

    const/4 p0, 0x0

    .line 6
    sput-boolean p0, Lcom/sdk/t/a;->f:Z

    .line 7
    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 8
    sput-object p1, Lcom/sdk/t/a;->d:Ljava/lang/String;

    .line 9
    sput-object p4, Lcom/sdk/t/a;->e:Ljava/lang/String;

    const/4 p1, 0x1

    .line 10
    invoke-static {p1}, Lcom/sdk/base/module/manager/SDKManager;->setUseCache(Z)V

    invoke-static {p0}, Lcom/sdk/base/module/manager/SDKManager;->setDebug(Z)V

    invoke-static {p0}, Lcom/sdk/base/module/manager/SDKManager;->setDebugHost(Z)V

    invoke-static {p1}, Lcom/sdk/base/module/manager/SDKManager;->setSupport3net(Z)V

    invoke-static {p0}, Lcom/sdk/base/module/manager/SDKManager;->setSupport_GM(Z)V

    invoke-static {p1}, Lcom/sdk/base/module/manager/SDKManager;->setSupport_reDirect(Z)V

    .line 11
    sget-object p0, Lcom/sdk/p/f;->c:Lcom/sdk/p/f;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sdk/p/f;->a()Lcom/sdk/p/f;

    move-result-object p0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sdk/p/f;->a:Lcom/sdk/q/a;

    sput-object p1, Lcom/sdk/p/f;->c:Lcom/sdk/p/f;

    :cond_0
    return-void
.end method

.method public static init_MobileHandlerTime()V
    .locals 1

    sget-object v0, Lcom/sdk/x/a;->h:Ljava/lang/String;

    const-string v0, "\n"

    sput-object v0, Lcom/sdk/x/a;->l:Ljava/lang/String;

    return-void
.end method

.method public static initkey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    sput-object p0, Lcom/sdk/base/module/manager/SDKManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/sdk/t/a;->a(Landroid/content/Context;)Lcom/sdk/t/a;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sput-object p2, Lcom/sdk/t/a;->b:Ljava/lang/String;

    .line 11
    .line 12
    sput-object p1, Lcom/sdk/t/a;->c:Ljava/lang/String;

    .line 13
    .line 14
    sget-object p0, Lcom/sdk/p/f;->c:Lcom/sdk/p/f;

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    invoke-static {}, Lcom/sdk/p/f;->a()Lcom/sdk/p/f;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lcom/sdk/p/f;->a:Lcom/sdk/q/a;

    .line 24
    .line 25
    sput-object p1, Lcom/sdk/p/f;->c:Lcom/sdk/p/f;

    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public static isDebug()Z
    .locals 1

    sget-boolean v0, Lcom/sdk/f/d;->a:Z

    return v0
.end method

.method public static isDebugHost()Z
    .locals 1

    sget-boolean v0, Lcom/sdk/f/d;->c:Z

    return v0
.end method

.method public static isSupport_GM()Z
    .locals 1

    sget-boolean v0, Lcom/sdk/base/module/manager/SDKManager;->support_GM:Z

    return v0
.end method

.method public static isSupport_reDirect()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/sdk/a/d;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public static isbSupport3net()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/sdk/t/a;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method public static releaseConnect(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/sdk/s/a;->a:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v0, Lcom/sdk/a/a;

    .line 4
    .line 5
    invoke-direct {v0}, Lcom/sdk/a/a;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "connectivity"

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 15
    .line 16
    iput-object v1, v0, Lcom/sdk/a/a;->b:Landroid/net/ConnectivityManager;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    sget-object v1, Lcom/sdk/a/a;->g:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iput-object v2, v0, Lcom/sdk/a/a;->b:Landroid/net/ConnectivityManager;

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    sput-boolean v1, Lcom/sdk/a/a;->f:Z

    .line 29
    .line 30
    sput-object v2, Lcom/sdk/a/a;->g:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 31
    .line 32
    sput-object v2, Lcom/sdk/a/a;->e:Landroid/net/Network;

    .line 33
    .line 34
    iput-object v2, v0, Lcom/sdk/a/a;->a:Ljava/net/HttpURLConnection;

    .line 35
    .line 36
    :cond_0
    invoke-static {p0}, Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;->getInstance(Landroid/content/Context;)Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;->getmHandler()Lcom/sdk/x/a;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    sput-object v2, Lcom/sdk/x/a;->j:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 47
    .line 48
    iput-object v2, v0, Lcom/sdk/x/a;->f:Landroid/net/ConnectivityManager;

    .line 49
    .line 50
    invoke-static {p0}, Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;->getInstance(Landroid/content/Context;)Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0, v2}, Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;->setmHandler(Lcom/sdk/x/a;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-static {p0}, Lcom/sdk/mobile/manager/oauth/cucc/OauthManager;->getInstance(Landroid/content/Context;)Lcom/sdk/mobile/manager/oauth/cucc/OauthManager;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/sdk/mobile/manager/oauth/cucc/OauthManager;->getmHandler()Lcom/sdk/x/a;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    sput-object v2, Lcom/sdk/x/a;->j:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 68
    .line 69
    iput-object v2, v0, Lcom/sdk/x/a;->f:Landroid/net/ConnectivityManager;

    .line 70
    .line 71
    invoke-static {p0}, Lcom/sdk/mobile/manager/oauth/cucc/OauthManager;->getInstance(Landroid/content/Context;)Lcom/sdk/mobile/manager/oauth/cucc/OauthManager;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p0, v2}, Lcom/sdk/mobile/manager/oauth/cucc/OauthManager;->setmHandler(Lcom/sdk/x/a;)V

    .line 76
    .line 77
    .line 78
    :cond_2
    return-void
.end method

.method public static setDebug(Z)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    sput-boolean p0, Lcom/sdk/f/d;->a:Z

    invoke-static {p0}, Lcom/sdk/base/framework/utils/log/LogUtils;->setDEBUG(Z)V

    const/4 p0, 0x0

    .line 1
    sput-boolean p0, Lcom/sdk/p/b;->a:Z

    return-void
.end method

.method public static setDebug(ZZ)V
    .locals 0

    sput-boolean p0, Lcom/sdk/f/d;->a:Z

    invoke-static {p0}, Lcom/sdk/base/framework/utils/log/LogUtils;->setDEBUG(Z)V

    .line 2
    sput-boolean p1, Lcom/sdk/p/b;->a:Z

    return-void
.end method

.method public static setDebugHost(Z)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    sput-boolean p0, Lcom/sdk/f/d;->c:Z

    if-eqz p0, :cond_0

    const-string p0, ""

    invoke-static {p0}, Lcom/sdk/base/module/manager/SDKManager;->setTestHost(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setStatisticalTestHost(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/sdk/base/module/manager/SDKManager;->statisticalTestHost:Ljava/lang/String;

    return-void
.end method

.method public static setSupport3net(Z)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    sput-boolean p0, Lcom/sdk/t/a;->f:Z

    .line 2
    .line 3
    return-void
.end method

.method public static setSupport_GM(Z)V
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    sput-boolean p0, Lcom/sdk/base/module/manager/SDKManager;->support_GM:Z

    if-eqz p0, :cond_0

    const-string p0, "E"

    const-string v0, "SM3"

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "B"

    const-string v0, "MD5"

    const/4 v1, 0x0

    :goto_0
    invoke-static {v1, p0, v0}, Lcom/sdk/base/module/manager/SDKManager;->setSupport_GM(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setSupport_GM(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    sput-boolean p0, Lcom/sdk/base/module/manager/SDKManager;->support_GM:Z

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 2
    sput-object p0, Lcom/sdk/t/a;->d:Ljava/lang/String;

    .line 3
    sput-object p2, Lcom/sdk/t/a;->e:Ljava/lang/String;

    return-void
.end method

.method public static setSupport_reDirect(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/sdk/a/d;->g:Z

    .line 2
    .line 3
    return-void
.end method

.method public static setTestHost(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/sdk/base/module/manager/SDKManager;->testHost:Ljava/lang/String;

    return-void
.end method

.method public static setUseCache(Z)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    sput-boolean p0, Lcom/sdk/base/module/manager/SDKManager;->useCache:Z

    return-void
.end method

.method public static toFailed(Lcom/sdk/base/api/CallBack;ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sdk/base/api/CallBack<",
            "TT;>;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, p2, v1}, Lcom/sdk/base/api/CallBack;->onFailed(IILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static useCache()Z
    .locals 1

    sget-boolean v0, Lcom/sdk/base/module/manager/SDKManager;->useCache:Z

    return v0
.end method
