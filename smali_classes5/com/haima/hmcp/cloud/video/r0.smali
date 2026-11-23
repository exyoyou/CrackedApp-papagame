.class public final synthetic Lcom/haima/hmcp/cloud/video/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/haima/hmcp/cloud/video/DownloadTask;

.field public final synthetic c:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/cloud/video/r0;->b:Lcom/haima/hmcp/cloud/video/DownloadTask;

    iput-object p2, p0, Lcom/haima/hmcp/cloud/video/r0;->c:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    iput-object p3, p0, Lcom/haima/hmcp/cloud/video/r0;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/r0;->b:Lcom/haima/hmcp/cloud/video/DownloadTask;

    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/r0;->c:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    iget-object v2, p0, Lcom/haima/hmcp/cloud/video/r0;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/haima/hmcp/cloud/video/DownloadTask;->C(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Ljava/lang/String;)V

    return-void
.end method
