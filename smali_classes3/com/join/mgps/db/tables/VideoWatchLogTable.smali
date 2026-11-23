.class public Lcom/join/mgps/db/tables/VideoWatchLogTable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field private sceneType:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private sdkType:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private userId:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


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
.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/VideoWatchLogTable;->id:I

    .line 2
    .line 3
    return v0
.end method

.method public getSceneType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/VideoWatchLogTable;->sceneType:I

    .line 2
    .line 3
    return v0
.end method

.method public getSdkType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/VideoWatchLogTable;->sdkType:I

    .line 2
    .line 3
    return v0
.end method

.method public getUserId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/VideoWatchLogTable;->userId:I

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
    iput p1, p0, Lcom/join/mgps/db/tables/VideoWatchLogTable;->sceneType:I

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
    iput p1, p0, Lcom/join/mgps/db/tables/VideoWatchLogTable;->sdkType:I

    .line 2
    .line 3
    return-void
.end method

.method public setUserId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/VideoWatchLogTable;->userId:I

    .line 2
    .line 3
    return-void
.end method
