.class public interface abstract Lcom/sigmob/sdk/downloader/core/listener/assist/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/downloader/core/listener/assist/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a(Lcom/sigmob/sdk/downloader/f;IJJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "task",
            "blockCount",
            "currentOffset",
            "totalLength"
        }
    .end annotation
.end method

.method public abstract a(Lcom/sigmob/sdk/downloader/f;JJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "task",
            "currentOffset",
            "totalLength"
        }
    .end annotation
.end method

.method public abstract a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/cause/a;Ljava/lang/Exception;Lcom/sigmob/sdk/downloader/core/listener/assist/a$b;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "task",
            "cause",
            "realCause",
            "model"
        }
    .end annotation
.end method

.method public abstract a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/cause/b;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "task",
            "cause"
        }
    .end annotation
.end method

.method public abstract a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/listener/assist/a$b;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "task",
            "model"
        }
    .end annotation
.end method
