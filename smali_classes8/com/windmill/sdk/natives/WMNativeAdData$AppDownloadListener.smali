.class public interface abstract Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/sdk/natives/WMNativeAdData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AppDownloadListener"
.end annotation


# virtual methods
.method public abstract onDownloadActive(JJLjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "totalBytes",
            "currBytes",
            "fileName",
            "appName"
        }
    .end annotation
.end method

.method public abstract onDownloadFailed(JJLjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "totalBytes",
            "currBytes",
            "fileName",
            "appName"
        }
    .end annotation
.end method

.method public abstract onDownloadFinished(JLjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "totalBytes",
            "fileName",
            "appName"
        }
    .end annotation
.end method

.method public abstract onDownloadPaused(JJLjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "totalBytes",
            "currBytes",
            "fileName",
            "appName"
        }
    .end annotation
.end method

.method public abstract onIdle()V
.end method

.method public abstract onInstalled(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fileName",
            "appName"
        }
    .end annotation
.end method
