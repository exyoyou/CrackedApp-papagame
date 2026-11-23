.class public Lcom/haima/hmcp/cloud/video/observer/QueryObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/WebSocketObserver;


# static fields
.field private static final TAG:Ljava/lang/String; = "QueryObserver"


# instance fields
.field private mCallback:Lcom/haima/hmcp/listeners/InnerDownloadCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/haima/hmcp/listeners/InnerDownloadCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/haima/hmcp/cloud/video/observer/QueryObserver;->mCallback:Lcom/haima/hmcp/listeners/InnerDownloadCallback;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onMessage(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string p1, ""

    .line 2
    .line 3
    const-string v0, "download_file"

    .line 4
    .line 5
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const-string v0, "download_file_list"

    .line 12
    .line 13
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    sget-object v0, Lcom/haima/hmcp/cloud/video/observer/QueryObserver;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v2, "download-file: receive download_file message: "

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 47
    .line 48
    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string p2, "data"

    .line 52
    .line 53
    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_0

    .line 62
    .line 63
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    const-string v2, "null"

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-nez v1, :cond_0

    .line 74
    .line 75
    new-instance v1, Lorg/json/JSONArray;

    .line 76
    .line 77
    invoke-direct {v1, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const/4 p2, 0x0

    .line 81
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-ge p2, v2, :cond_0

    .line 86
    .line 87
    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    new-instance v3, Lorg/json/JSONObject;

    .line 96
    .line 97
    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    new-instance v2, Lcom/haima/hmcp/beans/CloudFile;

    .line 101
    .line 102
    invoke-direct {v2}, Lcom/haima/hmcp/beans/CloudFile;-><init>()V

    .line 103
    .line 104
    .line 105
    const-string v4, "name"

    .line 106
    .line 107
    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {v2, v4}, Lcom/haima/hmcp/beans/CloudFile;->setName(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    const-string v4, "duration"

    .line 115
    .line 116
    const-wide/16 v5, 0x0

    .line 117
    .line 118
    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 119
    .line 120
    .line 121
    move-result-wide v4

    .line 122
    invoke-virtual {v2, v4, v5}, Lcom/haima/hmcp/beans/CloudFile;->setVideoDuration(D)V

    .line 123
    .line 124
    .line 125
    const-string v4, "size"

    .line 126
    .line 127
    const-wide/16 v5, 0x0

    .line 128
    .line 129
    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 130
    .line 131
    .line 132
    move-result-wide v4

    .line 133
    invoke-virtual {v2, v4, v5}, Lcom/haima/hmcp/beans/CloudFile;->setSize(J)V

    .line 134
    .line 135
    .line 136
    const-string v4, "path"

    .line 137
    .line 138
    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-virtual {v2, v4}, Lcom/haima/hmcp/beans/CloudFile;->setCloudPath(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    const-string v4, "type"

    .line 146
    .line 147
    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    invoke-virtual {v2, v3}, Lcom/haima/hmcp/beans/CloudFile;->setFileType(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .line 156
    .line 157
    add-int/lit8 p2, p2, 0x1

    .line 158
    .line 159
    goto :goto_0

    .line 160
    :catch_0
    move-exception p1

    .line 161
    sget-object p2, Lcom/haima/hmcp/cloud/video/observer/QueryObserver;->TAG:Ljava/lang/String;

    .line 162
    .line 163
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/cloud/video/observer/QueryObserver;->mCallback:Lcom/haima/hmcp/listeners/InnerDownloadCallback;

    .line 171
    .line 172
    if-eqz p1, :cond_1

    .line 173
    .line 174
    invoke-interface {p1, v0}, Lcom/haima/hmcp/listeners/InnerDownloadCallback;->onQuerySuccess(Ljava/util/List;)V

    .line 175
    .line 176
    .line 177
    :cond_1
    return-void
.end method

.method public onObserver(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;I)V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/observer/QueryObserver;->mCallback:Lcom/haima/hmcp/listeners/InnerDownloadCallback;

    .line 3
    .line 4
    return-void
.end method
