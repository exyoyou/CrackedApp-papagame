.class Lcom/haima/hmcp/utils/FileDownloadUtil$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/utils/FileDownloadUtil;->advertDownloadFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/utils/FileDownloadUtil;

.field final synthetic val$advertPath:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$oldfile:Ljava/io/File;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/utils/FileDownloadUtil;Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/utils/FileDownloadUtil$1;->this$0:Lcom/haima/hmcp/utils/FileDownloadUtil;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/utils/FileDownloadUtil$1;->val$context:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/haima/hmcp/utils/FileDownloadUtil$1;->val$file:Ljava/io/File;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/haima/hmcp/utils/FileDownloadUtil$1;->val$url:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/haima/hmcp/utils/FileDownloadUtil$1;->val$advertPath:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/haima/hmcp/utils/FileDownloadUtil$1;->val$name:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/haima/hmcp/utils/FileDownloadUtil$1;->val$oldfile:Ljava/io/File;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/utils/FileDownloadUtil$1;->this$0:Lcom/haima/hmcp/utils/FileDownloadUtil;

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    iput v6, v0, Lcom/haima/hmcp/utils/FileDownloadUtil;->retry:I

    .line 5
    .line 6
    iget-object v1, p0, Lcom/haima/hmcp/utils/FileDownloadUtil$1;->val$context:Landroid/content/Context;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/haima/hmcp/utils/FileDownloadUtil$1;->val$file:Ljava/io/File;

    .line 9
    .line 10
    iget-object v3, p0, Lcom/haima/hmcp/utils/FileDownloadUtil$1;->val$url:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v4, p0, Lcom/haima/hmcp/utils/FileDownloadUtil$1;->val$advertPath:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v5, p0, Lcom/haima/hmcp/utils/FileDownloadUtil$1;->val$name:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual/range {v0 .. v5}, Lcom/haima/hmcp/utils/FileDownloadUtil;->downFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v1, "advert_download_finshed ="

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/haima/hmcp/utils/FileDownloadUtil$1;->val$advertPath:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, "FileDownloadUtil"

    .line 42
    .line 43
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/haima/hmcp/utils/FileDownloadUtil$1;->val$oldfile:Ljava/io/File;

    .line 47
    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    iget-object v0, p0, Lcom/haima/hmcp/utils/FileDownloadUtil$1;->val$oldfile:Ljava/io/File;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 59
    .line 60
    .line 61
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/utils/FileDownloadUtil$1;->val$context:Landroid/content/Context;

    .line 62
    .line 63
    invoke-static {v0}, Lcom/haima/hmcp/utils/DataUtils;->getSharedInstance(Landroid/content/Context;)Lcom/haima/hmcp/utils/DataUtils;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string v1, "advert_name"

    .line 68
    .line 69
    iget-object v2, p0, Lcom/haima/hmcp/utils/FileDownloadUtil$1;->val$name:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v0, v1, v2}, Lcom/haima/hmcp/utils/DataUtils;->putPreferences(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const-string v0, "12025"

    .line 75
    .line 76
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/haima/hmcp/utils/FileDownloadUtil$1;->this$0:Lcom/haima/hmcp/utils/FileDownloadUtil;

    .line 80
    .line 81
    iput v6, v0, Lcom/haima/hmcp/utils/FileDownloadUtil;->retry:I

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    const-string v0, "12026"

    .line 85
    .line 86
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :goto_0
    return-void
.end method
