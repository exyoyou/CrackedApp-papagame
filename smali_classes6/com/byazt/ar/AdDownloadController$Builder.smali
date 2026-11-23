.class public final Lcom/byazt/ar/AdDownloadController$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x77,
        0x5d6
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/ar/AdDownloadController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public controller:Lcom/byazt/ar/AdDownloadController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/byazt/ar/AdDownloadController;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/byazt/ar/AdDownloadController;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/ar/AdDownloadController$Builder;->controller:Lcom/byazt/ar/AdDownloadController;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public build()Lcom/byazt/ar/AdDownloadController;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadController$Builder;->controller:Lcom/byazt/ar/AdDownloadController;

    .line 2
    .line 3
    return-object v0
.end method

.method public setDowloadChunkCount(I)Lcom/byazt/ar/AdDownloadController$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public setDownloadMode(I)Lcom/byazt/ar/AdDownloadController$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadController$Builder;->controller:Lcom/byazt/ar/AdDownloadController;

    .line 2
    .line 3
    iput p1, v0, Lcom/byazt/ar/AdDownloadController;->mDownloadMode:I

    .line 4
    .line 5
    return-object p0
.end method

.method public setEnableAH(Z)Lcom/byazt/ar/AdDownloadController$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadController$Builder;->controller:Lcom/byazt/ar/AdDownloadController;

    .line 2
    .line 3
    iput-boolean p1, v0, Lcom/byazt/ar/AdDownloadController;->mEnableAH:Z

    .line 4
    .line 5
    return-object p0
.end method

.method public setEnableAM(Z)Lcom/byazt/ar/AdDownloadController$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadController$Builder;->controller:Lcom/byazt/ar/AdDownloadController;

    .line 2
    .line 3
    iput-boolean p1, v0, Lcom/byazt/ar/AdDownloadController;->mEnableAM:Z

    .line 4
    .line 5
    return-object p0
.end method

.method public setEnableNewActivity(Z)Lcom/byazt/ar/AdDownloadController$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadController$Builder;->controller:Lcom/byazt/ar/AdDownloadController;

    .line 2
    .line 3
    iput-boolean p1, v0, Lcom/byazt/ar/AdDownloadController;->mEnableNewActivity:Z

    .line 4
    .line 5
    return-object p0
.end method

.method public setEnableOppoAutoDownload(Z)Lcom/byazt/ar/AdDownloadController$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadController$Builder;->controller:Lcom/byazt/ar/AdDownloadController;

    .line 2
    .line 3
    iput-boolean p1, v0, Lcom/byazt/ar/AdDownloadController;->mEnableOppoAutoDownload:Z

    .line 4
    .line 5
    return-object p0
.end method

.method public setEnableShowComplianceDialog(Z)Lcom/byazt/ar/AdDownloadController$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadController$Builder;->controller:Lcom/byazt/ar/AdDownloadController;

    .line 2
    .line 3
    iput-boolean p1, v0, Lcom/byazt/ar/AdDownloadController;->mEnableShowComplianceDialog:Z

    .line 4
    .line 5
    return-object p0
.end method

.method public setExtraJson(Lorg/json/JSONObject;)Lcom/byazt/ar/AdDownloadController$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadController$Builder;->controller:Lcom/byazt/ar/AdDownloadController;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/byazt/ar/AdDownloadController;->mExtraJson:Lorg/json/JSONObject;

    .line 4
    .line 5
    return-object p0
.end method

.method public setExtraObject(Ljava/lang/Object;)Lcom/byazt/ar/AdDownloadController$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadController$Builder;->controller:Lcom/byazt/ar/AdDownloadController;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/byazt/ar/AdDownloadController;->mExtraObject:Ljava/lang/Object;

    .line 4
    .line 5
    return-object p0
.end method

.method public setExtraOperation(Ljava/lang/Object;)Lcom/byazt/ar/AdDownloadController$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadController$Builder;->controller:Lcom/byazt/ar/AdDownloadController;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/byazt/ar/AdDownloadController;->mExtraClickOperation:Ljava/lang/Object;

    .line 4
    .line 5
    return-object p0
.end method

.method public setInterceptFlag(I)Lcom/byazt/ar/AdDownloadController$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadController$Builder;->controller:Lcom/byazt/ar/AdDownloadController;

    .line 2
    .line 3
    iput p1, v0, Lcom/byazt/ar/AdDownloadController;->mInterceptFlag:I

    .line 4
    .line 5
    return-object p0
.end method

.method public setIsAddToDownloadManage(Z)Lcom/byazt/ar/AdDownloadController$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadController$Builder;->controller:Lcom/byazt/ar/AdDownloadController;

    .line 2
    .line 3
    iput-boolean p1, v0, Lcom/byazt/ar/AdDownloadController;->mIsAddToDownloadManage:Z

    .line 4
    .line 5
    return-object p0
.end method

.method public setIsAutoDownloadOnCardShow(Z)Lcom/byazt/ar/AdDownloadController$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadController$Builder;->controller:Lcom/byazt/ar/AdDownloadController;

    .line 2
    .line 3
    iput-boolean p1, v0, Lcom/byazt/ar/AdDownloadController;->mIsAutoDownloadOnCardShow:Z

    .line 4
    .line 5
    return-object p0
.end method

.method public setIsEnableBackDialog(Z)Lcom/byazt/ar/AdDownloadController$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadController$Builder;->controller:Lcom/byazt/ar/AdDownloadController;

    .line 2
    .line 3
    iput-boolean p1, v0, Lcom/byazt/ar/AdDownloadController;->mIsEnableBackDialog:Z

    .line 4
    .line 5
    return-object p0
.end method

.method public setIsEnableMultipleDownload(Z)Lcom/byazt/ar/AdDownloadController$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public setLinkMode(I)Lcom/byazt/ar/AdDownloadController$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadController$Builder;->controller:Lcom/byazt/ar/AdDownloadController;

    .line 2
    .line 3
    iput p1, v0, Lcom/byazt/ar/AdDownloadController;->mLinkMode:I

    .line 4
    .line 5
    return-object p0
.end method

.method public setShouldUseNewWebView(Z)Lcom/byazt/ar/AdDownloadController$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadController$Builder;->controller:Lcom/byazt/ar/AdDownloadController;

    .line 2
    .line 3
    iput-boolean p1, v0, Lcom/byazt/ar/AdDownloadController;->mShouldUseNewWebView:Z

    .line 4
    .line 5
    return-object p0
.end method
