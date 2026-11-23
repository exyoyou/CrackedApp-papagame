.class public Lcom/join/mgps/dto/VideoAdWatchLogRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private sceneType:I

.field private sdkType:I

.field private uid:I


# direct methods
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
.method public getSceneType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/VideoAdWatchLogRequest;->sceneType:I

    .line 2
    .line 3
    return v0
.end method

.method public getSdkType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/VideoAdWatchLogRequest;->sdkType:I

    .line 2
    .line 3
    return v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/VideoAdWatchLogRequest;->uid:I

    .line 2
    .line 3
    return v0
.end method

.method public setSceneType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sceneType"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/VideoAdWatchLogRequest;->sceneType:I

    .line 2
    .line 3
    return-void
.end method

.method public setSdkType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sdkType"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/VideoAdWatchLogRequest;->sdkType:I

    .line 2
    .line 3
    return-void
.end method

.method public setUid(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/VideoAdWatchLogRequest;->uid:I

    .line 2
    .line 3
    return-void
.end method
