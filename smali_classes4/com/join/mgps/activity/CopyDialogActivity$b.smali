.class Lcom/join/mgps/activity/CopyDialogActivity$b;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CopyDialogActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/CopyDialogActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CopyDialogActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CopyDialogActivity$b;->b:Lcom/join/mgps/activity/CopyDialogActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/CopyDialogActivity$b;->b:Lcom/join/mgps/activity/CopyDialogActivity;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/join/mgps/activity/CopyDialogActivity;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/CopyDialogActivity$b;->b:Lcom/join/mgps/activity/CopyDialogActivity;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/join/mgps/activity/CopyDialogActivity;->d:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {v1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lcom/join/mgps/pref/h;->h()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    new-instance v1, Lcom/join/mgps/pref/PrefDef_;

    .line 33
    .line 34
    iget-object v2, p0, Lcom/join/mgps/activity/CopyDialogActivity$b;->b:Lcom/join/mgps/activity/CopyDialogActivity;

    .line 35
    .line 36
    iget-object v2, v2, Lcom/join/mgps/activity/CopyDialogActivity;->d:Landroid/content/Context;

    .line 37
    .line 38
    invoke-direct {v1, v2}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lcom/join/mgps/activity/CopyDialogActivity$b;->b:Lcom/join/mgps/activity/CopyDialogActivity;

    .line 42
    .line 43
    iget-object v2, v2, Lcom/join/mgps/activity/CopyDialogActivity;->d:Landroid/content/Context;

    .line 44
    .line 45
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->k3(Lcom/join/mgps/pref/PrefDef_;Landroid/content/Context;)V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/join/mgps/activity/CopyDialogActivity$b;->b:Lcom/join/mgps/activity/CopyDialogActivity;

    .line 49
    .line 50
    iget-object v1, v1, Lcom/join/mgps/activity/CopyDialogActivity;->d:Landroid/content/Context;

    .line 51
    .line 52
    invoke-static {v1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Lcom/join/mgps/pref/h;->h()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/join/mgps/activity/CopyDialogActivity$b;->b:Lcom/join/mgps/activity/CopyDialogActivity;

    .line 69
    .line 70
    iget-object v1, v1, Lcom/join/mgps/activity/CopyDialogActivity;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    const/4 v3, 0x1

    .line 108
    if-eqz v2, :cond_1

    .line 109
    .line 110
    iget-object v0, p0, Lcom/join/mgps/activity/CopyDialogActivity$b;->b:Lcom/join/mgps/activity/CopyDialogActivity;

    .line 111
    .line 112
    iget-object v0, v0, Lcom/join/mgps/activity/CopyDialogActivity;->e:Landroid/os/Handler;

    .line 113
    .line 114
    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/File;

    .line 119
    .line 120
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    if-nez v4, :cond_2

    .line 128
    .line 129
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :catch_0
    move-exception v2

    .line 134
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 135
    .line 136
    .line 137
    :cond_2
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-static {v2, v1}, Lcom/join/mgps/Util/o3;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :catch_1
    move-exception v2

    .line 146
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 147
    .line 148
    .line 149
    :goto_1
    iget-object v2, p0, Lcom/join/mgps/activity/CopyDialogActivity$b;->b:Lcom/join/mgps/activity/CopyDialogActivity;

    .line 150
    .line 151
    iget-object v2, v2, Lcom/join/mgps/activity/CopyDialogActivity;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 152
    .line 153
    new-instance v4, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {v2, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    iget-object v2, p0, Lcom/join/mgps/activity/CopyDialogActivity$b;->b:Lcom/join/mgps/activity/CopyDialogActivity;

    .line 185
    .line 186
    iget-object v2, v2, Lcom/join/mgps/activity/CopyDialogActivity;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 187
    .line 188
    invoke-virtual {v0, v2}, Lq5/b;->update(Ljava/lang/Object;)I

    .line 189
    .line 190
    .line 191
    :try_start_2
    const-string v0, ".downloadTask"

    .line 192
    .line 193
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    iget-object v4, p0, Lcom/join/mgps/activity/CopyDialogActivity$b;->b:Lcom/join/mgps/activity/CopyDialogActivity;

    .line 198
    .line 199
    iget-object v4, v4, Lcom/join/mgps/activity/CopyDialogActivity;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 200
    .line 201
    invoke-virtual {v2, v4}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    invoke-static {v0, v1, v2}, Lcom/join/mgps/Util/o3;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 206
    .line 207
    .line 208
    goto :goto_2

    .line 209
    :catch_2
    move-exception v0

    .line 210
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 211
    .line 212
    .line 213
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/activity/CopyDialogActivity$b;->b:Lcom/join/mgps/activity/CopyDialogActivity;

    .line 214
    .line 215
    iget-object v0, v0, Lcom/join/mgps/activity/CopyDialogActivity;->e:Landroid/os/Handler;

    .line 216
    .line 217
    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 218
    .line 219
    .line 220
    return-void
.end method
