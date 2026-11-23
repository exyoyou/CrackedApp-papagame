.class public final synthetic Lcom/haima/hmcp/cloud/video/z1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/cloud/video/job/DownloadRetryJob$DownloadRetryCallback;


# instance fields
.field public final synthetic a:Lcom/haima/hmcp/cloud/video/DownloadTask;


# direct methods
.method public synthetic constructor <init>(Lcom/haima/hmcp/cloud/video/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/cloud/video/z1;->a:Lcom/haima/hmcp/cloud/video/DownloadTask;

    return-void
.end method


# virtual methods
.method public final onDownloadRetry(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/z1;->a:Lcom/haima/hmcp/cloud/video/DownloadTask;

    invoke-static {v0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->M(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V

    return-void
.end method
