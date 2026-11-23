.class public Lcom/join/mgps/activity/t8;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/adapter/f6$g;


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d0724
.end annotation


# static fields
.field public static final A:I = 0x1


# instance fields
.field c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field private h:Z

.field private i:Landroid/content/Context;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:I

.field private n:Z

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommonMultiItemBean;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/join/mgps/adapter/f6;

.field private q:Ljava/lang/String;

.field private r:I

.field private s:I

.field private t:Z

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private v:I

.field private w:Lcom/join/mgps/dto/HomeCloudActiveBean;

.field private x:Landroid/os/Handler;

.field private y:Lcom/join/mgps/callbacks/k;

.field z:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/t8;->k:Z

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/join/mgps/activity/t8;->l:Z

    .line 9
    .line 10
    iput v1, p0, Lcom/join/mgps/activity/t8;->m:I

    .line 11
    .line 12
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/join/mgps/activity/t8;->o:Ljava/util/List;

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/join/mgps/activity/t8;->t:Z

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iput-object v1, p0, Lcom/join/mgps/activity/t8;->u:Ljava/util/List;

    .line 23
    .line 24
    iput v0, p0, Lcom/join/mgps/activity/t8;->v:I

    .line 25
    .line 26
    new-instance v0, Landroid/os/Handler;

    .line 27
    .line 28
    new-instance v1, Lcom/join/mgps/activity/t8$a;

    .line 29
    .line 30
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/t8$a;-><init>(Lcom/join/mgps/activity/t8;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/join/mgps/activity/t8;->x:Landroid/os/Handler;

    .line 37
    .line 38
    new-instance v0, Lcom/join/mgps/activity/t8$g;

    .line 39
    .line 40
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/t8$g;-><init>(Lcom/join/mgps/activity/t8;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcom/join/mgps/activity/t8;->z:Ljava/lang/Runnable;

    .line 44
    .line 45
    return-void
.end method

.method private B0(Lcom/join/mgps/dto/CommonGameInfoBean;)Lcom/join/mgps/dto/CommonGameInfoBean;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lq5/f;->d()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_3

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getMod_id()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_2

    .line 51
    .line 52
    invoke-virtual {p1, v2}, Lcom/join/kotlin/base/impl/BaseDownloadable;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_1

    .line 69
    .line 70
    invoke-virtual {p1, v2}, Lcom/join/kotlin/base/impl/BaseDownloadable;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    :goto_1
    return-object p1
.end method

.method private C0(Lcom/join/mgps/dto/HomeRankingListBean;)Lcom/join/mgps/dto/HomeRankingListBean;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rankingListBean"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_8

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/HomeRankingListBean;->getList()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_8

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/HomeRankingListBean;->getList()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-gtz v0, :cond_0

    .line 18
    .line 19
    goto/16 :goto_4

    .line 20
    .line 21
    :cond_0
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lq5/f;->d()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_8

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    const/4 v3, 0x0

    .line 47
    :goto_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/HomeRankingListBean;->getList()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-ge v3, v4, :cond_1

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/join/mgps/dto/HomeRankingListBean;->getList()Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    check-cast v4, Ljava/util/List;

    .line 66
    .line 67
    if-eqz v4, :cond_7

    .line 68
    .line 69
    const/4 v5, 0x0

    .line 70
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    if-ge v5, v6, :cond_7

    .line 75
    .line 76
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    check-cast v6, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 81
    .line 82
    invoke-virtual {v6}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    sget-object v8, Lcom/papa/sim/statistic/EventP$FirstModel;->home:Lcom/papa/sim/statistic/EventP$FirstModel;

    .line 87
    .line 88
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    invoke-virtual {v7, v8}, Lcom/join/mgps/dto/ExtBean;->setFirstModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    sget-object v8, Lcom/papa/sim/statistic/EventP$SecondModel;->choiceness:Lcom/papa/sim/statistic/EventP$SecondModel;

    .line 97
    .line 98
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    invoke-virtual {v7, v8}, Lcom/join/mgps/dto/ExtBean;->setSecondModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 103
    .line 104
    .line 105
    const/16 v7, 0x2715

    .line 106
    .line 107
    const-string v8, "10005"

    .line 108
    .line 109
    if-nez v3, :cond_2

    .line 110
    .line 111
    const/16 v9, 0x5015

    .line 112
    .line 113
    invoke-virtual {v6, v9}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v6, v9}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 117
    .line 118
    .line 119
    new-instance v9, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    const-string v10, "22-15-"

    .line 125
    .line 126
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    add-int/lit8 v10, v5, 0x1

    .line 130
    .line 131
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v9

    .line 138
    invoke-virtual {v6, v9}, Lcom/join/mgps/dto/CommonGameInfoBean;->setExp_position(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v6}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 142
    .line 143
    .line 144
    move-result-object v9

    .line 145
    invoke-virtual {v9, v8}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 146
    .line 147
    .line 148
    move-result-object v8

    .line 149
    invoke-virtual {v8, v7}, Lcom/join/mgps/dto/ExtBean;->set_from_type(I)Lcom/join/mgps/dto/ExtBean;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    invoke-virtual {v6}, Lcom/join/mgps/dto/CommonGameInfoBean;->getExp_position()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v8

    .line 157
    invoke-virtual {v7, v8}, Lcom/join/mgps/dto/ExtBean;->setPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 158
    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_2
    const/4 v9, 0x1

    .line 162
    if-ne v3, v9, :cond_3

    .line 163
    .line 164
    const/16 v9, 0x5016

    .line 165
    .line 166
    invoke-virtual {v6, v9}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v6, v9}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 170
    .line 171
    .line 172
    new-instance v9, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    const-string v10, "22-16-"

    .line 178
    .line 179
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    add-int/lit8 v10, v5, 0x1

    .line 183
    .line 184
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v9

    .line 191
    invoke-virtual {v6, v9}, Lcom/join/mgps/dto/CommonGameInfoBean;->setExp_position(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v6}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 195
    .line 196
    .line 197
    move-result-object v9

    .line 198
    invoke-virtual {v9, v8}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 199
    .line 200
    .line 201
    move-result-object v8

    .line 202
    invoke-virtual {v8, v7}, Lcom/join/mgps/dto/ExtBean;->set_from_type(I)Lcom/join/mgps/dto/ExtBean;

    .line 203
    .line 204
    .line 205
    move-result-object v7

    .line 206
    invoke-virtual {v6}, Lcom/join/mgps/dto/CommonGameInfoBean;->getExp_position()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v8

    .line 210
    invoke-virtual {v7, v8}, Lcom/join/mgps/dto/ExtBean;->setPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 211
    .line 212
    .line 213
    goto :goto_2

    .line 214
    :cond_3
    const/4 v9, 0x2

    .line 215
    if-ne v3, v9, :cond_4

    .line 216
    .line 217
    const/16 v9, 0x5017

    .line 218
    .line 219
    invoke-virtual {v6, v9}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v6, v9}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 223
    .line 224
    .line 225
    new-instance v9, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .line 229
    .line 230
    const-string v10, "22-17-"

    .line 231
    .line 232
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    add-int/lit8 v10, v5, 0x1

    .line 236
    .line 237
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v9

    .line 244
    invoke-virtual {v6, v9}, Lcom/join/mgps/dto/CommonGameInfoBean;->setExp_position(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v6}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 248
    .line 249
    .line 250
    move-result-object v9

    .line 251
    invoke-virtual {v9, v8}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 252
    .line 253
    .line 254
    move-result-object v8

    .line 255
    invoke-virtual {v8, v7}, Lcom/join/mgps/dto/ExtBean;->set_from_type(I)Lcom/join/mgps/dto/ExtBean;

    .line 256
    .line 257
    .line 258
    move-result-object v7

    .line 259
    invoke-virtual {v6}, Lcom/join/mgps/dto/CommonGameInfoBean;->getExp_position()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v8

    .line 263
    invoke-virtual {v7, v8}, Lcom/join/mgps/dto/ExtBean;->setPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 264
    .line 265
    .line 266
    :cond_4
    :goto_2
    invoke-virtual {v6}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 267
    .line 268
    .line 269
    move-result-object v7

    .line 270
    if-eqz v7, :cond_6

    .line 271
    .line 272
    invoke-virtual {v6}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 273
    .line 274
    .line 275
    move-result-object v7

    .line 276
    invoke-virtual {v7}, Lcom/join/mgps/dto/GInfoBean;->getMod_id()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v8

    .line 280
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v9

    .line 284
    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 285
    .line 286
    .line 287
    move-result v8

    .line 288
    if-eqz v8, :cond_5

    .line 289
    .line 290
    invoke-virtual {v6, v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 291
    .line 292
    .line 293
    goto :goto_3

    .line 294
    :cond_5
    invoke-virtual {v7}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v7

    .line 298
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v8

    .line 302
    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 303
    .line 304
    .line 305
    move-result v7

    .line 306
    if-eqz v7, :cond_6

    .line 307
    .line 308
    invoke-virtual {v6, v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 309
    .line 310
    .line 311
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 312
    .line 313
    goto/16 :goto_1

    .line 314
    .line 315
    :cond_7
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 316
    .line 317
    goto/16 :goto_0

    .line 318
    .line 319
    :cond_8
    :goto_4
    return-object p1
.end method

.method public static synthetic M(Lcom/join/mgps/activity/t8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/t8;->j0()V

    return-void
.end method

.method static synthetic O(Lcom/join/mgps/activity/t8;)Lcom/join/mgps/dto/HomeCloudActiveBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/t8;->w:Lcom/join/mgps/dto/HomeCloudActiveBean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic P(Lcom/join/mgps/activity/t8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/t8;->s0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic Q(Lcom/join/mgps/activity/t8;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/t8;->s:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic R(Lcom/join/mgps/activity/t8;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/t8;->x:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic S(Lcom/join/mgps/activity/t8;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/t8;->n:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic T(Lcom/join/mgps/activity/t8;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/t8;->o:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic U(Lcom/join/mgps/activity/t8;Lcom/join/mgps/dto/CommonGameInfoBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/t8;->u0(Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic V(Lcom/join/mgps/activity/t8;Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/t8;->v0(Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic W(Lcom/join/mgps/activity/t8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/t8;->x0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic X(Lcom/join/mgps/activity/t8;)Lcom/join/mgps/adapter/f6;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/t8;->p:Lcom/join/mgps/adapter/f6;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Y(Lcom/join/mgps/activity/t8;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/t8;->m:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic Z(Lcom/join/mgps/activity/t8;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/t8;->m:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic a0(Lcom/join/mgps/activity/t8;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/t8;->t:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic b0(Lcom/join/mgps/activity/t8;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/t8;->l:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic c0(Lcom/join/mgps/activity/t8;)Lcom/join/mgps/callbacks/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/t8;->y:Lcom/join/mgps/callbacks/k;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d0(Lcom/join/mgps/activity/t8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/t8;->g0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic e0(Lcom/join/mgps/activity/t8;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/t8;->r:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic f0(Lcom/join/mgps/activity/t8;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/t8;->r:I

    .line 2
    .line 3
    return p1
.end method

.method private g0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/t8;->x:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/t8;->z:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private h0(Lcom/join/mgps/dto/CommonGameInfoBean;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "0"

    .line 35
    .line 36
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    return-object p1

    .line 51
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Lcom/join/mgps/dto/GInfoBean;->getMod_id()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    return-object p1
.end method

.method private synthetic j0()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/t8;->g0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private n0()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/t8;->updateBtnPartly()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private o0()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/t8;->updateBtnPartly()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private p0()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/t8;->updateBtnPartly()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private q0()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/t8;->updateBtnPartly()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private s0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/t8;->x:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-wide/16 v2, 0x3e8

    .line 5
    .line 6
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private t0(Lcom/join/mgps/dto/PapaHomeBeanV9;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mainBean"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/join/mgps/activity/q8;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/join/mgps/activity/q8;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/q8;->h0(Lcom/join/mgps/dto/PapaHomeBeanV9;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private u0(Lcom/join/mgps/dto/CommonGameInfoBean;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/t8;->h0(Lcom/join/mgps/dto/CommonGameInfoBean;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "home"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setPage(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v3, ""

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getExp_position()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 44
    .line 45
    .line 46
    new-instance v2, Lcom/papa/sim/statistic/Data;

    .line 47
    .line 48
    invoke-direct {v2}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    if-eqz v3, :cond_0

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v3}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Data;->setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 66
    .line 67
    .line 68
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-nez v3, :cond_1

    .line 73
    .line 74
    :try_start_0
    invoke-virtual {v2, v0}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catch_0
    nop

    .line 79
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/join/mgps/activity/t8;->i:Landroid/content/Context;

    .line 80
    .line 81
    invoke-static {v3}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    sget-object v4, Lcom/papa/sim/statistic/Event;->expGameAdPage:Lcom/papa/sim/statistic/Event;

    .line 86
    .line 87
    invoke-virtual {v3, v4, v1, v2}, Lcom/papa/sim/statistic/t;->W1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V

    .line 88
    .line 89
    .line 90
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->p2(Lcom/join/mgps/dto/CommonGameInfoBean;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_2

    .line 95
    .line 96
    :try_start_1
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 97
    .line 98
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 99
    .line 100
    .line 101
    const-string v2, "discount_game"

    .line 102
    .line 103
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setResultCode(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setScenesCode(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 115
    .line 116
    .line 117
    new-instance v2, Lcom/papa/sim/statistic/Data;

    .line 118
    .line 119
    invoke-direct {v2}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2, v0}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/join/mgps/activity/t8;->i:Landroid/content/Context;

    .line 126
    .line 127
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {v0, v4, v1, v2}, Lcom/papa/sim/statistic/t;->Y(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :catch_1
    move-exception v0

    .line 136
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 137
    .line 138
    .line 139
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExposure()Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-nez v0, :cond_3

    .line 144
    .line 145
    iget-object v0, p0, Lcom/join/mgps/activity/t8;->i:Landroid/content/Context;

    .line 146
    .line 147
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    sget-object v1, Lcom/papa/sim/statistic/Event;->expGameAdPage:Lcom/papa/sim/statistic/Event;

    .line 152
    .line 153
    invoke-virtual {p1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 166
    .line 167
    .line 168
    const/4 v0, 0x1

    .line 169
    invoke-virtual {p1, v0}, Lcom/join/kotlin/base/impl/BaseDownloadable;->setExposure(Z)V

    .line 170
    .line 171
    .line 172
    :cond_3
    return-void
.end method

.method private updateBtnPartly()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/t8;->u:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/t8;->u:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ge v0, v2, :cond_2

    .line 14
    .line 15
    iget-object v2, p0, Lcom/join/mgps/activity/t8;->u:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :try_start_0
    sget-object v3, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 33
    .line 34
    invoke-virtual {v3, v2}, Lcom/join/kotlin/utils/DlTaskManager;->updateDownloadTask(Lcom/join/kotlin/base/impl/Downloadable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :catch_0
    move-exception v2

    .line 39
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    iget v0, p0, Lcom/join/mgps/activity/t8;->s:I

    .line 46
    .line 47
    if-gez v0, :cond_3

    .line 48
    .line 49
    return-void

    .line 50
    :cond_3
    :goto_2
    iget v2, p0, Lcom/join/mgps/activity/t8;->r:I

    .line 51
    .line 52
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    iget-object v3, p0, Lcom/join/mgps/activity/t8;->p:Lcom/join/mgps/adapter/f6;

    .line 55
    .line 56
    invoke-virtual {v3}, Lcom/join/mgps/base/BaseQuickAdapter;->getItemCount()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    add-int/lit8 v3, v3, -0x1

    .line 61
    .line 62
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-gt v0, v2, :cond_1c

    .line 67
    .line 68
    iget-object v2, p0, Lcom/join/mgps/activity/t8;->p:Lcom/join/mgps/adapter/f6;

    .line 69
    .line 70
    invoke-virtual {v2, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    check-cast v2, Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 75
    .line 76
    if-nez v2, :cond_4

    .line 77
    .line 78
    goto/16 :goto_7

    .line 79
    .line 80
    :cond_4
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonMultiItemBean;->getItemType()I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    const/4 v4, 0x5

    .line 85
    if-eq v3, v4, :cond_18

    .line 86
    .line 87
    const/4 v4, 0x7

    .line 88
    if-eq v3, v4, :cond_15

    .line 89
    .line 90
    const/16 v4, 0x9

    .line 91
    .line 92
    if-eq v3, v4, :cond_8

    .line 93
    .line 94
    const/16 v4, 0xb

    .line 95
    .line 96
    if-eq v3, v4, :cond_5

    .line 97
    .line 98
    goto/16 :goto_7

    .line 99
    .line 100
    :cond_5
    :try_start_1
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    instance-of v3, v3, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 105
    .line 106
    if-nez v3, :cond_6

    .line 107
    .line 108
    goto/16 :goto_7

    .line 109
    .line 110
    :cond_6
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    check-cast v3, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 115
    .line 116
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    if-nez v3, :cond_7

    .line 121
    .line 122
    goto/16 :goto_7

    .line 123
    .line 124
    :cond_7
    iget-object v3, p0, Lcom/join/mgps/activity/t8;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 125
    .line 126
    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    instance-of v4, v3, Lcom/join/mgps/base/b;

    .line 131
    .line 132
    if-eqz v4, :cond_1b

    .line 133
    .line 134
    check-cast v3, Lcom/join/mgps/base/b;

    .line 135
    .line 136
    iget-object v4, p0, Lcom/join/mgps/activity/t8;->p:Lcom/join/mgps/adapter/f6;

    .line 137
    .line 138
    invoke-virtual {v4, v3, v2}, Lcom/join/mgps/adapter/f6;->e0(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CommonMultiItemBean;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 139
    .line 140
    .line 141
    goto/16 :goto_7

    .line 142
    .line 143
    :catch_1
    move-exception v2

    .line 144
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 145
    .line 146
    .line 147
    goto/16 :goto_7

    .line 148
    .line 149
    :cond_8
    :try_start_2
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    check-cast v2, Lcom/join/mgps/dto/HomeRankingListBean;

    .line 154
    .line 155
    if-eqz v2, :cond_1b

    .line 156
    .line 157
    invoke-virtual {v2}, Lcom/join/mgps/dto/HomeRankingListBean;->getList()Ljava/util/List;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    if-eqz v3, :cond_1b

    .line 162
    .line 163
    iget-object v3, p0, Lcom/join/mgps/activity/t8;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 164
    .line 165
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    if-nez v3, :cond_9

    .line 170
    .line 171
    goto/16 :goto_7

    .line 172
    .line 173
    :cond_9
    iget-object v3, p0, Lcom/join/mgps/activity/t8;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 174
    .line 175
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    if-nez v3, :cond_a

    .line 184
    .line 185
    goto/16 :goto_7

    .line 186
    .line 187
    :cond_a
    const v4, 0x7f0a1b9f

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    check-cast v3, Landroidx/viewpager2/widget/ViewPager2;

    .line 195
    .line 196
    if-nez v3, :cond_b

    .line 197
    .line 198
    goto/16 :goto_7

    .line 199
    .line 200
    :cond_b
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    .line 205
    .line 206
    if-eqz v3, :cond_1b

    .line 207
    .line 208
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    if-nez v4, :cond_c

    .line 213
    .line 214
    goto/16 :goto_7

    .line 215
    .line 216
    :cond_c
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    check-cast v4, Lcom/join/mgps/adapter/a5;

    .line 221
    .line 222
    if-nez v4, :cond_d

    .line 223
    .line 224
    goto/16 :goto_7

    .line 225
    .line 226
    :cond_d
    invoke-virtual {v4}, Lcom/join/mgps/base/BaseQuickAdapter;->getItemCount()I

    .line 227
    .line 228
    .line 229
    move-result v4

    .line 230
    const/4 v5, 0x0

    .line 231
    :goto_3
    invoke-virtual {v2}, Lcom/join/mgps/dto/HomeRankingListBean;->getList()Ljava/util/List;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 236
    .line 237
    .line 238
    move-result v6

    .line 239
    if-ge v5, v6, :cond_1b

    .line 240
    .line 241
    if-ge v5, v4, :cond_1b

    .line 242
    .line 243
    invoke-virtual {v2}, Lcom/join/mgps/dto/HomeRankingListBean;->getList()Ljava/util/List;

    .line 244
    .line 245
    .line 246
    move-result-object v6

    .line 247
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v6

    .line 251
    check-cast v6, Ljava/util/List;

    .line 252
    .line 253
    if-nez v6, :cond_e

    .line 254
    .line 255
    goto :goto_6

    .line 256
    :cond_e
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 257
    .line 258
    .line 259
    move-result-object v7

    .line 260
    invoke-virtual {v7, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 261
    .line 262
    .line 263
    move-result-object v7

    .line 264
    if-nez v7, :cond_f

    .line 265
    .line 266
    goto :goto_6

    .line 267
    :cond_f
    const v8, 0x7f0a1345

    .line 268
    .line 269
    .line 270
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 271
    .line 272
    .line 273
    move-result-object v7

    .line 274
    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    .line 275
    .line 276
    if-eqz v7, :cond_14

    .line 277
    .line 278
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 279
    .line 280
    .line 281
    move-result-object v8

    .line 282
    if-nez v8, :cond_10

    .line 283
    .line 284
    goto :goto_6

    .line 285
    :cond_10
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 286
    .line 287
    .line 288
    move-result-object v8

    .line 289
    check-cast v8, Lcom/join/mgps/adapter/m6;

    .line 290
    .line 291
    if-nez v8, :cond_11

    .line 292
    .line 293
    goto :goto_6

    .line 294
    :cond_11
    invoke-virtual {v8}, Lcom/join/mgps/base/BaseQuickAdapter;->getItemCount()I

    .line 295
    .line 296
    .line 297
    move-result v9

    .line 298
    const/4 v10, 0x0

    .line 299
    :goto_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 300
    .line 301
    .line 302
    move-result v11

    .line 303
    if-ge v10, v11, :cond_14

    .line 304
    .line 305
    if-ge v10, v9, :cond_14

    .line 306
    .line 307
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v11

    .line 311
    check-cast v11, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 312
    .line 313
    invoke-virtual {v11}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 314
    .line 315
    .line 316
    move-result-object v12

    .line 317
    if-nez v12, :cond_12

    .line 318
    .line 319
    goto :goto_5

    .line 320
    :cond_12
    invoke-virtual {v7, v10}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 321
    .line 322
    .line 323
    move-result-object v12

    .line 324
    instance-of v13, v12, Lcom/join/mgps/base/b;

    .line 325
    .line 326
    if-eqz v13, :cond_13

    .line 327
    .line 328
    check-cast v12, Lcom/join/mgps/base/b;

    .line 329
    .line 330
    invoke-virtual {v8, v12, v11}, Lcom/join/mgps/adapter/m6;->r(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CommonGameInfoBean;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 331
    .line 332
    .line 333
    :cond_13
    :goto_5
    add-int/lit8 v10, v10, 0x1

    .line 334
    .line 335
    goto :goto_4

    .line 336
    :cond_14
    :goto_6
    add-int/lit8 v5, v5, 0x1

    .line 337
    .line 338
    goto :goto_3

    .line 339
    :catch_2
    move-exception v2

    .line 340
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 341
    .line 342
    .line 343
    goto :goto_7

    .line 344
    :cond_15
    :try_start_3
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v3

    .line 348
    instance-of v3, v3, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 349
    .line 350
    if-nez v3, :cond_16

    .line 351
    .line 352
    goto :goto_7

    .line 353
    :cond_16
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v3

    .line 357
    check-cast v3, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 358
    .line 359
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 360
    .line 361
    .line 362
    move-result-object v3

    .line 363
    if-nez v3, :cond_17

    .line 364
    .line 365
    goto :goto_7

    .line 366
    :cond_17
    iget-object v3, p0, Lcom/join/mgps/activity/t8;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 367
    .line 368
    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 369
    .line 370
    .line 371
    move-result-object v3

    .line 372
    instance-of v4, v3, Lcom/join/mgps/base/b;

    .line 373
    .line 374
    if-eqz v4, :cond_1b

    .line 375
    .line 376
    check-cast v3, Lcom/join/mgps/base/b;

    .line 377
    .line 378
    iget-object v4, p0, Lcom/join/mgps/activity/t8;->p:Lcom/join/mgps/adapter/f6;

    .line 379
    .line 380
    invoke-virtual {v4, v3, v2}, Lcom/join/mgps/adapter/f6;->M0(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CommonMultiItemBean;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 381
    .line 382
    .line 383
    goto :goto_7

    .line 384
    :catch_3
    move-exception v2

    .line 385
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 386
    .line 387
    .line 388
    goto :goto_7

    .line 389
    :cond_18
    :try_start_4
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v3

    .line 393
    instance-of v3, v3, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 394
    .line 395
    if-nez v3, :cond_19

    .line 396
    .line 397
    goto :goto_7

    .line 398
    :cond_19
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v3

    .line 402
    check-cast v3, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 403
    .line 404
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 405
    .line 406
    .line 407
    move-result-object v3

    .line 408
    if-nez v3, :cond_1a

    .line 409
    .line 410
    goto :goto_7

    .line 411
    :cond_1a
    iget-object v3, p0, Lcom/join/mgps/activity/t8;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 412
    .line 413
    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 414
    .line 415
    .line 416
    move-result-object v3

    .line 417
    instance-of v4, v3, Lcom/join/mgps/base/b;

    .line 418
    .line 419
    if-eqz v4, :cond_1b

    .line 420
    .line 421
    check-cast v3, Lcom/join/mgps/base/b;

    .line 422
    .line 423
    iget-object v4, p0, Lcom/join/mgps/activity/t8;->p:Lcom/join/mgps/adapter/f6;

    .line 424
    .line 425
    invoke-virtual {v4, v3, v2}, Lcom/join/mgps/adapter/f6;->J0(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CommonMultiItemBean;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 426
    .line 427
    .line 428
    goto :goto_7

    .line 429
    :catch_4
    move-exception v2

    .line 430
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 431
    .line 432
    .line 433
    :cond_1b
    :goto_7
    add-int/lit8 v0, v0, 0x1

    .line 434
    .line 435
    goto/16 :goto_2

    .line 436
    .line 437
    :cond_1c
    return-void
.end method

.method private updateProgressPartly()V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lcom/join/mgps/activity/t8;->s:I

    .line 4
    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    move v2, v0

    .line 9
    :goto_0
    iget v0, v1, Lcom/join/mgps/activity/t8;->r:I

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    add-int/2addr v0, v3

    .line 13
    iget-object v4, v1, Lcom/join/mgps/activity/t8;->p:Lcom/join/mgps/adapter/f6;

    .line 14
    .line 15
    invoke-virtual {v4}, Lcom/join/mgps/base/BaseQuickAdapter;->getItemCount()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    sub-int/2addr v4, v3

    .line 20
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-gt v2, v0, :cond_16

    .line 25
    .line 26
    iget-object v0, v1, Lcom/join/mgps/activity/t8;->p:Lcom/join/mgps/adapter/f6;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 33
    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    goto/16 :goto_5

    .line 37
    .line 38
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonMultiItemBean;->getItemType()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    const/4 v5, 0x5

    .line 43
    const/16 v8, 0xa

    .line 44
    .line 45
    const/16 v9, 0xc

    .line 46
    .line 47
    const/4 v10, 0x2

    .line 48
    if-eq v4, v5, :cond_10

    .line 49
    .line 50
    const/4 v5, 0x7

    .line 51
    if-eq v4, v5, :cond_10

    .line 52
    .line 53
    const/16 v5, 0x9

    .line 54
    .line 55
    if-eq v4, v5, :cond_2

    .line 56
    .line 57
    const/16 v5, 0xb

    .line 58
    .line 59
    if-eq v4, v5, :cond_10

    .line 60
    .line 61
    goto/16 :goto_5

    .line 62
    .line 63
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Lcom/join/mgps/dto/HomeRankingListBean;

    .line 68
    .line 69
    iget-object v4, v1, Lcom/join/mgps/activity/t8;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 70
    .line 71
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    if-eqz v4, :cond_15

    .line 76
    .line 77
    if-eqz v0, :cond_15

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/join/mgps/dto/HomeRankingListBean;->getList()Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    if-nez v5, :cond_3

    .line 84
    .line 85
    goto/16 :goto_5

    .line 86
    .line 87
    :cond_3
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    if-nez v4, :cond_4

    .line 92
    .line 93
    goto/16 :goto_5

    .line 94
    .line 95
    :cond_4
    const v5, 0x7f0a1b9f

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    check-cast v4, Landroidx/viewpager2/widget/ViewPager2;

    .line 103
    .line 104
    const/4 v5, 0x0

    .line 105
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    .line 110
    .line 111
    if-eqz v4, :cond_15

    .line 112
    .line 113
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 114
    .line 115
    .line 116
    move-result-object v11

    .line 117
    if-nez v11, :cond_5

    .line 118
    .line 119
    goto/16 :goto_5

    .line 120
    .line 121
    :cond_5
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 122
    .line 123
    .line 124
    move-result-object v11

    .line 125
    check-cast v11, Lcom/join/mgps/adapter/a5;

    .line 126
    .line 127
    if-nez v11, :cond_6

    .line 128
    .line 129
    goto/16 :goto_5

    .line 130
    .line 131
    :cond_6
    invoke-virtual {v11}, Lcom/join/mgps/base/BaseQuickAdapter;->getItemCount()I

    .line 132
    .line 133
    .line 134
    move-result v11

    .line 135
    const/4 v12, 0x0

    .line 136
    :goto_1
    if-ge v12, v11, :cond_15

    .line 137
    .line 138
    invoke-virtual {v0}, Lcom/join/mgps/dto/HomeRankingListBean;->getList()Ljava/util/List;

    .line 139
    .line 140
    .line 141
    move-result-object v13

    .line 142
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v13

    .line 146
    check-cast v13, Ljava/util/List;

    .line 147
    .line 148
    if-nez v13, :cond_7

    .line 149
    .line 150
    goto/16 :goto_4

    .line 151
    .line 152
    :cond_7
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 153
    .line 154
    .line 155
    move-result-object v14

    .line 156
    invoke-virtual {v14, v12}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 157
    .line 158
    .line 159
    move-result-object v14

    .line 160
    if-nez v14, :cond_8

    .line 161
    .line 162
    goto/16 :goto_4

    .line 163
    .line 164
    :cond_8
    const v15, 0x7f0a1345

    .line 165
    .line 166
    .line 167
    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 168
    .line 169
    .line 170
    move-result-object v14

    .line 171
    check-cast v14, Landroidx/recyclerview/widget/RecyclerView;

    .line 172
    .line 173
    if-eqz v14, :cond_f

    .line 174
    .line 175
    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 176
    .line 177
    .line 178
    move-result-object v15

    .line 179
    if-nez v15, :cond_9

    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_9
    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 183
    .line 184
    .line 185
    move-result-object v15

    .line 186
    check-cast v15, Lcom/join/mgps/adapter/m6;

    .line 187
    .line 188
    if-nez v15, :cond_a

    .line 189
    .line 190
    goto :goto_4

    .line 191
    :cond_a
    invoke-virtual {v15}, Lcom/join/mgps/base/BaseQuickAdapter;->getItemCount()I

    .line 192
    .line 193
    .line 194
    move-result v15

    .line 195
    :goto_2
    if-ge v5, v15, :cond_f

    .line 196
    .line 197
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 198
    .line 199
    .line 200
    move-result v6

    .line 201
    if-ge v5, v6, :cond_f

    .line 202
    .line 203
    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v6

    .line 207
    check-cast v6, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 208
    .line 209
    invoke-virtual {v6}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 210
    .line 211
    .line 212
    move-result-object v16

    .line 213
    if-nez v16, :cond_b

    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_b
    sget-object v7, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 217
    .line 218
    invoke-virtual {v7, v6}, Lcom/join/kotlin/utils/DlTaskManager;->getTask(Lcom/join/kotlin/base/impl/Downloadable;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 219
    .line 220
    .line 221
    move-result-object v6

    .line 222
    if-nez v6, :cond_c

    .line 223
    .line 224
    goto :goto_3

    .line 225
    :cond_c
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 226
    .line 227
    .line 228
    move-result v7

    .line 229
    if-eq v7, v10, :cond_d

    .line 230
    .line 231
    if-eq v7, v9, :cond_d

    .line 232
    .line 233
    if-eq v7, v8, :cond_d

    .line 234
    .line 235
    if-eq v7, v3, :cond_d

    .line 236
    .line 237
    const/4 v3, 0x3

    .line 238
    if-ne v7, v3, :cond_e

    .line 239
    .line 240
    :cond_d
    invoke-virtual {v14, v5}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    instance-of v7, v3, Lcom/join/mgps/base/b;

    .line 245
    .line 246
    if-eqz v7, :cond_e

    .line 247
    .line 248
    check-cast v3, Lcom/join/mgps/base/b;

    .line 249
    .line 250
    const v7, 0x7f0a054e

    .line 251
    .line 252
    .line 253
    invoke-virtual {v3, v7}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    check-cast v3, Lcom/join/mgps/customview/DownloadNormalView;

    .line 258
    .line 259
    invoke-virtual {v3, v6}, Lcom/join/mgps/customview/DownloadNormalView;->d(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    .line 261
    .line 262
    :cond_e
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 263
    .line 264
    const/4 v3, 0x1

    .line 265
    goto :goto_2

    .line 266
    :cond_f
    :goto_4
    add-int/lit8 v12, v12, 0x1

    .line 267
    .line 268
    const/4 v3, 0x1

    .line 269
    const/4 v5, 0x0

    .line 270
    goto/16 :goto_1

    .line 271
    .line 272
    :catch_0
    move-exception v0

    .line 273
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 274
    .line 275
    .line 276
    goto :goto_5

    .line 277
    :cond_10
    :try_start_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v3

    .line 281
    instance-of v3, v3, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 282
    .line 283
    if-nez v3, :cond_11

    .line 284
    .line 285
    goto :goto_5

    .line 286
    :cond_11
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    check-cast v0, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 291
    .line 292
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    if-nez v3, :cond_12

    .line 297
    .line 298
    goto :goto_5

    .line 299
    :cond_12
    sget-object v3, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 300
    .line 301
    invoke-virtual {v3, v0}, Lcom/join/kotlin/utils/DlTaskManager;->getTask(Lcom/join/kotlin/base/impl/Downloadable;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    if-nez v0, :cond_13

    .line 306
    .line 307
    goto :goto_5

    .line 308
    :cond_13
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 309
    .line 310
    .line 311
    move-result v3

    .line 312
    if-eq v3, v10, :cond_14

    .line 313
    .line 314
    if-eq v3, v9, :cond_14

    .line 315
    .line 316
    if-eq v3, v8, :cond_14

    .line 317
    .line 318
    const/4 v4, 0x1

    .line 319
    if-eq v3, v4, :cond_14

    .line 320
    .line 321
    const/4 v4, 0x3

    .line 322
    if-ne v3, v4, :cond_15

    .line 323
    .line 324
    :cond_14
    iget-object v3, v1, Lcom/join/mgps/activity/t8;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 325
    .line 326
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 327
    .line 328
    .line 329
    move-result-object v3

    .line 330
    instance-of v4, v3, Lcom/join/mgps/base/b;

    .line 331
    .line 332
    if-eqz v4, :cond_15

    .line 333
    .line 334
    check-cast v3, Lcom/join/mgps/base/b;

    .line 335
    .line 336
    const v4, 0x7f0a054e

    .line 337
    .line 338
    .line 339
    invoke-virtual {v3, v4}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 340
    .line 341
    .line 342
    move-result-object v3

    .line 343
    check-cast v3, Lcom/join/mgps/customview/DownloadNormalView;

    .line 344
    .line 345
    invoke-virtual {v3, v0}, Lcom/join/mgps/customview/DownloadNormalView;->d(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 346
    .line 347
    .line 348
    goto :goto_5

    .line 349
    :catch_1
    move-exception v0

    .line 350
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 351
    .line 352
    .line 353
    :cond_15
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 354
    .line 355
    goto/16 :goto_0

    .line 356
    .line 357
    :cond_16
    return-void
.end method

.method private v0(Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dataBean",
            "position"
        }
    .end annotation

    .line 1
    return-void
.end method

.method private x0()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/t8;->s:I

    .line 2
    .line 3
    if-ltz v0, :cond_2

    .line 4
    .line 5
    :goto_0
    iget v1, p0, Lcom/join/mgps/activity/t8;->r:I

    .line 6
    .line 7
    add-int/lit8 v1, v1, 0x1

    .line 8
    .line 9
    iget-object v2, p0, Lcom/join/mgps/activity/t8;->p:Lcom/join/mgps/adapter/f6;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/join/mgps/base/BaseQuickAdapter;->getItemCount()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    add-int/lit8 v2, v2, -0x1

    .line 16
    .line 17
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-gt v0, v1, :cond_2

    .line 22
    .line 23
    iget-object v1, p0, Lcom/join/mgps/activity/t8;->p:Lcom/join/mgps/adapter/f6;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 30
    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommonMultiItemBean;->getItemType()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    const/4 v2, 0x3

    .line 39
    if-ne v1, v2, :cond_1

    .line 40
    .line 41
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/t8;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    instance-of v2, v1, Lcom/join/mgps/base/b;

    .line 48
    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    check-cast v1, Lcom/join/mgps/base/b;

    .line 52
    .line 53
    iget-object v2, p0, Lcom/join/mgps/activity/t8;->p:Lcom/join/mgps/adapter/f6;

    .line 54
    .line 55
    iget-object v3, p0, Lcom/join/mgps/activity/t8;->w:Lcom/join/mgps/dto/HomeCloudActiveBean;

    .line 56
    .line 57
    invoke-virtual {v2, v1, v3}, Lcom/join/mgps/adapter/f6;->Y(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/HomeCloudActiveBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :catch_0
    move-exception v1

    .line 62
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 63
    .line 64
    .line 65
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    return-void
.end method


# virtual methods
.method A0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "from"
        }
    .end annotation

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    :pswitch_0
    goto :goto_0

    .line 5
    :pswitch_1
    invoke-direct {p0}, Lcom/join/mgps/activity/t8;->o0()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_2
    invoke-direct {p0}, Lcom/join/mgps/activity/t8;->q0()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :pswitch_3
    invoke-direct {p0}, Lcom/join/mgps/activity/t8;->n0()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :pswitch_4
    invoke-direct {p0}, Lcom/join/mgps/activity/t8;->p0()V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void

    .line 21
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method N()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.account_status_uidchange"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/t8;->k:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lcom/join/mgps/activity/t8;->m:I

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/join/mgps/activity/t8;->l:Z

    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/t8;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->reset()V

    .line 13
    .line 14
    .line 15
    iget v0, p0, Lcom/join/mgps/activity/t8;->m:I

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/t8;->l0(I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method afterViews()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/t8;->i:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->d(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lcom/join/mgps/adapter/f6;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/activity/t8;->i:Landroid/content/Context;

    .line 17
    .line 18
    invoke-direct {v0, v1, p0}, Lcom/join/mgps/adapter/f6;-><init>(Landroid/content/Context;Lcom/join/mgps/adapter/f6$g;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/t8;->p:Lcom/join/mgps/adapter/f6;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/join/mgps/activity/t8;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/join/mgps/activity/t8;->i:Landroid/content/Context;

    .line 31
    .line 32
    const/16 v2, 0xa

    .line 33
    .line 34
    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 35
    .line 36
    .line 37
    new-instance v1, Lcom/join/mgps/activity/t8$b;

    .line 38
    .line 39
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/t8$b;-><init>(Lcom/join/mgps/activity/t8;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/join/mgps/activity/t8;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const v1, 0x7f07133d

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    float-to-int v0, v0

    .line 62
    iget-object v1, p0, Lcom/join/mgps/activity/t8;->i:Landroid/content/Context;

    .line 63
    .line 64
    const v3, 0x7f060503

    .line 65
    .line 66
    .line 67
    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    iget-object v3, p0, Lcom/join/mgps/activity/t8;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 72
    .line 73
    new-instance v4, Lcom/join/mgps/activity/t8$c;

    .line 74
    .line 75
    invoke-direct {v4, p0, v1, v0}, Lcom/join/mgps/activity/t8$c;-><init>(Lcom/join/mgps/activity/t8;II)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/join/mgps/activity/t8;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 82
    .line 83
    iget-object v1, p0, Lcom/join/mgps/activity/t8;->d:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->setPtrFrameLayout(Lcom/join/mgps/ptr/PtrFrameLayout;)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/join/mgps/activity/t8;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 89
    .line 90
    new-instance v1, Lcom/join/mgps/activity/t8$d;

    .line 91
    .line 92
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/t8$d;-><init>(Lcom/join/mgps/activity/t8;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->setLoadingListener(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$LoadingListener;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/join/mgps/activity/t8;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 99
    .line 100
    invoke-virtual {v0, v2}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->setPreLoadCount(I)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/join/mgps/activity/t8;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 104
    .line 105
    new-instance v1, Lcom/join/mgps/activity/t8$e;

    .line 106
    .line 107
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/t8$e;-><init>(Lcom/join/mgps/activity/t8;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 111
    .line 112
    .line 113
    new-instance v0, Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .line 117
    .line 118
    iput-object v0, p0, Lcom/join/mgps/activity/t8;->u:Ljava/util/List;

    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/join/mgps/activity/t8;->k0()V

    .line 121
    .line 122
    .line 123
    return-void
.end method

.method public h(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "list",
            "lastVisiblePosition"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ">;I)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method i0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/t8;->q:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method k0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/t8;->g:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->homeAllDataV4()Lorg/androidannotations/api/sharedpreferences/p;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-class v2, Lcom/join/mgps/dto/PapaHomeBeanV9;

    .line 24
    .line 25
    invoke-virtual {v1, v0, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/join/mgps/dto/PapaHomeBeanV9;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    :goto_0
    const/4 v1, 0x1

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-virtual {p0, v0, v1, v2}, Lcom/join/mgps/activity/t8;->y0(Lcom/join/mgps/dto/PapaHomeBeanV9;IZ)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/join/mgps/activity/t8;->showMain()V

    .line 41
    .line 42
    .line 43
    iput-boolean v2, p0, Lcom/join/mgps/activity/t8;->h:Z

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    iput-boolean v1, p0, Lcom/join/mgps/activity/t8;->h:Z

    .line 47
    .line 48
    :goto_1
    iget v0, p0, Lcom/join/mgps/activity/t8;->m:I

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/t8;->l0(I)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method l0(I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pnx"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/t8;->i:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/t8;->i:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_c

    .line 18
    .line 19
    iget-boolean v1, p0, Lcom/join/mgps/activity/t8;->j:Z

    .line 20
    .line 21
    const-string v2, "0"

    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    if-nez v1, :cond_9

    .line 25
    .line 26
    iget-boolean v1, p0, Lcom/join/mgps/activity/t8;->k:Z

    .line 27
    .line 28
    if-nez v1, :cond_9

    .line 29
    .line 30
    if-eqz v0, :cond_9

    .line 31
    .line 32
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_9

    .line 37
    .line 38
    iput-boolean v3, p0, Lcom/join/mgps/activity/t8;->k:Z

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    const/4 v1, 0x0

    .line 42
    :try_start_0
    iget-object v2, p0, Lcom/join/mgps/activity/t8;->i:Landroid/content/Context;

    .line 43
    .line 44
    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    new-instance v4, Lcom/join/mgps/dto/RequestModel;

    .line 53
    .line 54
    invoke-direct {v4}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 55
    .line 56
    .line 57
    iget-object v5, p0, Lcom/join/mgps/activity/t8;->i:Landroid/content/Context;

    .line 58
    .line 59
    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 60
    .line 61
    .line 62
    new-instance v5, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

    .line 63
    .line 64
    invoke-direct {v5}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5, p1}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setPage(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    invoke-virtual {v5, v2}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setUid(I)V

    .line 75
    .line 76
    .line 77
    new-instance v2, Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string v6, "HOME_FAST_ENTRY_FOR_PC"

    .line 83
    .line 84
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5, v2}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setPositionMark(Ljava/util/List;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v2}, Lcom/join/mgps/rpc/impl/i;->N0()Lb7/i;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v4}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-interface {v2, v4}, Lb7/i;->n1(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-interface {v2}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    check-cast v2, Lcom/join/mgps/dto/ResponseModel;

    .line 118
    .line 119
    if-eqz v2, :cond_2

    .line 120
    .line 121
    invoke-virtual {v2}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    const/16 v5, 0xc8

    .line 126
    .line 127
    if-ne v4, v5, :cond_2

    .line 128
    .line 129
    invoke-virtual {v2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    if-eqz v4, :cond_2

    .line 134
    .line 135
    invoke-virtual {v2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    check-cast v2, Lcom/join/mgps/dto/PapaHomeBeanV9;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    .line 141
    :try_start_1
    invoke-virtual {v2}, Lcom/join/mgps/dto/PapaHomeBeanV9;->isEmpty()Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-eqz v1, :cond_0

    .line 146
    .line 147
    iput-boolean v0, p0, Lcom/join/mgps/activity/t8;->l:Z

    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/join/mgps/activity/t8;->m0()V

    .line 150
    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_0
    iput-boolean v3, p0, Lcom/join/mgps/activity/t8;->l:Z

    .line 154
    .line 155
    add-int/lit8 v1, p1, 0x1

    .line 156
    .line 157
    iput v1, p0, Lcom/join/mgps/activity/t8;->m:I

    .line 158
    .line 159
    :goto_0
    if-ne p1, v3, :cond_1

    .line 160
    .line 161
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/t8;->r0(Lcom/join/mgps/dto/PapaHomeBeanV9;)V

    .line 162
    .line 163
    .line 164
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/t8;->showMain()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 165
    .line 166
    .line 167
    move-object v1, v2

    .line 168
    goto :goto_1

    .line 169
    :catch_0
    move-exception v1

    .line 170
    goto :goto_2

    .line 171
    :cond_2
    :try_start_2
    iput-boolean v0, p0, Lcom/join/mgps/activity/t8;->l:Z

    .line 172
    .line 173
    invoke-virtual {p0}, Lcom/join/mgps/activity/t8;->m0()V

    .line 174
    .line 175
    .line 176
    iget-boolean v2, p0, Lcom/join/mgps/activity/t8;->h:Z

    .line 177
    .line 178
    if-eqz v2, :cond_3

    .line 179
    .line 180
    if-ne p1, v3, :cond_3

    .line 181
    .line 182
    invoke-virtual {p0}, Lcom/join/mgps/activity/t8;->showLodingFailed()V

    .line 183
    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/t8;->showMain()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 187
    .line 188
    .line 189
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/t8;->z0()V

    .line 190
    .line 191
    .line 192
    iput-boolean v0, p0, Lcom/join/mgps/activity/t8;->k:Z

    .line 193
    .line 194
    if-eqz v1, :cond_d

    .line 195
    .line 196
    invoke-virtual {p0, v1, p1, v3}, Lcom/join/mgps/activity/t8;->y0(Lcom/join/mgps/dto/PapaHomeBeanV9;IZ)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getGame_section_id()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    if-nez p1, :cond_4

    .line 208
    .line 209
    invoke-virtual {v1}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getGame_section_id()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    iput-object p1, p0, Lcom/join/mgps/activity/t8;->q:Ljava/lang/String;

    .line 214
    .line 215
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/t8;->g:Lcom/join/mgps/pref/PrefDef_;

    .line 216
    .line 217
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->cloud_gaming_section_id()Lorg/androidannotations/api/sharedpreferences/p;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    invoke-virtual {v1}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getCloud_gaming_section_id()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-virtual {p1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    iget-object p1, p0, Lcom/join/mgps/activity/t8;->g:Lcom/join/mgps/pref/PrefDef_;

    .line 229
    .line 230
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->game_section_id()Lorg/androidannotations/api/sharedpreferences/p;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    invoke-virtual {v1}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getGame_section_id()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    goto :goto_3

    .line 239
    :catchall_0
    move-exception v2

    .line 240
    move-object v7, v2

    .line 241
    move-object v2, v1

    .line 242
    move-object v1, v7

    .line 243
    goto :goto_4

    .line 244
    :catch_1
    move-exception v2

    .line 245
    move-object v7, v2

    .line 246
    move-object v2, v1

    .line 247
    move-object v1, v7

    .line 248
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 249
    .line 250
    .line 251
    iput-boolean v0, p0, Lcom/join/mgps/activity/t8;->l:Z

    .line 252
    .line 253
    invoke-virtual {p0}, Lcom/join/mgps/activity/t8;->m0()V

    .line 254
    .line 255
    .line 256
    iget-boolean v1, p0, Lcom/join/mgps/activity/t8;->h:Z

    .line 257
    .line 258
    if-eqz v1, :cond_5

    .line 259
    .line 260
    if-ne p1, v3, :cond_5

    .line 261
    .line 262
    invoke-virtual {p0}, Lcom/join/mgps/activity/t8;->showLodingFailed()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 263
    .line 264
    .line 265
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/t8;->z0()V

    .line 266
    .line 267
    .line 268
    iput-boolean v0, p0, Lcom/join/mgps/activity/t8;->k:Z

    .line 269
    .line 270
    if-eqz v2, :cond_d

    .line 271
    .line 272
    invoke-virtual {p0, v2, p1, v3}, Lcom/join/mgps/activity/t8;->y0(Lcom/join/mgps/dto/PapaHomeBeanV9;IZ)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v2}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getGame_section_id()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 280
    .line 281
    .line 282
    move-result p1

    .line 283
    if-nez p1, :cond_6

    .line 284
    .line 285
    invoke-virtual {v2}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getGame_section_id()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    iput-object p1, p0, Lcom/join/mgps/activity/t8;->q:Ljava/lang/String;

    .line 290
    .line 291
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/t8;->g:Lcom/join/mgps/pref/PrefDef_;

    .line 292
    .line 293
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->cloud_gaming_section_id()Lorg/androidannotations/api/sharedpreferences/p;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    invoke-virtual {v2}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getCloud_gaming_section_id()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    invoke-virtual {p1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    iget-object p1, p0, Lcom/join/mgps/activity/t8;->g:Lcom/join/mgps/pref/PrefDef_;

    .line 305
    .line 306
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->game_section_id()Lorg/androidannotations/api/sharedpreferences/p;

    .line 307
    .line 308
    .line 309
    move-result-object p1

    .line 310
    invoke-virtual {v2}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getGame_section_id()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    :goto_3
    invoke-virtual {p1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 315
    .line 316
    .line 317
    goto :goto_6

    .line 318
    :catchall_1
    move-exception v1

    .line 319
    :goto_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/t8;->z0()V

    .line 320
    .line 321
    .line 322
    iput-boolean v0, p0, Lcom/join/mgps/activity/t8;->k:Z

    .line 323
    .line 324
    if-eqz v2, :cond_8

    .line 325
    .line 326
    invoke-virtual {p0, v2, p1, v3}, Lcom/join/mgps/activity/t8;->y0(Lcom/join/mgps/dto/PapaHomeBeanV9;IZ)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v2}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getGame_section_id()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 334
    .line 335
    .line 336
    move-result p1

    .line 337
    if-nez p1, :cond_7

    .line 338
    .line 339
    invoke-virtual {v2}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getGame_section_id()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    iput-object p1, p0, Lcom/join/mgps/activity/t8;->q:Ljava/lang/String;

    .line 344
    .line 345
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/t8;->g:Lcom/join/mgps/pref/PrefDef_;

    .line 346
    .line 347
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->cloud_gaming_section_id()Lorg/androidannotations/api/sharedpreferences/p;

    .line 348
    .line 349
    .line 350
    move-result-object p1

    .line 351
    invoke-virtual {v2}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getCloud_gaming_section_id()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    invoke-virtual {p1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 356
    .line 357
    .line 358
    iget-object p1, p0, Lcom/join/mgps/activity/t8;->g:Lcom/join/mgps/pref/PrefDef_;

    .line 359
    .line 360
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->game_section_id()Lorg/androidannotations/api/sharedpreferences/p;

    .line 361
    .line 362
    .line 363
    move-result-object p1

    .line 364
    invoke-virtual {v2}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getGame_section_id()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    invoke-virtual {p1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 369
    .line 370
    .line 371
    :cond_8
    throw v1

    .line 372
    :cond_9
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 373
    .line 374
    .line 375
    move-result v0

    .line 376
    if-eqz v0, :cond_a

    .line 377
    .line 378
    invoke-virtual {p0}, Lcom/join/mgps/activity/t8;->showLoding()V

    .line 379
    .line 380
    .line 381
    goto :goto_5

    .line 382
    :cond_a
    iget-boolean v0, p0, Lcom/join/mgps/activity/t8;->h:Z

    .line 383
    .line 384
    if-eqz v0, :cond_b

    .line 385
    .line 386
    if-ne p1, v3, :cond_b

    .line 387
    .line 388
    iget-boolean p1, p0, Lcom/join/mgps/activity/t8;->k:Z

    .line 389
    .line 390
    if-nez p1, :cond_b

    .line 391
    .line 392
    iget-boolean p1, p0, Lcom/join/mgps/activity/t8;->j:Z

    .line 393
    .line 394
    if-nez p1, :cond_b

    .line 395
    .line 396
    invoke-virtual {p0}, Lcom/join/mgps/activity/t8;->showLodingFailed()V

    .line 397
    .line 398
    .line 399
    :cond_b
    :goto_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/t8;->z0()V

    .line 400
    .line 401
    .line 402
    goto :goto_6

    .line 403
    :cond_c
    invoke-virtual {p0}, Lcom/join/mgps/activity/t8;->showLodingFailed()V

    .line 404
    .line 405
    .line 406
    invoke-virtual {p0}, Lcom/join/mgps/activity/t8;->z0()V

    .line 407
    .line 408
    .line 409
    :cond_d
    :goto_6
    return-void
.end method

.method m0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/t8;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->setNoMore()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public n(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExposure()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/t8;->u0(Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-virtual {v0, v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->setExposure(Z)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return-void
.end method

.method public o(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "list",
            "lastVisiblePosition"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;",
            ">;I)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    if-gt v0, p2, :cond_1

    .line 3
    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->isHasExposure()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    invoke-direct {p0, v1, v0}, Lcom/join/mgps/activity/t8;->v0(Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/t8;->x:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->e(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/r;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTaskEvent"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x2

    .line 6
    if-eq p1, v0, :cond_5

    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    if-eq p1, v1, :cond_4

    .line 10
    .line 11
    const/4 v0, 0x5

    .line 12
    if-eq p1, v0, :cond_3

    .line 13
    .line 14
    const/4 v2, 0x6

    .line 15
    if-eq p1, v2, :cond_2

    .line 16
    .line 17
    const/4 v2, 0x7

    .line 18
    if-eq p1, v2, :cond_1

    .line 19
    .line 20
    const/16 v1, 0x8

    .line 21
    .line 22
    if-eq p1, v1, :cond_0

    .line 23
    .line 24
    const/16 v3, 0x30

    .line 25
    .line 26
    if-eq p1, v3, :cond_3

    .line 27
    .line 28
    packed-switch p1, :pswitch_data_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :pswitch_0
    const/16 p1, 0x9

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/t8;->A0(I)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/t8;->A0(I)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/t8;->A0(I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-boolean p1, p0, Lcom/join/mgps/activity/t8;->t:Z

    .line 47
    .line 48
    if-nez p1, :cond_6

    .line 49
    .line 50
    invoke-direct {p0}, Lcom/join/mgps/activity/t8;->updateProgressPartly()V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/t8;->A0(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/t8;->A0(I)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    :pswitch_3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/t8;->A0(I)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_4
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/t8;->A0(I)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_5
    const/4 p1, 0x1

    .line 71
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/t8;->A0(I)V

    .line 72
    .line 73
    .line 74
    :cond_6
    :goto_0
    return-void

    .line 75
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHomeCloudActiveEvent(Lcom/join/mgps/event/x;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object p1, p1, Lcom/join/mgps/event/x;->a:Lcom/join/mgps/dto/HomeCloudActiveBean;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/join/mgps/activity/t8;->w:Lcom/join/mgps/dto/HomeCloudActiveBean;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/t8;->p:Lcom/join/mgps/adapter/f6;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/join/mgps/adapter/f6;->H0(Lcom/join/mgps/dto/HomeCloudActiveBean;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/t8;->x:Landroid/os/Handler;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/t8;->w:Lcom/join/mgps/dto/HomeCloudActiveBean;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/join/mgps/dto/HomeCloudActiveBean;->getAdCfgInfo()Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    iget-object p1, p0, Lcom/join/mgps/activity/t8;->w:Lcom/join/mgps/dto/HomeCloudActiveBean;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/join/mgps/dto/HomeCloudActiveBean;->needShow()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    iget-object p1, p0, Lcom/join/mgps/activity/t8;->w:Lcom/join/mgps/dto/HomeCloudActiveBean;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/join/mgps/dto/HomeCloudActiveBean;->start()V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Lcom/join/mgps/activity/t8;->s0()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/activity/t8;->x0()V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "webUrl"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/join/mgps/Util/IntentDateBean;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x4

    .line 12
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string p1, "intentdate"

    .line 25
    .line 26
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    new-instance v2, Lcom/join/mgps/activity/t8$f;

    .line 38
    .line 39
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/t8$f;-><init>(Lcom/join/mgps/activity/t8;)V

    .line 40
    .line 41
    .line 42
    const-class v3, Lcom/join/mgps/activity/FullShareWebActivity_;

    .line 43
    .line 44
    invoke-virtual {p1, v1, v3, v0, v2}, Lcom/join/mgps/Util/IntentUtil;->startActivityWithCallback(Landroid/content/Context;Ljava/lang/Class;Landroid/content/Intent;Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method

.method r0(Lcom/join/mgps/dto/PapaHomeBeanV9;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mainBean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/t8;->g:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->homeAllDataV3()Lorg/androidannotations/api/sharedpreferences/p;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/PapaHomeBeanV9;->isNew_user()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/join/mgps/activity/t8;->g:Lcom/join/mgps/pref/PrefDef_;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->fastEntryGuide()Lorg/androidannotations/api/sharedpreferences/i;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Ljava/lang/Integer;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_0

    .line 37
    .line 38
    iget-object p1, p0, Lcom/join/mgps/activity/t8;->g:Lcom/join/mgps/pref/PrefDef_;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->fastEntryGuide()Lorg/androidannotations/api/sharedpreferences/i;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const/4 v0, 0x1

    .line 45
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void
.end method

.method relodingimag()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/t8;->showLoding()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/join/mgps/activity/t8;->m:I

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/join/mgps/activity/t8;->l:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/t8;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->reset()V

    .line 12
    .line 13
    .line 14
    iget v0, p0, Lcom/join/mgps/activity/t8;->m:I

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/t8;->l0(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->N3(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const-string v0, "\u663e\u793a\u52a0\u8f7d\u4e2d"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/g1;->c(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/t8;->e:Landroid/widget/LinearLayout;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/t8;->f:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    const/16 v1, 0x8

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/t8;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    :cond_2
    return-void
.end method

.method showLodingFailed()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/t8;->f:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/t8;->e:Landroid/widget/LinearLayout;

    .line 10
    .line 11
    const/16 v1, 0x8

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/t8;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    :cond_2
    return-void
.end method

.method showMain()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const-string v0, "\u663e\u793a\u4e3b\u754c\u9762main"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/g1;->c(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/t8;->f:Landroid/widget/LinearLayout;

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/t8;->e:Landroid/widget/LinearLayout;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/t8;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    :cond_2
    return-void
.end method

.method public w0(Lcom/join/mgps/callbacks/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "homeBallChangedListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/t8;->y:Lcom/join/mgps/callbacks/k;

    .line 2
    .line 3
    return-void
.end method

.method y0(Lcom/join/mgps/dto/PapaHomeBeanV9;IZ)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mainBean",
            "pnx",
            "fromNet"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    move-object/from16 v1, p0

    if-eqz p1, :cond_1a

    .line 1
    :try_start_0
    iget-object v0, v1, Lcom/join/mgps/activity/t8;->o:Ljava/util/List;

    const/4 v2, 0x7

    const v3, 0x7f07133d

    const/4 v4, 0x2

    const/4 v5, 0x5

    const v6, 0x7f071395

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0xc

    move/from16 v10, p2

    if-ne v10, v7, :cond_10

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move/from16 v10, p3

    .line 3
    iput-boolean v10, v1, Lcom/join/mgps/activity/t8;->n:Z

    .line 4
    invoke-direct/range {p0 .. p1}, Lcom/join/mgps/activity/t8;->t0(Lcom/join/mgps/dto/PapaHomeBeanV9;)V

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getBanner()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getBanner()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_1

    const/4 v10, 0x0

    .line 6
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getBanner()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_0

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getBanner()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 8
    invoke-virtual {v11, v10}, Lcom/join/mgps/dto/CommonGameInfoBean;->setPosition(I)V

    const/16 v12, 0x2711

    .line 9
    invoke-virtual {v11, v12}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 10
    invoke-virtual {v11, v12}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 11
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "22-19-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v10, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/join/mgps/dto/CommonGameInfoBean;->setExp_position(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v11}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object v11

    sget-object v13, Lcom/papa/sim/statistic/EventP$FirstModel;->home:Lcom/papa/sim/statistic/EventP$FirstModel;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/join/mgps/dto/ExtBean;->setFirstModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v11

    sget-object v13, Lcom/papa/sim/statistic/EventP$SecondModel;->choiceness:Lcom/papa/sim/statistic/EventP$SecondModel;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/join/mgps/dto/ExtBean;->setSecondModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v11

    const-string v13, "10001"

    invoke-virtual {v11, v13}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v11

    invoke-virtual {v11, v12}, Lcom/join/mgps/dto/ExtBean;->set_from_type(I)Lcom/join/mgps/dto/ExtBean;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "banner"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move v10, v14

    goto :goto_0

    .line 13
    :cond_0
    new-instance v10, Lcom/join/mgps/dto/CommonMultiItemBean;

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getBanner()Ljava/util/List;

    move-result-object v11

    invoke-direct {v10, v7, v11}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    .line 14
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getFast_entry()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getFast_entry()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_3

    .line 16
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    .line 17
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getFast_entry()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_2

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getFast_entry()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 19
    invoke-virtual {v12, v11}, Lcom/join/mgps/dto/CommonGameInfoBean;->setPosition(I)V

    .line 20
    invoke-virtual {v12}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object v13

    sget-object v14, Lcom/papa/sim/statistic/EventP$FirstModel;->home:Lcom/papa/sim/statistic/EventP$FirstModel;

    invoke-virtual {v14}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/join/mgps/dto/ExtBean;->setFirstModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v13

    sget-object v14, Lcom/papa/sim/statistic/EventP$SecondModel;->choiceness:Lcom/papa/sim/statistic/EventP$SecondModel;

    invoke-virtual {v14}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/join/mgps/dto/ExtBean;->setSecondModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v13

    const-string v14, "10002"

    invoke-virtual {v13, v14}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v13

    invoke-virtual {v12}, Lcom/join/mgps/dto/CommonGameInfoBean;->getJp_info()Lcom/join/mgps/dto/JpInfoBean;

    move-result-object v14

    invoke-virtual {v14}, Lcom/join/mgps/dto/JpInfoBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v13

    invoke-virtual {v12}, Lcom/join/mgps/dto/CommonGameInfoBean;->getTitle()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 21
    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 22
    :cond_2
    new-instance v11, Lcom/join/mgps/dto/CommonMultiItemBean;

    invoke-direct {v11, v4, v10}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    .line 23
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getTop_channel()Lcom/join/mgps/dto/HomeTopChannelBean;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getTop_channel()Lcom/join/mgps/dto/HomeTopChannelBean;

    move-result-object v10

    invoke-virtual {v10}, Lcom/join/mgps/dto/HomeTopChannelBean;->getDiscover()Lcom/join/mgps/dto/CommonGameInfoBean;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 25
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getTop_channel()Lcom/join/mgps/dto/HomeTopChannelBean;

    move-result-object v10

    invoke-virtual {v10}, Lcom/join/mgps/dto/HomeTopChannelBean;->getDiscover()Lcom/join/mgps/dto/CommonGameInfoBean;

    move-result-object v10

    invoke-virtual {v10}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object v10

    sget-object v11, Lcom/papa/sim/statistic/EventP$FirstModel;->home:Lcom/papa/sim/statistic/EventP$FirstModel;

    invoke-virtual {v11}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/join/mgps/dto/ExtBean;->setFirstModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v10

    sget-object v11, Lcom/papa/sim/statistic/EventP$SecondModel;->choiceness:Lcom/papa/sim/statistic/EventP$SecondModel;

    invoke-virtual {v11}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/join/mgps/dto/ExtBean;->setSecondModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v10

    const-string v11, "10003"

    invoke-virtual {v10, v11}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 26
    new-instance v10, Lcom/join/mgps/dto/CommonMultiItemBean;

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getTop_channel()Lcom/join/mgps/dto/HomeTopChannelBean;

    move-result-object v11

    invoke-virtual {v11}, Lcom/join/mgps/dto/HomeTopChannelBean;->getDiscover()Lcom/join/mgps/dto/CommonGameInfoBean;

    move-result-object v11

    const/4 v12, 0x3

    invoke-direct {v10, v12, v11}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    .line 27
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getEo_playing()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x4

    if-eqz v10, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getEo_playing()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_5

    .line 29
    new-instance v10, Lcom/join/mgps/dto/CommonMultiItemBean;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0712fa

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-direct {v10, v9, v12}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance v10, Lcom/join/mgps/dto/CommonMultiItemBean;

    const-string v12, "\u5927\u5bb6\u90fd\u5728\u73a9"

    invoke-direct {v10, v11, v12}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    .line 31
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v10, Lcom/join/mgps/dto/CommonMultiItemBean;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0715d6

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-direct {v10, v9, v12}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x0

    .line 33
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getEo_playing()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v10, v12, :cond_5

    .line 34
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getEo_playing()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 35
    invoke-direct {v1, v12}, Lcom/join/mgps/activity/t8;->B0(Lcom/join/mgps/dto/CommonGameInfoBean;)Lcom/join/mgps/dto/CommonGameInfoBean;

    move-result-object v12

    const/16 v13, 0x2714

    .line 36
    invoke-virtual {v12, v13}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 37
    invoke-virtual {v12, v13}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 38
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "22-4-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/join/mgps/dto/CommonGameInfoBean;->setExp_position(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v12}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object v14

    sget-object v15, Lcom/papa/sim/statistic/EventP$FirstModel;->home:Lcom/papa/sim/statistic/EventP$FirstModel;

    invoke-virtual {v15}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/join/mgps/dto/ExtBean;->setFirstModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v14

    sget-object v15, Lcom/papa/sim/statistic/EventP$SecondModel;->choiceness:Lcom/papa/sim/statistic/EventP$SecondModel;

    invoke-virtual {v15}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/join/mgps/dto/ExtBean;->setSecondModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v14

    const-string v15, "10004"

    invoke-virtual {v14, v15}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v14

    invoke-virtual {v14, v13}, Lcom/join/mgps/dto/ExtBean;->set_from_type(I)Lcom/join/mgps/dto/ExtBean;

    move-result-object v13

    invoke-virtual {v12}, Lcom/join/mgps/dto/CommonGameInfoBean;->getExp_position()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/join/mgps/dto/ExtBean;->setPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 40
    new-instance v13, Lcom/join/mgps/dto/CommonMultiItemBean;

    invoke-direct {v13, v5, v12}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    .line 41
    iget-object v14, v1, Lcom/join/mgps/activity/t8;->u:Ljava/util/List;

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 43
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getTop_channel()Lcom/join/mgps/dto/HomeTopChannelBean;

    move-result-object v10

    const v12, 0x7f071293

    if-eqz v10, :cond_9

    .line 44
    new-instance v10, Lcom/join/mgps/dto/CommonMultiItemBean;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-direct {v10, v9, v13}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v10, Lcom/join/mgps/dto/CommonMultiItemBean;

    const-string v13, "\u609f\u996d\u4e13\u680f"

    invoke-direct {v10, v11, v13}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    .line 46
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v10, Lcom/join/mgps/dto/CommonMultiItemBean;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-direct {v10, v9, v13}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getTop_channel()Lcom/join/mgps/dto/HomeTopChannelBean;

    move-result-object v10

    invoke-virtual {v10}, Lcom/join/mgps/dto/HomeTopChannelBean;->getTheNew()Lcom/join/mgps/dto/HomeDailyNewBean;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getTop_channel()Lcom/join/mgps/dto/HomeTopChannelBean;

    move-result-object v10

    invoke-virtual {v10}, Lcom/join/mgps/dto/HomeTopChannelBean;->getTheNew()Lcom/join/mgps/dto/HomeDailyNewBean;

    move-result-object v10

    new-instance v13, Lcom/join/mgps/dto/ExtBean;

    invoke-direct {v13}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    sget-object v14, Lcom/papa/sim/statistic/EventP$FirstModel;->home:Lcom/papa/sim/statistic/EventP$FirstModel;

    invoke-virtual {v14}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/join/mgps/dto/ExtBean;->setFirstModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v13

    sget-object v14, Lcom/papa/sim/statistic/EventP$SecondModel;->choiceness:Lcom/papa/sim/statistic/EventP$SecondModel;

    invoke-virtual {v14}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/join/mgps/dto/ExtBean;->setSecondModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v13

    const-string v14, "10007"

    invoke-virtual {v13, v14}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/join/mgps/dto/HomeDailyNewBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 50
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getTop_channel()Lcom/join/mgps/dto/HomeTopChannelBean;

    move-result-object v10

    invoke-virtual {v10}, Lcom/join/mgps/dto/HomeTopChannelBean;->getBroadcast()Lcom/join/mgps/dto/CommonGameInfoBean;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getTop_channel()Lcom/join/mgps/dto/HomeTopChannelBean;

    move-result-object v10

    invoke-virtual {v10}, Lcom/join/mgps/dto/HomeTopChannelBean;->getBroadcast()Lcom/join/mgps/dto/CommonGameInfoBean;

    move-result-object v10

    invoke-virtual {v10}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object v10

    sget-object v13, Lcom/papa/sim/statistic/EventP$FirstModel;->home:Lcom/papa/sim/statistic/EventP$FirstModel;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/join/mgps/dto/ExtBean;->setFirstModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v10

    sget-object v13, Lcom/papa/sim/statistic/EventP$SecondModel;->choiceness:Lcom/papa/sim/statistic/EventP$SecondModel;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/join/mgps/dto/ExtBean;->setSecondModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v10

    const-string v13, "10008"

    invoke-virtual {v10, v13}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 52
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getTop_channel()Lcom/join/mgps/dto/HomeTopChannelBean;

    move-result-object v10

    invoke-virtual {v10}, Lcom/join/mgps/dto/HomeTopChannelBean;->getAd_info()Lcom/join/mgps/dto/CommonGameInfoBean;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 53
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getTop_channel()Lcom/join/mgps/dto/HomeTopChannelBean;

    move-result-object v10

    invoke-virtual {v10}, Lcom/join/mgps/dto/HomeTopChannelBean;->getAd_info()Lcom/join/mgps/dto/CommonGameInfoBean;

    move-result-object v10

    invoke-virtual {v10}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object v10

    sget-object v13, Lcom/papa/sim/statistic/EventP$FirstModel;->home:Lcom/papa/sim/statistic/EventP$FirstModel;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/join/mgps/dto/ExtBean;->setFirstModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v10

    sget-object v13, Lcom/papa/sim/statistic/EventP$SecondModel;->choiceness:Lcom/papa/sim/statistic/EventP$SecondModel;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/join/mgps/dto/ExtBean;->setSecondModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v10

    const-string v13, "10009"

    invoke-virtual {v10, v13}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 54
    :cond_8
    new-instance v10, Lcom/join/mgps/dto/CommonMultiItemBean;

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getTop_channel()Lcom/join/mgps/dto/HomeTopChannelBean;

    move-result-object v13

    const/4 v14, 0x6

    invoke-direct {v10, v14, v13}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    .line 55
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getNew_online_game()Lcom/join/mgps/dto/HomeDynamicListBean;

    move-result-object v10

    if-eqz v10, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getNew_online_game()Lcom/join/mgps/dto/HomeDynamicListBean;

    move-result-object v10

    invoke-virtual {v10}, Lcom/join/mgps/dto/HomeDynamicListBean;->getMiddle()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getNew_online_game()Lcom/join/mgps/dto/HomeDynamicListBean;

    move-result-object v10

    invoke-virtual {v10}, Lcom/join/mgps/dto/HomeDynamicListBean;->getMiddle()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_c

    .line 57
    new-instance v10, Lcom/join/mgps/dto/CommonMultiItemBean;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-direct {v10, v9, v13}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getNew_online_game()Lcom/join/mgps/dto/HomeDynamicListBean;

    move-result-object v10

    invoke-virtual {v10}, Lcom/join/mgps/dto/HomeDynamicListBean;->getMiddle()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_c

    .line 59
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getNew_online_game()Lcom/join/mgps/dto/HomeDynamicListBean;

    move-result-object v10

    invoke-virtual {v10}, Lcom/join/mgps/dto/HomeDynamicListBean;->getMiddle()Ljava/util/List;

    move-result-object v10

    const/4 v13, 0x0

    .line 60
    :goto_3
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_c

    .line 61
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/join/mgps/dto/CommonGameInfoBean;

    invoke-direct {v1, v14}, Lcom/join/mgps/activity/t8;->B0(Lcom/join/mgps/dto/CommonGameInfoBean;)Lcom/join/mgps/dto/CommonGameInfoBean;

    move-result-object v14

    const/16 v15, 0x4e22

    .line 62
    invoke-virtual {v14, v15}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 63
    invoke-virtual {v14, v15}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "22-20-"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v13, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Lcom/join/mgps/dto/CommonGameInfoBean;->setExp_position(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v14}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object v4

    sget-object v17, Lcom/papa/sim/statistic/EventP$FirstModel;->home:Lcom/papa/sim/statistic/EventP$FirstModel;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/join/mgps/dto/ExtBean;->setFirstModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v4

    sget-object v6, Lcom/papa/sim/statistic/EventP$SecondModel;->choiceness:Lcom/papa/sim/statistic/EventP$SecondModel;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/join/mgps/dto/ExtBean;->setSecondModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v4

    const-string v6, "20002"

    invoke-virtual {v4, v6}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/join/mgps/dto/ExtBean;->set_from_type(I)Lcom/join/mgps/dto/ExtBean;

    move-result-object v4

    invoke-virtual {v14}, Lcom/join/mgps/dto/CommonGameInfoBean;->getExp_position()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/join/mgps/dto/ExtBean;->setPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    if-nez v13, :cond_b

    .line 66
    new-instance v4, Lcom/join/mgps/dto/CommonMultiItemBean;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v4, v9, v6}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v4, Lcom/join/mgps/dto/CommonMultiItemBean;

    invoke-direct {v4, v2, v14}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    .line 68
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getNew_online_game()Lcom/join/mgps/dto/HomeDynamicListBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/HomeDynamicListBean;->getTop()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getNew_online_game()Lcom/join/mgps/dto/HomeDynamicListBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/HomeDynamicListBean;->getTop()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getNew_online_game()Lcom/join/mgps/dto/HomeDynamicListBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/HomeDynamicListBean;->getTop()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 69
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getNew_online_game()Lcom/join/mgps/dto/HomeDynamicListBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/HomeDynamicListBean;->getTop()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/join/mgps/dto/CommonMultiItemBean;->setExtraData(Ljava/lang/Object;)V

    goto :goto_4

    :cond_a
    const-string v6, "\u70ed\u95e8\u6e38\u620f\u63a8\u8350"

    .line 70
    invoke-virtual {v4, v6}, Lcom/join/mgps/dto/CommonMultiItemBean;->setExtraData(Ljava/lang/Object;)V

    .line 71
    :goto_4
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v4, v1, Lcom/join/mgps/activity/t8;->u:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 73
    :cond_b
    new-instance v4, Lcom/join/mgps/dto/CommonMultiItemBean;

    invoke-direct {v4, v5, v14}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    .line 74
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v4, v1, Lcom/join/mgps/activity/t8;->u:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    move v13, v7

    const/4 v4, 0x2

    const v6, 0x7f071395

    const/4 v7, 0x1

    goto/16 :goto_3

    .line 76
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getRanking_list()Lcom/join/mgps/dto/HomeRankingListBean;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 77
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getRanking_list()Lcom/join/mgps/dto/HomeRankingListBean;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/join/mgps/activity/t8;->C0(Lcom/join/mgps/dto/HomeRankingListBean;)Lcom/join/mgps/dto/HomeRankingListBean;

    move-result-object v4

    .line 78
    new-instance v6, Lcom/join/mgps/dto/CommonMultiItemBean;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f071224

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-direct {v6, v9, v7}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v6, Lcom/join/mgps/dto/CommonMultiItemBean;

    const/16 v7, 0x9

    invoke-direct {v6, v7, v4}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    .line 80
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-virtual {v4}, Lcom/join/mgps/dto/HomeRankingListBean;->getList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 82
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getRanking_list()Lcom/join/mgps/dto/HomeRankingListBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/HomeRankingListBean;->getList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_d
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_d

    .line 83
    iget-object v7, v1, Lcom/join/mgps/activity/t8;->u:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6

    .line 84
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getHot_game_fav()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getHot_game_fav()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_10

    .line 85
    new-instance v4, Lcom/join/mgps/dto/CommonMultiItemBean;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v4, v9, v6}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v4, Lcom/join/mgps/dto/CommonMultiItemBean;

    const-string v6, "\u70ed\u95e8\u6e38\u620f\u5355"

    invoke-direct {v4, v11, v6}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    .line 87
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v4, Lcom/join/mgps/dto/CommonMultiItemBean;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f071395

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v4, v9, v6}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getHot_game_fav()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;

    .line 90
    new-instance v7, Lcom/join/mgps/dto/ExtBean;

    invoke-direct {v7}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    sget-object v10, Lcom/papa/sim/statistic/EventP$FirstModel;->home:Lcom/papa/sim/statistic/EventP$FirstModel;

    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/join/mgps/dto/ExtBean;->setFirstModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v7

    sget-object v10, Lcom/papa/sim/statistic/EventP$SecondModel;->choiceness:Lcom/papa/sim/statistic/EventP$SecondModel;

    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/join/mgps/dto/ExtBean;->setSecondModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v7

    const-string v10, "10011"

    invoke-virtual {v7, v10}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v7

    invoke-virtual {v6}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    goto :goto_7

    .line 91
    :cond_f
    new-instance v4, Lcom/join/mgps/dto/CommonMultiItemBean;

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getHot_game_fav()Ljava/util/List;

    move-result-object v6

    const/16 v7, 0xa

    invoke-direct {v4, v7, v6}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    .line 92
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getDynamic_module()Ljava/util/List;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v6, 0x2715

    const-string v7, "10005"

    const-string v10, "22-18-"

    const/16 v11, 0xce

    if-eqz v4, :cond_18

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getDynamic_module()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_18

    .line 94
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getDynamic_module()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_18

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/join/mgps/dto/HomeDynamicListBean;

    const-string v13, ""

    .line 95
    invoke-virtual {v12}, Lcom/join/mgps/dto/HomeDynamicListBean;->getTop()Ljava/util/List;

    move-result-object v14

    if-eqz v14, :cond_11

    invoke-virtual {v12}, Lcom/join/mgps/dto/HomeDynamicListBean;->getTop()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_11

    .line 96
    invoke-virtual {v12}, Lcom/join/mgps/dto/HomeDynamicListBean;->getTop()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_11

    .line 97
    invoke-virtual {v12}, Lcom/join/mgps/dto/HomeDynamicListBean;->getTop()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/join/mgps/dto/CommonGameInfoBean;

    invoke-virtual {v14}, Lcom/join/mgps/dto/CommonGameInfoBean;->getMain_title()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_11

    .line 98
    invoke-virtual {v12}, Lcom/join/mgps/dto/HomeDynamicListBean;->getTop()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/join/mgps/dto/CommonGameInfoBean;

    invoke-virtual {v13}, Lcom/join/mgps/dto/CommonGameInfoBean;->getMain_title()Ljava/lang/String;

    move-result-object v13

    .line 99
    :cond_11
    invoke-virtual {v12}, Lcom/join/mgps/dto/HomeDynamicListBean;->getMiddle()Ljava/util/List;

    move-result-object v14

    if-eqz v14, :cond_17

    .line 100
    invoke-virtual {v12}, Lcom/join/mgps/dto/HomeDynamicListBean;->getMiddle()Ljava/util/List;

    move-result-object v14

    .line 101
    invoke-virtual {v12}, Lcom/join/mgps/dto/HomeDynamicListBean;->getDynamic_module_tpl_type()I

    move-result v15

    const/4 v5, 0x1

    if-eq v15, v5, :cond_14

    const/4 v5, 0x2

    if-eq v15, v5, :cond_12

    goto/16 :goto_c

    .line 102
    :cond_12
    new-instance v12, Lcom/join/mgps/dto/CommonMultiItemBean;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-direct {v12, v9, v15}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_9
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_13

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 104
    invoke-direct {v1, v15}, Lcom/join/mgps/activity/t8;->B0(Lcom/join/mgps/dto/CommonGameInfoBean;)Lcom/join/mgps/dto/CommonGameInfoBean;

    move-result-object v15

    .line 105
    invoke-virtual {v15, v11}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 106
    invoke-virtual {v15, v11}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 107
    iget v3, v1, Lcom/join/mgps/activity/t8;->v:I

    const/16 v16, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lcom/join/mgps/activity/t8;->v:I

    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/join/mgps/activity/t8;->v:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/join/mgps/dto/CommonGameInfoBean;->setExp_position(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v15}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/EventP$FirstModel;->home:Lcom/papa/sim/statistic/EventP$FirstModel;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/join/mgps/dto/ExtBean;->setFirstModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/EventP$SecondModel;->choiceness:Lcom/papa/sim/statistic/EventP$SecondModel;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/join/mgps/dto/ExtBean;->setSecondModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/join/mgps/dto/ExtBean;->set_from_type(I)Lcom/join/mgps/dto/ExtBean;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v3

    invoke-virtual {v15}, Lcom/join/mgps/dto/CommonGameInfoBean;->getExp_position()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/join/mgps/dto/ExtBean;->setPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    const v3, 0x7f07133d

    const/4 v5, 0x2

    goto :goto_9

    .line 110
    :cond_13
    new-instance v3, Lcom/join/mgps/dto/CommonMultiItemBean;

    const/16 v5, 0x8

    invoke-direct {v3, v5, v14}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    .line 111
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :cond_14
    const/4 v3, 0x0

    .line 112
    :goto_a
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_17

    .line 113
    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/CommonGameInfoBean;

    invoke-direct {v1, v5}, Lcom/join/mgps/activity/t8;->B0(Lcom/join/mgps/dto/CommonGameInfoBean;)Lcom/join/mgps/dto/CommonGameInfoBean;

    move-result-object v5

    .line 114
    invoke-virtual {v5, v11}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 115
    invoke-virtual {v5, v11}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 116
    iget v15, v1, Lcom/join/mgps/activity/t8;->v:I

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    iput v15, v1, Lcom/join/mgps/activity/t8;->v:I

    .line 117
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/join/mgps/activity/t8;->v:I

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/join/mgps/dto/CommonGameInfoBean;->setExp_position(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v5}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object v11

    sget-object v15, Lcom/papa/sim/statistic/EventP$FirstModel;->home:Lcom/papa/sim/statistic/EventP$FirstModel;

    invoke-virtual {v15}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Lcom/join/mgps/dto/ExtBean;->setFirstModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v11

    sget-object v15, Lcom/papa/sim/statistic/EventP$SecondModel;->choiceness:Lcom/papa/sim/statistic/EventP$SecondModel;

    invoke-virtual {v15}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Lcom/join/mgps/dto/ExtBean;->setSecondModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v11

    invoke-virtual {v11, v7}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v11

    invoke-virtual {v11, v6}, Lcom/join/mgps/dto/ExtBean;->set_from_type(I)Lcom/join/mgps/dto/ExtBean;

    move-result-object v11

    invoke-virtual {v11, v13}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v11

    invoke-virtual {v5}, Lcom/join/mgps/dto/CommonGameInfoBean;->getExp_position()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Lcom/join/mgps/dto/ExtBean;->setPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    if-nez v3, :cond_16

    .line 119
    new-instance v11, Lcom/join/mgps/dto/CommonMultiItemBean;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v6, 0x7f07137f

    invoke-virtual {v15, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v11, v9, v6}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v6, Lcom/join/mgps/dto/CommonMultiItemBean;

    invoke-direct {v6, v2, v5}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    .line 121
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v11, v1, Lcom/join/mgps/activity/t8;->u:Ljava/util/List;

    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-virtual {v12}, Lcom/join/mgps/dto/HomeDynamicListBean;->getTop()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_15

    invoke-virtual {v12}, Lcom/join/mgps/dto/HomeDynamicListBean;->getTop()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_15

    .line 124
    invoke-virtual {v12}, Lcom/join/mgps/dto/HomeDynamicListBean;->getTop()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/join/mgps/dto/CommonMultiItemBean;->setExtraData(Ljava/lang/Object;)V

    :cond_15
    const/4 v11, 0x5

    goto :goto_b

    .line 125
    :cond_16
    new-instance v6, Lcom/join/mgps/dto/CommonMultiItemBean;

    const/4 v11, 0x5

    invoke-direct {v6, v11, v5}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    .line 126
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v6, v1, Lcom/join/mgps/activity/t8;->u:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_b
    add-int/lit8 v3, v3, 0x1

    const/16 v6, 0x2715

    const/16 v11, 0xce

    goto/16 :goto_a

    :cond_17
    :goto_c
    const/4 v11, 0x5

    const v3, 0x7f07133d

    const/4 v5, 0x5

    const/16 v6, 0x2715

    const/16 v11, 0xce

    goto/16 :goto_8

    .line 128
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getGuess_you_like()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_19

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getGuess_you_like()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_19

    .line 129
    new-instance v2, Lcom/join/mgps/dto/CommonMultiItemBean;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f071395

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v2, v9, v3}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PapaHomeBeanV9;->getGuess_you_like()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 131
    invoke-direct {v1, v3}, Lcom/join/mgps/activity/t8;->B0(Lcom/join/mgps/dto/CommonGameInfoBean;)Lcom/join/mgps/dto/CommonGameInfoBean;

    move-result-object v3

    const/16 v4, 0xce

    .line 132
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 133
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 134
    iget v5, v1, Lcom/join/mgps/activity/t8;->v:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, v1, Lcom/join/mgps/activity/t8;->v:I

    .line 135
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/join/mgps/activity/t8;->v:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/join/mgps/dto/CommonGameInfoBean;->setExp_position(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v3}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object v5

    sget-object v8, Lcom/papa/sim/statistic/EventP$FirstModel;->home:Lcom/papa/sim/statistic/EventP$FirstModel;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/join/mgps/dto/ExtBean;->setFirstModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v5

    sget-object v8, Lcom/papa/sim/statistic/EventP$SecondModel;->choiceness:Lcom/papa/sim/statistic/EventP$SecondModel;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/join/mgps/dto/ExtBean;->setSecondModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v5

    const/16 v8, 0x2715

    invoke-virtual {v5, v8}, Lcom/join/mgps/dto/ExtBean;->set_from_type(I)Lcom/join/mgps/dto/ExtBean;

    move-result-object v5

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommonGameInfoBean;->getExp_position()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/join/mgps/dto/ExtBean;->setPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 137
    new-instance v5, Lcom/join/mgps/dto/CommonMultiItemBean;

    const/16 v9, 0xb

    invoke-direct {v5, v9, v3}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    .line 138
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v5, v1, Lcom/join/mgps/activity/t8;->u:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 140
    :cond_19
    iput-object v0, v1, Lcom/join/mgps/activity/t8;->o:Ljava/util/List;

    .line 141
    iget-object v2, v1, Lcom/join/mgps/activity/t8;->p:Lcom/join/mgps/adapter/f6;

    invoke-virtual {v2, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 142
    iget-object v0, v1, Lcom/join/mgps/activity/t8;->x:Landroid/os/Handler;

    new-instance v2, Lcom/join/mgps/activity/s8;

    invoke-direct {v2, v1}, Lcom/join/mgps/activity/s8;-><init>(Lcom/join/mgps/activity/t8;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_e

    :catch_0
    move-exception v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1a
    :goto_e
    return-void
.end method

.method public z(Lcom/join/mgps/dto/CommonGameInfoBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExposure()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/t8;->u0(Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p1, v0}, Lcom/join/kotlin/base/impl/BaseDownloadable;->setExposure(Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method z0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/t8;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->stopRefresh()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/t8;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->stopLoadMore()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
