.class public Lcom/haima/hmcp/model/TokenTimeStampModel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TokenTimeStampModel"


# instance fields
.field private cTokenTimeStamp:Ljava/lang/Long;

.field private isWaitForUpdate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public callbackUpdateToken(Lcom/haima/hmcp/listeners/HmcpPlayerListener;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/haima/hmcp/listeners/HmcpPlayerListener;->onUpdateCToken()V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/haima/hmcp/model/TokenTimeStampModel;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "update cToken callback"

    .line 9
    .line 10
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    return p1
.end method

.method public getTokenTimeStamp()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/TokenTimeStampModel;->cTokenTimeStamp:Ljava/lang/Long;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-wide/16 v0, -0x1

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    :goto_0
    return-wide v0
.end method

.method public isWait()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/model/TokenTimeStampModel;->isWaitForUpdate:Z

    .line 2
    .line 3
    return v0
.end method

.method public needUpdateTimeStamp()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/TokenTimeStampModel;->cTokenTimeStamp:Ljava/lang/Long;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public parseTokenTimeStamp(Landroid/os/Bundle;)Ljava/lang/Long;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    const-string v1, "c_token_time_stamp"

    .line 6
    .line 7
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-wide/16 v3, -0x1

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1, v1, v3, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move-wide v1, v3

    .line 21
    :goto_0
    cmp-long p1, v1, v3

    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :cond_2
    return-object v0
.end method

.method public updateTimeStamp(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/model/TokenTimeStampModel;->cTokenTimeStamp:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public wait(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/model/TokenTimeStampModel;->isWaitForUpdate:Z

    .line 2
    .line 3
    return-void
.end method
