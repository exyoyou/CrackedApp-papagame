.class public interface abstract Lcom/join/kotlin/base/impl/Downloadable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/kotlin/base/impl/GameType;
.implements Lcom/join/kotlin/base/impl/IExposure;
.implements Lcom/join/kotlin/base/impl/IIntent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/base/impl/Downloadable$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH&J\n\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0017J\u0008\u0010\u0010\u001a\u00020\rH\u0017R\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/join/kotlin/base/impl/Downloadable;",
        "Lcom/join/kotlin/base/impl/GameType;",
        "Lcom/join/kotlin/base/impl/IExposure;",
        "Lcom/join/kotlin/base/impl/IIntent;",
        "downloadTask",
        "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
        "getDownloadTask",
        "()Lcom/github/snowdream/android/app/downloader/DownloadTask;",
        "setDownloadTask",
        "(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V",
        "update",
        "",
        "notify",
        "",
        "getGInfo",
        "Lcom/join/kotlin/base/impl/GInfo;",
        "hasGInfo",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getGInfo()Lcom/join/kotlin/base/impl/GInfo;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract hasGInfo()Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end method

.method public abstract setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .param p1    # Lcom/github/snowdream/android/app/downloader/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract update(Z)V
.end method
