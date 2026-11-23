.class public interface abstract Lcom/haima/hmcp/listeners/DownListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/IUpDownloadListener;


# virtual methods
.method public abstract onFileError(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract onFileProgress(Ljava/lang/String;I)V
.end method

.method public abstract onFileStart(Ljava/lang/String;)V
.end method

.method public abstract onFileSuccess(Ljava/lang/String;Ljava/lang/Object;)V
.end method
