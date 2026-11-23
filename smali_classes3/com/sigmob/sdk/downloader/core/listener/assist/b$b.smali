.class public interface abstract Lcom/sigmob/sdk/downloader/core/listener/assist/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/downloader/core/listener/assist/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# virtual methods
.method public abstract a(Lcom/sigmob/sdk/downloader/f;ILcom/sigmob/sdk/downloader/core/breakpoint/a;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "task",
            "blockIndex",
            "info"
        }
    .end annotation
.end method

.method public abstract a(Lcom/sigmob/sdk/downloader/f;J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "task",
            "currentOffset"
        }
    .end annotation
.end method

.method public abstract a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;ZLcom/sigmob/sdk/downloader/core/listener/assist/b$c;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "task",
            "info",
            "fromBreakpoint",
            "model"
        }
    .end annotation
.end method

.method public abstract a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/cause/a;Ljava/lang/Exception;Lcom/sigmob/sdk/downloader/core/listener/assist/b$c;)V
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

.method public abstract d(Lcom/sigmob/sdk/downloader/f;IJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "task",
            "blockIndex",
            "currentBlockOffset"
        }
    .end annotation
.end method
