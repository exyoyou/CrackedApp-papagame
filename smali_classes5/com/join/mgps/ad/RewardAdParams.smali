.class public Lcom/join/mgps/ad/RewardAdParams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private adId:Ljava/lang/String;

.field private adType:I

.field private appId:Ljava/lang/String;

.field private cfgBean:Lcom/join/mgps/dto/SingleGameAdCfgBean;

.field private duration:I

.field private gameId:Ljava/lang/String;

.field private resourceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILcom/join/mgps/dto/SingleGameAdCfgBean;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "appId",
            "adId",
            "adType",
            "duration",
            "cfgBean"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/ad/RewardAdParams;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/join/mgps/dto/SingleGameAdCfgBean;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILcom/join/mgps/dto/SingleGameAdCfgBean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "appId",
            "adId",
            "adType",
            "duration",
            "cfgBean",
            "gameId",
            "resourceId"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/ad/RewardAdParams;->appId:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/ad/RewardAdParams;->adId:Ljava/lang/String;

    .line 5
    iput p3, p0, Lcom/join/mgps/ad/RewardAdParams;->adType:I

    .line 6
    iput p4, p0, Lcom/join/mgps/ad/RewardAdParams;->duration:I

    .line 7
    iput-object p5, p0, Lcom/join/mgps/ad/RewardAdParams;->cfgBean:Lcom/join/mgps/dto/SingleGameAdCfgBean;

    .line 8
    iput-object p6, p0, Lcom/join/mgps/ad/RewardAdParams;->gameId:Ljava/lang/String;

    .line 9
    iput-object p7, p0, Lcom/join/mgps/ad/RewardAdParams;->resourceId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAdId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/RewardAdParams;->adId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/ad/RewardAdParams;->adType:I

    .line 2
    .line 3
    return v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/RewardAdParams;->appId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCfgBean()Lcom/join/mgps/dto/SingleGameAdCfgBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/RewardAdParams;->cfgBean:Lcom/join/mgps/dto/SingleGameAdCfgBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/ad/RewardAdParams;->duration:I

    .line 2
    .line 3
    return v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/RewardAdParams;->gameId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getResourceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/RewardAdParams;->resourceId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setAdId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/ad/RewardAdParams;->adId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAdType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adType"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/ad/RewardAdParams;->adType:I

    .line 2
    .line 3
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/ad/RewardAdParams;->appId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCfgBean(Lcom/join/mgps/dto/SingleGameAdCfgBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cfgBean"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/ad/RewardAdParams;->cfgBean:Lcom/join/mgps/dto/SingleGameAdCfgBean;

    .line 2
    .line 3
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "duration"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/ad/RewardAdParams;->duration:I

    .line 2
    .line 3
    return-void
.end method

.method public setGameId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/ad/RewardAdParams;->gameId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setResourceId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/ad/RewardAdParams;->resourceId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
