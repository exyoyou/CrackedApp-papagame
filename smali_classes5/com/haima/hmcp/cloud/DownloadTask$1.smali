.class Lcom/haima/hmcp/cloud/DownloadTask$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/cloud/DownloadTask;->handleTempFile(Lcom/haima/hmcp/cloud/DownloadTask$HmFile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/cloud/DownloadTask;

.field final synthetic val$tempFile:Lcom/haima/hmcp/cloud/DownloadTask$HmFile;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/cloud/DownloadTask;Lcom/haima/hmcp/cloud/DownloadTask$HmFile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/cloud/DownloadTask$1;->this$0:Lcom/haima/hmcp/cloud/DownloadTask;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/cloud/DownloadTask$1;->val$tempFile:Lcom/haima/hmcp/cloud/DownloadTask$HmFile;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadTask$1;->val$tempFile:Lcom/haima/hmcp/cloud/DownloadTask$HmFile;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/cloud/DownloadTask$HmFile;->getRomMd5()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, "cloud-file: dele temp file is "

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadTask$1;->val$tempFile:Lcom/haima/hmcp/cloud/DownloadTask$HmFile;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/haima/hmcp/cloud/DownloadTask$HmFile;->getFile()Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lcom/haima/hmcp/utils/FileUtil;->getFileMd5(Ljava/io/File;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {}, Lcom/haima/hmcp/cloud/DownloadTask;->access$100()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v4, "cloud-file: remote md5:"

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v4, p0, Lcom/haima/hmcp/cloud/DownloadTask$1;->val$tempFile:Lcom/haima/hmcp/cloud/DownloadTask$HmFile;

    .line 40
    .line 41
    invoke-virtual {v4}, Lcom/haima/hmcp/cloud/DownloadTask$HmFile;->getRomMd5()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v4, "download file md5:"

    .line 49
    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-static {v2, v3}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object v2, p0, Lcom/haima/hmcp/cloud/DownloadTask$1;->val$tempFile:Lcom/haima/hmcp/cloud/DownloadTask$HmFile;

    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/haima/hmcp/cloud/DownloadTask$HmFile;->getRomMd5()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_0

    .line 74
    .line 75
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadTask$1;->val$tempFile:Lcom/haima/hmcp/cloud/DownloadTask$HmFile;

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/haima/hmcp/cloud/DownloadTask$HmFile;->delete()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    invoke-static {}, Lcom/haima/hmcp/cloud/DownloadTask;->access$100()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {v2, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_0
    invoke-static {}, Lcom/haima/hmcp/cloud/DownloadTask;->access$100()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    const-string v1, "cloud-file: download file is complete when stop task"

    .line 109
    .line 110
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadTask$1;->val$tempFile:Lcom/haima/hmcp/cloud/DownloadTask$HmFile;

    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/haima/hmcp/cloud/DownloadTask$HmFile;->delete()Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    invoke-static {}, Lcom/haima/hmcp/cloud/DownloadTask;->access$100()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    new-instance v3, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-static {v2, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    :goto_0
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadTask$1;->val$tempFile:Lcom/haima/hmcp/cloud/DownloadTask$HmFile;

    .line 143
    .line 144
    invoke-virtual {v0}, Lcom/haima/hmcp/cloud/DownloadTask$HmFile;->releaseFile()V

    .line 145
    .line 146
    .line 147
    return-void
.end method
