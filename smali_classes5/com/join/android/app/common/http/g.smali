.class public interface abstract Lcom/join/android/app/common/http/g;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onRequestProgress(JJZLjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "bytesWritten",
            "contentLength",
            "b",
            "url"
        }
    .end annotation
.end method

.method public abstract onUploadFailed(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation
.end method
