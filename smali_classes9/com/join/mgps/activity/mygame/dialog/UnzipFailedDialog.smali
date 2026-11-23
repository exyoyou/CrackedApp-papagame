.class public Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;
.super Lcom/join/mgps/base/dialog/BaseDialogActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d08c1
.end annotation


# instance fields
.field downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field from:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field gameId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field gameName:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field goH5:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field icon:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field llReUnzip:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field main:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field message:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field moreSelecter:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field needFinish:Z

.field prefDef_:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field rpcGameClient:Lcom/join/mgps/rpc/k;

.field sdv_image:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field startButn:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field viewx:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/base/dialog/BaseDialogActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->needFinish:Z

    .line 6
    .line 7
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->openAssignFolder(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private initGoInstall()V
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0d0885

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const v1, 0x7f0a084f

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroid/widget/ImageView;

    .line 21
    .line 22
    const v2, 0x7f080ff5

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 26
    .line 27
    .line 28
    const v1, 0x7f0a1767

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Landroid/widget/TextView;

    .line 36
    .line 37
    const-string v2, "\u5b89\u88c5\u6743\u9650\u662f\u5426\u5141\u8bb8"

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    const v1, 0x7f0a164a

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Landroid/widget/TextView;

    .line 50
    .line 51
    const/16 v2, 0x8

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    const v1, 0x7f0a1032

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Landroid/widget/TextView;

    .line 64
    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v3, "\u524d\u5f80\u6743\u9650\u7ba1\u7406\uff0c\u627e\u5230"

    .line 71
    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-static {p0}, Lcom/join/mgps/Util/a0;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v3, "-\u5e94\u7528\u5185\u5b89\u88c5\u5176\u4ed6\u5e94\u7528\uff0c\u9009\u62e9\u5141\u8bb8"

    .line 83
    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    .line 93
    .line 94
    const v1, 0x7f0a0fee

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    new-instance v2, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog$5;

    .line 102
    .line 103
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog$5;-><init>(Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    .line 108
    .line 109
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->moreSelecter:Landroid/widget/LinearLayout;

    .line 110
    .line 111
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method private openAssignFolder(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "com.android.filemanager"

    .line 6
    .line 7
    invoke-virtual {p1, p0, v0}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1, p0, v0}, Lcom/join/android/app/common/utils/APKUtils;->U(Landroid/content/Context;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    goto/16 :goto_1

    .line 21
    .line 22
    :cond_0
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v0, "com.android.fileexplorer"

    .line 27
    .line 28
    invoke-virtual {p1, p0, v0}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1, p0, v0}, Lcom/join/android/app/common/utils/APKUtils;->U(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_1

    .line 42
    .line 43
    :cond_1
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string v0, "com.coloros.filemanager"

    .line 48
    .line 49
    invoke-virtual {p1, p0, v0}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1, p0, v0}, Lcom/join/android/app/common/utils/APKUtils;->U(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_1

    .line 63
    .line 64
    :cond_2
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const-string v0, "com.sec.android.app.myfiles"

    .line 69
    .line 70
    invoke-virtual {p1, p0, v0}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_3

    .line 75
    .line 76
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1, p0, v0}, Lcom/join/android/app/common/utils/APKUtils;->U(Landroid/content/Context;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    goto/16 :goto_1

    .line 84
    .line 85
    :cond_3
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    const-string v0, "com.google.android.documentsui"

    .line 90
    .line 91
    invoke-virtual {p1, p0, v0}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-eqz p1, :cond_4

    .line 96
    .line 97
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p1, p0, v0}, Lcom/join/android/app/common/utils/APKUtils;->U(Landroid/content/Context;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    goto/16 :goto_1

    .line 105
    .line 106
    :cond_4
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    const-string v0, "com.huawei.hidisk"

    .line 111
    .line 112
    invoke-virtual {p1, p0, v0}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-eqz p1, :cond_7

    .line 117
    .line 118
    new-instance p1, Landroid/content/Intent;

    .line 119
    .line 120
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-static {}, Lcom/join/mgps/Util/UtilsMy;->s2()Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_5

    .line 128
    .line 129
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    const-string v2, "com.huawei.filemanager"

    .line 134
    .line 135
    invoke-virtual {v1, p0, v2}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-eqz v1, :cond_5

    .line 140
    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    goto :goto_0

    .line 150
    :cond_5
    const-string v1, "com.huawei.hidisk.filemanager.FileManager"

    .line 151
    .line 152
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    .line 154
    .line 155
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    const/4 v2, 0x0

    .line 160
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    if-nez v1, :cond_6

    .line 165
    .line 166
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-virtual {p1, p0, v0}, Lcom/join/android/app/common/utils/APKUtils;->U(Landroid/content/Context;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    goto/16 :goto_1

    .line 174
    .line 175
    :cond_6
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 176
    .line 177
    .line 178
    goto/16 :goto_1

    .line 179
    .line 180
    :cond_7
    :try_start_0
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-virtual {p1, p0}, Lcom/join/android/app/common/utils/APKUtils;->r(Landroid/content/Context;)Ljava/util/List;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 193
    .line 194
    .line 195
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    const-string v1, "myfiles"

    .line 197
    .line 198
    const-string v2, "myfile"

    .line 199
    .line 200
    const-string v3, "filemanager"

    .line 201
    .line 202
    const-string v4, "fileexplorer"

    .line 203
    .line 204
    const-string v5, "  "

    .line 205
    .line 206
    if-eqz v0, :cond_a

    .line 207
    .line 208
    :try_start_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    check-cast v0, Lcom/join/android/app/common/utils/APKUtils$a;

    .line 213
    .line 214
    new-instance v6, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->c()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v7

    .line 223
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    invoke-static {v5}, Lcom/join/mgps/Util/g1;->c(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->c()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v5

    .line 240
    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 241
    .line 242
    .line 243
    move-result v4

    .line 244
    if-nez v4, :cond_9

    .line 245
    .line 246
    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->c()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    if-nez v3, :cond_9

    .line 255
    .line 256
    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->c()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 261
    .line 262
    .line 263
    move-result v2

    .line 264
    if-nez v2, :cond_9

    .line 265
    .line 266
    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->c()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 271
    .line 272
    .line 273
    move-result v1

    .line 274
    if-eqz v1, :cond_8

    .line 275
    .line 276
    :cond_9
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->c()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    invoke-virtual {p1, p0, v0}, Lcom/join/android/app/common/utils/APKUtils;->U(Landroid/content/Context;Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    return-void

    .line 288
    :cond_a
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    invoke-virtual {p1, p0}, Lcom/join/android/app/common/utils/APKUtils;->p(Landroid/content/Context;)Ljava/util/List;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    :cond_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    if-eqz v0, :cond_d

    .line 305
    .line 306
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    check-cast v0, Lcom/join/android/app/common/utils/APKUtils$a;

    .line 311
    .line 312
    new-instance v6, Ljava/lang/StringBuilder;

    .line 313
    .line 314
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->c()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v7

    .line 321
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v6

    .line 331
    invoke-static {v6}, Lcom/join/mgps/Util/g1;->c(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->c()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v6

    .line 338
    invoke-virtual {v6, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 339
    .line 340
    .line 341
    move-result v6

    .line 342
    if-nez v6, :cond_c

    .line 343
    .line 344
    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->c()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v6

    .line 348
    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 349
    .line 350
    .line 351
    move-result v6

    .line 352
    if-nez v6, :cond_c

    .line 353
    .line 354
    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->c()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v6

    .line 358
    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 359
    .line 360
    .line 361
    move-result v6

    .line 362
    if-nez v6, :cond_c

    .line 363
    .line 364
    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->c()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v6

    .line 368
    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 369
    .line 370
    .line 371
    move-result v6

    .line 372
    if-eqz v6, :cond_b

    .line 373
    .line 374
    :cond_c
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 375
    .line 376
    .line 377
    move-result-object p1

    .line 378
    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->c()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    invoke-virtual {p1, p0, v0}, Lcom/join/android/app/common/utils/APKUtils;->U(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 383
    .line 384
    .line 385
    return-void

    .line 386
    :catch_0
    move-exception p1

    .line 387
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 388
    .line 389
    .line 390
    :cond_d
    :goto_1
    return-void
.end method


# virtual methods
.method afterviews()V
    .locals 20
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/join/mgps/Util/p2;->w(Landroid/app/Activity;Z)V

    .line 5
    .line 6
    .line 7
    iget-object v2, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->prefDef_:Lcom/join/mgps/pref/PrefDef_;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->lastInstallApp()Lorg/androidannotations/api/sharedpreferences/p;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const-string v3, ""

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iput-object v2, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->rpcGameClient:Lcom/join/mgps/rpc/k;

    .line 23
    .line 24
    const-string v2, "unzipfailedxx"

    .line 25
    .line 26
    const-string v4, "show"

    .line 27
    .line 28
    invoke-static {v2, v4}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iget-object v4, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->gameId:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v2, v4}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iput-object v2, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 42
    .line 43
    if-nez v2, :cond_0

    .line 44
    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->finish()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    iget-object v4, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->icon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 50
    .line 51
    const v5, 0x7f080caf

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-static {v4, v5, v2}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v2, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->gameName:Landroid/widget/TextView;

    .line 62
    .line 63
    iget-object v4, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 64
    .line 65
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    iget v2, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->from:I

    .line 73
    .line 74
    const/4 v4, 0x1

    .line 75
    const/16 v5, 0x8

    .line 76
    .line 77
    if-ne v2, v4, :cond_1

    .line 78
    .line 79
    iget-object v2, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->message:Landroid/widget/TextView;

    .line 80
    .line 81
    const-string v6, "<font color=#ff001c>\u89e3\u538b\u5931\u8d25\uff1a</font>\u8bf7\u786e\u8ba4\u4e0b\u65b9\u51e0\u9879\u662f\u5426\u6b63\u5e38\u540e\u89e3\u538b"

    .line 82
    .line 83
    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    iget-object v2, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->startButn:Landroid/widget/TextView;

    .line 91
    .line 92
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    iget-object v2, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->llReUnzip:Landroid/widget/LinearLayout;

    .line 96
    .line 97
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 98
    .line 99
    .line 100
    invoke-static/range {p0 .. p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    sget-object v2, Lcom/papa/sim/statistic/Event;->showFailUnzip:Lcom/papa/sim/statistic/Event;

    .line 105
    .line 106
    new-instance v6, Lcom/papa/sim/statistic/Ext;

    .line 107
    .line 108
    invoke-direct {v6}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 109
    .line 110
    .line 111
    iget-object v7, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 112
    .line 113
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    invoke-virtual {v6, v7}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    invoke-virtual {v1, v2, v6}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 122
    .line 123
    .line 124
    iget-object v1, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->gameId:Ljava/lang/String;

    .line 125
    .line 126
    const/16 v2, 0xa

    .line 127
    .line 128
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->getPrivateDomain(Ljava/lang/String;I)V

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_1
    iget-object v2, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->message:Landroid/widget/TextView;

    .line 133
    .line 134
    const-string v6, "\u5982\u679c\u5b89\u88c5\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u4ee5\u4e0b\u95ee\u9898\u540e\u5b89\u88c5\u3002"

    .line 135
    .line 136
    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    .line 142
    .line 143
    iget-object v2, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->llReUnzip:Landroid/widget/LinearLayout;

    .line 144
    .line 145
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 146
    .line 147
    .line 148
    iget-object v2, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->startButn:Landroid/widget/TextView;

    .line 149
    .line 150
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 151
    .line 152
    .line 153
    invoke-static/range {p0 .. p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    sget-object v2, Lcom/papa/sim/statistic/Event;->showFailApkInstall:Lcom/papa/sim/statistic/Event;

    .line 158
    .line 159
    new-instance v6, Lcom/papa/sim/statistic/Ext;

    .line 160
    .line 161
    invoke-direct {v6}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 162
    .line 163
    .line 164
    iget-object v7, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 165
    .line 166
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v7

    .line 170
    invoke-virtual {v6, v7}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    invoke-virtual {v1, v2, v6}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 175
    .line 176
    .line 177
    iget-object v1, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->gameId:Ljava/lang/String;

    .line 178
    .line 179
    const/16 v2, 0xb

    .line 180
    .line 181
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->getPrivateDomain(Ljava/lang/String;I)V

    .line 182
    .line 183
    .line 184
    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/join/mgps/Util/f2;->a(Landroid/content/Context;)Ljava/util/List;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 193
    .line 194
    .line 195
    move-result v6

    .line 196
    if-eqz v6, :cond_7

    .line 197
    .line 198
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    check-cast v6, Lcom/join/mgps/dto/Filepath;

    .line 203
    .line 204
    iget-object v7, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 205
    .line 206
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v7

    .line 210
    invoke-static {v7}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 211
    .line 212
    .line 213
    move-result v7

    .line 214
    if-eqz v7, :cond_2

    .line 215
    .line 216
    iget-object v7, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 217
    .line 218
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v7

    .line 222
    goto :goto_2

    .line 223
    :cond_2
    iget-object v7, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 224
    .line 225
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v7

    .line 229
    invoke-static {v7}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 230
    .line 231
    .line 232
    move-result v7

    .line 233
    if-eqz v7, :cond_3

    .line 234
    .line 235
    iget-object v7, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 236
    .line 237
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v7

    .line 241
    goto :goto_2

    .line 242
    :cond_3
    move-object v7, v3

    .line 243
    :goto_2
    iget-object v8, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->moreSelecter:Landroid/widget/LinearLayout;

    .line 244
    .line 245
    invoke-virtual {v8}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v6}, Lcom/join/mgps/dto/Filepath;->getPathRoot()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v8

    .line 252
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 253
    .line 254
    .line 255
    move-result v7

    .line 256
    const-string v8, "\u4e0b\u8f7d\u4f4d\u7f6e\u4e3aSD\u5361\u65f6\u53ef\u80fd\u4f1a\u5bfc\u81f4\u89e3\u538b\u5931\u8d25\uff0c\u70b9\u51fb\u6b64\u5904\u53ef\u5207\u6362\u4e0b\u8f7d\u4f4d\u7f6e"

    .line 257
    .line 258
    const-string v9, "\u4e0b\u8f7d\u4f4d\u7f6e\u8bbe\u7f6e\u4e3a\u624b\u673a\u5185\u5b58"

    .line 259
    .line 260
    const-string v11, "\u524d\u5f80\u624b\u673a\u6587\u4ef6\u5939\uff0c\u67e5\u770b\u624b\u673a\u5b58\u50a8\u7a7a\u95f4\u662f\u5426\u4e0d\u8db3\uff0c\u82e5\u4e0d\u8db3\u8bf7\u6e05\u9664\u591a\u4f59\u6587\u4ef6"

    .line 261
    .line 262
    const-string v12, "#ff001c"

    .line 263
    .line 264
    const-string v13, "\u5185\u5b58\u662f\u5426\u5145\u8db3"

    .line 265
    .line 266
    const v14, 0x7f080ff5

    .line 267
    .line 268
    .line 269
    const v4, 0x7f0a1767

    .line 270
    .line 271
    .line 272
    const v15, 0x7f0a084f

    .line 273
    .line 274
    .line 275
    const/4 v5, 0x0

    .line 276
    const v10, 0x7f0d0885

    .line 277
    .line 278
    .line 279
    if-eqz v7, :cond_5

    .line 280
    .line 281
    invoke-virtual {v6}, Lcom/join/mgps/dto/Filepath;->getAvailable()J

    .line 282
    .line 283
    .line 284
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    invoke-virtual {v2, v10, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    iput-object v2, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->viewx:Landroid/view/View;

    .line 293
    .line 294
    invoke-virtual {v2, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    check-cast v2, Landroid/widget/ImageView;

    .line 299
    .line 300
    invoke-virtual {v2, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 301
    .line 302
    .line 303
    iget-object v2, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->viewx:Landroid/view/View;

    .line 304
    .line 305
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 306
    .line 307
    .line 308
    move-result-object v2

    .line 309
    check-cast v2, Landroid/widget/TextView;

    .line 310
    .line 311
    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    .line 313
    .line 314
    iget-object v2, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->viewx:Landroid/view/View;

    .line 315
    .line 316
    const v3, 0x7f0a164a

    .line 317
    .line 318
    .line 319
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    check-cast v2, Landroid/widget/TextView;

    .line 324
    .line 325
    new-instance v3, Ljava/lang/StringBuilder;

    .line 326
    .line 327
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    .line 329
    .line 330
    const-string v7, "\uff08\u53ef\u7528\u7a7a\u95f4"

    .line 331
    .line 332
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v6}, Lcom/join/mgps/dto/Filepath;->getAvailable()J

    .line 336
    .line 337
    .line 338
    move-result-wide v13

    .line 339
    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v7

    .line 343
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    const-string v7, "\uff09"

    .line 347
    .line 348
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v3

    .line 355
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v6}, Lcom/join/mgps/dto/Filepath;->getAvailable()J

    .line 359
    .line 360
    .line 361
    move-result-wide v13

    .line 362
    iget-object v3, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 363
    .line 364
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getActual_size()J

    .line 365
    .line 366
    .line 367
    move-result-wide v16

    .line 368
    const-wide/16 v18, 0x2

    .line 369
    .line 370
    mul-long v16, v16, v18

    .line 371
    .line 372
    cmp-long v3, v13, v16

    .line 373
    .line 374
    if-gez v3, :cond_4

    .line 375
    .line 376
    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 377
    .line 378
    .line 379
    move-result v3

    .line 380
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 381
    .line 382
    .line 383
    goto :goto_3

    .line 384
    :cond_4
    const-string v3, "#00c81e"

    .line 385
    .line 386
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 387
    .line 388
    .line 389
    move-result v3

    .line 390
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 391
    .line 392
    .line 393
    :goto_3
    iget-object v2, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->viewx:Landroid/view/View;

    .line 394
    .line 395
    const v3, 0x7f0a1032

    .line 396
    .line 397
    .line 398
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 399
    .line 400
    .line 401
    move-result-object v2

    .line 402
    check-cast v2, Landroid/widget/TextView;

    .line 403
    .line 404
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    .line 406
    .line 407
    iget-object v2, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->viewx:Landroid/view/View;

    .line 408
    .line 409
    const v3, 0x7f0a0fee

    .line 410
    .line 411
    .line 412
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 413
    .line 414
    .line 415
    move-result-object v2

    .line 416
    new-instance v3, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog$1;

    .line 417
    .line 418
    invoke-direct {v3, v0, v6}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog$1;-><init>(Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;Lcom/join/mgps/dto/Filepath;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 422
    .line 423
    .line 424
    iget-object v2, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->moreSelecter:Landroid/widget/LinearLayout;

    .line 425
    .line 426
    iget-object v3, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->viewx:Landroid/view/View;

    .line 427
    .line 428
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v6}, Lcom/join/mgps/dto/Filepath;->isIslocal()Z

    .line 432
    .line 433
    .line 434
    move-result v2

    .line 435
    if-nez v2, :cond_7

    .line 436
    .line 437
    iget v2, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->from:I

    .line 438
    .line 439
    const/4 v3, 0x1

    .line 440
    if-ne v2, v3, :cond_7

    .line 441
    .line 442
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 443
    .line 444
    .line 445
    move-result-object v2

    .line 446
    invoke-virtual {v2, v10, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 447
    .line 448
    .line 449
    move-result-object v2

    .line 450
    invoke-virtual {v2, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 451
    .line 452
    .line 453
    move-result-object v3

    .line 454
    check-cast v3, Landroid/widget/ImageView;

    .line 455
    .line 456
    const v5, 0x7f080ff4

    .line 457
    .line 458
    .line 459
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 463
    .line 464
    .line 465
    move-result-object v3

    .line 466
    check-cast v3, Landroid/widget/TextView;

    .line 467
    .line 468
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    .line 470
    .line 471
    const v3, 0x7f0a164a

    .line 472
    .line 473
    .line 474
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 475
    .line 476
    .line 477
    move-result-object v3

    .line 478
    const/16 v4, 0x8

    .line 479
    .line 480
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 481
    .line 482
    .line 483
    const v3, 0x7f0a1032

    .line 484
    .line 485
    .line 486
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 487
    .line 488
    .line 489
    move-result-object v3

    .line 490
    check-cast v3, Landroid/widget/TextView;

    .line 491
    .line 492
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    .line 494
    .line 495
    const v3, 0x7f0a0fee

    .line 496
    .line 497
    .line 498
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 499
    .line 500
    .line 501
    move-result-object v3

    .line 502
    new-instance v4, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog$2;

    .line 503
    .line 504
    invoke-direct {v4, v0, v1}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog$2;-><init>(Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;Ljava/util/List;)V

    .line 505
    .line 506
    .line 507
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 508
    .line 509
    .line 510
    iget-object v1, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->moreSelecter:Landroid/widget/LinearLayout;

    .line 511
    .line 512
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 513
    .line 514
    .line 515
    goto/16 :goto_5

    .line 516
    .line 517
    :cond_5
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 518
    .line 519
    .line 520
    move-result-object v7

    .line 521
    invoke-virtual {v7, v10, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 522
    .line 523
    .line 524
    move-result-object v7

    .line 525
    iput-object v7, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->viewx:Landroid/view/View;

    .line 526
    .line 527
    invoke-virtual {v7, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 528
    .line 529
    .line 530
    move-result-object v7

    .line 531
    check-cast v7, Landroid/widget/ImageView;

    .line 532
    .line 533
    invoke-virtual {v7, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 534
    .line 535
    .line 536
    iget-object v7, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->viewx:Landroid/view/View;

    .line 537
    .line 538
    invoke-virtual {v7, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 539
    .line 540
    .line 541
    move-result-object v7

    .line 542
    check-cast v7, Landroid/widget/TextView;

    .line 543
    .line 544
    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    .line 546
    .line 547
    iget-object v7, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->viewx:Landroid/view/View;

    .line 548
    .line 549
    const v13, 0x7f0a164a

    .line 550
    .line 551
    .line 552
    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 553
    .line 554
    .line 555
    move-result-object v7

    .line 556
    check-cast v7, Landroid/widget/TextView;

    .line 557
    .line 558
    const-string v13, "\uff08\u53ef\u7528\u7a7a\u95f40)"

    .line 559
    .line 560
    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 561
    .line 562
    .line 563
    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 564
    .line 565
    .line 566
    move-result v12

    .line 567
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 568
    .line 569
    .line 570
    iget-object v7, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->viewx:Landroid/view/View;

    .line 571
    .line 572
    const v12, 0x7f0a1032

    .line 573
    .line 574
    .line 575
    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 576
    .line 577
    .line 578
    move-result-object v7

    .line 579
    check-cast v7, Landroid/widget/TextView;

    .line 580
    .line 581
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    .line 583
    .line 584
    iget-object v7, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->viewx:Landroid/view/View;

    .line 585
    .line 586
    const v11, 0x7f0a0fee

    .line 587
    .line 588
    .line 589
    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 590
    .line 591
    .line 592
    move-result-object v7

    .line 593
    new-instance v11, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog$3;

    .line 594
    .line 595
    invoke-direct {v11, v0, v6}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog$3;-><init>(Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;Lcom/join/mgps/dto/Filepath;)V

    .line 596
    .line 597
    .line 598
    invoke-virtual {v7, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 599
    .line 600
    .line 601
    iget-object v6, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->moreSelecter:Landroid/widget/LinearLayout;

    .line 602
    .line 603
    iget-object v7, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->viewx:Landroid/view/View;

    .line 604
    .line 605
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 606
    .line 607
    .line 608
    iget v6, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->from:I

    .line 609
    .line 610
    const/4 v7, 0x1

    .line 611
    if-ne v6, v7, :cond_6

    .line 612
    .line 613
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 614
    .line 615
    .line 616
    move-result-object v6

    .line 617
    invoke-virtual {v6, v10, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 618
    .line 619
    .line 620
    move-result-object v5

    .line 621
    invoke-virtual {v5, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 622
    .line 623
    .line 624
    move-result-object v6

    .line 625
    check-cast v6, Landroid/widget/ImageView;

    .line 626
    .line 627
    const v10, 0x7f080ff4

    .line 628
    .line 629
    .line 630
    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 631
    .line 632
    .line 633
    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 634
    .line 635
    .line 636
    move-result-object v4

    .line 637
    check-cast v4, Landroid/widget/TextView;

    .line 638
    .line 639
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 640
    .line 641
    .line 642
    const v4, 0x7f0a164a

    .line 643
    .line 644
    .line 645
    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 646
    .line 647
    .line 648
    move-result-object v4

    .line 649
    const/16 v6, 0x8

    .line 650
    .line 651
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 652
    .line 653
    .line 654
    const v4, 0x7f0a1032

    .line 655
    .line 656
    .line 657
    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 658
    .line 659
    .line 660
    move-result-object v4

    .line 661
    check-cast v4, Landroid/widget/TextView;

    .line 662
    .line 663
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 664
    .line 665
    .line 666
    const v4, 0x7f0a0fee

    .line 667
    .line 668
    .line 669
    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 670
    .line 671
    .line 672
    move-result-object v4

    .line 673
    new-instance v8, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog$4;

    .line 674
    .line 675
    invoke-direct {v8, v0, v1}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog$4;-><init>(Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;Ljava/util/List;)V

    .line 676
    .line 677
    .line 678
    invoke-virtual {v4, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 679
    .line 680
    .line 681
    iget-object v4, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->moreSelecter:Landroid/widget/LinearLayout;

    .line 682
    .line 683
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 684
    .line 685
    .line 686
    goto :goto_4

    .line 687
    :cond_6
    const/16 v6, 0x8

    .line 688
    .line 689
    :goto_4
    const/4 v4, 0x1

    .line 690
    const/16 v5, 0x8

    .line 691
    .line 692
    goto/16 :goto_1

    .line 693
    .line 694
    :cond_7
    :goto_5
    iget v1, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->from:I

    .line 695
    .line 696
    const/4 v2, 0x2

    .line 697
    if-ne v1, v2, :cond_8

    .line 698
    .line 699
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 700
    .line 701
    const/16 v2, 0x1a

    .line 702
    .line 703
    if-lt v1, v2, :cond_8

    .line 704
    .line 705
    invoke-direct/range {p0 .. p0}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->initGoInstall()V

    .line 706
    .line 707
    .line 708
    :cond_8
    return-void
.end method

.method close()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public finish()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/join/mgps/base/dialog/BaseDialogActivity;->finish()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f01000e

    .line 5
    .line 6
    .line 7
    const v1, 0x7f01000f

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->main:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method getPrivateDomain(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameId",
            "location"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/RequestDomainInfoArgs;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/join/mgps/dto/RequestDomainInfoArgs;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/RequestDomainInfoArgs;->setGameId(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/RequestDomainInfoArgs;->setLocation(Ljava/lang/Integer;)V

    .line 20
    .line 21
    .line 22
    new-instance p1, Lcom/join/mgps/dto/RequestModel;

    .line 23
    .line 24
    invoke-direct {p1, p0}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 31
    .line 32
    .line 33
    :try_start_1
    iget-object p2, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->rpcGameClient:Lcom/join/mgps/rpc/k;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-interface {p2, p1}, Lcom/join/mgps/rpc/k;->t0(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    if-eqz p2, :cond_0

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Lcom/join/mgps/dto/DomainInfoBean;

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->showDomainUI(Lcom/join/mgps/dto/DomainInfoBean;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->showDefaultUI()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catch_0
    move-exception p1

    .line 66
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->showDefaultUI()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catch_1
    move-exception p1

    .line 74
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->showDefaultUI()V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->showDefaultUI()V

    .line 82
    .line 83
    .line 84
    :goto_0
    return-void
.end method

.method goH5()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goFeedback(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->needFinish:Z

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, p0, v1}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->needFinish:Z

    .line 19
    .line 20
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->needFinish:Z

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->prefDef_:Lcom/join/mgps/pref/PrefDef_;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastInstallApp()Lorg/androidannotations/api/sharedpreferences/p;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, ""

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->finish()V

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onResume()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method showDefaultUI()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->sdv_image:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->goH5:Landroid/widget/TextView;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method showDomainUI(Lcom/join/mgps/dto/DomainInfoBean;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "domainInfoBean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->sdv_image:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->goH5:Landroid/widget/TextView;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/DomainInfoBean;->getPic()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->sdv_image:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/join/mgps/dto/DomainInfoBean;->getPic()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->sdv_image:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 34
    .line 35
    new-instance v1, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog$6;

    .line 36
    .line 37
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog$6;-><init>(Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;Lcom/join/mgps/dto/DomainInfoBean;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    .line 42
    .line 43
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sget-object v1, Lcom/papa/sim/statistic/Event;->pdSetupUnzipFail:Lcom/papa/sim/statistic/Event;

    .line 48
    .line 49
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 50
    .line 51
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 52
    .line 53
    .line 54
    iget-object v3, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->gameId:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {p1}, Lcom/join/mgps/dto/DomainInfoBean;->getIs_join()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setIsJoin(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {p1}, Lcom/join/mgps/dto/DomainInfoBean;->getAb_test_number()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {v2, p1}, Lcom/papa/sim/statistic/Ext;->setTestAbNumber(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iget v2, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->from:I

    .line 77
    .line 78
    const/4 v3, 0x1

    .line 79
    if-ne v2, v3, :cond_1

    .line 80
    .line 81
    const-string v2, "unzip_fail"

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    const-string v2, "setup_fail"

    .line 85
    .line 86
    :goto_0
    invoke-virtual {p1, v2}, Lcom/papa/sim/statistic/Ext;->setActType(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {v0, v1, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method startButn()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    sget-object v0, Lcom/join/mgps/enums/Dtype;->MOD:Lcom/join/mgps/enums/Dtype;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/join/android/app/common/utils/APKUtils;->P(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v1, Ljava/io/File;

    .line 33
    .line 34
    iget-object v2, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p0, v1}, Lcom/join/android/app/common/utils/APKUtils;->z(Landroid/content/Context;Ljava/io/File;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 51
    .line 52
    invoke-static {p0, v0}, Lcom/join/android/app/common/utils/APKUtils;->F(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 53
    .line 54
    .line 55
    :goto_1
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sget-object v1, Lcom/papa/sim/statistic/Event;->reApkInstall:Lcom/papa/sim/statistic/Event;

    .line 60
    .line 61
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 62
    .line 63
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 64
    .line 65
    .line 66
    iget-object v3, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->gameId:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 73
    .line 74
    .line 75
    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->needFinish:Z

    .line 77
    .line 78
    return-void
.end method

.method tvReDownload()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 10
    .line 11
    invoke-virtual {v0, p0, v1}, Lcom/join/android/app/common/servcie/j;->d(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->gameId:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lq5/f;->n(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 24
    .line 25
    invoke-static {v0, p0}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->needFinish:Z

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->close()V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method tvReUnzip()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/papa/sim/statistic/Event;->reUnzip:Lcom/papa/sim/statistic/Event;

    .line 6
    .line 7
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 8
    .line 9
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v3, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->gameId:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 22
    .line 23
    invoke-static {p0, v0}, Lcom/php25/PDownload/d;->l(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->finish()V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->needFinish:Z

    .line 31
    .line 32
    return-void
.end method
