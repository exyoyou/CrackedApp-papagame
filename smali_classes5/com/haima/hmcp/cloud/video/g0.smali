.class public final synthetic Lcom/haima/hmcp/cloud/video/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/haima/hmcp/cloud/video/DownloadTask;

.field public final synthetic c:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

.field public final synthetic d:Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;


# direct methods
.method public synthetic constructor <init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/cloud/video/g0;->b:Lcom/haima/hmcp/cloud/video/DownloadTask;

    iput-object p2, p0, Lcom/haima/hmcp/cloud/video/g0;->c:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    iput-object p3, p0, Lcom/haima/hmcp/cloud/video/g0;->d:Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/g0;->b:Lcom/haima/hmcp/cloud/video/DownloadTask;

    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/g0;->c:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    iget-object v2, p0, Lcom/haima/hmcp/cloud/video/g0;->d:Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;

    invoke-static {v0, v1, v2}, Lcom/haima/hmcp/cloud/video/DownloadTask;->a0(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;)V

    return-void
.end method
