.class public final synthetic Lcom/haima/hmcp/cloud/video/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/haima/hmcp/cloud/video/DownloadTask;

.field public final synthetic c:Lcom/haima/hmcp/listeners/QueryCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/listeners/QueryCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/cloud/video/i;->b:Lcom/haima/hmcp/cloud/video/DownloadTask;

    iput-object p2, p0, Lcom/haima/hmcp/cloud/video/i;->c:Lcom/haima/hmcp/listeners/QueryCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/i;->b:Lcom/haima/hmcp/cloud/video/DownloadTask;

    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/i;->c:Lcom/haima/hmcp/listeners/QueryCallback;

    invoke-static {v0, v1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->J(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/listeners/QueryCallback;)V

    return-void
.end method
