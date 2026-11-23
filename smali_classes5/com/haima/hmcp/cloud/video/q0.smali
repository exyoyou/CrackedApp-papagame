.class public final synthetic Lcom/haima/hmcp/cloud/video/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/haima/hmcp/cloud/video/DownloadTask;

.field public final synthetic c:Lcom/haima/hmcp/listeners/WorkingFileCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/listeners/WorkingFileCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/cloud/video/q0;->b:Lcom/haima/hmcp/cloud/video/DownloadTask;

    iput-object p2, p0, Lcom/haima/hmcp/cloud/video/q0;->c:Lcom/haima/hmcp/listeners/WorkingFileCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/q0;->b:Lcom/haima/hmcp/cloud/video/DownloadTask;

    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/q0;->c:Lcom/haima/hmcp/listeners/WorkingFileCallback;

    invoke-static {v0, v1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->R0(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/listeners/WorkingFileCallback;)V

    return-void
.end method
