.class Lcom/join/mgps/activity/ChociceDownActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ChociceDownActivity;->showMain(Lcom/join/mgps/dto/GameDownInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/dto/GameDownInfo$Addr1Bean;

.field final synthetic d:Lcom/join/mgps/activity/ChociceDownActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ChociceDownActivity;ILcom/join/mgps/dto/GameDownInfo$Addr1Bean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$type",
            "val$addr1Bean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ChociceDownActivity$b;->d:Lcom/join/mgps/activity/ChociceDownActivity;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/activity/ChociceDownActivity$b;->b:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/ChociceDownActivity$b;->c:Lcom/join/mgps/dto/GameDownInfo$Addr1Bean;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget p1, p0, Lcom/join/mgps/activity/ChociceDownActivity$b;->b:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_2

    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ChociceDownActivity$b;->d:Lcom/join/mgps/activity/ChociceDownActivity;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/join/mgps/activity/ChociceDownActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/ChociceDownActivity$b;->c:Lcom/join/mgps/dto/GameDownInfo$Addr1Bean;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDownInfo$Addr1Bean;->getUrl()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/join/mgps/activity/ChociceDownActivity$b;->d:Lcom/join/mgps/activity/ChociceDownActivity;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/join/mgps/activity/ChociceDownActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    const/16 v0, 0x9

    .line 28
    .line 29
    if-ne p1, v0, :cond_0

    .line 30
    .line 31
    iget-object p1, p0, Lcom/join/mgps/activity/ChociceDownActivity$b;->d:Lcom/join/mgps/activity/ChociceDownActivity;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/join/mgps/activity/ChociceDownActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->W4(Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/join/mgps/activity/ChociceDownActivity$b;->d:Lcom/join/mgps/activity/ChociceDownActivity;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/join/mgps/activity/ChociceDownActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/php25/PDownload/d;->b(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/join/mgps/activity/ChociceDownActivity$b;->d:Lcom/join/mgps/activity/ChociceDownActivity;

    .line 50
    .line 51
    iget-object v0, p1, Lcom/join/mgps/activity/ChociceDownActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 52
    .line 53
    iget-object p1, p1, Lcom/join/mgps/activity/ChociceDownActivity;->context:Landroid/content/Context;

    .line 54
    .line 55
    invoke-static {v0, p1}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 56
    .line 57
    .line 58
    goto/16 :goto_0

    .line 59
    .line 60
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ChociceDownActivity$b;->d:Lcom/join/mgps/activity/ChociceDownActivity;

    .line 61
    .line 62
    iget-object p1, p1, Lcom/join/mgps/activity/ChociceDownActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    sget-object v0, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_1

    .line 79
    .line 80
    iget-object p1, p0, Lcom/join/mgps/activity/ChociceDownActivity$b;->d:Lcom/join/mgps/activity/ChociceDownActivity;

    .line 81
    .line 82
    iget-object p1, p1, Lcom/join/mgps/activity/ChociceDownActivity;->updateIntentDataBean:Lcom/join/mgps/dto/UpdateIntentDataBean;

    .line 83
    .line 84
    if-eqz p1, :cond_1

    .line 85
    .line 86
    invoke-static {}, Lt6/q;->o()Lt6/q;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iget-object v0, p0, Lcom/join/mgps/activity/ChociceDownActivity$b;->d:Lcom/join/mgps/activity/ChociceDownActivity;

    .line 91
    .line 92
    iget-object v0, v0, Lcom/join/mgps/activity/ChociceDownActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {p1, v0}, Lt6/q;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUUpdateTable;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    iget-object v0, p0, Lcom/join/mgps/activity/ChociceDownActivity$b;->d:Lcom/join/mgps/activity/ChociceDownActivity;

    .line 103
    .line 104
    iget-object v0, v0, Lcom/join/mgps/activity/ChociceDownActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {p1, v0}, Lcom/join/mgps/db/tables/EMUUpdateTable;->setDown_url_remote(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-static {}, Lt6/q;->o()Lt6/q;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v0, p1}, Lq5/b;->update(Ljava/lang/Object;)I

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Lcom/join/mgps/activity/ChociceDownActivity$b;->d:Lcom/join/mgps/activity/ChociceDownActivity;

    .line 121
    .line 122
    iget-object p1, p1, Lcom/join/mgps/activity/ChociceDownActivity;->updateIntentDataBean:Lcom/join/mgps/dto/UpdateIntentDataBean;

    .line 123
    .line 124
    invoke-virtual {p1}, Lcom/join/mgps/dto/UpdateIntentDataBean;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    iget-object v0, p0, Lcom/join/mgps/activity/ChociceDownActivity$b;->d:Lcom/join/mgps/activity/ChociceDownActivity;

    .line 129
    .line 130
    iget-object v0, v0, Lcom/join/mgps/activity/ChociceDownActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 131
    .line 132
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iget-object p1, p0, Lcom/join/mgps/activity/ChociceDownActivity$b;->d:Lcom/join/mgps/activity/ChociceDownActivity;

    .line 140
    .line 141
    iget-object p1, p1, Lcom/join/mgps/activity/ChociceDownActivity;->context:Landroid/content/Context;

    .line 142
    .line 143
    invoke-static {p1}, Lcom/join/mgps/activity/UpdateLodingActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/UpdateLodingActivity_$b;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    iget-object v0, p0, Lcom/join/mgps/activity/ChociceDownActivity$b;->d:Lcom/join/mgps/activity/ChociceDownActivity;

    .line 148
    .line 149
    iget-object v0, v0, Lcom/join/mgps/activity/ChociceDownActivity;->updateIntentDataBean:Lcom/join/mgps/dto/UpdateIntentDataBean;

    .line 150
    .line 151
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/UpdateLodingActivity_$b;->a(Lcom/join/mgps/dto/UpdateIntentDataBean;)Lcom/join/mgps/activity/UpdateLodingActivity_$b;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 156
    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ChociceDownActivity$b;->d:Lcom/join/mgps/activity/ChociceDownActivity;

    .line 160
    .line 161
    iget-object v0, p1, Lcom/join/mgps/activity/ChociceDownActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 162
    .line 163
    iget-object p1, p1, Lcom/join/mgps/activity/ChociceDownActivity;->context:Landroid/content/Context;

    .line 164
    .line 165
    invoke-static {v0, p1}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 166
    .line 167
    .line 168
    goto :goto_0

    .line 169
    :cond_2
    const/4 v0, 0x2

    .line 170
    if-ne p1, v0, :cond_5

    .line 171
    .line 172
    iget-object p1, p0, Lcom/join/mgps/activity/ChociceDownActivity$b;->d:Lcom/join/mgps/activity/ChociceDownActivity;

    .line 173
    .line 174
    iget-object v0, p1, Lcom/join/mgps/activity/ChociceDownActivity;->updateIntentDataBean:Lcom/join/mgps/dto/UpdateIntentDataBean;

    .line 175
    .line 176
    if-nez v0, :cond_3

    .line 177
    .line 178
    new-instance v0, Lcom/join/mgps/dto/UpdateIntentDataBean;

    .line 179
    .line 180
    invoke-direct {v0}, Lcom/join/mgps/dto/UpdateIntentDataBean;-><init>()V

    .line 181
    .line 182
    .line 183
    iput-object v0, p1, Lcom/join/mgps/activity/ChociceDownActivity;->updateIntentDataBean:Lcom/join/mgps/dto/UpdateIntentDataBean;

    .line 184
    .line 185
    iget-object p1, p0, Lcom/join/mgps/activity/ChociceDownActivity$b;->d:Lcom/join/mgps/activity/ChociceDownActivity;

    .line 186
    .line 187
    iget-object v0, p1, Lcom/join/mgps/activity/ChociceDownActivity;->updateIntentDataBean:Lcom/join/mgps/dto/UpdateIntentDataBean;

    .line 188
    .line 189
    iget-object p1, p1, Lcom/join/mgps/activity/ChociceDownActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 190
    .line 191
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/UpdateIntentDataBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 192
    .line 193
    .line 194
    :cond_3
    new-instance p1, Lcom/join/mgps/Util/IntentDateBean;

    .line 195
    .line 196
    invoke-direct {p1}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 197
    .line 198
    .line 199
    const/4 v0, 0x4

    .line 200
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 201
    .line 202
    .line 203
    iget-object v0, p0, Lcom/join/mgps/activity/ChociceDownActivity$b;->c:Lcom/join/mgps/dto/GameDownInfo$Addr1Bean;

    .line 204
    .line 205
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDownInfo$Addr1Bean;->getUrl()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    iget-object v0, p0, Lcom/join/mgps/activity/ChociceDownActivity$b;->d:Lcom/join/mgps/activity/ChociceDownActivity;

    .line 213
    .line 214
    iget-object v0, v0, Lcom/join/mgps/activity/ChociceDownActivity;->updateIntentDataBean:Lcom/join/mgps/dto/UpdateIntentDataBean;

    .line 215
    .line 216
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    const-string v0, "10"

    .line 220
    .line 221
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setFrom(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    iget-object v0, p0, Lcom/join/mgps/activity/ChociceDownActivity$b;->d:Lcom/join/mgps/activity/ChociceDownActivity;

    .line 225
    .line 226
    iget v0, v0, Lcom/join/mgps/activity/ChociceDownActivity;->from:I

    .line 227
    .line 228
    const/16 v1, 0xb

    .line 229
    .line 230
    if-ne v0, v1, :cond_4

    .line 231
    .line 232
    const-string v0, "11"

    .line 233
    .line 234
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setFrom(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    :cond_4
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    iget-object v1, p0, Lcom/join/mgps/activity/ChociceDownActivity$b;->d:Lcom/join/mgps/activity/ChociceDownActivity;

    .line 242
    .line 243
    iget-object v1, v1, Lcom/join/mgps/activity/ChociceDownActivity;->context:Landroid/content/Context;

    .line 244
    .line 245
    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 246
    .line 247
    .line 248
    goto :goto_0

    .line 249
    :cond_5
    const/4 v0, 0x3

    .line 250
    if-ne p1, v0, :cond_6

    .line 251
    .line 252
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    iget-object v0, p0, Lcom/join/mgps/activity/ChociceDownActivity$b;->d:Lcom/join/mgps/activity/ChociceDownActivity;

    .line 257
    .line 258
    iget-object v0, v0, Lcom/join/mgps/activity/ChociceDownActivity;->context:Landroid/content/Context;

    .line 259
    .line 260
    iget-object v1, p0, Lcom/join/mgps/activity/ChociceDownActivity$b;->c:Lcom/join/mgps/dto/GameDownInfo$Addr1Bean;

    .line 261
    .line 262
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDownInfo$Addr1Bean;->getUrl()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goBrowser(Landroid/content/Context;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/ChociceDownActivity$b;->d:Lcom/join/mgps/activity/ChociceDownActivity;

    .line 270
    .line 271
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 272
    .line 273
    .line 274
    return-void
.end method
