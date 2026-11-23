.class public Lcom/join/mgps/mod/activity/ModLoadingActivity;
.super Landroidx/activity/ComponentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/mod/activity/ModLoadingActivity$OMProxyReceiver;,
        Lcom/join/mgps/mod/activity/ModLoadingActivity$ModReceiver;
    }
.end annotation


# static fields
.field public static final S:Ljava/lang/String; = "_mod_info"

.field private static T:Lcom/github/snowdream/android/app/downloader/b; = null

.field static U:Lcom/github/snowdream/android/app/downloader/b$b; = null

.field private static V:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/c;",
            ">;"
        }
    .end annotation
.end field

.field public static W:I = 0x0

.field public static final X:I = 0x2


# instance fields
.field A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field C:Z

.field private D:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field private E:Landroid/widget/LinearLayout;

.field private F:Landroid/widget/ProgressBar;

.field private G:Landroid/widget/TextView;

.field private H:Landroid/widget/TextView;

.field private I:Z

.field private J:Ljava/lang/String;

.field private K:J

.field private L:Landroid/widget/ImageView;

.field private M:Landroid/widget/TextView;

.field private N:Ljava/util/concurrent/Executor;

.field O:Landroid/graphics/drawable/AnimationDrawable;

.field private P:Landroid/content/BroadcastReceiver;

.field Q:Lcom/join/mgps/dialog/f0;

.field protected R:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field m:I

.field o:I

.field p:I

.field q:Ljava/lang/String;

.field t:Lcom/join/mgps/mod/bean/ModMetaParams;

.field u:Lcom/join/mgps/mod/activity/ModLoadingActivity$ModReceiver;

.field v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->V:Ljava/util/Map;

    .line 8
    .line 9
    sput v1, Lcom/join/mgps/mod/activity/ModLoadingActivity;->W:I

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->v:Z

    .line 6
    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->A:Ljava/util/List;

    .line 13
    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->B:Ljava/util/List;

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->C:Z

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->I:Z

    .line 24
    .line 25
    const-string v0, ""

    .line 26
    .line 27
    iput-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->J:Ljava/lang/String;

    .line 28
    .line 29
    const-wide/16 v0, 0x0

    .line 30
    .line 31
    iput-wide v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->K:J

    .line 32
    .line 33
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    const/4 v4, 0x2

    .line 37
    const-wide/16 v5, 0x0

    .line 38
    .line 39
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 40
    .line 41
    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 42
    .line 43
    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 44
    .line 45
    .line 46
    move-object v2, v0

    .line 47
    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->N:Ljava/util/concurrent/Executor;

    .line 51
    .line 52
    return-void
.end method

