.class public interface abstract Lcom/sigmob/sdk/downloader/core/listener/assist/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/downloader/core/listener/assist/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a(Lcom/sigmob/sdk/downloader/f;IJLcom/sigmob/sdk/downloader/k;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "task",
            "blockIndex",
            "currentBlockOffset",
            "blockSpeed"
        }
    .end annotation
.end method

.method public abstract a(Lcom/sigmob/sdk/downloader/f;ILcom/sigmob/sdk/downloader/core/breakpoint/a;Lcom/sigmob/sdk/downloader/k;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "task",
            "blockIndex",
            "info",
            "blockSpeed"
        }
    .end annotation
.end method

.method public abstract a(Lcom/sigmob/sdk/downloader/f;JLcom/sigmob/sdk/downloader/k;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "task",
            "currentOffset",
            "taskSpeed"
        }
    .end annotation
.end method

.method public abstract a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;ZLcom/sigmob/sdk/downloader/core/listener/assist/c$b;)V
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

.method public abstract a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/cause/a;Ljava/lang/Exception;Lcom/sigmob/sdk/downloader/k;)V
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
            "taskSpeed"
        }
    .end annotation
.end method
