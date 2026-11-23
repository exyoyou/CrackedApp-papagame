.class public final synthetic Lcom/haima/hmcp/cloud/video/u2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/haima/hmcp/cloud/video/DownloadTask$2;

.field public final synthetic c:J

.field public final synthetic d:Z

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

.field public final synthetic g:Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;

.field public final synthetic h:Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;


# direct methods
.method public synthetic constructor <init>(Lcom/haima/hmcp/cloud/video/DownloadTask$2;JZLjava/lang/String;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/cloud/video/u2;->b:Lcom/haima/hmcp/cloud/video/DownloadTask$2;

    iput-wide p2, p0, Lcom/haima/hmcp/cloud/video/u2;->c:J

    iput-boolean p4, p0, Lcom/haima/hmcp/cloud/video/u2;->d:Z

    iput-object p5, p0, Lcom/haima/hmcp/cloud/video/u2;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/haima/hmcp/cloud/video/u2;->f:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    iput-object p7, p0, Lcom/haima/hmcp/cloud/video/u2;->g:Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;

    iput-object p8, p0, Lcom/haima/hmcp/cloud/video/u2;->h:Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/u2;->b:Lcom/haima/hmcp/cloud/video/DownloadTask$2;

    iget-wide v1, p0, Lcom/haima/hmcp/cloud/video/u2;->c:J

    iget-boolean v3, p0, Lcom/haima/hmcp/cloud/video/u2;->d:Z

    iget-object v4, p0, Lcom/haima/hmcp/cloud/video/u2;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/haima/hmcp/cloud/video/u2;->f:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    iget-object v6, p0, Lcom/haima/hmcp/cloud/video/u2;->g:Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;

    iget-object v7, p0, Lcom/haima/hmcp/cloud/video/u2;->h:Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;

    invoke-static/range {v0 .. v7}, Lcom/haima/hmcp/cloud/video/DownloadTask$2;->a(Lcom/haima/hmcp/cloud/video/DownloadTask$2;JZLjava/lang/String;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;)V

    return-void
.end method