.method private synthetic A()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic B(Landroidx/activity/result/ActivityResult;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, -0x1

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->startCopyFile()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method private synthetic C()V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v2, v1, Lcom/join/mgps/mod/activity/ModLoadingActivity;->h:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v2}, Lcom/join/mgps/va/overmind/i;->o0(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct/range {p0 .. p0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->prepare()V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v2, v1, Lcom/join/mgps/mod/activity/ModLoadingActivity;->h:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Lcom/join/mgps/va/overmind/i;->R(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v2, 0x0

    .line 26
    if-eqz v0, :cond_4

    .line 27
    .line 28
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->H()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const-string v4, ""

    .line 35
    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    invoke-static {}, Lt6/p;->o()Lt6/p;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    new-instance v5, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    sget-object v6, Lcom/join/mgps/enums/ConstantIntEnum;->VA64:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 48
    .line 49
    invoke-virtual {v6}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {v0, v5}, Lt6/p;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    invoke-static {}, Lt6/p;->o()Lt6/p;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    new-instance v5, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    sget-object v6, Lcom/join/mgps/enums/ConstantIntEnum;->VA32:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 78
    .line 79
    invoke-virtual {v6}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-virtual {v0, v5}, Lt6/p;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    :goto_0
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    invoke-virtual {v5}, Lcom/join/mgps/va/overmind/i;->P()Z

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    if-eqz v5, :cond_2

    .line 106
    .line 107
    if-eqz v0, :cond_2

    .line 108
    .line 109
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    .line 110
    .line 111
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/EMUApkTable;->getPackage_name()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    .line 120
    .line 121
    new-instance v6, Landroid/content/ComponentName;

    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/EMUApkTable;->getPackage_name()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    const-string v7, "com.xinzhu.demoapp.stub.EmptyActivity"

    .line 128
    .line 129
    invoke-direct {v6, v0, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 133
    .line 134
    .line 135
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v0, v5, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    if-eqz v0, :cond_1

    .line 144
    .line 145
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-lez v0, :cond_1

    .line 150
    .line 151
    const/4 v2, 0x1

    .line 152
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 153
    .line 154
    .line 155
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    goto :goto_1

    .line 157
    :catch_0
    move-exception v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 159
    .line 160
    .line 161
    :cond_2
    :goto_1
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    iget-object v2, v1, Lcom/join/mgps/mod/activity/ModLoadingActivity;->h:Ljava/lang/String;

    .line 166
    .line 167
    iget-object v5, v1, Lcom/join/mgps/mod/activity/ModLoadingActivity;->g:Ljava/lang/String;

    .line 168
    .line 169
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 170
    .line 171
    .line 172
    move-result v6

    .line 173
    invoke-virtual {v0, v2, v5, v6}, Lcom/join/mgps/va/overmind/i;->A0(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 174
    .line 175
    .line 176
    iget-object v0, v1, Lcom/join/mgps/mod/activity/ModLoadingActivity;->t:Lcom/join/mgps/mod/bean/ModMetaParams;

    .line 177
    .line 178
    if-eqz v0, :cond_3

    .line 179
    .line 180
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    iget-object v0, v1, Lcom/join/mgps/mod/activity/ModLoadingActivity;->t:Lcom/join/mgps/mod/bean/ModMetaParams;

    .line 185
    .line 186
    invoke-virtual {v0}, Lcom/join/mgps/mod/bean/ModMetaParams;->getPackageName()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    iget-object v0, v1, Lcom/join/mgps/mod/activity/ModLoadingActivity;->t:Lcom/join/mgps/mod/bean/ModMetaParams;

    .line 191
    .line 192
    invoke-virtual {v0}, Lcom/join/mgps/mod/bean/ModMetaParams;->getGoldFingerSwitch()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v7

    .line 196
    iget-object v0, v1, Lcom/join/mgps/mod/activity/ModLoadingActivity;->t:Lcom/join/mgps/mod/bean/ModMetaParams;

    .line 197
    .line 198
    invoke-virtual {v0}, Lcom/join/mgps/mod/bean/ModMetaParams;->getArchiveCloudSwitch()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v8

    .line 202
    iget-object v0, v1, Lcom/join/mgps/mod/activity/ModLoadingActivity;->t:Lcom/join/mgps/mod/bean/ModMetaParams;

    .line 203
    .line 204
    invoke-virtual {v0}, Lcom/join/mgps/mod/bean/ModMetaParams;->getIntroductionSwitch()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v9

    .line 208
    iget-object v0, v1, Lcom/join/mgps/mod/activity/ModLoadingActivity;->t:Lcom/join/mgps/mod/bean/ModMetaParams;

    .line 209
    .line 210
    invoke-virtual {v0}, Lcom/join/mgps/mod/bean/ModMetaParams;->getChannelNum()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v10

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .line 218
    .line 219
    iget-object v2, v1, Lcom/join/mgps/mod/activity/ModLoadingActivity;->t:Lcom/join/mgps/mod/bean/ModMetaParams;

    .line 220
    .line 221
    invoke-virtual {v2}, Lcom/join/mgps/mod/bean/ModMetaParams;->getTarget_version()I

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v11

    .line 235
    iget-object v0, v1, Lcom/join/mgps/mod/activity/ModLoadingActivity;->t:Lcom/join/mgps/mod/bean/ModMetaParams;

    .line 236
    .line 237
    invoke-virtual {v0}, Lcom/join/mgps/mod/bean/ModMetaParams;->getAndroidId()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v12

    .line 241
    iget-object v0, v1, Lcom/join/mgps/mod/activity/ModLoadingActivity;->t:Lcom/join/mgps/mod/bean/ModMetaParams;

    .line 242
    .line 243
    invoke-virtual {v0}, Lcom/join/mgps/mod/bean/ModMetaParams;->getPlatform()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v13

    .line 247
    iget-object v0, v1, Lcom/join/mgps/mod/activity/ModLoadingActivity;->t:Lcom/join/mgps/mod/bean/ModMetaParams;

    .line 248
    .line 249
    invoke-virtual {v0}, Lcom/join/mgps/mod/bean/ModMetaParams;->getPackage_type()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v14

    .line 253
    iget-object v0, v1, Lcom/join/mgps/mod/activity/ModLoadingActivity;->t:Lcom/join/mgps/mod/bean/ModMetaParams;

    .line 254
    .line 255
    invoke-virtual {v0}, Lcom/join/mgps/mod/bean/ModMetaParams;->getTypeId()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v15

    .line 259
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 260
    .line 261
    .line 262
    move-result v16

    .line 263
    invoke-virtual/range {v5 .. v16}, Lcom/join/mgps/va/overmind/i;->C0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 264
    .line 265
    .line 266
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    invoke-virtual {v1, v0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->F(Z)V

    .line 271
    .line 272
    .line 273
    invoke-direct/range {p0 .. p0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->copyExtFile()V

    .line 274
    .line 275
    .line 276
    goto :goto_2

    .line 277
    :cond_4
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    iget-object v3, v1, Lcom/join/mgps/mod/activity/ModLoadingActivity;->h:Ljava/lang/String;

    .line 282
    .line 283
    iget v4, v1, Lcom/join/mgps/mod/activity/ModLoadingActivity;->p:I

    .line 284
    .line 285
    invoke-virtual {v0, v3, v4}, Lcom/join/mgps/va/overmind/i;->q0(Ljava/lang/String;I)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v1, v2}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->F(Z)V

    .line 289
    .line 290
    .line 291
    new-instance v0, Ljava/io/File;

    .line 292
    .line 293
    new-instance v2, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    .line 297
    .line 298
    sget-object v3, Lcom/join/mgps/va/overmind/k;->a:Lcom/join/mgps/va/overmind/k;

    .line 299
    .line 300
    iget-object v4, v1, Lcom/join/mgps/mod/activity/ModLoadingActivity;->h:Ljava/lang/String;

    .line 301
    .line 302
    invoke-virtual {v3, v4}, Lcom/join/mgps/va/overmind/k;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v3

    .line 306
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    const-string v3, "/obd.lock"

    .line 310
    .line 311
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 322
    .line 323
    .line 324
    move-result v0

    .line 325
    if-nez v0, :cond_5

    .line 326
    .line 327
    invoke-direct/range {p0 .. p0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->z()V

    .line 328
    .line 329
    .line 330
    :cond_5
    :goto_2
    return-void
.end method

.method private calculateSize()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    .line 3
    new-instance v1, Lcom/join/mgps/mod/activity/ModLoadingActivity$e;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/join/mgps/mod/activity/ModLoadingActivity$e;-><init>(Lcom/join/mgps/mod/activity/ModLoadingActivity;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private declared-synchronized copyExtFile()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    .line 3
    .line 4
    new-instance v1, Lcom/join/mgps/mod/activity/ModLoadingActivity$d;

    .line 5
    .line 6
    invoke-direct {v1, p0}, Lcom/join/mgps/mod/activity/ModLoadingActivity$d;-><init>(Lcom/join/mgps/mod/activity/ModLoadingActivity;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    monitor-exit p0

    .line 19
    throw v0
.end method

.method public static synthetic e(Lcom/join/mgps/mod/activity/ModLoadingActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->B(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic f(Lcom/join/mgps/mod/activity/ModLoadingActivity;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->lambda$checkReady$4(Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic g(Lcom/join/mgps/mod/activity/ModLoadingActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->C()V

    return-void
.end method

.method public static synthetic h(Lcom/join/mgps/mod/activity/ModLoadingActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->A()V

    return-void
.end method

.method private handleIntent()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "gameId"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->g:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "packageName"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->h:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "modPath"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->j:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, "modVersion"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->k:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v1, "modCode"

    .line 54
    .line 55
    const/4 v2, 0x0

    .line 56
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iput v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->m:I

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const-string v1, "modType"

    .line 67
    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    iput v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->o:I

    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const-string v1, "userId"

    .line 79
    .line 80
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    iput v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->p:I

    .line 85
    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const-string v1, "typeId"

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iput-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->q:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    const-string v1, "modMeta"

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    const-string v2, "_mod_info"

    .line 113
    .line 114
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    iput-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->J:Ljava/lang/String;

    .line 119
    .line 120
    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->h:Ljava/lang/String;

    .line 121
    .line 122
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-eqz v1, :cond_0

    .line 127
    .line 128
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-nez v1, :cond_1

    .line 137
    .line 138
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    const-class v2, Lcom/join/mgps/mod/bean/ModMetaParams;

    .line 143
    .line 144
    invoke-virtual {v1, v0, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    check-cast v0, Lcom/join/mgps/mod/bean/ModMetaParams;

    .line 149
    .line 150
    iput-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->t:Lcom/join/mgps/mod/bean/ModMetaParams;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 155
    .line 156
    .line 157
    :cond_1
    :goto_0
    sget-object v0, Lcom/MApplication;->z:Lcom/MApplication;

    .line 158
    .line 159
    invoke-virtual {v0}, Lcom/MApplication;->p()Lcom/join/mgps/pref/PrefDef_;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastLaunchModGameId()Lorg/androidannotations/api/sharedpreferences/p;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->g:Ljava/lang/String;

    .line 168
    .line 169
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    const v0, 0x7f0a0eeb

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    check-cast v0, Landroid/widget/LinearLayout;

    .line 180
    .line 181
    iput-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->E:Landroid/widget/LinearLayout;

    .line 182
    .line 183
    const v0, 0x7f0a123a

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    check-cast v0, Landroid/widget/ProgressBar;

    .line 191
    .line 192
    iput-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->F:Landroid/widget/ProgressBar;

    .line 193
    .line 194
    const v0, 0x7f0a19ff

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    check-cast v0, Landroid/widget/TextView;

    .line 202
    .line 203
    iput-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->G:Landroid/widget/TextView;

    .line 204
    .line 205
    const v0, 0x7f0a1a00

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    check-cast v0, Landroid/widget/TextView;

    .line 213
    .line 214
    iput-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->H:Landroid/widget/TextView;

    .line 215
    .line 216
    const v0, 0x7f0a19b6

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    check-cast v0, Landroid/widget/TextView;

    .line 224
    .line 225
    iput-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->M:Landroid/widget/TextView;

    .line 226
    .line 227
    const v0, 0x7f0a0a54

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    check-cast v0, Landroid/widget/ImageView;

    .line 235
    .line 236
    iput-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->L:Landroid/widget/ImageView;

    .line 237
    .line 238
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 243
    .line 244
    iput-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->O:Landroid/graphics/drawable/AnimationDrawable;

    .line 245
    .line 246
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 247
    .line 248
    .line 249
    new-instance v0, Lcom/join/mgps/mod/activity/ModLoadingActivity$ModReceiver;

    .line 250
    .line 251
    invoke-direct {v0, p0}, Lcom/join/mgps/mod/activity/ModLoadingActivity$ModReceiver;-><init>(Lcom/join/mgps/mod/activity/ModLoadingActivity;)V

    .line 252
    .line 253
    .line 254
    iput-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->u:Lcom/join/mgps/mod/activity/ModLoadingActivity$ModReceiver;

    .line 255
    .line 256
    new-instance v0, Landroid/content/IntentFilter;

    .line 257
    .line 258
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 259
    .line 260
    .line 261
    const-string v1, "com.join.android.app.mgsim.wufun.soCopyStart"

    .line 262
    .line 263
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    const-string v1, "com.join.android.app.mgsim.wufun.soCopyFinish"

    .line 267
    .line 268
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    const-string v1, "com.join.android.app.mgsim.wufun.soCopyFail"

    .line 272
    .line 273
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    const-string v1, "com.join.android.app.mgsim.wufun.loadMod"

    .line 277
    .line 278
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->u:Lcom/join/mgps/mod/activity/ModLoadingActivity$ModReceiver;

    .line 282
    .line 283
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 284
    .line 285
    .line 286
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->g:Ljava/lang/String;

    .line 287
    .line 288
    invoke-virtual {p0, v0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->checkModAndStart(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {p0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->pullUpMessengerSrv()V

    .line 292
    .line 293
    .line 294
    const/16 v0, 0xc

    .line 295
    .line 296
    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->g:Ljava/lang/String;

    .line 297
    .line 298
    invoke-static {p0, v0, v1}, Lcom/join/mgps/Util/UtilsMy;->Z1(Landroid/content/Context;ILjava/lang/String;)V

    .line 299
    .line 300
    .line 301
    return-void
.end method

.method public static synthetic i(Lcom/join/mgps/mod/activity/ModLoadingActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->lambda$showToast$1(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic j(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->M:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic k(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->E:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic l(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->I:Z

    .line 2
    .line 3
    return p0
.end method

.method private synthetic lambda$checkReady$4(Landroid/os/Handler;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->C:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->C:Z

    .line 14
    .line 15
    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->E:Landroid/widget/LinearLayout;

    .line 16
    .line 17
    const/16 v2, 0x8

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->M:Landroid/widget/TextView;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget v2, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->p:I

    .line 33
    .line 34
    iget-object v3, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->h:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v1, p0, v2, v3}, Lcom/join/mgps/va/overmind/i;->a0(Landroid/content/Context;ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sget-object v1, Lcom/MApplication;->z:Lcom/MApplication;

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Lcom/MApplication;->O(Z)V

    .line 42
    .line 43
    .line 44
    new-instance v0, Lcom/join/mgps/mod/activity/b;

    .line 45
    .line 46
    invoke-direct {v0, p0}, Lcom/join/mgps/mod/activity/b;-><init>(Lcom/join/mgps/mod/activity/ModLoadingActivity;)V

    .line 47
    .line 48
    .line 49
    const-wide/16 v1, 0x1388

    .line 50
    .line 51
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$showToast$1(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method static synthetic m(Lcom/join/mgps/mod/activity/ModLoadingActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->I:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic n(Lcom/join/mgps/mod/activity/ModLoadingActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->y()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic o()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->V:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic p(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->F:Landroid/widget/ProgressBar;

    .line 2
    .line 3
    return-object p0
.end method

.method private prepare()V
    .locals 9

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lma/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->h:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lma/g;->k(Ljava/lang/String;)Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lma/g;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->h:Ljava/lang/String;

    .line 19
    .line 20
    iget v3, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->p:I

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-virtual {v1, v2, v4, v3}, Lma/g;->f(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 31
    .line 32
    sget-object v3, Lcom/join/mgps/va/overmind/i;->g:Lcom/join/mgps/va/overmind/i$a;

    .line 33
    .line 34
    invoke-virtual {v3}, Lcom/join/mgps/va/overmind/i$a;->g()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    const/4 v5, 0x1

    .line 39
    xor-int/2addr v3, v5

    .line 40
    iget-object v6, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->j:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    if-eqz v6, :cond_2

    .line 47
    .line 48
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    iget-object v6, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->j:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v6}, Lcom/join/mgps/va/overmind/c;->d(Ljava/lang/String;)Ljava/util/Set;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    :goto_0
    invoke-static {v2}, Lcom/join/mgps/va/overmind/c;->d(Ljava/lang/String;)Ljava/util/Set;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    new-instance v7, Ljava/util/HashSet;

    .line 64
    .line 65
    invoke-direct {v7, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    if-nez v8, :cond_3

    .line 73
    .line 74
    invoke-interface {v7, v6}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 75
    .line 76
    .line 77
    :cond_3
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    if-eqz v6, :cond_4

    .line 82
    .line 83
    invoke-interface {v7, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 84
    .line 85
    .line 86
    :cond_4
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    if-nez v6, :cond_12

    .line 91
    .line 92
    if-eqz v3, :cond_5

    .line 93
    .line 94
    invoke-static {v2}, Lcom/join/mgps/va/overmind/c;->a(Ljava/util/Set;)Z

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    if-nez v6, :cond_6

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_5
    invoke-static {v2}, Lcom/join/mgps/va/overmind/c;->b(Ljava/util/Set;)Z

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    if-nez v6, :cond_6

    .line 106
    .line 107
    :goto_1
    const/4 v6, 0x1

    .line 108
    goto :goto_2

    .line 109
    :cond_6
    const/4 v6, 0x0

    .line 110
    :goto_2
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    .line 111
    .line 112
    .line 113
    move-result v8

    .line 114
    if-nez v8, :cond_9

    .line 115
    .line 116
    if-eqz v3, :cond_7

    .line 117
    .line 118
    invoke-static {v7}, Lcom/join/mgps/va/overmind/c;->a(Ljava/util/Set;)Z

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    if-nez v6, :cond_8

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_7
    invoke-static {v7}, Lcom/join/mgps/va/overmind/c;->b(Ljava/util/Set;)Z

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    if-nez v6, :cond_8

    .line 130
    .line 131
    :goto_3
    const/4 v4, 0x1

    .line 132
    :cond_8
    move v6, v4

    .line 133
    :cond_9
    sget-object v4, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    .line 134
    .line 135
    sget-object v5, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    .line 136
    .line 137
    if-eqz v6, :cond_b

    .line 138
    .line 139
    if-eqz v3, :cond_a

    .line 140
    .line 141
    invoke-static {v5, v7}, Lcom/join/mgps/va/overmind/c;->c([Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    goto :goto_4

    .line 146
    :cond_a
    invoke-static {v4, v7}, Lcom/join/mgps/va/overmind/c;->c([Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    goto :goto_4

    .line 151
    :cond_b
    if-eqz v3, :cond_c

    .line 152
    .line 153
    invoke-static {v2}, Lcom/join/mgps/va/overmind/c;->a(Ljava/util/Set;)Z

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    if-eqz v3, :cond_c

    .line 158
    .line 159
    invoke-static {v4, v7}, Lcom/join/mgps/va/overmind/c;->c([Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    goto :goto_4

    .line 164
    :cond_c
    invoke-static {v2}, Lcom/join/mgps/va/overmind/c;->b(Ljava/util/Set;)Z

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    if-eqz v2, :cond_d

    .line 169
    .line 170
    invoke-static {v5, v7}, Lcom/join/mgps/va/overmind/c;->c([Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    goto :goto_4

    .line 175
    :cond_d
    const/4 v2, 0x0

    .line 176
    :goto_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    if-eqz v3, :cond_e

    .line 181
    .line 182
    return-void

    .line 183
    :cond_e
    invoke-virtual {v0}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->w()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    if-nez v0, :cond_f

    .line 192
    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .line 197
    .line 198
    const-string v1, "package:"

    .line 199
    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->h:Ljava/lang/String;

    .line 204
    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .line 216
    .line 217
    const-string v3, "abiOverride:"

    .line 218
    .line 219
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->h:Ljava/lang/String;

    .line 241
    .line 242
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/va/overmind/i;->v0(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    goto :goto_6

    .line 246
    :cond_f
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    iget-object v3, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->h:Ljava/lang/String;

    .line 251
    .line 252
    invoke-virtual {v0, v3}, Lcom/join/mgps/va/overmind/i;->R(Ljava/lang/String;)Z

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    if-eqz v0, :cond_10

    .line 257
    .line 258
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->h:Ljava/lang/String;

    .line 259
    .line 260
    invoke-static {v0}, Lcom/xinzhu/overmind/a;->g(Ljava/lang/String;)Ljava/io/File;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    goto :goto_5

    .line 265
    :cond_10
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->h:Ljava/lang/String;

    .line 266
    .line 267
    invoke-static {v0}, Lcom/xinzhu/overmind/a;->f(Ljava/lang/String;)Ljava/io/File;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    :goto_5
    invoke-static {}, Lcom/xinzhu/overmind/a;->f0()V

    .line 272
    .line 273
    .line 274
    new-instance v3, Ljava/io/File;

    .line 275
    .line 276
    invoke-static {v2}, Lcom/xinzhu/overmind/a;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v4

    .line 280
    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 284
    .line 285
    if-eqz v0, :cond_11

    .line 286
    .line 287
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    if-nez v0, :cond_12

    .line 296
    .line 297
    :cond_11
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->h:Ljava/lang/String;

    .line 302
    .line 303
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/va/overmind/i;->v0(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    :cond_12
    :goto_6
    return-void
.end method

.method static synthetic q(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->G:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic s(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->H:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic t(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->D:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic u(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->J:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic v(Lcom/join/mgps/mod/activity/ModLoadingActivity;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->K:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic w(Lcom/join/mgps/mod/activity/ModLoadingActivity;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->K:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic x(Lcom/join/mgps/mod/activity/ModLoadingActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->calculateSize()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private y()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    .line 3
    new-instance v1, Lcom/join/mgps/mod/activity/ModLoadingActivity$g;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/join/mgps/mod/activity/ModLoadingActivity$g;-><init>(Lcom/join/mgps/mod/activity/ModLoadingActivity;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private declared-synchronized z()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    .line 3
    .line 4
    new-instance v1, Lcom/join/mgps/mod/activity/ModLoadingActivity$f;

    .line 5
    .line 6
    invoke-direct {v1, p0}, Lcom/join/mgps/mod/activity/ModLoadingActivity$f;-><init>(Lcom/join/mgps/mod/activity/ModLoadingActivity;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    monitor-exit p0

    .line 19
    throw v0
.end method


# virtual methods
.method D()Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lcom/xinzhu/overmind/shared/j;->a:Lcom/xinzhu/overmind/shared/j;

    .line 3
    .line 4
    invoke-virtual {v1}, Lcom/xinzhu/overmind/shared/j;->m()Z

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v1}, Lcom/xinzhu/overmind/shared/j;->p()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->h:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/xinzhu/overmind/a;->j(Ljava/lang/String;)Ljava/io/File;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 30
    .line 31
    .line 32
    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    const-wide/32 v3, 0x12c00000

    .line 34
    .line 35
    .line 36
    cmp-long v5, v1, v3

    .line 37
    .line 38
    if-lez v5, :cond_2

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    :cond_1
    return v0

    .line 42
    :catch_0
    move-exception v1

    .line 43
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 44
    .line 45
    .line 46
    :cond_2
    return v0
.end method

.method E()V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/mod/activity/a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/mod/activity/a;-><init>(Lcom/join/mgps/mod/activity/ModLoadingActivity;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->N:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method F(Z)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runInPlugin"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/va/overmind/k;->a:Lcom/join/mgps/va/overmind/k;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->h:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Lcom/join/mgps/va/overmind/k;->N(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    iget-object v5, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->h:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v6, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->j:Ljava/lang/String;

    .line 42
    .line 43
    iget-object v7, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->k:Ljava/lang/String;

    .line 44
    .line 45
    iget v8, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->m:I

    .line 46
    .line 47
    iget v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->o:I

    .line 48
    .line 49
    if-nez v1, :cond_1

    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    const/4 v9, 0x1

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const/4 v1, 0x0

    .line 55
    const/4 v9, 0x0

    .line 56
    :goto_0
    move-object v3, p0

    .line 57
    move v10, p1

    .line 58
    invoke-virtual/range {v2 .. v10}, Lcom/join/mgps/va/overmind/i;->o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 59
    .line 60
    .line 61
    if-nez p1, :cond_2

    .line 62
    .line 63
    new-instance p1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v0, ""

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    iget-object v2, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->j:Ljava/lang/String;

    .line 81
    .line 82
    iget-object v3, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->k:Ljava/lang/String;

    .line 83
    .line 84
    iget v4, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->m:I

    .line 85
    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 87
    .line 88
    .line 89
    move-result-wide v5

    .line 90
    invoke-static/range {v1 .. v6}, Lcom/join/mgps/mod/utils/PluginConfig;->setModConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 91
    .line 92
    .line 93
    :cond_2
    return-void
.end method

.method checkModAndStart(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

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
    const-string p1, "\u6e38\u620f\u4fe1\u606f[ID]\u7f3a\u5931"

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->showToast(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->D:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 25
    .line 26
    iget-object p1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->J:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    iget-object p1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->D:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_path()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-nez p1, :cond_2

    .line 53
    .line 54
    iget-object p1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->D:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_path()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {p1}, Lcom/join/mgps/Util/o0;->D(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->D:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->modNeedUpdate(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_3

    .line 73
    .line 74
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->D:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 75
    .line 76
    invoke-virtual {p0, p1}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->startUpdate(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_3
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->h:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Lcom/join/mgps/va/overmind/i;->R(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-nez p1, :cond_4

    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->startCopyFile()V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 97
    .line 98
    const/16 v0, 0x22

    .line 99
    .line 100
    if-lt p1, v0, :cond_5

    .line 101
    .line 102
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    .line 103
    .line 104
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getPluginPkg()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    const-string v1, "com.xinzhu.demoapp.stub.EmptyActivity"

    .line 112
    .line 113
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->R:Landroidx/activity/result/ActivityResultLauncher;

    .line 117
    .line 118
    invoke-virtual {v0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :catch_0
    invoke-virtual {p0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->startCopyFile()V

    .line 123
    .line 124
    .line 125
    :goto_0
    return-void

    .line 126
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->startCopyFile()V

    .line 127
    .line 128
    .line 129
    return-void
.end method

.method declared-synchronized checkReady()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->A:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Ljava/lang/String;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->B:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v0, 0x1

    .line 31
    :goto_0
    if-eqz v0, :cond_2

    .line 32
    .line 33
    new-instance v0, Lcom/join/mgps/mod/activity/ModLoadingActivity$c;

    .line 34
    .line 35
    invoke-direct {v0, p0}, Lcom/join/mgps/mod/activity/ModLoadingActivity$c;-><init>(Lcom/join/mgps/mod/activity/ModLoadingActivity;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Landroid/os/Handler;

    .line 42
    .line 43
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 44
    .line 45
    .line 46
    new-instance v1, Lcom/join/mgps/mod/activity/c;

    .line 47
    .line 48
    invoke-direct {v1, p0, v0}, Lcom/join/mgps/mod/activity/c;-><init>(Lcom/join/mgps/mod/activity/ModLoadingActivity;Landroid/os/Handler;)V

    .line 49
    .line 50
    .line 51
    const-wide/16 v2, 0x7d0

    .line 52
    .line 53
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    :cond_2
    monitor-exit p0

    .line 57
    return-void

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    monitor-exit p0

    .line 60
    throw v0
.end method

.method hideNavigationBar()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->setSystemUiVisibility()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public initPreDownloadFactory()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/github/snowdream/android/app/downloader/b;->e()Lcom/github/snowdream/android/app/downloader/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->T:Lcom/github/snowdream/android/app/downloader/b;

    .line 6
    .line 7
    new-instance v0, Lcom/join/mgps/mod/activity/ModLoadingActivity$b;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/join/mgps/mod/activity/ModLoadingActivity$b;-><init>(Lcom/join/mgps/mod/activity/ModLoadingActivity;)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->U:Lcom/github/snowdream/android/app/downloader/b$b;

    .line 13
    .line 14
    sget-object v1, Lcom/join/mgps/mod/activity/ModLoadingActivity;->T:Lcom/github/snowdream/android/app/downloader/b;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/b;->m(Lcom/github/snowdream/android/app/downloader/b$b;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method modNeedUpdate(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/join/android/app/common/utils/APKUtils;->P(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    const/16 v3, 0x9

    .line 11
    .line 12
    if-eqz v1, :cond_3

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSingleGameModInfoBean()Lcom/join/mgps/dto/SingleGameModInfoBean;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/join/mgps/dto/SingleGameModInfoBean;->getDownUrl()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/SingleGameModInfoBean;->getStatus()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-ne p1, v3, :cond_2

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    :cond_2
    :goto_0
    return v0

    .line 39
    :cond_3
    invoke-static {p1}, Lcom/join/android/app/common/utils/APKUtils;->K(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_5

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getModInfoBean()Lcom/join/mgps/dto/ModInfoBean;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-eqz p1, :cond_5

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/join/mgps/dto/ModInfoBean;->getDown_url()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_4
    invoke-virtual {p1}, Lcom/join/mgps/dto/ModInfoBean;->getStatus()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-ne p1, v3, :cond_5

    .line 67
    .line 68
    const/4 v0, 0x1

    .line 69
    :cond_5
    :goto_1
    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0d0083

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 19
    .line 20
    .line 21
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 22
    .line 23
    invoke-direct {p1}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v0, Lcom/join/mgps/mod/activity/d;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/join/mgps/mod/activity/d;-><init>(Lcom/join/mgps/mod/activity/ModLoadingActivity;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->R:Landroidx/activity/result/ActivityResultLauncher;

    .line 36
    .line 37
    invoke-direct {p0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->handleIntent()V

    .line 38
    .line 39
    .line 40
    new-instance p1, Lcom/join/mgps/mod/activity/ModLoadingActivity$OMProxyReceiver;

    .line 41
    .line 42
    invoke-direct {p1, p0}, Lcom/join/mgps/mod/activity/ModLoadingActivity$OMProxyReceiver;-><init>(Lcom/join/mgps/mod/activity/ModLoadingActivity;)V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->P:Landroid/content/BroadcastReceiver;

    .line 46
    .line 47
    new-instance v0, Landroid/content/IntentFilter;

    .line 48
    .line 49
    sget-object v1, Lcom/xinzhu/overmind/shared/OMProxyActivity;->k:Lcom/xinzhu/overmind/shared/OMProxyActivity$a;

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/xinzhu/overmind/shared/OMProxyActivity$a;->c()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_0
    iput-boolean v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->C:Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->u:Lcom/join/mgps/mod/activity/ModLoadingActivity$ModReceiver;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->O:Landroid/graphics/drawable/AnimationDrawable;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->P:Landroid/content/BroadcastReceiver;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    filled-new-array {v0}, [Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    :goto_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "action"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "EmptyActivity_RESULT_OK"

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->handleIntent()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->hideNavigationBar()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onSystemUiVisibilityChange(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->hideNavigationBar()V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method pullUpMessengerSrv()V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/mod/activity/ModLoadingActivity$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/mod/activity/ModLoadingActivity$a;-><init>(Lcom/join/mgps/mod/activity/ModLoadingActivity;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->N:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method setSystemUiVisibility()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/16 v1, 0x1706

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/mod/activity/e;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/mod/activity/e;-><init>(Lcom/join/mgps/mod/activity/ModLoadingActivity;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method startCopyFile()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->h:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/va/overmind/i;->R(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->D()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    new-instance v0, Landroid/content/Intent;

    .line 20
    .line 21
    sget-object v1, Lcom/xinzhu/overmind/shared/OMProxyActivity;->k:Lcom/xinzhu/overmind/shared/OMProxyActivity$a;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/xinzhu/overmind/shared/OMProxyActivity$a;->a()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-instance v1, Landroid/content/ComponentName;

    .line 31
    .line 32
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getPluginPkg()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const-class v3, Lcom/xinzhu/overmind/shared/OMProxyActivity;

    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getPluginPkg()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    .line 62
    .line 63
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->E()V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method startUpdate(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->initPreDownloadFactory()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    invoke-static {p1}, Lcom/join/android/app/common/utils/APKUtils;->P(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSingleGameModInfoBean()Lcom/join/mgps/dto/SingleGameModInfoBean;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/join/mgps/dto/SingleGameModInfoBean;->getDownUrl()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getModInfoBean()Lcom/join/mgps/dto/ModInfoBean;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/join/mgps/dto/ModInfoBean;->getDown_url()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :cond_1
    :goto_0
    move-object v3, v0

    .line 34
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p1, ", mod url null error, vm="

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->startCopyFile()V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-static {v3}, Lcom/join/mgps/Util/i1;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, ".mod"

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    sget-object v1, Lcom/join/mgps/Util/z;->g:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v1, "mod/"

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string p1, "/"

    .line 108
    .line 109
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    new-instance p1, Lcom/github/snowdream/android/app/downloader/c;

    .line 117
    .line 118
    const-wide/16 v6, 0x0

    .line 119
    .line 120
    move-object v2, p1

    .line 121
    invoke-direct/range {v2 .. v7}, Lcom/github/snowdream/android/app/downloader/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 122
    .line 123
    .line 124
    sget-object v0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->T:Lcom/github/snowdream/android/app/downloader/b;

    .line 125
    .line 126
    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/b;->b(Lcom/github/snowdream/android/app/downloader/c;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    sget-object v0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->V:Ljava/util/Map;

    .line 130
    .line 131
    if-nez v0, :cond_3

    .line 132
    .line 133
    return-void

    .line 134
    :cond_3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/c;->i()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    if-eqz v0, :cond_6

    .line 139
    .line 140
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/c;->i()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    const-string v1, ""

    .line 145
    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-eqz v0, :cond_4

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_4
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/c;->i()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    sget-object v1, Lcom/join/mgps/mod/activity/ModLoadingActivity;->V:Ljava/util/Map;

    .line 158
    .line 159
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/c;->i()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    if-eqz v1, :cond_5

    .line 168
    .line 169
    return-void

    .line 170
    :cond_5
    sget-object v1, Lcom/join/mgps/mod/activity/ModLoadingActivity;->V:Ljava/util/Map;

    .line 171
    .line 172
    monitor-enter v1

    .line 173
    :try_start_0
    sget-object v2, Lcom/join/mgps/mod/activity/ModLoadingActivity;->V:Ljava/util/Map;

    .line 174
    .line 175
    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    monitor-exit v1

    .line 179
    return-void

    .line 180
    :catchall_0
    move-exception p1

    .line 181
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    throw p1

    .line 183
    :cond_6
    :goto_1
    return-void
.end method
