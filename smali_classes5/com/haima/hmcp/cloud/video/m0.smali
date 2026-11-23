.class public final synthetic Lcom/haima/hmcp/cloud/video/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/haima/hmcp/cloud/video/DownloadTask;

.field public final synthetic c:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/cloud/video/m0;->b:Lcom/haima/hmcp/cloud/video/DownloadTask;

    iput-object p2, p0, Lcom/haima/hmcp/cloud/video/m0;->c:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    iput p3, p0, Lcom/haima/hmcp/cloud/video/m0;->d:I

    iput-object p4, p0, Lcom/haima/hmcp/cloud/video/m0;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/m0;->b:Lcom/haima/hmcp/cloud/video/DownloadTask;

    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/m0;->c:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    iget v2, p0, Lcom/haima/hmcp/cloud/video/m0;->d:I

    iget-object v3, p0, Lcom/haima/hmcp/cloud/video/m0;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/haima/hmcp/cloud/video/DownloadTask;->A(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;ILjava/lang/String;)V

    return-void
.end method
