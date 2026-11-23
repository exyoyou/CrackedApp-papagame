.class public Lcom/sdk/mobile/manager/oauth/cucc/OauthManager;
.super Lcom/sdk/base/module/manager/SDKManager;
.source "SourceFile"


# static fields
.field private static volatile manager:Lcom/sdk/mobile/manager/oauth/cucc/OauthManager;


# instance fields
.field public mHandler:Lcom/sdk/x/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sdk/base/module/manager/SDKManager;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sdk/mobile/manager/oauth/cucc/OauthManager;
    .locals 1

    sget-object p0, Lcom/sdk/mobile/manager/oauth/cucc/OauthManager;->manager:Lcom/sdk/mobile/manager/oauth/cucc/OauthManager;

    if-nez p0, :cond_1

    const-class p0, Lcom/sdk/mobile/manager/oauth/cucc/OauthManager;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/sdk/mobile/manager/oauth/cucc/OauthManager;->manager:Lcom/sdk/mobile/manager/oauth/cucc/OauthManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sdk/mobile/manager/oauth/cucc/OauthManager;

    invoke-direct {v0}, Lcom/sdk/mobile/manager/oauth/cucc/OauthManager;-><init>()V

    sput-object v0, Lcom/sdk/mobile/manager/oauth/cucc/OauthManager;->manager:Lcom/sdk/mobile/manager/oauth/cucc/OauthManager;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    sget-object p0, Lcom/sdk/mobile/manager/oauth/cucc/OauthManager;->manager:Lcom/sdk/mobile/manager/oauth/cucc/OauthManager;

    return-object p0
.end method


# virtual methods
.method public getAuthoriseCode(ILcom/sdk/base/api/CallBack;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/sdk/base/api/CallBack<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "qcandroidabc000"

    invoke-static {}, Lcom/sdk/base/framework/utils/log/LiveDataBus3;->init()Z

    const-string v1, "TAG"

    const-string v2, "Demo \u70b9\u51fb\u89e6\u53d1 \u5f00\u59cb"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sdk/base/framework/utils/log/LogUtils;->d_yl(Ljava/lang/String;Ljava/lang/String;I)I

    :try_start_0
    invoke-static {}, Lcom/sdk/base/module/manager/SDKManager;->getInitFlag()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "ApiKey\u6216PublicKey\u4e0d\u80fd\u4e3a\u7a7a"

    const-string v0, "seqAndroidEmpty"

    const v1, 0x18a8c

    invoke-interface {p2, v3, v1, p1, v0}, Lcom/sdk/base/api/CallBack;->onFailed(IILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v2, Lcom/sdk/base/module/manager/SDKManager;->mContext:Landroid/content/Context;

    const-string v4, "qcandroid"

    invoke-static {v2, v4, v0}, Lcom/sdk/j/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lcom/sdk/base/module/manager/SDKManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "seq"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lcom/sdk/j/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lcom/sdk/i/a;->a()I

    move-result v2

    sget-object v4, Lcom/sdk/base/module/manager/SDKManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sdk/n/a;->b(Landroid/content/Context;)Lcom/sdk/n/a$b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sdk/n/a$b;->a()I

    move-result v4

    sput v4, Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;->lognetType:I

    const/16 v5, 0x17

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ge v2, v5, :cond_1

    if-ne v4, v6, :cond_1

    const-string p1, "\u9009\u62e9\u6d41\u91cf\u901a\u9053\u5931\u8d25"

    const v1, 0x18e71

    invoke-interface {p2, v7, v1, p1, v0}, Lcom/sdk/base/api/CallBack;->onFailed(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-1  \u6ca1\u7f51  ; 0  wifi  ; 1  \u6d41\u91cf  ;  2 wifi + \u6d41\u91cf \u7f51\u7edc\u72b6\u6001:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Lcom/sdk/base/framework/utils/log/LogUtils;->d_yl(Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v4, v6, :cond_4

    if-ne v4, v7, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, ""

    if-nez v4, :cond_3

    :try_start_1
    const-string v0, "\u672a\u5f00\u542f\u6d41\u91cf"

    const v1, 0x18e73

    :goto_0
    invoke-interface {p2, v7, v1, v0, p1}, Lcom/sdk/base/api/CallBack;->onFailed(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const/4 v0, -0x1

    if-ne v4, v0, :cond_5

    const-string v0, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    const v1, 0x18e72

    goto :goto_0

    :cond_4
    :goto_1
    new-instance v0, Lcom/sdk/x/a;

    sget-object v1, Lcom/sdk/base/module/manager/SDKManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/sdk/x/a;-><init>(Landroid/content/Context;ILcom/sdk/base/api/CallBack;)V

    iput-object v0, p0, Lcom/sdk/mobile/manager/oauth/cucc/OauthManager;->mHandler:Lcom/sdk/x/a;

    invoke-virtual {v0, v7}, Lcom/sdk/x/a;->a(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_5
    :goto_2
    return-void
.end method

.method public getMobileForCode(Ljava/lang/String;ILcom/sdk/base/api/CallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "I",
            "Lcom/sdk/base/api/CallBack<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public getMobileForCode(Ljava/lang/String;Ljava/lang/String;ILcom/sdk/base/api/CallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/sdk/base/api/CallBack<",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    return-void
.end method

.method public getmHandler()Lcom/sdk/x/a;
    .locals 1

    iget-object v0, p0, Lcom/sdk/mobile/manager/oauth/cucc/OauthManager;->mHandler:Lcom/sdk/x/a;

    return-object v0
.end method

.method public setmHandler(Lcom/sdk/x/a;)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/mobile/manager/oauth/cucc/OauthManager;->mHandler:Lcom/sdk/x/a;

    return-void
.end method
