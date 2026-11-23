.class Lcom/join/mgps/activity/FullShareWebActivity$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/FullShareWebActivity;->downGame(Ljava/lang/String;Lcom/join/mgps/Util/IntentDateBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/tbruyelle/rxpermissions2/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/Util/IntentDateBean;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/join/mgps/activity/FullShareWebActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/FullShareWebActivity;Lcom/join/mgps/Util/IntentDateBean;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$intentDateBean",
            "val$url"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity$g;->d:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/FullShareWebActivity$g;->b:Lcom/join/mgps/Util/IntentDateBean;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/FullShareWebActivity$g;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Lcom/tbruyelle/rxpermissions2/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "permission"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-boolean v0, p1, Lcom/tbruyelle/rxpermissions2/b;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity$g;->b:Lcom/join/mgps/Util/IntentDateBean;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/Util/IntentDateBean;->getObject()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v0, 0x0

    .line 12
    :try_start_0
    instance-of v1, p1, Lcom/join/mgps/dto/UpdateIntentDataBean;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    check-cast p1, Lcom/join/mgps/dto/UpdateIntentDataBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    move-object v0, p1

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    nop

    .line 21
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity$g;->b:Lcom/join/mgps/Util/IntentDateBean;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/join/mgps/Util/IntentDateBean;->getFrom()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v1, "10"

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/join/mgps/dto/UpdateIntentDataBean;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity$g;->c:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity$g;->d:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/join/mgps/activity/FullShareWebActivity;->access$000(Lcom/join/mgps/activity/FullShareWebActivity;)Landroid/app/Activity;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v0}, Lcom/join/mgps/dto/UpdateIntentDataBean;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {p1, v1}, Lcom/join/mgps/Util/UtilsMy;->o1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    goto/16 :goto_4

    .line 63
    .line 64
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity$g;->d:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 65
    .line 66
    invoke-static {p1}, Lcom/join/mgps/activity/FullShareWebActivity;->access$000(Lcom/join/mgps/activity/FullShareWebActivity;)Landroid/app/Activity;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-static {p1}, Lcom/join/mgps/activity/ChociceDownActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/ChociceDownActivity_$j;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {v0}, Lcom/join/mgps/dto/UpdateIntentDataBean;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/ChociceDownActivity_$j;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/activity/ChociceDownActivity_$j;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ChociceDownActivity_$j;->c(Lcom/join/mgps/dto/UpdateIntentDataBean;)Lcom/join/mgps/activity/ChociceDownActivity_$j;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    const/16 v0, 0xa

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ChociceDownActivity_$j;->b(I)Lcom/join/mgps/activity/ChociceDownActivity_$j;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 93
    .line 94
    .line 95
    goto/16 :goto_4

    .line 96
    .line 97
    :cond_2
    if-eqz v0, :cond_4

    .line 98
    .line 99
    iget-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity$g;->b:Lcom/join/mgps/Util/IntentDateBean;

    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/join/mgps/Util/IntentDateBean;->getFrom()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    const-string v1, "11"

    .line 106
    .line 107
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_4

    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/join/mgps/dto/UpdateIntentDataBean;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity$g;->c:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity$g;->d:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 123
    .line 124
    invoke-static {p1}, Lcom/join/mgps/activity/FullShareWebActivity;->access$000(Lcom/join/mgps/activity/FullShareWebActivity;)Landroid/app/Activity;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {v0}, Lcom/join/mgps/dto/UpdateIntentDataBean;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-static {p1, v1}, Lcom/join/mgps/Util/UtilsMy;->o1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-eqz p1, :cond_3

    .line 137
    .line 138
    goto/16 :goto_4

    .line 139
    .line 140
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity$g;->d:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 141
    .line 142
    invoke-static {p1}, Lcom/join/mgps/activity/FullShareWebActivity;->access$000(Lcom/join/mgps/activity/FullShareWebActivity;)Landroid/app/Activity;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-static {p1}, Lcom/join/mgps/activity/ChociceDownActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/ChociceDownActivity_$j;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {v0}, Lcom/join/mgps/dto/UpdateIntentDataBean;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/ChociceDownActivity_$j;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/activity/ChociceDownActivity_$j;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ChociceDownActivity_$j;->c(Lcom/join/mgps/dto/UpdateIntentDataBean;)Lcom/join/mgps/activity/ChociceDownActivity_$j;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    const/16 v0, 0xc

    .line 163
    .line 164
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ChociceDownActivity_$j;->b(I)Lcom/join/mgps/activity/ChociceDownActivity_$j;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 169
    .line 170
    .line 171
    goto/16 :goto_4

    .line 172
    .line 173
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity$g;->d:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 174
    .line 175
    iget-object p1, p1, Lcom/join/mgps/activity/FullShareWebActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 176
    .line 177
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->firstShowUserPermiss()Lorg/androidannotations/api/sharedpreferences/d;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-virtual {p1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    check-cast p1, Ljava/lang/Boolean;

    .line 186
    .line 187
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    if-nez p1, :cond_5

    .line 192
    .line 193
    iget-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity$g;->d:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 194
    .line 195
    invoke-static {p1}, Lcom/join/mgps/activity/FullShareWebActivity;->access$000(Lcom/join/mgps/activity/FullShareWebActivity;)Landroid/app/Activity;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    const-string v0, "onSourceDownloadBegin"

    .line 200
    .line 201
    invoke-static {p1, v0}, Lcom/join/kotlin/utils/extention/MobclickAgentKt;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity$g;->c:Ljava/lang/String;

    .line 205
    .line 206
    const-string v0, "/"

    .line 207
    .line 208
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    add-int/lit8 v0, v0, 0x1

    .line 213
    .line 214
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 219
    .line 220
    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity$g;->d:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 228
    .line 229
    invoke-static {v0, p1}, Lcom/join/mgps/activity/FullShareWebActivity;->access$100(Lcom/join/mgps/activity/FullShareWebActivity;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity$g;->d:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 233
    .line 234
    invoke-static {v0}, Lcom/join/mgps/activity/FullShareWebActivity;->access$200(Lcom/join/mgps/activity/FullShareWebActivity;)Lcom/join/mgps/dialog/h0;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    if-eqz v0, :cond_6

    .line 239
    .line 240
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity$g;->d:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 241
    .line 242
    invoke-static {v0}, Lcom/join/mgps/activity/FullShareWebActivity;->access$200(Lcom/join/mgps/activity/FullShareWebActivity;)Lcom/join/mgps/dialog/h0;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 247
    .line 248
    .line 249
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity$g;->d:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 250
    .line 251
    new-instance v1, Lcom/join/mgps/dialog/h0;

    .line 252
    .line 253
    iget-object v2, p0, Lcom/join/mgps/activity/FullShareWebActivity$g;->d:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 254
    .line 255
    invoke-static {v2}, Lcom/join/mgps/activity/FullShareWebActivity;->access$000(Lcom/join/mgps/activity/FullShareWebActivity;)Landroid/app/Activity;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    invoke-direct {v1, v2}, Lcom/join/mgps/dialog/h0;-><init>(Landroid/content/Context;)V

    .line 260
    .line 261
    .line 262
    invoke-static {v0, v1}, Lcom/join/mgps/activity/FullShareWebActivity;->access$202(Lcom/join/mgps/activity/FullShareWebActivity;Lcom/join/mgps/dialog/h0;)Lcom/join/mgps/dialog/h0;

    .line 263
    .line 264
    .line 265
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity$g;->d:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 266
    .line 267
    invoke-static {v0}, Lcom/join/mgps/activity/FullShareWebActivity;->access$200(Lcom/join/mgps/activity/FullShareWebActivity;)Lcom/join/mgps/dialog/h0;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 272
    .line 273
    .line 274
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity$g;->d:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 275
    .line 276
    invoke-static {v0}, Lcom/join/mgps/activity/FullShareWebActivity;->access$200(Lcom/join/mgps/activity/FullShareWebActivity;)Lcom/join/mgps/dialog/h0;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    new-instance v1, Lcom/join/mgps/activity/FullShareWebActivity$g$a;

    .line 281
    .line 282
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/FullShareWebActivity$g$a;-><init>(Lcom/join/mgps/activity/FullShareWebActivity$g;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/h0;->a(Landroid/view/View$OnClickListener;)V

    .line 286
    .line 287
    .line 288
    iget-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity$g;->d:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 289
    .line 290
    invoke-static {p1}, Lcom/join/mgps/activity/FullShareWebActivity;->access$200(Lcom/join/mgps/activity/FullShareWebActivity;)Lcom/join/mgps/dialog/h0;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    new-instance v0, Lcom/join/mgps/activity/FullShareWebActivity$g$b;

    .line 295
    .line 296
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/FullShareWebActivity$g$b;-><init>(Lcom/join/mgps/activity/FullShareWebActivity$g;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/h0;->b(Landroid/view/View$OnClickListener;)V

    .line 300
    .line 301
    .line 302
    goto/16 :goto_4

    .line 303
    .line 304
    :cond_7
    iget-boolean v0, p1, Lcom/tbruyelle/rxpermissions2/b;->c:Z

    .line 305
    .line 306
    if-eqz v0, :cond_8

    .line 307
    .line 308
    goto :goto_4

    .line 309
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity$g;->d:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 310
    .line 311
    iget-object v1, v0, Lcom/join/mgps/activity/FullShareWebActivity;->dialogU:Landroid/app/Dialog;

    .line 312
    .line 313
    if-nez v1, :cond_9

    .line 314
    .line 315
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 316
    .line 317
    invoke-static {v0}, Lcom/join/mgps/activity/FullShareWebActivity;->access$000(Lcom/join/mgps/activity/FullShareWebActivity;)Landroid/app/Activity;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    const v3, 0x7f13000d

    .line 322
    .line 323
    .line 324
    invoke-direct {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 325
    .line 326
    .line 327
    iput-object v1, v0, Lcom/join/mgps/activity/FullShareWebActivity;->dialogB:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 328
    .line 329
    goto :goto_1

    .line 330
    :cond_9
    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    .line 331
    .line 332
    .line 333
    move-result v0

    .line 334
    if-eqz v0, :cond_a

    .line 335
    .line 336
    return-void

    .line 337
    :cond_a
    :goto_1
    iget-object v0, p1, Lcom/tbruyelle/rxpermissions2/b;->a:Ljava/lang/String;

    .line 338
    .line 339
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 340
    .line 341
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result v0

    .line 345
    if-eqz v0, :cond_b

    .line 346
    .line 347
    return-void

    .line 348
    :cond_b
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity$g;->d:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 349
    .line 350
    iget-object v0, v0, Lcom/join/mgps/activity/FullShareWebActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 351
    .line 352
    const-string v1, "\u63d0\u793a"

    .line 353
    .line 354
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 355
    .line 356
    .line 357
    iget-object v0, p1, Lcom/tbruyelle/rxpermissions2/b;->a:Ljava/lang/String;

    .line 358
    .line 359
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 360
    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    move-result v0

    .line 365
    if-nez v0, :cond_d

    .line 366
    .line 367
    iget-object p1, p1, Lcom/tbruyelle/rxpermissions2/b;->a:Ljava/lang/String;

    .line 368
    .line 369
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 370
    .line 371
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    move-result p1

    .line 375
    if-eqz p1, :cond_c

    .line 376
    .line 377
    goto :goto_2

    .line 378
    :cond_c
    iget-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity$g;->d:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 379
    .line 380
    iget-object p1, p1, Lcom/join/mgps/activity/FullShareWebActivity;->dialogB:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 381
    .line 382
    const-string v0, "\u8bf7\u53bb\u8bbe\u7f6e\u4e2d\u5f00\u542f\u6743\u9650"

    .line 383
    .line 384
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 385
    .line 386
    .line 387
    goto :goto_3

    .line 388
    :cond_d
    :goto_2
    iget-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity$g;->d:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 389
    .line 390
    iget-object p1, p1, Lcom/join/mgps/activity/FullShareWebActivity;->dialogB:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 391
    .line 392
    const-string v0, "\u9700\u8981\u6253\u5f00\u8bfb\u5199\u5b58\u50a8\u6743\u9650\uff0c\u8bf7\u53bb\u8bbe\u7f6e\u4e2d\u5f00\u542f\u6743\u9650"

    .line 393
    .line 394
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 395
    .line 396
    .line 397
    :goto_3
    iget-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity$g;->d:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 398
    .line 399
    iget-object p1, p1, Lcom/join/mgps/activity/FullShareWebActivity;->dialogB:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 400
    .line 401
    new-instance v0, Lcom/join/mgps/activity/FullShareWebActivity$g$c;

    .line 402
    .line 403
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/FullShareWebActivity$g$c;-><init>(Lcom/join/mgps/activity/FullShareWebActivity$g;)V

    .line 404
    .line 405
    .line 406
    const-string v1, "\u53bb\u6253\u5f00"

    .line 407
    .line 408
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 409
    .line 410
    .line 411
    iget-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity$g;->d:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 412
    .line 413
    iget-object v0, p1, Lcom/join/mgps/activity/FullShareWebActivity;->dialogB:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 414
    .line 415
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    iput-object v0, p1, Lcom/join/mgps/activity/FullShareWebActivity;->dialogU:Landroid/app/Dialog;

    .line 420
    .line 421
    :goto_4
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "permission"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/tbruyelle/rxpermissions2/b;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/FullShareWebActivity$g;->a(Lcom/tbruyelle/rxpermissions2/b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
