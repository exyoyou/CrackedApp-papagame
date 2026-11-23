.class public final Lcom/byazt/ar/AdDownloadEventConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x77,
        0x8a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/ar/AdDownloadEventConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public eventConfig:Lcom/byazt/ar/AdDownloadEventConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/byazt/ar/AdDownloadEventConfig;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/byazt/ar/AdDownloadEventConfig;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->eventConfig:Lcom/byazt/ar/AdDownloadEventConfig;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public build()Lcom/byazt/ar/AdDownloadEventConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->eventConfig:Lcom/byazt/ar/AdDownloadEventConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public setClickButtonTag(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->eventConfig:Lcom/byazt/ar/AdDownloadEventConfig;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/byazt/ar/AdDownloadEventConfig;->mClickButtonTag:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0
.end method

.method public setClickContinueLabel(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->eventConfig:Lcom/byazt/ar/AdDownloadEventConfig;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/byazt/ar/AdDownloadEventConfig;->mClickContinueLabel:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0
.end method

.method public setClickContinueTag(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public setClickInstallLabel(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->eventConfig:Lcom/byazt/ar/AdDownloadEventConfig;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/byazt/ar/AdDownloadEventConfig;->mClickInstallLabel:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0
.end method

.method public setClickInstallTag(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public setClickItemTag(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->eventConfig:Lcom/byazt/ar/AdDownloadEventConfig;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/byazt/ar/AdDownloadEventConfig;->mClickItemTag:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0
.end method

.method public setClickLabel(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->eventConfig:Lcom/byazt/ar/AdDownloadEventConfig;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/byazt/ar/AdDownloadEventConfig;->mClickLabel:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0
.end method

.method public setClickOpenLabel(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public setClickOpenTag(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public setClickPauseLabel(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->eventConfig:Lcom/byazt/ar/AdDownloadEventConfig;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/byazt/ar/AdDownloadEventConfig;->mClickPauseLabel:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0
.end method

.method public setClickPauseTag(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public setClickStartLabel(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->eventConfig:Lcom/byazt/ar/AdDownloadEventConfig;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/byazt/ar/AdDownloadEventConfig;->mClickStartLabel:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0
.end method

.method public setClickStartTag(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public setClickTag(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public setCompletedEventTag(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public setDownloadFailedLabel(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public setDownloadScene(I)Lcom/byazt/ar/AdDownloadEventConfig$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->eventConfig:Lcom/byazt/ar/AdDownloadEventConfig;

    .line 2
    .line 3
    iput p1, v0, Lcom/byazt/ar/AdDownloadEventConfig;->mDownloadScene:I

    .line 4
    .line 5
    return-object p0
.end method

.method public setExtraEventObject(Ljava/lang/Object;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->eventConfig:Lcom/byazt/ar/AdDownloadEventConfig;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/byazt/ar/AdDownloadEventConfig;->mExtraEventObject:Ljava/lang/Object;

    .line 4
    .line 5
    return-object p0
.end method

.method public setExtraJson(Lorg/json/JSONObject;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->eventConfig:Lcom/byazt/ar/AdDownloadEventConfig;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/byazt/ar/AdDownloadEventConfig;->mExtraJson:Lorg/json/JSONObject;

    .line 4
    .line 5
    return-object p0
.end method

.method public setIsEnableClickEvent(Z)Lcom/byazt/ar/AdDownloadEventConfig$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->eventConfig:Lcom/byazt/ar/AdDownloadEventConfig;

    .line 2
    .line 3
    iput-boolean p1, v0, Lcom/byazt/ar/AdDownloadEventConfig;->mIsEnableClickEvent:Z

    .line 4
    .line 5
    return-object p0
.end method

.method public setIsEnableCompletedEvent(Z)Lcom/byazt/ar/AdDownloadEventConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public setIsEnableNoChargeClickEvent(Z)Lcom/byazt/ar/AdDownloadEventConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public setIsEnableV3Event(Z)Lcom/byazt/ar/AdDownloadEventConfig$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->eventConfig:Lcom/byazt/ar/AdDownloadEventConfig;

    .line 2
    .line 3
    iput-boolean p1, v0, Lcom/byazt/ar/AdDownloadEventConfig;->mIsEnableV3Event:Z

    .line 4
    .line 5
    return-object p0
.end method

.method public setOpenLabel(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public setOpenTag(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public setParamsJson(Lorg/json/JSONObject;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->eventConfig:Lcom/byazt/ar/AdDownloadEventConfig;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/byazt/ar/AdDownloadEventConfig;->mParamsJson:Lorg/json/JSONObject;

    .line 4
    .line 5
    return-object p0
.end method

.method public setQuickAppEventTag(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public setRefer(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->eventConfig:Lcom/byazt/ar/AdDownloadEventConfig;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/byazt/ar/AdDownloadEventConfig;->mRefer:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0
.end method

.method public setStorageDenyLabel(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->eventConfig:Lcom/byazt/ar/AdDownloadEventConfig;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/byazt/ar/AdDownloadEventConfig;->mStorageDenyLabel:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0
.end method

.method public setStorageDenyTag(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method
