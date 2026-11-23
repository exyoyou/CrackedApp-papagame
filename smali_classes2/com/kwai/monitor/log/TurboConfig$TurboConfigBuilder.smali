.class public Lcom/kwai/monitor/log/TurboConfig$TurboConfigBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/monitor/log/TurboConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TurboConfigBuilder"
.end annotation


# instance fields
.field public mAppChannel:Ljava/lang/String;

.field public mAppId:Ljava/lang/String;

.field public mAppName:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public mIsDebug:Z

.field public mOAIDProxy:Lcom/kwai/monitor/log/OAIDProxy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/kwai/monitor/log/TurboConfig$TurboConfigBuilder;->mIsDebug:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/kwai/monitor/log/TurboConfig$TurboConfigBuilder;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/kwai/monitor/log/TurboConfig$TurboConfigBuilder;
    .locals 1

    .line 1
    new-instance v0, Lcom/kwai/monitor/log/TurboConfig$TurboConfigBuilder;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kwai/monitor/log/TurboConfig$TurboConfigBuilder;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public build()Lcom/kwai/monitor/log/TurboConfig;
    .locals 2

    .line 1
    new-instance v0, Lcom/kwai/monitor/log/TurboConfig;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwai/monitor/log/TurboConfig;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/kwai/monitor/log/TurboConfig$TurboConfigBuilder;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    iput-object v1, v0, Lcom/kwai/monitor/log/TurboConfig;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/kwai/monitor/log/TurboConfig$TurboConfigBuilder;->mAppId:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v1, v0, Lcom/kwai/monitor/log/TurboConfig;->mAppId:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/kwai/monitor/log/TurboConfig$TurboConfigBuilder;->mAppName:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v1, v0, Lcom/kwai/monitor/log/TurboConfig;->mAppName:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/kwai/monitor/log/TurboConfig$TurboConfigBuilder;->mAppChannel:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v1, v0, Lcom/kwai/monitor/log/TurboConfig;->mChannel:Ljava/lang/String;

    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/kwai/monitor/log/TurboConfig$TurboConfigBuilder;->mIsDebug:Z

    .line 23
    .line 24
    iput-boolean v1, v0, Lcom/kwai/monitor/log/TurboConfig;->mEnableDebug:Z

    .line 25
    .line 26
    iget-object v1, p0, Lcom/kwai/monitor/log/TurboConfig$TurboConfigBuilder;->mOAIDProxy:Lcom/kwai/monitor/log/OAIDProxy;

    .line 27
    .line 28
    iput-object v1, v0, Lcom/kwai/monitor/log/TurboConfig;->mOAIDProxy:Lcom/kwai/monitor/log/OAIDProxy;

    .line 29
    .line 30
    return-object v0
.end method

.method public setAppChannel(Ljava/lang/String;)Lcom/kwai/monitor/log/TurboConfig$TurboConfigBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwai/monitor/log/TurboConfig$TurboConfigBuilder;->mAppChannel:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/kwai/monitor/log/TurboConfig$TurboConfigBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwai/monitor/log/TurboConfig$TurboConfigBuilder;->mAppId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setAppName(Ljava/lang/String;)Lcom/kwai/monitor/log/TurboConfig$TurboConfigBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwai/monitor/log/TurboConfig$TurboConfigBuilder;->mAppName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setEnableDebug(Z)Lcom/kwai/monitor/log/TurboConfig$TurboConfigBuilder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kwai/monitor/log/TurboConfig$TurboConfigBuilder;->mIsDebug:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setOAIDProxy(Lcom/kwai/monitor/log/OAIDProxy;)Lcom/kwai/monitor/log/TurboConfig$TurboConfigBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwai/monitor/log/TurboConfig$TurboConfigBuilder;->mOAIDProxy:Lcom/kwai/monitor/log/OAIDProxy;

    .line 2
    .line 3
    return-object p0
.end method
