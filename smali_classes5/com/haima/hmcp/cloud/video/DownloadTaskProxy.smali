.class public Lcom/haima/hmcp/cloud/video/DownloadTaskProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/cloud/video/IDownloadTask;


# static fields
.field public static final ERROR_CODE_ILLEGAL_ARGUMENT:I = 0x3ea

.field public static final ERROR_CODE_ILLEGAL_SERVICE_STATA:I = 0x3e9

.field public static final ERROR_CODE_IO:I = 0x3eb

.field public static final ERROR_CODE_NETWORK:I = 0x3ec

.field public static final ERROR_CODE_NOT_ENOUGH_DISK:I = 0x3ed

.field public static final ERROR_CODE_OTHER:I = 0x3ee

.field public static final FILTER_TAG:Ljava/lang/String; = "download-file: "

.field public static final IDLE:I = 0x0

.field public static final TAG:Ljava/lang/String; = "DownloadTaskProxy"


# instance fields
.field private cid:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDownloadTask:Lcom/haima/hmcp/cloud/video/IDownloadTask;

.field private mHmcpRequest:Lcom/haima/hmcp/business/HmcpRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/haima/hmcp/cloud/video/DownloadTaskProxy;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    new-instance p1, Lcom/haima/hmcp/cloud/video/DownloadTask;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTaskProxy;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-direct {p1, v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/haima/hmcp/cloud/video/DownloadTaskProxy;->mDownloadTask:Lcom/haima/hmcp/cloud/video/IDownloadTask;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public cancelDownload(Lcom/haima/hmcp/beans/CloudFile;Lcom/haima/hmcp/listeners/CancelCallback;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTaskProxy;->mDownloadTask:Lcom/haima/hmcp/cloud/video/IDownloadTask;

    .line 2
    .line 3
    const-string v1, "download-file: "

    .line 4
    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/haima/hmcp/cloud/video/IDownloadTask;->isRunning()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_1

    .line 14
    .line 15
    :cond_0
    if-nez p1, :cond_1

    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v2, "cancel video download"

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, " task"

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v2, " file="

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    :goto_0
    sget-object v2, Lcom/haima/hmcp/cloud/video/DownloadTaskProxy;->TAG:Ljava/lang/String;

    .line 55
    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-static {v2, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const-string v1, "12642"

    .line 75
    .line 76
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    if-eqz p1, :cond_5

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/CloudFile;->getOperationMode()Lcom/haima/hmcp/enums/CloudFileProtocol;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sget-object v1, Lcom/haima/hmcp/enums/CloudFileProtocol;->HTTP:Lcom/haima/hmcp/enums/CloudFileProtocol;

    .line 86
    .line 87
    const/16 v3, 0x3ea

    .line 88
    .line 89
    const-string v4, "download-file: cancel fail: "

    .line 90
    .line 91
    if-eq v0, v1, :cond_3

    .line 92
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/CloudFile;->getOperationMode()Lcom/haima/hmcp/enums/CloudFileProtocol;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v1, " is not support"

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-static {v2, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    if-eqz p2, :cond_2

    .line 133
    .line 134
    invoke-interface {p2, p1, v3, v0}, Lcom/haima/hmcp/listeners/CancelCallback;->onCancelFail(Lcom/haima/hmcp/beans/CloudFile;ILjava/lang/String;)V

    .line 135
    .line 136
    .line 137
    :cond_2
    return-void

    .line 138
    :cond_3
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_5

    .line 147
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v1, "name is null"

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-static {v2, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    if-eqz p2, :cond_4

    .line 169
    .line 170
    invoke-interface {p2, p1, v3, v1}, Lcom/haima/hmcp/listeners/CancelCallback;->onCancelFail(Lcom/haima/hmcp/beans/CloudFile;ILjava/lang/String;)V

    .line 171
    .line 172
    .line 173
    :cond_4
    return-void

    .line 174
    :cond_5
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTaskProxy;->mDownloadTask:Lcom/haima/hmcp/cloud/video/IDownloadTask;

    .line 175
    .line 176
    new-instance v1, Lcom/haima/hmcp/cloud/video/DownloadTaskProxy$1;

    .line 177
    .line 178
    invoke-direct {v1, p0, p2}, Lcom/haima/hmcp/cloud/video/DownloadTaskProxy$1;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTaskProxy;Lcom/haima/hmcp/listeners/CancelCallback;)V

    .line 179
    .line 180
    .line 181
    invoke-interface {v0, p1, v1}, Lcom/haima/hmcp/cloud/video/IDownloadTask;->cancelDownload(Lcom/haima/hmcp/beans/CloudFile;Lcom/haima/hmcp/listeners/CancelCallback;)V

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :cond_6
    :goto_1
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTaskProxy;->TAG:Ljava/lang/String;

    .line 186
    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    const-string v1, "download task is not running, nothing to cancel"

    .line 196
    .line 197
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    if-eqz p2, :cond_8

    .line 208
    .line 209
    new-instance v0, Ljava/util/ArrayList;

    .line 210
    .line 211
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .line 213
    .line 214
    if-eqz p1, :cond_7

    .line 215
    .line 216
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    :cond_7
    invoke-interface {p2, v0}, Lcom/haima/hmcp/listeners/CancelCallback;->onCanceled(Ljava/util/List;)V

    .line 220
    .line 221
    .line 222
    :cond_8
    return-void
.end method

.method public checkHangUpData()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTaskProxy;->mDownloadTask:Lcom/haima/hmcp/cloud/video/IDownloadTask;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/haima/hmcp/cloud/video/IDownloadTask;->checkHangUpData()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public continueTask()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTaskProxy;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "download-file: continue task"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTaskProxy;->mDownloadTask:Lcom/haima/hmcp/cloud/video/IDownloadTask;

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/haima/hmcp/cloud/video/IDownloadTask;->continueTask()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public execute(Ljava/util/List;Lcom/haima/hmcp/enums/DownloadMode;Lcom/haima/hmcp/cloud/video/DownloadLifeCycleCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/CloudFile;",
            ">;",
            "Lcom/haima/hmcp/enums/DownloadMode;",
            "Lcom/haima/hmcp/cloud/video/DownloadLifeCycleCallback;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTaskProxy;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "download-file: start to download"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "mode="

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "12631"

    .line 26
    .line 27
    invoke-static {v2, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTaskProxy;->cid:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const-string v2, "Not in service"

    .line 37
    .line 38
    const-string v3, "12630"

    .line 39
    .line 40
    const-string v4, "download-file: "

    .line 41
    .line 42
    const/16 v5, 0x3ea

    .line 43
    .line 44
    const/4 v6, 0x0

    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p2, "cid is null"

    .line 56
    .line 57
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-static {v3, p2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    if-eqz p3, :cond_0

    .line 71
    .line 72
    invoke-interface {p3, v6, v5, v2}, Lcom/haima/hmcp/cloud/video/DownloadLifeCycleCallback;->onFail(Lcom/haima/hmcp/enums/DownloadMode;ILjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :cond_0
    return-void

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTaskProxy;->mHmcpRequest:Lcom/haima/hmcp/business/HmcpRequest;

    .line 77
    .line 78
    if-eqz v1, :cond_e

    .line 79
    .line 80
    iget-boolean v7, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->isStopPlay:Z

    .line 81
    .line 82
    if-eqz v7, :cond_2

    .line 83
    .line 84
    goto/16 :goto_2

    .line 85
    .line 86
    :cond_2
    invoke-virtual {p0}, Lcom/haima/hmcp/cloud/video/DownloadTaskProxy;->isRunning()Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    const-string v2, "download-file:  "

    .line 91
    .line 92
    if-eqz v1, :cond_4

    .line 93
    .line 94
    new-instance p1, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string p2, "Download task already running"

    .line 103
    .line 104
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    if-eqz p3, :cond_3

    .line 115
    .line 116
    invoke-interface {p3}, Lcom/haima/hmcp/cloud/video/DownloadLifeCycleCallback;->onDownloading()V

    .line 117
    .line 118
    .line 119
    :cond_3
    return-void

    .line 120
    :cond_4
    if-nez p2, :cond_5

    .line 121
    .line 122
    sget-object p2, Lcom/haima/hmcp/enums/DownloadMode;->NORMAL:Lcom/haima/hmcp/enums/DownloadMode;

    .line 123
    .line 124
    :cond_5
    if-eqz p1, :cond_c

    .line 125
    .line 126
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_6

    .line 131
    .line 132
    goto/16 :goto_1

    .line 133
    .line 134
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .line 138
    .line 139
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    :cond_7
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-eqz v1, :cond_9

    .line 148
    .line 149
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    check-cast v1, Lcom/haima/hmcp/beans/CloudFile;

    .line 154
    .line 155
    invoke-virtual {v1}, Lcom/haima/hmcp/beans/CloudFile;->getOperationMode()Lcom/haima/hmcp/enums/CloudFileProtocol;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    sget-object v4, Lcom/haima/hmcp/enums/CloudFileProtocol;->HTTP:Lcom/haima/hmcp/enums/CloudFileProtocol;

    .line 160
    .line 161
    if-ne v3, v4, :cond_8

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    const-string v4, "The file operation mode: "

    .line 173
    .line 174
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1}, Lcom/haima/hmcp/beans/CloudFile;->getOperationMode()Lcom/haima/hmcp/enums/CloudFileProtocol;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string v4, " is not support"

    .line 185
    .line 186
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    sget-object v4, Lcom/haima/hmcp/cloud/video/DownloadTaskProxy;->TAG:Ljava/lang/String;

    .line 194
    .line 195
    new-instance v7, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v7

    .line 210
    invoke-static {v4, v7}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    if-eqz p3, :cond_7

    .line 214
    .line 215
    invoke-interface {p3, v1, v5, v3}, Lcom/haima/hmcp/cloud/video/DownloadLifeCycleCallback;->onDownloadFail(Lcom/haima/hmcp/beans/CloudFile;ILjava/lang/String;)V

    .line 216
    .line 217
    .line 218
    goto :goto_0

    .line 219
    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    if-eqz p1, :cond_b

    .line 224
    .line 225
    sget-object p1, Lcom/haima/hmcp/cloud/video/DownloadTaskProxy;->TAG:Ljava/lang/String;

    .line 226
    .line 227
    new-instance p2, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    const-string v0, "Download task is finish"

    .line 236
    .line 237
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object p2

    .line 244
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    if-eqz p3, :cond_a

    .line 248
    .line 249
    invoke-interface {p3, v6}, Lcom/haima/hmcp/cloud/video/DownloadLifeCycleCallback;->onFinish(Lcom/haima/hmcp/enums/DownloadMode;)V

    .line 250
    .line 251
    .line 252
    :cond_a
    return-void

    .line 253
    :cond_b
    iget-object p1, p0, Lcom/haima/hmcp/cloud/video/DownloadTaskProxy;->mDownloadTask:Lcom/haima/hmcp/cloud/video/IDownloadTask;

    .line 254
    .line 255
    invoke-interface {p1, v0, p2, p3}, Lcom/haima/hmcp/cloud/video/IDownloadTask;->execute(Ljava/util/List;Lcom/haima/hmcp/enums/DownloadMode;Lcom/haima/hmcp/cloud/video/DownloadLifeCycleCallback;)V

    .line 256
    .line 257
    .line 258
    return-void

    .line 259
    :cond_c
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    const-string p2, "Download file list is null or length is 0"

    .line 268
    .line 269
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    if-eqz p3, :cond_d

    .line 280
    .line 281
    const-string p1, "File list is null"

    .line 282
    .line 283
    invoke-interface {p3, v6, v5, p1}, Lcom/haima/hmcp/cloud/video/DownloadLifeCycleCallback;->onFail(Lcom/haima/hmcp/enums/DownloadMode;ILjava/lang/String;)V

    .line 284
    .line 285
    .line 286
    :cond_d
    return-void

    .line 287
    :cond_e
    :goto_2
    if-nez v1, :cond_f

    .line 288
    .line 289
    const-string p1, "mHmcpRequest is null"

    .line 290
    .line 291
    goto :goto_3

    .line 292
    :cond_f
    const-string p1, "mHmcpRequest.isStopPlay is true"

    .line 293
    .line 294
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 295
    .line 296
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    .line 298
    .line 299
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object p2

    .line 309
    invoke-static {v0, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    invoke-static {v3, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    if-eqz p3, :cond_10

    .line 316
    .line 317
    const/16 p1, 0x3e9

    .line 318
    .line 319
    invoke-interface {p3, v6, p1, v2}, Lcom/haima/hmcp/cloud/video/DownloadLifeCycleCallback;->onFail(Lcom/haima/hmcp/enums/DownloadMode;ILjava/lang/String;)V

    .line 320
    .line 321
    .line 322
    :cond_10
    return-void
.end method

.method public getMode()Lcom/haima/hmcp/enums/DownloadMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTaskProxy;->mDownloadTask:Lcom/haima/hmcp/cloud/video/IDownloadTask;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/haima/hmcp/cloud/video/IDownloadTask;->getMode()Lcom/haima/hmcp/enums/DownloadMode;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getTransferData(Lcom/haima/hmcp/cloud/video/listener/TransferDataCallback;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTaskProxy;->mDownloadTask:Lcom/haima/hmcp/cloud/video/IDownloadTask;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lcom/haima/hmcp/cloud/video/IDownloadTask;->getTransferData(Lcom/haima/hmcp/cloud/video/listener/TransferDataCallback;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public getWorkingFiles(Lcom/haima/hmcp/enums/CloudOperation;Lcom/haima/hmcp/listeners/WorkingFileCallback;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTaskProxy;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "download-file: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v3, "get files in video download"

    .line 14
    .line 15
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v1, "12648"

    .line 26
    .line 27
    invoke-static {v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sget-object v1, Lcom/haima/hmcp/enums/CloudOperation;->DOWNLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 31
    .line 32
    if-eq p1, v1, :cond_0

    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v3, " is not support"

    .line 43
    .line 44
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    if-eqz p2, :cond_0

    .line 70
    .line 71
    const/16 v0, 0x3ea

    .line 72
    .line 73
    invoke-interface {p2, v0, v1}, Lcom/haima/hmcp/listeners/WorkingFileCallback;->onWorkingFail(ILjava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTaskProxy;->cid:Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_1

    .line 83
    .line 84
    if-eqz p2, :cond_1

    .line 85
    .line 86
    const/16 v0, 0x3e9

    .line 87
    .line 88
    const-string v1, "Cid is null"

    .line 89
    .line 90
    invoke-interface {p2, v0, v1}, Lcom/haima/hmcp/listeners/WorkingFileCallback;->onWorkingFail(ILjava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTaskProxy;->mDownloadTask:Lcom/haima/hmcp/cloud/video/IDownloadTask;

    .line 94
    .line 95
    new-instance v1, Lcom/haima/hmcp/cloud/video/DownloadTaskProxy$4;

    .line 96
    .line 97
    invoke-direct {v1, p0, p2}, Lcom/haima/hmcp/cloud/video/DownloadTaskProxy$4;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTaskProxy;Lcom/haima/hmcp/listeners/WorkingFileCallback;)V

    .line 98
    .line 99
    .line 100
    invoke-interface {v0, p1, v1}, Lcom/haima/hmcp/cloud/video/IDownloadTask;->getWorkingFiles(Lcom/haima/hmcp/enums/CloudOperation;Lcom/haima/hmcp/listeners/WorkingFileCallback;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTaskProxy;->mDownloadTask:Lcom/haima/hmcp/cloud/video/IDownloadTask;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/haima/hmcp/cloud/video/IDownloadTask;->isRunning()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public keepAliveTimeUp()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTaskProxy;->mDownloadTask:Lcom/haima/hmcp/cloud/video/IDownloadTask;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/haima/hmcp/cloud/video/IDownloadTask;->keepAliveTimeUp()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public pauseTask()V
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTaskProxy;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "download-file: pause task"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTaskProxy;->mDownloadTask:Lcom/haima/hmcp/cloud/video/IDownloadTask;

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/haima/hmcp/cloud/video/IDownloadTask;->pauseTask()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public queryFiles(Lcom/haima/hmcp/listeners/QueryCallback;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTaskProxy;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "download-file: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, "query video files"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v0, "12646"

    .line 26
    .line 27
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTaskProxy;->mDownloadTask:Lcom/haima/hmcp/cloud/video/IDownloadTask;

    .line 31
    .line 32
    new-instance v1, Lcom/haima/hmcp/cloud/video/DownloadTaskProxy$3;

    .line 33
    .line 34
    invoke-direct {v1, p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTaskProxy$3;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTaskProxy;Lcom/haima/hmcp/listeners/QueryCallback;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v0, v1}, Lcom/haima/hmcp/cloud/video/IDownloadTask;->queryFiles(Lcom/haima/hmcp/listeners/QueryCallback;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0}, Lcom/haima/hmcp/cloud/video/DownloadTaskProxy;->cancelDownload(Lcom/haima/hmcp/beans/CloudFile;Lcom/haima/hmcp/listeners/CancelCallback;)V

    .line 3
    .line 4
    .line 5
    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTaskProxy;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTaskProxy;->mHmcpRequest:Lcom/haima/hmcp/business/HmcpRequest;

    .line 8
    .line 9
    return-void
.end method

.method public scanFile(Ljava/lang/String;Lcom/haima/hmcp/listeners/SearchCallback;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTaskProxy;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "download-file:  "

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, "Scan file fail cause: cid is null"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "12630"

    .line 32
    .line 33
    invoke-static {v0, v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    if-eqz p2, :cond_0

    .line 37
    .line 38
    const/16 v0, 0x3e9

    .line 39
    .line 40
    const-string v1, "Cid is null"

    .line 41
    .line 42
    invoke-interface {p2, v0, v1}, Lcom/haima/hmcp/listeners/SearchCallback;->onSearchFail(ILjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTaskProxy;->mDownloadTask:Lcom/haima/hmcp/cloud/video/IDownloadTask;

    .line 46
    .line 47
    new-instance v1, Lcom/haima/hmcp/cloud/video/DownloadTaskProxy$5;

    .line 48
    .line 49
    invoke-direct {v1, p0, p2}, Lcom/haima/hmcp/cloud/video/DownloadTaskProxy$5;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTaskProxy;Lcom/haima/hmcp/listeners/SearchCallback;)V

    .line 50
    .line 51
    .line 52
    invoke-interface {v0, p1, v1}, Lcom/haima/hmcp/cloud/video/IDownloadTask;->scanFile(Ljava/lang/String;Lcom/haima/hmcp/listeners/SearchCallback;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public setCid(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/cloud/video/DownloadTaskProxy;->cid:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTaskProxy;->mDownloadTask:Lcom/haima/hmcp/cloud/video/IDownloadTask;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/haima/hmcp/cloud/video/IDownloadTask;->setCid(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setConfig(Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTaskProxy;->mDownloadTask:Lcom/haima/hmcp/cloud/video/IDownloadTask;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/haima/hmcp/cloud/video/IDownloadTask;->setConfig(Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setHmcpRequest(Lcom/haima/hmcp/business/HmcpRequest;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/cloud/video/DownloadTaskProxy;->mHmcpRequest:Lcom/haima/hmcp/business/HmcpRequest;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTaskProxy;->mDownloadTask:Lcom/haima/hmcp/cloud/video/IDownloadTask;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/haima/hmcp/cloud/video/IDownloadTask;->setHmcpRequest(Lcom/haima/hmcp/business/HmcpRequest;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTaskProxy;->mDownloadTask:Lcom/haima/hmcp/cloud/video/IDownloadTask;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/haima/hmcp/cloud/video/IDownloadTask;->setUrl(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setWebSocketManager(Lcom/haima/hmcp/business/IWebSocket;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTaskProxy;->mDownloadTask:Lcom/haima/hmcp/cloud/video/IDownloadTask;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/haima/hmcp/cloud/video/IDownloadTask;->setWebSocketManager(Lcom/haima/hmcp/business/IWebSocket;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public updateFiles(Lcom/haima/hmcp/enums/CloudOperation;Ljava/util/List;Lcom/haima/hmcp/listeners/UpdateCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/haima/hmcp/enums/CloudOperation;",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/CloudFile;",
            ">;",
            "Lcom/haima/hmcp/listeners/UpdateCallback;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTaskProxy;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "download-file: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, "update video download files"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v0, "12644"

    .line 26
    .line 27
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sget-object v0, Lcom/haima/hmcp/enums/CloudOperation;->DOWNLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 31
    .line 32
    const/16 v1, 0x3ea

    .line 33
    .line 34
    if-eq p1, v0, :cond_1

    .line 35
    .line 36
    if-eqz p3, :cond_0

    .line 37
    .line 38
    new-instance p2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p1, " is not support"

    .line 47
    .line 48
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-interface {p3, v1, p1}, Lcom/haima/hmcp/listeners/UpdateCallback;->onUpdateFail(ILjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void

    .line 59
    :cond_1
    if-eqz p2, :cond_3

    .line 60
    .line 61
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTaskProxy;->mDownloadTask:Lcom/haima/hmcp/cloud/video/IDownloadTask;

    .line 69
    .line 70
    new-instance v1, Lcom/haima/hmcp/cloud/video/DownloadTaskProxy$2;

    .line 71
    .line 72
    invoke-direct {v1, p0, p3}, Lcom/haima/hmcp/cloud/video/DownloadTaskProxy$2;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTaskProxy;Lcom/haima/hmcp/listeners/UpdateCallback;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {v0, p1, p2, v1}, Lcom/haima/hmcp/cloud/video/IDownloadTask;->updateFiles(Lcom/haima/hmcp/enums/CloudOperation;Ljava/util/List;Lcom/haima/hmcp/listeners/UpdateCallback;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_3
    :goto_0
    if-eqz p3, :cond_4

    .line 80
    .line 81
    const-string p1, "Update file list is null or length is 0"

    .line 82
    .line 83
    invoke-interface {p3, v1, p1}, Lcom/haima/hmcp/listeners/UpdateCallback;->onUpdateFail(ILjava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :cond_4
    return-void
.end method
