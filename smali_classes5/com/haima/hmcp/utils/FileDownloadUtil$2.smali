.class Lcom/haima/hmcp/utils/FileDownloadUtil$2;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/utils/FileDownloadUtil;->downloadImage(Landroid/content/Context;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/utils/FileDownloadUtil;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$des:Ljava/lang/String;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/utils/FileDownloadUtil;Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/utils/FileDownloadUtil$2;->this$0:Lcom/haima/hmcp/utils/FileDownloadUtil;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/utils/FileDownloadUtil$2;->val$context:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/haima/hmcp/utils/FileDownloadUtil$2;->val$file:Ljava/io/File;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/haima/hmcp/utils/FileDownloadUtil$2;->val$url:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/haima/hmcp/utils/FileDownloadUtil$2;->val$des:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/haima/hmcp/utils/FileDownloadUtil$2;->val$name:Ljava/lang/String;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/utils/FileDownloadUtil$2;->this$0:Lcom/haima/hmcp/utils/FileDownloadUtil;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    iput v1, v0, Lcom/haima/hmcp/utils/FileDownloadUtil;->retry:I

    .line 5
    .line 6
    iget-object v1, p0, Lcom/haima/hmcp/utils/FileDownloadUtil$2;->val$context:Landroid/content/Context;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/haima/hmcp/utils/FileDownloadUtil$2;->val$file:Ljava/io/File;

    .line 9
    .line 10
    iget-object v3, p0, Lcom/haima/hmcp/utils/FileDownloadUtil$2;->val$url:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v4, p0, Lcom/haima/hmcp/utils/FileDownloadUtil$2;->val$des:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v5, p0, Lcom/haima/hmcp/utils/FileDownloadUtil$2;->val$name:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual/range {v0 .. v5}, Lcom/haima/hmcp/utils/FileDownloadUtil;->downFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/haima/hmcp/utils/FileDownloadUtil$2;->val$context:Landroid/content/Context;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/haima/hmcp/utils/DataUtils;->getSharedInstance(Landroid/content/Context;)Lcom/haima/hmcp/utils/DataUtils;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/haima/hmcp/utils/FileDownloadUtil$2;->val$url:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/haima/hmcp/utils/FileDownloadUtil$2;->val$des:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/haima/hmcp/utils/DataUtils;->putPreferences(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method
