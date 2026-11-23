.class Lcom/haima/hmcp/cloud/video/DownloadTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/cloud/video/DownloadTask;->checkBreakPoint(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/cloud/video/DownloadTask;

.field final synthetic val$tmpFileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask$1;->this$0:Lcom/haima/hmcp/cloud/video/DownloadTask;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/cloud/video/DownloadTask$1;->val$tmpFileName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask$1;->val$tmpFileName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
