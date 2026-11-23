.class public interface abstract Lcom/sigmob/sdk/downloader/core/listener/assist/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/downloader/core/listener/assist/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a(Lcom/sigmob/sdk/downloader/f;IJLcom/sigmob/sdk/downloader/core/listener/assist/b$c;)Z
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
            "increaseBytes",
            "model"
        }
    .end annotation
.end method

.method public abstract a(Lcom/sigmob/sdk/downloader/f;ILcom/sigmob/sdk/downloader/core/listener/assist/b$c;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "task",
            "blockIndex",
            "model"
        }
    .end annotation
.end method

.method public abstract a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;ZLcom/sigmob/sdk/downloader/core/listener/assist/b$c;)Z
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

.method public abstract a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/cause/a;Ljava/lang/Exception;Lcom/sigmob/sdk/downloader/core/listener/assist/b$c;)Z
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
