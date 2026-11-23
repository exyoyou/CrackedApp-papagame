.class public final Lcom/byazt/ar/AdDownloadModel$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x77,
        0x80d
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/ar/AdDownloadModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public model:Lcom/byazt/ar/AdDownloadModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/byazt/ar/AdDownloadModel;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/byazt/ar/AdDownloadModel;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/ar/AdDownloadModel$Builder;->model:Lcom/byazt/ar/AdDownloadModel;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public build()Lcom/byazt/ar/AdDownloadModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadModel$Builder;->model:Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    return-object v0
.end method

.method public setAdId(J)Lcom/byazt/ar/AdDownloadModel$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/byazt/ar/AdDownloadModel$Builder;->setId(J)Lcom/byazt/ar/AdDownloadModel$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public setAppIcon(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadModel$Builder;->model:Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/byazt/ar/AdDownloadModel;->mAppIcon:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0
.end method

.method public setAppName(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadModel$Builder;->model:Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/byazt/ar/AdDownloadModel;->mAppName:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0
.end method

.method public setAutoInstall(Z)Lcom/byazt/ar/AdDownloadModel$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadModel$Builder;->model:Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    iput-boolean p1, v0, Lcom/byazt/ar/AdDownloadModel;->mAutoInstall:Z

    .line 4
    .line 5
    return-object p0
.end method

.method public setAutoInstallWithoutNotification(Z)Lcom/byazt/ar/AdDownloadModel$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadModel$Builder;->model:Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    iput-boolean p1, v0, Lcom/byazt/ar/AdDownloadModel;->mAutoInstallWithoutNotification:Z

    .line 4
    .line 5
    return-object p0
.end method

.method public setBackupUrls(Ljava/util/List;)Lcom/byazt/ar/AdDownloadModel$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/byazt/ar/AdDownloadModel$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadModel$Builder;->model:Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/byazt/ar/AdDownloadModel;->mBackupUrls:Ljava/util/List;

    .line 4
    .line 5
    return-object p0
.end method

.method public setClickTrackUrl(Ljava/util/List;)Lcom/byazt/ar/AdDownloadModel$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/byazt/ar/AdDownloadModel$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadModel$Builder;->model:Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/byazt/ar/AdDownloadModel;->mClickTrackUrl:Ljava/util/List;

    .line 4
    .line 5
    return-object p0
.end method

.method public setDeepLink(Lcom/byazt/e/DeepLink;)Lcom/byazt/ar/AdDownloadModel$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadModel$Builder;->model:Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/byazt/ar/AdDownloadModel;->mDeepLink:Lcom/byazt/e/DeepLink;

    .line 4
    .line 5
    return-object p0
.end method

.method public setDistinctDir(Z)Lcom/byazt/ar/AdDownloadModel$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadModel$Builder;->model:Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    iput-boolean p1, v0, Lcom/byazt/ar/AdDownloadModel;->mDistinctDir:Z

    .line 4
    .line 5
    return-object p0
.end method

.method public setDownloadSettings(Lorg/json/JSONObject;)Lcom/byazt/ar/AdDownloadModel$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadModel$Builder;->model:Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/byazt/ar/AdDownloadModel;->mDownloadSettings:Lorg/json/JSONObject;

    .line 4
    .line 5
    return-object p0
.end method

.method public setDownloadUrl(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadModel$Builder;->model:Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/byazt/ar/AdDownloadModel;->mDownloadUrl:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0
.end method

.method public setEnablePause(Z)Lcom/byazt/ar/AdDownloadModel$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadModel$Builder;->model:Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    iput-boolean p1, v0, Lcom/byazt/ar/AdDownloadModel;->mEnablePause:Z

    .line 4
    .line 5
    return-object p0
.end method

.method public setExecutorGroup(I)Lcom/byazt/ar/AdDownloadModel$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadModel$Builder;->model:Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    iput p1, v0, Lcom/byazt/ar/AdDownloadModel;->mExecutorGroup:I

    .line 4
    .line 5
    return-object p0
.end method

.method public setExpectFileLength(J)Lcom/byazt/ar/AdDownloadModel$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadModel$Builder;->model:Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    iput-wide p1, v0, Lcom/byazt/ar/AdDownloadModel;->mExpectFileLength:J

    .line 4
    .line 5
    return-object p0
.end method

.method public setExtra(Lorg/json/JSONObject;)Lcom/byazt/ar/AdDownloadModel$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadModel$Builder;->model:Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/byazt/ar/AdDownloadModel;->mExtra:Lorg/json/JSONObject;

    .line 4
    .line 5
    return-object p0
.end method

.method public setExtraValue(J)Lcom/byazt/ar/AdDownloadModel$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadModel$Builder;->model:Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    iput-wide p1, v0, Lcom/byazt/ar/AdDownloadModel;->mExtraValue:J

    .line 4
    .line 5
    return-object p0
.end method

.method public setFileName(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadModel$Builder;->model:Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/byazt/ar/AdDownloadModel;->mFileName:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0
.end method

.method public setFilePath(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadModel$Builder;->model:Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/byazt/ar/AdDownloadModel;->mFilePath:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0
.end method

.method public setFileUriProvider(Lcom/byazt/c/IDownloadFileUriProvider;)Lcom/byazt/ar/AdDownloadModel$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadModel$Builder;->model:Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/byazt/ar/AdDownloadModel;->mFileUriProvider:Lcom/byazt/c/IDownloadFileUriProvider;

    .line 4
    .line 5
    return-object p0
.end method

.method public setHeaders(Ljava/util/Map;)Lcom/byazt/ar/AdDownloadModel$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/byazt/ar/AdDownloadModel$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadModel$Builder;->model:Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/byazt/ar/AdDownloadModel;->mHeaders:Ljava/util/Map;

    .line 4
    .line 5
    return-object p0
.end method

.method public setId(J)Lcom/byazt/ar/AdDownloadModel$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadModel$Builder;->model:Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    iput-wide p1, v0, Lcom/byazt/ar/AdDownloadModel;->mId:J

    .line 4
    .line 5
    return-object p0
.end method

.method public setIsAd(Z)Lcom/byazt/ar/AdDownloadModel$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadModel$Builder;->model:Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    iput-boolean p1, v0, Lcom/byazt/ar/AdDownloadModel;->mIsAd:Z

    .line 4
    .line 5
    return-object p0
.end method

.method public setIsInExternalPublicDir(Z)Lcom/byazt/ar/AdDownloadModel$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadModel$Builder;->model:Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    iput-boolean p1, v0, Lcom/byazt/ar/AdDownloadModel;->mIsInExternalPublicDir:Z

    .line 4
    .line 5
    return-object p0
.end method

.method public setIsShowNotification(Z)Lcom/byazt/ar/AdDownloadModel$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadModel$Builder;->model:Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    iput-boolean p1, v0, Lcom/byazt/ar/AdDownloadModel;->mIsShowNotification:Z

    .line 4
    .line 5
    return-object p0
.end method

.method public setIsShowToast(Z)Lcom/byazt/ar/AdDownloadModel$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadModel$Builder;->model:Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    iput-boolean p1, v0, Lcom/byazt/ar/AdDownloadModel;->mIsShowToast:Z

    .line 4
    .line 5
    return-object p0
.end method

.method public setLogExtra(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadModel$Builder;->model:Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/byazt/ar/AdDownloadModel;->mLogExtra:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0
.end method

.method public setMd5(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadModel$Builder;->model:Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/byazt/ar/AdDownloadModel;->mMd5:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0
.end method

.method public setMimeType(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadModel$Builder;->model:Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/byazt/ar/AdDownloadModel;->mMimeType:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0
.end method

.method public setModelType(I)Lcom/byazt/ar/AdDownloadModel$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadModel$Builder;->model:Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    iput p1, v0, Lcom/byazt/ar/AdDownloadModel;->mModelType:I

    .line 4
    .line 5
    return-object p0
.end method

.method public setNeedIndependentProcess(Z)Lcom/byazt/ar/AdDownloadModel$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadModel$Builder;->model:Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    iput-boolean p1, v0, Lcom/byazt/ar/AdDownloadModel;->mIndependentProcess:Z

    .line 4
    .line 5
    return-object p0
.end method

.method public setNeedWifi(Z)Lcom/byazt/ar/AdDownloadModel$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadModel$Builder;->model:Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    iput-boolean p1, v0, Lcom/byazt/ar/AdDownloadModel;->mNeedWifi:Z

    .line 4
    .line 5
    return-object p0
.end method

.method public setNotificationJumpUrl(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadModel$Builder;->model:Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/byazt/ar/AdDownloadModel;->mNotificationJumpUrl:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadModel$Builder;->model:Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/byazt/ar/AdDownloadModel;->mPackageName:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0
.end method

.method public setQuickAppModel(Lcom/byazt/e/uj;)Lcom/byazt/ar/AdDownloadModel$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadModel$Builder;->model:Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/byazt/ar/AdDownloadModel;->mQuickAppModel:Lcom/byazt/e/uj;

    .line 4
    .line 5
    return-object p0
.end method

.method public setSdkMonitorScene(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadModel$Builder;->model:Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/byazt/ar/AdDownloadModel;->mSdkMonitorScene:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0
.end method

.method public setStartToast(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadModel$Builder;->model:Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/byazt/ar/AdDownloadModel;->mStartToast:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0
.end method

.method public setTaskKey(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadModel$Builder;->model:Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/byazt/ar/AdDownloadModel;->mTaskKey:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0
.end method

.method public setVersionCode(I)Lcom/byazt/ar/AdDownloadModel$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadModel$Builder;->model:Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    iput p1, v0, Lcom/byazt/ar/AdDownloadModel;->mVersionCode:I

    .line 4
    .line 5
    return-object p0
.end method

.method public setVersionName(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadModel$Builder;->model:Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/byazt/ar/AdDownloadModel;->mVersionName:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0
.end method
