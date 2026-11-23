.class public Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;
.super Lcom/sdk/base/module/manager/SDKManager;
.source "SourceFile"


# static fields
.field private static isDebug:Ljava/lang/Boolean;

.field public static lognetType:I

.field private static volatile manager:Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;

.field public static timeOut1:I


# instance fields
.field private TAG:Ljava/lang/String;

.field private cancel:Z

.field public mHandler:Lcom/sdk/x/a;

.field private resultMode:Lcom/sdk/base/framework/bean/OauthResultMode;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/sdk/f/d;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;->isDebug:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sdk/base/module/manager/SDKManager;-><init>()V

    const-class v0, Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private dispatchHandler(ILcom/sdk/base/api/CallBack;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/sdk/base/api/CallBack<",
            "TT;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/sdk/x/a;

    sget-object v1, Lcom/sdk/base/module/manager/SDKManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/sdk/mobile/manager/login/cucc/UiOauthManager$1;

    invoke-direct {v2, p0, p2}, Lcom/sdk/mobile/manager/login/cucc/UiOauthManager$1;-><init>(Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;Lcom/sdk/base/api/CallBack;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/sdk/x/a;-><init>(Landroid/content/Context;ILcom/sdk/base/api/CallBack;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/sdk/x/a;->a(I)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;
    .locals 1

    sget-object p0, Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;->manager:Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;

    if-nez p0, :cond_1

    const-class p0, Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;->manager:Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;

    invoke-direct {v0}, Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;-><init>()V

    sput-object v0, Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;->manager:Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;

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
    sget-object p0, Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;->manager:Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;

    return-object p0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;->cancel:Z

    return-void
.end method

.method public getmHandler()Lcom/sdk/x/a;
    .locals 1

    iget-object v0, p0, Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;->mHandler:Lcom/sdk/x/a;

    return-object v0
.end method

.method public login(ILcom/sdk/base/api/CallBack;)V
    .locals 7
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

    iget-object v1, p0, Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;->TAG:Ljava/lang/String;

    const-string v2, "Demo \u70b9\u51fb\u89e6\u53d1 \u5f00\u59cb"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sdk/base/framework/utils/log/LogUtils;->d_yl(Ljava/lang/String;Ljava/lang/String;I)I

    :try_start_0
    invoke-static {}, Lcom/sdk/base/module/manager/SDKManager;->getInitFlag()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "ApiKey\u6216PublicKey\u4e0d\u80fd\u4e3a\u7a7a"

    const-string v0, "seqAndroidEmpty"

    const v1, 0x18a8c

    invoke-interface {p2, v3, v1, p1, v0}, Lcom/sdk/base/api/CallBack;->onFailed(IILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v1, Lcom/sdk/base/module/manager/SDKManager;->mContext:Landroid/content/Context;

    const-string v2, "qcandroid"

    invoke-static {v1, v2, v0}, Lcom/sdk/j/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lcom/sdk/base/module/manager/SDKManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "seq"

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Lcom/sdk/j/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lcom/sdk/i/a;->a()I

    move-result v1

    sget-object v2, Lcom/sdk/base/module/manager/SDKManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sdk/n/a;->b(Landroid/content/Context;)Lcom/sdk/n/a$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sdk/n/a$b;->a()I

    move-result v2

    sput v2, Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;->lognetType:I

    const/16 v4, 0x17

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ge v1, v4, :cond_1

    if-ne v2, v5, :cond_1

    const-string p1, "\u9009\u62e9\u6d41\u91cf\u901a\u9053\u5931\u8d25"

    const v1, 0x18e71

    invoke-interface {p2, v6, v1, p1, v0}, Lcom/sdk/base/api/CallBack;->onFailed(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-1:\u6ca1\u7f51; 0:wifi; 1:\u6d41\u91cf; 2:\u53cc\u5f00; \u7f51\u7edc\u72b6\u6001:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;->lognetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/sdk/base/framework/utils/log/LogUtils;->d_yl(Ljava/lang/String;Ljava/lang/String;I)I

    sget v0, Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;->lognetType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v0, v5, :cond_4

    if-ne v0, v6, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, ""

    if-nez v0, :cond_3

    :try_start_1
    const-string v0, "\u672a\u5f00\u542f\u6d41\u91cf"

    const v2, 0x18e73

    invoke-interface {p2, v6, v2, v0, v1}, Lcom/sdk/base/api/CallBack;->onFailed(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v2, -0x1

    if-ne v0, v2, :cond_5

    const-string v0, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    const v2, 0x18e72

    invoke-interface {p2, v6, v2, v0, v1}, Lcom/sdk/base/api/CallBack;->onFailed(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    :goto_0
    new-instance v0, Lcom/sdk/x/a;

    sget-object v1, Lcom/sdk/base/module/manager/SDKManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/sdk/x/a;-><init>(Landroid/content/Context;ILcom/sdk/base/api/CallBack;)V

    iput-object v0, p0, Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;->mHandler:Lcom/sdk/x/a;

    invoke-virtual {v0, v3}, Lcom/sdk/x/a;->a(I)V

    :cond_5
    :goto_1
    sput p1, Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;->timeOut1:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;->isDebug:Ljava/lang/Boolean;

    invoke-static {p2, p1, v0}, Lcom/sdk/base/framework/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    :goto_2
    iget-object p1, p0, Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "public <T> void login:\u7ed3\u675f"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;->lognetType:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v3}, Lcom/sdk/base/framework/utils/log/LogUtils;->d_yl(Ljava/lang/String;Ljava/lang/String;I)I

    return-void
.end method

.method public setmHandler(Lcom/sdk/x/a;)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;->mHandler:Lcom/sdk/x/a;

    return-void
.end method
