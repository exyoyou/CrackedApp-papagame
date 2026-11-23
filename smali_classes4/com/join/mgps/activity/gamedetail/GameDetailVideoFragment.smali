.class public Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;
.super Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d033d
.end annotation


# instance fields
.field accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

.field butnProgressBar:Landroid/widget/ProgressBar;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field butn_showdownload:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field content:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

.field controller:Landroid/widget/MediaController;

.field cover:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field coverback:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field extBean:Lcom/join/mgps/dto/ExtBean;

.field gameId:Ljava/lang/String;

.field gameName:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field icon:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field instalButtomButn:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field instalbutnLayout:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

.field mpx:Landroid/media/MediaPlayer;

.field nowIsNoSound:Z

.field percent:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field playIcon:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private playUrl:Ljava/lang/String;

.field prefDef:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field progressbarLayout:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private proxy:Lcom/danikula/videocache/i;

.field private proxyUrl:Ljava/lang/String;

.field rpcClient:Lcom/join/mgps/rpc/e;

.field sound:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field statuHVIew:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private statubarH:I

.field videoView:Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->nowIsNoSound:Z

    .line 6
    .line 7
    return-void
.end method

.method private getStatusBarHeight(Landroid/content/Context;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "dimen"

    .line 6
    .line 7
    const-string v2, "android"

    .line 8
    .line 9
    const-string v3, "status_bar_height"

    .line 10
    .line 11
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-lez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    :goto_0
    return p1
.end method

.method private uptateUi()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v3, 0x1

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v4, 0x2

    .line 19
    new-array v4, v4, [Ljava/lang/Object;

    .line 20
    .line 21
    iget-object v5, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 22
    .line 23
    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-virtual {v5}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    aput-object v5, v4, v2

    .line 32
    .line 33
    iget-object v5, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 34
    .line 35
    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-virtual {v5}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    aput-object v5, v4, v3

    .line 44
    .line 45
    invoke-virtual {v0, v4}, Lq5/f;->H([Ljava/lang/Object;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-object v4, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 55
    .line 56
    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPackageName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v0, v4}, Lq5/f;->I(Ljava/lang/String;)Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    :goto_0
    if-eqz v0, :cond_9

    .line 65
    .line 66
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-lez v4, :cond_9

    .line 71
    .line 72
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const/4 v4, 0x0

    .line 77
    :cond_1
    const/4 v5, 0x0

    .line 78
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    if-eqz v6, :cond_4

    .line 83
    .line 84
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    check-cast v6, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 89
    .line 90
    sget-object v7, Lcom/join/mgps/enums/Dtype;->MOD:Lcom/join/mgps/enums/Dtype;

    .line 91
    .line 92
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    if-eqz v7, :cond_3

    .line 105
    .line 106
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    invoke-virtual {v4, v7}, Lcom/join/mgps/va/overmind/i;->K(Ljava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    if-eqz v4, :cond_2

    .line 119
    .line 120
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    if-ne v4, v1, :cond_2

    .line 125
    .line 126
    const/4 v4, 0x1

    .line 127
    goto :goto_1

    .line 128
    :cond_2
    const/4 v4, 0x0

    .line 129
    goto :goto_1

    .line 130
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    invoke-static {v5}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v8

    .line 146
    invoke-virtual {v5, v7, v8}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    if-eqz v5, :cond_1

    .line 151
    .line 152
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    if-ne v5, v1, :cond_1

    .line 157
    .line 158
    const/4 v5, 0x1

    .line 159
    goto :goto_1

    .line 160
    :cond_4
    if-eqz v4, :cond_5

    .line 161
    .line 162
    if-eqz v5, :cond_5

    .line 163
    .line 164
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->gameId:Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {v0, v3}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_5
    if-eqz v4, :cond_6

    .line 178
    .line 179
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 180
    .line 181
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    if-eqz v0, :cond_9

    .line 186
    .line 187
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 192
    .line 193
    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    invoke-virtual {v3}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    invoke-virtual {v0, v3}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_6
    if-eqz v5, :cond_7

    .line 209
    .line 210
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->gameId:Ljava/lang/String;

    .line 215
    .line 216
    invoke-virtual {v0, v3}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 221
    .line 222
    goto :goto_2

    .line 223
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 224
    .line 225
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    if-eqz v0, :cond_8

    .line 230
    .line 231
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 236
    .line 237
    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    invoke-virtual {v3}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    invoke-virtual {v0, v3}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 250
    .line 251
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 252
    .line 253
    if-nez v0, :cond_9

    .line 254
    .line 255
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->gameId:Ljava/lang/String;

    .line 260
    .line 261
    invoke-virtual {v0, v3}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 266
    .line 267
    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 268
    .line 269
    if-nez v0, :cond_d

    .line 270
    .line 271
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 272
    .line 273
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 278
    .line 279
    const/16 v3, 0x2775

    .line 280
    .line 281
    invoke-virtual {v0, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from(I)V

    .line 282
    .line 283
    .line 284
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 285
    .line 286
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getTag_info()Ljava/util/ArrayList;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->p0(Ljava/util/List;)Z

    .line 291
    .line 292
    .line 293
    move-result v0

    .line 294
    if-eqz v0, :cond_c

    .line 295
    .line 296
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 297
    .line 298
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    if-nez v0, :cond_e

    .line 303
    .line 304
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 305
    .line 306
    sget-object v3, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    .line 307
    .line 308
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    invoke-virtual {v0, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFileType(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 316
    .line 317
    invoke-static {v0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 322
    .line 323
    iget-object v4, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 324
    .line 325
    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPackageName()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v4

    .line 329
    invoke-virtual {v0, v3, v4}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 330
    .line 331
    .line 332
    move-result v0

    .line 333
    if-eqz v0, :cond_b

    .line 334
    .line 335
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 336
    .line 337
    invoke-static {v0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 342
    .line 343
    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 344
    .line 345
    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPackageName()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v3

    .line 349
    invoke-virtual {v0, v2, v3}, Lcom/join/android/app/common/utils/APKUtils;->n(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 354
    .line 355
    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getVer()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v2

    .line 359
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 360
    .line 361
    .line 362
    move-result v2

    .line 363
    if-eqz v2, :cond_a

    .line 364
    .line 365
    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    .line 366
    .line 367
    .line 368
    move-result v0

    .line 369
    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 370
    .line 371
    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getVer()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 376
    .line 377
    .line 378
    move-result v2

    .line 379
    if-ge v0, v2, :cond_a

    .line 380
    .line 381
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 382
    .line 383
    const/16 v1, 0x9

    .line 384
    .line 385
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 386
    .line 387
    .line 388
    goto :goto_3

    .line 389
    :cond_a
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 390
    .line 391
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 392
    .line 393
    .line 394
    goto :goto_3

    .line 395
    :cond_b
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 396
    .line 397
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 398
    .line 399
    .line 400
    goto :goto_3

    .line 401
    :cond_c
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 402
    .line 403
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 404
    .line 405
    .line 406
    goto :goto_3

    .line 407
    :cond_d
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownloadType(I)V

    .line 408
    .line 409
    .line 410
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 411
    .line 412
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setTask_down_type(I)V

    .line 413
    .line 414
    .line 415
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 416
    .line 417
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 418
    .line 419
    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getScreenshot_pic()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v1

    .line 423
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setScreenshot_pic(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    :cond_e
    :goto_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->updateButn()V

    .line 427
    .line 428
    .line 429
    return-void
.end method


# virtual methods
.method addFrom(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "112"

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 33
    .line 34
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v2, "101"

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->getLocation()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setLocation(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string v1, "1"

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setNodeId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 57
    .line 58
    .line 59
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1, v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setExt(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setExt(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    :goto_0
    return-void
.end method

.method afterView()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 10
    .line 11
    iput-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 12
    .line 13
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iput-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->rpcClient:Lcom/join/mgps/rpc/e;

    .line 18
    .line 19
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1, p0}, Lcom/join/mgps/Util/j0;->d(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    if-eqz v0, :cond_6

    .line 27
    .line 28
    const-string v1, "videoDatas"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/join/mgps/activity/gamedetail/GamedetailViewbean;

    .line 35
    .line 36
    if-eqz v1, :cond_6

    .line 37
    .line 38
    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 39
    .line 40
    invoke-static {v2}, Lcom/join/android/app/common/utils/m;->k(Landroid/content/Context;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-nez v2, :cond_0

    .line 45
    .line 46
    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 47
    .line 48
    invoke-static {v2}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    const-string v3, "\u5f53\u524d\u4e3a\u975eWi-Fi\u73af\u5883\uff0c\u8bf7\u6ce8\u610f\u6d41\u91cf\u6d88\u8017"

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->soundnowIsNoSound()Lorg/androidannotations/api/sharedpreferences/d;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Ljava/lang/Boolean;

    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    iput-boolean v2, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->nowIsNoSound:Z

    .line 74
    .line 75
    if-eqz v2, :cond_1

    .line 76
    .line 77
    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->sound:Landroid/widget/ImageView;

    .line 78
    .line 79
    const v3, 0x7f080611

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->sound:Landroid/widget/ImageView;

    .line 87
    .line 88
    const v3, 0x7f080612

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    .line 93
    .line 94
    :goto_0
    invoke-virtual {v1}, Lcom/join/mgps/activity/gamedetail/GamedetailViewbean;->getVideo_url()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/join/mgps/activity/gamedetail/GamedetailViewbean;->getVideo_url()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    iput-object v2, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->playUrl:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    check-cast v2, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 112
    .line 113
    invoke-virtual {v2}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->getModleFourBeanShow()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    iput-object v2, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 118
    .line 119
    const-string v2, "gameId"

    .line 120
    .line 121
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    iput-object v2, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->gameId:Ljava/lang/String;

    .line 126
    .line 127
    const-string v2, "extBean"

    .line 128
    .line 129
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    check-cast v0, Lcom/join/mgps/dto/ExtBean;

    .line 134
    .line 135
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 136
    .line 137
    if-nez v0, :cond_2

    .line 138
    .line 139
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 140
    .line 141
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 142
    .line 143
    .line 144
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 145
    .line 146
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 147
    .line 148
    if-nez v0, :cond_3

    .line 149
    .line 150
    return-void

    .line 151
    :cond_3
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->gameId:Ljava/lang/String;

    .line 156
    .line 157
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->icon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 158
    .line 159
    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 160
    .line 161
    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getIco_remote()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 166
    .line 167
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    const v5, 0x7f071374

    .line 172
    .line 173
    .line 174
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    int-to-float v4, v4

    .line 179
    invoke-static {v3, v4}, Lcom/join/android/app/common/utils/l;->F(Landroid/content/Context;F)Lcom/facebook/drawee/generic/RoundingParams;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    invoke-static {v0, v2, v3}, Lcom/join/android/app/common/utils/l;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 184
    .line 185
    .line 186
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->content:Landroid/widget/TextView;

    .line 187
    .line 188
    invoke-virtual {v1}, Lcom/join/mgps/activity/gamedetail/GamedetailViewbean;->getSub_title()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    .line 194
    .line 195
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->gameName:Landroid/widget/TextView;

    .line 196
    .line 197
    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 198
    .line 199
    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_name()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    .line 205
    .line 206
    new-instance v0, Landroid/widget/MediaController;

    .line 207
    .line 208
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    invoke-direct {v0, v2}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 213
    .line 214
    .line 215
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->controller:Landroid/widget/MediaController;

    .line 216
    .line 217
    const/4 v2, 0x4

    .line 218
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-static {v0}, Lcom/MApplication;->q(Landroid/content/Context;)Lcom/danikula/videocache/i;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->proxy:Lcom/danikula/videocache/i;

    .line 234
    .line 235
    invoke-virtual {v1}, Lcom/join/mgps/activity/gamedetail/GamedetailViewbean;->getVideo_url()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    invoke-virtual {v0, v2}, Lcom/danikula/videocache/i;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->proxyUrl:Ljava/lang/String;

    .line 244
    .line 245
    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->videoView:Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;

    .line 246
    .line 247
    const/4 v3, 0x1

    .line 248
    const-string v4, ""

    .line 249
    .line 250
    invoke-virtual {v2, v0, v3, v4}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setUp(Ljava/lang/String;ZLjava/lang/String;)Z

    .line 251
    .line 252
    .line 253
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->videoView:Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;

    .line 254
    .line 255
    iget-object v0, v0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->thumbImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 256
    .line 257
    invoke-virtual {v1}, Lcom/join/mgps/activity/gamedetail/GamedetailViewbean;->getVideoCover()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    sget-object v2, Lcom/facebook/drawee/drawable/s$c;->i:Lcom/facebook/drawee/drawable/s$c;

    .line 262
    .line 263
    invoke-static {v0, v1, v2}, Lcom/join/android/app/common/utils/l;->i(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/drawable/s$c;)V

    .line 264
    .line 265
    .line 266
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->videoView:Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;

    .line 267
    .line 268
    iget-boolean v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->nowIsNoSound:Z

    .line 269
    .line 270
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setMute(Z)V

    .line 271
    .line 272
    .line 273
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->videoView:Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;

    .line 274
    .line 275
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    if-eqz v0, :cond_4

    .line 280
    .line 281
    const/4 v1, 0x7

    .line 282
    if-ne v0, v1, :cond_5

    .line 283
    .line 284
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->videoView:Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;

    .line 285
    .line 286
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->startPlayLogic()V

    .line 287
    .line 288
    .line 289
    const-string v0, "xxxxxxxx"

    .line 290
    .line 291
    const-string v1, "detailVIdeo PlayVideo"

    .line 292
    .line 293
    invoke-static {v0, v1}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->showVideo()V

    .line 297
    .line 298
    .line 299
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->getStatusBarHeight(Landroid/content/Context;)I

    .line 304
    .line 305
    .line 306
    move-result v0

    .line 307
    iput v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->statubarH:I

    .line 308
    .line 309
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->statuHVIew:Landroid/view/View;

    .line 310
    .line 311
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 316
    .line 317
    iget v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->statubarH:I

    .line 318
    .line 319
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 320
    .line 321
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->statuHVIew:Landroid/view/View;

    .line 322
    .line 323
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 324
    .line 325
    .line 326
    invoke-direct {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->uptateUi()V

    .line 327
    .line 328
    .line 329
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->updateButn()V

    .line 330
    .line 331
    .line 332
    return-void
.end method

.method changeGameFollow(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_6

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 35
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 36
    .line 37
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 42
    .line 43
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 52
    .line 53
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 54
    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v2, "_"

    .line 64
    .line 65
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    goto :goto_1

    .line 76
    :catch_0
    move-exception v1

    .line 77
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    .line 79
    .line 80
    const-string v1, ""

    .line 81
    .line 82
    :goto_1
    new-instance v2, Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;

    .line 83
    .line 84
    invoke-direct {v2}, Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;->setApp_ver(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 91
    .line 92
    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;->setGame_id(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;->setUid(I)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getMobile()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;->setMobile(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 112
    .line 113
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getDetialFollowAnd(Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;)Lcom/join/mgps/dto/CommonRequestBean;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    const/4 v1, 0x1

    .line 122
    if-eq p1, v1, :cond_5

    .line 123
    .line 124
    const/4 v1, 0x2

    .line 125
    if-eq p1, v1, :cond_4

    .line 126
    .line 127
    const/4 v1, 0x3

    .line 128
    if-eq p1, v1, :cond_3

    .line 129
    .line 130
    const/4 v1, 0x4

    .line 131
    if-eq p1, v1, :cond_2

    .line 132
    .line 133
    const/4 v0, 0x0

    .line 134
    goto :goto_2

    .line 135
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->rpcClient:Lcom/join/mgps/rpc/e;

    .line 136
    .line 137
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/e;->M0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    goto :goto_2

    .line 142
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->rpcClient:Lcom/join/mgps/rpc/e;

    .line 143
    .line 144
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/e;->g(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    goto :goto_2

    .line 149
    :cond_4
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->rpcClient:Lcom/join/mgps/rpc/e;

    .line 150
    .line 151
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/e;->n(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    goto :goto_2

    .line 156
    :cond_5
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->rpcClient:Lcom/join/mgps/rpc/e;

    .line 157
    .line 158
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/e;->j1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    :goto_2
    if-eqz v0, :cond_6

    .line 163
    .line 164
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->updateTitleButn(Lcom/join/mgps/dto/ResultMainBean;I)V

    .line 165
    .line 166
    .line 167
    :cond_6
    return-void
.end method

.method public clearVideo()V
    .locals 2

    .line 1
    const-string v0, "sssssssscc"

    .line 2
    .line 3
    const-string v1, "clearVideo"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->videoView:Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->release()V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->controller:Landroid/widget/MediaController;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method coverText()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->videoView:Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->clickPlay()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method delayCheckplay()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x3e8L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->videoView:Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x7

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->videoView:Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->startPlayLogic()V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method gameInfoLayout()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 2
    .line 3
    sget-boolean v1, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->hasInAnim:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    .line 17
    .line 18
    :cond_0
    :goto_0
    return-void
.end method

.method instalButtomButn()V
    .locals 13
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_book()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getBespeak_switch()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_status()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 3
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLoginNetGame(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_book()I

    move-result v0

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 5
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->changeGameFollow(I)V

    :cond_1
    :goto_0
    return-void

    .line 6
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v5}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v4, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v5, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_url_remote()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v4, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-static {v0, v4}, Lcom/join/mgps/Util/UtilsMy;->j3(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 10
    :goto_1
    iget-object v5, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/16 v6, 0x2b

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v5

    iget-object v7, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v7}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_5

    const/16 v0, 0x2b

    .line 11
    :cond_5
    iget-object v5, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    const/4 v7, 0x5

    if-eqz v5, :cond_10

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v5

    if-eqz v5, :cond_10

    .line 12
    iget-object v5, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 13
    invoke-static {}, Lq5/f;->M()Lq5/f;

    move-result-object v5

    new-array v8, v2, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v9}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v9

    invoke-virtual {v9}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    iget-object v9, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v9}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v9

    invoke-virtual {v9}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-virtual {v5, v8}, Lq5/f;->H([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    goto :goto_2

    .line 14
    :cond_6
    invoke-static {}, Lq5/f;->M()Lq5/f;

    move-result-object v5

    iget-object v8, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v8}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lq5/f;->I(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    :goto_2
    if-eqz v5, :cond_f

    .line 15
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_f

    .line 16
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v8, 0x0

    :cond_7
    const/4 v9, 0x0

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 17
    sget-object v11, Lcom/join/mgps/enums/Dtype;->MOD:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v11}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 18
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    move-result-object v8

    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/join/mgps/va/overmind/i;->K(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v8

    if-ne v8, v7, :cond_8

    const/4 v8, 0x1

    goto :goto_3

    :cond_8
    const/4 v8, 0x0

    goto :goto_3

    .line 19
    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    move-result-object v9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v9

    if-ne v9, v7, :cond_7

    const/4 v9, 0x1

    goto :goto_3

    :cond_a
    if-eqz v8, :cond_b

    if-eqz v9, :cond_b

    .line 20
    invoke-static {}, Lq5/f;->M()Lq5/f;

    move-result-object v5

    iget-object v8, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->gameId:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v5

    iput-object v5, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    goto :goto_4

    :cond_b
    if-eqz v8, :cond_c

    .line 21
    iget-object v5, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v5

    if-eqz v5, :cond_10

    .line 22
    invoke-static {}, Lq5/f;->M()Lq5/f;

    move-result-object v5

    iget-object v8, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v8}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v8

    invoke-virtual {v8}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v5

    iput-object v5, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    goto :goto_4

    :cond_c
    if-eqz v9, :cond_d

    .line 23
    invoke-static {}, Lq5/f;->M()Lq5/f;

    move-result-object v5

    iget-object v8, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->gameId:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v5

    iput-object v5, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    goto :goto_4

    .line 24
    :cond_d
    iget-object v5, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 25
    invoke-static {}, Lq5/f;->M()Lq5/f;

    move-result-object v5

    iget-object v8, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v8}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v8

    invoke-virtual {v8}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v5

    iput-object v5, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 26
    :cond_e
    iget-object v5, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v5, :cond_10

    .line 27
    invoke-static {}, Lq5/f;->M()Lq5/f;

    move-result-object v5

    iget-object v8, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->gameId:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v5

    iput-object v5, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    goto :goto_4

    :cond_f
    const/4 v5, 0x0

    .line 28
    iput-object v5, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 29
    :cond_10
    :goto_4
    iget-object v5, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v5, :cond_12

    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->extBean:Lcom/join/mgps/dto/ExtBean;

    const-string v1, "101"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    if-eqz v0, :cond_11

    .line 32
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->extBean:Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadPointBase;->setExt(Ljava/lang/String;)V

    .line 33
    :cond_11
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->d1(Landroid/content/Context;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    return-void

    :cond_12
    if-eqz v5, :cond_14

    if-eq v0, v2, :cond_13

    const/16 v8, 0xa

    if-ne v0, v8, :cond_14

    .line 34
    :cond_13
    invoke-static {v5}, Lcom/php25/PDownload/d;->i(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_a

    :cond_14
    const/16 v8, 0xc

    if-eq v0, v8, :cond_3c

    const/16 v8, 0x1b

    if-ne v0, v8, :cond_15

    goto/16 :goto_b

    :cond_15
    const/16 v8, 0xd

    if-ne v0, v8, :cond_16

    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-static {v0, v5}, Lcom/php25/PDownload/d;->l(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void

    :cond_16
    if-ne v0, v7, :cond_17

    .line 36
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    const-string v1, "2"

    invoke-static {v0, v5, v1}, Lcom/join/mgps/Util/UtilsMy;->p4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_17
    const/16 v8, 0x2a

    if-ne v0, v8, :cond_19

    .line 37
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getVer_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_url_remote()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCfg_ver()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCfg_ver_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver_name(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCfg_down_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_down_url(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    move-result v4

    :cond_18
    invoke-virtual {v0, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPay_game_amount(I)V

    .line 44
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    sget-object v1, Lcom/papa/sim/statistic/Where;->detail:Lcom/papa/sim/statistic/Where;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setKeyword(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setKeyword(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->W4(Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->O4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_a

    :cond_19
    const/16 v8, 0x9

    const-string v9, "checkgame"

    if-ne v0, v8, :cond_29

    .line 48
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v0

    if-nez v0, :cond_3b

    .line 49
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 50
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    move-result-object v0

    const-string v1, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    return-void

    .line 51
    :cond_1a
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialMoreBean;->getTpl_two_qq()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 52
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-static {v0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    move-result-object v0

    iget-object v5, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v6, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v6}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/GamedetialMoreBean;->getTpl_two_qq_key()Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v8}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    move-result-object v8

    invoke-virtual {v8}, Lcom/join/mgps/dto/GamedetialMoreBean;->getAd_pic_qq()Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v10}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    move-result-object v10

    invoke-virtual {v10}, Lcom/join/mgps/dto/GamedetialMoreBean;->getTpl_two_qq()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v5, v6, v8, v10}, Lcom/join/mgps/Util/g0;->d0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_1b
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDownloadType()I

    move-result v0

    if-eqz v0, :cond_1d

    if-eq v0, v3, :cond_1d

    if-eq v0, v2, :cond_1c

    goto/16 :goto_a

    .line 54
    :cond_1c
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->R4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_a

    .line 55
    :cond_1d
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto/16 :goto_7

    .line 56
    :cond_1e
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->addFrom(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 57
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->o1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_1f

    return-void

    .line 58
    :cond_1f
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_status()I

    move-result v0

    if-ne v0, v7, :cond_20

    .line 59
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void

    .line 60
    :cond_20
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0}, Lcom/php25/PDownload/d;->b(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 61
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getVer_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_url_remote()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCfg_ver()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCfg_ver_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver_name(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCfg_down_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_down_url(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    move-result v4

    :cond_21
    invoke-virtual {v0, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPay_game_amount(I)V

    .line 68
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    sget-object v1, Lcom/papa/sim/statistic/Where;->detail:Lcom/papa/sim/statistic/Where;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setKeyword(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->W4(Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->z0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_25

    .line 71
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->extBean:Lcom/join/mgps/dto/ExtBean;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 72
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->gameId:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->extBean:Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->getFrom_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/join/mgps/Util/UtilsMy;->A4(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 73
    :cond_22
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->o1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_5

    .line 74
    :cond_23
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_status()I

    move-result v0

    if-ne v0, v7, :cond_24

    .line 75
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_5

    .line 76
    :cond_24
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->gameId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->z4(Landroid/content/Context;Ljava/lang/String;)V

    .line 77
    :goto_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->onDetailDownload()V

    goto/16 :goto_a

    .line 78
    :cond_25
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->D1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    .line 79
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->o1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_6

    .line 80
    :cond_26
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_status()I

    move-result v0

    if-ne v0, v7, :cond_27

    .line 81
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_6

    .line 82
    :cond_27
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getTp_down_url()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getOther_down_switch()I

    move-result v3

    iget-object v4, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCdn_down_switch()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/join/mgps/Util/UtilsMy;->U0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    .line 83
    :goto_6
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->onDetailDownload()V

    goto/16 :goto_a

    :cond_28
    :goto_7
    return-void

    :cond_29
    const/16 v1, 0xb

    if-ne v1, v0, :cond_2a

    .line 84
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-static {v5, v0}, Lcom/join/mgps/Util/UtilsMy;->w4(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto/16 :goto_a

    :cond_2a
    if-ne v6, v0, :cond_32

    .line 85
    sget-object v0, Lcom/papa/sim/statistic/Where;->detail:Lcom/papa/sim/statistic/Where;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setKeyword(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    if-eqz v0, :cond_3b

    .line 87
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->addFrom(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 88
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialMoreBean;->getTpl_two_qq()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 89
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-static {v0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getTpl_two_qq_key()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialMoreBean;->getAd_pic_qq()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialMoreBean;->getTpl_two_qq()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/join/mgps/Util/g0;->d0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_2b
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->z0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2f

    .line 91
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->extBean:Lcom/join/mgps/dto/ExtBean;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 92
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->gameId:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->extBean:Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->getFrom_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/join/mgps/Util/UtilsMy;->A4(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 93
    :cond_2c
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->o1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_2d

    goto :goto_8

    .line 94
    :cond_2d
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_status()I

    move-result v0

    if-ne v0, v7, :cond_2e

    .line 95
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_8

    .line 96
    :cond_2e
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->gameId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->z4(Landroid/content/Context;Ljava/lang/String;)V

    .line 97
    :goto_8
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->onDetailDownload()V

    goto/16 :goto_a

    .line 98
    :cond_2f
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->D1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    .line 99
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->o1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_30

    goto/16 :goto_a

    .line 100
    :cond_30
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_status()I

    move-result v0

    if-ne v0, v7, :cond_31

    .line 101
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_a

    .line 102
    :cond_31
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getTp_down_url()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getOther_down_switch()I

    move-result v3

    iget-object v4, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCdn_down_switch()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/join/mgps/Util/UtilsMy;->U0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    goto/16 :goto_a

    :cond_32
    const/16 v1, 0x30

    if-ne v1, v0, :cond_33

    goto/16 :goto_a

    .line 103
    :cond_33
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->gamePageDownload_type:Lcom/papa/sim/statistic/Event;

    new-instance v2, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->gameId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 104
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    sget-object v1, Lcom/papa/sim/statistic/Where;->detail:Lcom/papa/sim/statistic/Where;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setKeyword(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    if-eqz v0, :cond_3b

    .line 106
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->addFrom(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 107
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    move-result-object v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialMoreBean;->getTpl_two_qq()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 108
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-static {v0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getTpl_two_qq_key()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialMoreBean;->getAd_pic_qq()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialMoreBean;->getTpl_two_qq()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/join/mgps/Util/g0;->d0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_34
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->z0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_38

    .line 110
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->extBean:Lcom/join/mgps/dto/ExtBean;

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 111
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->gameId:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->extBean:Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->getFrom_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/join/mgps/Util/UtilsMy;->A4(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 112
    :cond_35
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->o1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_36

    goto :goto_9

    .line 113
    :cond_36
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_status()I

    move-result v0

    if-ne v0, v7, :cond_37

    .line 114
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_9

    .line 115
    :cond_37
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->gameId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->z4(Landroid/content/Context;Ljava/lang/String;)V

    .line 116
    :goto_9
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->onDetailDownload()V

    goto :goto_a

    .line 117
    :cond_38
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->D1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    .line 118
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->o1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_39

    goto :goto_a

    .line 119
    :cond_39
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_status()I

    move-result v0

    if-ne v0, v7, :cond_3a

    .line 120
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_a

    .line 121
    :cond_3a
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getTp_down_url()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getOther_down_switch()I

    move-result v3

    iget-object v4, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCdn_down_switch()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/join/mgps/Util/UtilsMy;->U0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    .line 122
    :cond_3b
    :goto_a
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->updateButn()V

    :cond_3c
    :goto_b
    return-void
.end method

.method iv_back()V
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
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->videoView:Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->release()V

    .line 9
    .line 10
    .line 11
    :cond_0
    const-string v0, "ssssssssx"

    .line 12
    .line 13
    const-string v1, "onDestroy"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->e(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->controller:Landroid/widget/MediaController;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-static {}, Lcom/papa/gsyvideoplayer/d;->j0()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    const-string v0, "ssssssss"

    .line 2
    .line 3
    const-string v1, "onDestroyView"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->videoView:Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->release()V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method onDetailDownload()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "downloadCenter"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 30
    .line 31
    const-string v1, "detailDownload4.2.0.6"

    .line 32
    .line 33
    invoke-static {v0, v1}, Lcom/join/kotlin/utils/extention/MobclickAgentKt;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/r;)V
    .locals 5
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
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 24
    .line 25
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const-string v2, "%"

    .line 30
    .line 31
    const/16 v3, 0x8

    .line 32
    .line 33
    if-ne v1, v3, :cond_2

    .line 34
    .line 35
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 46
    .line 47
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->butnProgressBar:Landroid/widget/ProgressBar;

    .line 51
    .line 52
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 55
    .line 56
    .line 57
    move-result-wide v0

    .line 58
    long-to-int v1, v0

    .line 59
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->percent:Landroid/widget/TextView;

    .line 63
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 72
    .line 73
    .line 74
    move-result-wide v3

    .line 75
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    .line 87
    .line 88
    :cond_1
    return-void

    .line 89
    :cond_2
    if-eqz v0, :cond_6

    .line 90
    .line 91
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 92
    .line 93
    if-eqz v1, :cond_6

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    iget-object v4, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 100
    .line 101
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-eqz v1, :cond_6

    .line 110
    .line 111
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 112
    .line 113
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    const/4 v1, 0x5

    .line 118
    if-eq p1, v1, :cond_5

    .line 119
    .line 120
    if-eq p1, v3, :cond_3

    .line 121
    .line 122
    const/16 v1, 0xb

    .line 123
    .line 124
    if-eq p1, v1, :cond_5

    .line 125
    .line 126
    const/16 v1, 0x30

    .line 127
    .line 128
    if-eq p1, v1, :cond_5

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 132
    .line 133
    if-eqz p1, :cond_4

    .line 134
    .line 135
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    if-eqz p1, :cond_4

    .line 140
    .line 141
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 142
    .line 143
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 144
    .line 145
    .line 146
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->butnProgressBar:Landroid/widget/ProgressBar;

    .line 147
    .line 148
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 149
    .line 150
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 151
    .line 152
    .line 153
    move-result-wide v0

    .line 154
    long-to-int v1, v0

    .line 155
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 156
    .line 157
    .line 158
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->percent:Landroid/widget/TextView;

    .line 159
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .line 164
    .line 165
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 166
    .line 167
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 168
    .line 169
    .line 170
    move-result-wide v3

    .line 171
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    .line 183
    .line 184
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 185
    .line 186
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->updateProgress(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 187
    .line 188
    .line 189
    :cond_4
    return-void

    .line 190
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 191
    .line 192
    if-eqz p1, :cond_6

    .line 193
    .line 194
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 199
    .line 200
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result p1

    .line 208
    if-eqz p1, :cond_6

    .line 209
    .line 210
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 211
    .line 212
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->updateButn()V

    .line 213
    .line 214
    .line 215
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->pauseVideo()V

    .line 5
    .line 6
    .line 7
    const-string v0, "xxxxxxxxxxxx"

    .line 8
    .line 9
    const-string v1, "onPause"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->playVideo()V

    .line 5
    .line 6
    .line 7
    const-string v0, "xxxxxxxxxxxx"

    .line 8
    .line 9
    const-string v1, "onResume"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->updatePlayImg()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public pauseVideo()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->videoView:Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, "currentState="

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v0, " -->performClick"

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->videoView:Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoPause()V

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->updatePlayImg()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method public playVideo()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->getViewpagerCurrentPage()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->videoView:Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x7

    .line 18
    if-eq v0, v1, :cond_0

    .line 19
    .line 20
    const/4 v1, 0x5

    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v2, "currentState="

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, " -->performClick"

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->videoView:Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->startPlayLogic()V

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->updatePlayImg()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void
.end method

.method progress_layout()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x2

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->updateButn()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/php25/PDownload/d;->i(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v1, 0x3

    .line 29
    if-eq v0, v1, :cond_2

    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/4 v1, 0x6

    .line 38
    if-ne v0, v1, :cond_3

    .line 39
    .line 40
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->updateButn()V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 46
    .line 47
    invoke-static {v0, v1}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->onDetailDownload()V

    .line 51
    .line 52
    .line 53
    :cond_3
    :goto_0
    return-void
.end method

.method public resumVideo()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->getViewpagerCurrentPage()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->videoView:Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x7

    .line 18
    if-eq v0, v1, :cond_0

    .line 19
    .line 20
    const/4 v1, 0x5

    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v2, "currentState="

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, " -->performClick"

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->videoView:Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->startPlayLogic()V

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->updatePlayImg()V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->N3(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method showInstallButn()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->progressbarLayout:Landroid/widget/RelativeLayout;

    .line 17
    .line 18
    const/16 v1, 0x8

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalbutnLayout:Landroid/widget/RelativeLayout;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    return-void
.end method

.method showProgress()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalbutnLayout:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->progressbarLayout:Landroid/widget/RelativeLayout;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method showVideo()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->videoView:Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->playVideo()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method sound()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->nowIsNoSound:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->sound:Landroid/widget/ImageView;

    .line 6
    .line 7
    const v1, 0x7f080611

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->nowIsNoSound:Z

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->sound:Landroid/widget/ImageView;

    .line 18
    .line 19
    const v1, 0x7f080612

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->nowIsNoSound:Z

    .line 27
    .line 28
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->videoView:Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;

    .line 29
    .line 30
    iget-boolean v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->nowIsNoSound:Z

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setMute(Z)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->soundnowIsNoSound()Lorg/androidannotations/api/sharedpreferences/d;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-boolean v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->nowIsNoSound:Z

    .line 42
    .line 43
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method updateButn()V
    .locals 12
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 2
    .line 3
    if-eqz v0, :cond_19

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_5

    .line 10
    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDel_tag()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x1

    .line 17
    if-ne v0, v2, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCompany_name()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v3, "SNK"

    .line 26
    .line 27
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    .line 39
    .line 40
    const v1, 0x7f0804be

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    .line 47
    .line 48
    const-string v1, "\u5df2\u4e0b\u67b6"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalbutnLayout:Landroid/widget/RelativeLayout;

    .line 61
    .line 62
    iget-object v4, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 63
    .line 64
    invoke-static {v0, v3, v4}, Lcom/join/mgps/Util/UtilsMy;->A3(Lcom/join/mgps/dto/TipNew;Landroid/view/View;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPlugin_num()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const v3, 0x7f0804ca

    .line 74
    .line 75
    .line 76
    if-eqz v0, :cond_2

    .line 77
    .line 78
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPlugin_num()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    new-instance v4, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    sget-object v5, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 90
    .line 91
    invoke-virtual {v5}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v5, ""

    .line 99
    .line 100
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_2

    .line 112
    .line 113
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    .line 114
    .line 115
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    .line 119
    .line 120
    const-string v1, "\u5f00\u59cb"

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->showInstallButn()V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    .line 130
    .line 131
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 135
    .line 136
    if-eqz v0, :cond_3

    .line 137
    .line 138
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    goto :goto_0

    .line 143
    :cond_3
    const/4 v0, 0x0

    .line 144
    :goto_0
    iget-object v4, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 145
    .line 146
    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    iget-object v5, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 151
    .line 152
    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    const/16 v5, 0x2b

    .line 161
    .line 162
    if-lez v4, :cond_4

    .line 163
    .line 164
    const/16 v0, 0x2b

    .line 165
    .line 166
    :cond_4
    const/16 v4, 0x9

    .line 167
    .line 168
    const v6, 0x7f08049c

    .line 169
    .line 170
    .line 171
    if-ne v0, v4, :cond_5

    .line 172
    .line 173
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->showInstallButn()V

    .line 174
    .line 175
    .line 176
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    .line 177
    .line 178
    const-string v1, "\u66f4\u65b0"

    .line 179
    .line 180
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    .line 182
    .line 183
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->butn_showdownload:Landroid/widget/ImageView;

    .line 184
    .line 185
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 186
    .line 187
    .line 188
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->butn_showdownload:Landroid/widget/ImageView;

    .line 189
    .line 190
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 191
    .line 192
    .line 193
    goto/16 :goto_5

    .line 194
    .line 195
    :cond_5
    const/16 v4, 0xc

    .line 196
    .line 197
    if-ne v0, v4, :cond_6

    .line 198
    .line 199
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->showInstallButn()V

    .line 200
    .line 201
    .line 202
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    .line 203
    .line 204
    const-string v1, "\u89e3\u538b\u4e2d.."

    .line 205
    .line 206
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    .line 208
    .line 209
    goto/16 :goto_5

    .line 210
    .line 211
    :cond_6
    const/16 v4, 0xd

    .line 212
    .line 213
    if-ne v0, v4, :cond_7

    .line 214
    .line 215
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->showInstallButn()V

    .line 216
    .line 217
    .line 218
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    .line 219
    .line 220
    const-string v1, "\u89e3\u538b"

    .line 221
    .line 222
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    .line 224
    .line 225
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->butn_showdownload:Landroid/widget/ImageView;

    .line 226
    .line 227
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 228
    .line 229
    .line 230
    goto/16 :goto_5

    .line 231
    .line 232
    :cond_7
    const/16 v4, 0xb

    .line 233
    .line 234
    if-ne v0, v4, :cond_8

    .line 235
    .line 236
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->showInstallButn()V

    .line 237
    .line 238
    .line 239
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    .line 240
    .line 241
    const-string v1, "\u7acb\u5373\u5b89\u88c5"

    .line 242
    .line 243
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    .line 245
    .line 246
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    .line 247
    .line 248
    const v1, 0x7f0804bf

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 252
    .line 253
    .line 254
    goto/16 :goto_5

    .line 255
    .line 256
    :cond_8
    const/4 v4, 0x5

    .line 257
    if-eq v0, v4, :cond_18

    .line 258
    .line 259
    const/16 v4, 0x2a

    .line 260
    .line 261
    if-ne v0, v4, :cond_9

    .line 262
    .line 263
    goto/16 :goto_4

    .line 264
    .line 265
    :cond_9
    const-string v3, "%"

    .line 266
    .line 267
    const/4 v4, 0x2

    .line 268
    if-ne v0, v4, :cond_a

    .line 269
    .line 270
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->showProgress()V

    .line 271
    .line 272
    .line 273
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->butn_showdownload:Landroid/widget/ImageView;

    .line 274
    .line 275
    const v1, 0x7f08049d

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 279
    .line 280
    .line 281
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 282
    .line 283
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 284
    .line 285
    .line 286
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->butnProgressBar:Landroid/widget/ProgressBar;

    .line 287
    .line 288
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 289
    .line 290
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 291
    .line 292
    .line 293
    move-result-wide v1

    .line 294
    long-to-int v2, v1

    .line 295
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 296
    .line 297
    .line 298
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->percent:Landroid/widget/TextView;

    .line 299
    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    .line 301
    .line 302
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    .line 304
    .line 305
    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 306
    .line 307
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 308
    .line 309
    .line 310
    move-result-wide v4

    .line 311
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    .line 323
    .line 324
    goto/16 :goto_5

    .line 325
    .line 326
    :cond_a
    const/4 v7, 0x3

    .line 327
    if-eq v0, v7, :cond_17

    .line 328
    .line 329
    const/4 v7, 0x6

    .line 330
    if-eq v0, v7, :cond_17

    .line 331
    .line 332
    const/16 v8, 0x1b

    .line 333
    .line 334
    if-ne v0, v8, :cond_b

    .line 335
    .line 336
    goto/16 :goto_3

    .line 337
    .line 338
    :cond_b
    const/16 v3, 0xa

    .line 339
    .line 340
    if-ne v0, v3, :cond_c

    .line 341
    .line 342
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->showInstallButn()V

    .line 343
    .line 344
    .line 345
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    .line 346
    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    .line 348
    .line 349
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 350
    .line 351
    .line 352
    const-string v2, "\u7b49\u5f85\u3000"

    .line 353
    .line 354
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 358
    .line 359
    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getSize()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v2

    .line 363
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    const-string v2, "M"

    .line 367
    .line 368
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    .line 377
    .line 378
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->butn_showdownload:Landroid/widget/ImageView;

    .line 379
    .line 380
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 381
    .line 382
    .line 383
    goto/16 :goto_5

    .line 384
    .line 385
    :cond_c
    if-ne v0, v2, :cond_d

    .line 386
    .line 387
    goto/16 :goto_5

    .line 388
    .line 389
    :cond_d
    const-string v3, "\u5df2\u9884\u7ea6"

    .line 390
    .line 391
    const-string v8, "\u9884\u7ea6"

    .line 392
    .line 393
    const v9, 0x7f12037c

    .line 394
    .line 395
    .line 396
    const-string v10, "\u7acb\u5373\u83b7\u53d6"

    .line 397
    .line 398
    if-ne v0, v5, :cond_12

    .line 399
    .line 400
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->showInstallButn()V

    .line 401
    .line 402
    .line 403
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 404
    .line 405
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    iget-object v5, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 410
    .line 411
    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v5

    .line 415
    invoke-static {v0, v5}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 416
    .line 417
    .line 418
    move-result v0

    .line 419
    if-lez v0, :cond_e

    .line 420
    .line 421
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    .line 422
    .line 423
    iget-object v5, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 424
    .line 425
    invoke-virtual {v5}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 426
    .line 427
    .line 428
    move-result-object v5

    .line 429
    new-array v10, v2, [Ljava/lang/Object;

    .line 430
    .line 431
    iget-object v11, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 432
    .line 433
    invoke-virtual {v11}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 434
    .line 435
    .line 436
    move-result-object v11

    .line 437
    invoke-virtual {v11}, Lcom/join/mgps/dto/PayTagInfo;->getPayGameAmount()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v11

    .line 441
    aput-object v11, v10, v1

    .line 442
    .line 443
    invoke-virtual {v5, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v1

    .line 447
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    .line 449
    .line 450
    goto :goto_1

    .line 451
    :cond_e
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    .line 452
    .line 453
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    .line 455
    .line 456
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->butn_showdownload:Landroid/widget/ImageView;

    .line 457
    .line 458
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 459
    .line 460
    .line 461
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 462
    .line 463
    if-eqz v0, :cond_19

    .line 464
    .line 465
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getBespeak_switch()I

    .line 466
    .line 467
    .line 468
    move-result v0

    .line 469
    if-ne v0, v2, :cond_11

    .line 470
    .line 471
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 472
    .line 473
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_status()I

    .line 474
    .line 475
    .line 476
    move-result v0

    .line 477
    if-eq v0, v4, :cond_f

    .line 478
    .line 479
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 480
    .line 481
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_status()I

    .line 482
    .line 483
    .line 484
    move-result v0

    .line 485
    if-ne v0, v7, :cond_11

    .line 486
    .line 487
    :cond_f
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 488
    .line 489
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_book()I

    .line 490
    .line 491
    .line 492
    move-result v0

    .line 493
    if-ne v0, v2, :cond_10

    .line 494
    .line 495
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    .line 496
    .line 497
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    .line 499
    .line 500
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 501
    .line 502
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 503
    .line 504
    .line 505
    move-result-object v0

    .line 506
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 507
    .line 508
    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v1

    .line 512
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 513
    .line 514
    .line 515
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    .line 516
    .line 517
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 518
    .line 519
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->F3(Landroid/widget/TextView;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    .line 520
    .line 521
    .line 522
    goto/16 :goto_5

    .line 523
    .line 524
    :cond_10
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    .line 525
    .line 526
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    .line 528
    .line 529
    goto/16 :goto_5

    .line 530
    .line 531
    :cond_11
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 532
    .line 533
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 538
    .line 539
    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v1

    .line 543
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 544
    .line 545
    .line 546
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    .line 547
    .line 548
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 549
    .line 550
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->F3(Landroid/widget/TextView;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    .line 551
    .line 552
    .line 553
    goto/16 :goto_5

    .line 554
    .line 555
    :cond_12
    const/16 v5, 0x30

    .line 556
    .line 557
    if-ne v0, v5, :cond_13

    .line 558
    .line 559
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->showInstallButn()V

    .line 560
    .line 561
    .line 562
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    .line 563
    .line 564
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 565
    .line 566
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 567
    .line 568
    .line 569
    move-result-object v1

    .line 570
    const v2, 0x7f120107

    .line 571
    .line 572
    .line 573
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v1

    .line 577
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    .line 579
    .line 580
    goto/16 :goto_5

    .line 581
    .line 582
    :cond_13
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->showInstallButn()V

    .line 583
    .line 584
    .line 585
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 586
    .line 587
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 588
    .line 589
    .line 590
    move-result-object v0

    .line 591
    iget-object v5, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 592
    .line 593
    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v5

    .line 597
    invoke-static {v0, v5}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 598
    .line 599
    .line 600
    move-result v0

    .line 601
    if-lez v0, :cond_14

    .line 602
    .line 603
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    .line 604
    .line 605
    iget-object v5, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 606
    .line 607
    invoke-virtual {v5}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 608
    .line 609
    .line 610
    move-result-object v5

    .line 611
    new-array v7, v2, [Ljava/lang/Object;

    .line 612
    .line 613
    iget-object v10, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 614
    .line 615
    invoke-virtual {v10}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 616
    .line 617
    .line 618
    move-result-object v10

    .line 619
    invoke-virtual {v10}, Lcom/join/mgps/dto/PayTagInfo;->getPayGameAmount()Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v10

    .line 623
    aput-object v10, v7, v1

    .line 624
    .line 625
    invoke-virtual {v5, v9, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 626
    .line 627
    .line 628
    move-result-object v1

    .line 629
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 630
    .line 631
    .line 632
    goto :goto_2

    .line 633
    :cond_14
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    .line 634
    .line 635
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 636
    .line 637
    .line 638
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->butn_showdownload:Landroid/widget/ImageView;

    .line 639
    .line 640
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 641
    .line 642
    .line 643
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 644
    .line 645
    if-eqz v0, :cond_19

    .line 646
    .line 647
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getBespeak_switch()I

    .line 648
    .line 649
    .line 650
    move-result v0

    .line 651
    if-ne v0, v2, :cond_16

    .line 652
    .line 653
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 654
    .line 655
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_status()I

    .line 656
    .line 657
    .line 658
    move-result v0

    .line 659
    if-ne v0, v4, :cond_16

    .line 660
    .line 661
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 662
    .line 663
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_book()I

    .line 664
    .line 665
    .line 666
    move-result v0

    .line 667
    if-ne v0, v2, :cond_15

    .line 668
    .line 669
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    .line 670
    .line 671
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 672
    .line 673
    .line 674
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 675
    .line 676
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 677
    .line 678
    .line 679
    move-result-object v0

    .line 680
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 681
    .line 682
    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    .line 683
    .line 684
    .line 685
    move-result-object v1

    .line 686
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 687
    .line 688
    .line 689
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    .line 690
    .line 691
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 692
    .line 693
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->F3(Landroid/widget/TextView;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    .line 694
    .line 695
    .line 696
    goto :goto_5

    .line 697
    :cond_15
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    .line 698
    .line 699
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 700
    .line 701
    .line 702
    goto :goto_5

    .line 703
    :cond_16
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 704
    .line 705
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 706
    .line 707
    .line 708
    move-result-object v0

    .line 709
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 710
    .line 711
    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    .line 712
    .line 713
    .line 714
    move-result-object v1

    .line 715
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 716
    .line 717
    .line 718
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    .line 719
    .line 720
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 721
    .line 722
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->F3(Landroid/widget/TextView;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    .line 723
    .line 724
    .line 725
    goto :goto_5

    .line 726
    :cond_17
    :goto_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->showProgress()V

    .line 727
    .line 728
    .line 729
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->butn_showdownload:Landroid/widget/ImageView;

    .line 730
    .line 731
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 732
    .line 733
    .line 734
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 735
    .line 736
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 737
    .line 738
    .line 739
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->butnProgressBar:Landroid/widget/ProgressBar;

    .line 740
    .line 741
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 742
    .line 743
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 744
    .line 745
    .line 746
    move-result-wide v1

    .line 747
    long-to-int v2, v1

    .line 748
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 749
    .line 750
    .line 751
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->percent:Landroid/widget/TextView;

    .line 752
    .line 753
    new-instance v1, Ljava/lang/StringBuilder;

    .line 754
    .line 755
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 756
    .line 757
    .line 758
    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 759
    .line 760
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 761
    .line 762
    .line 763
    move-result-wide v4

    .line 764
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 765
    .line 766
    .line 767
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    .line 769
    .line 770
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 771
    .line 772
    .line 773
    move-result-object v1

    .line 774
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 775
    .line 776
    .line 777
    goto :goto_5

    .line 778
    :cond_18
    :goto_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->showInstallButn()V

    .line 779
    .line 780
    .line 781
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    .line 782
    .line 783
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 784
    .line 785
    .line 786
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    .line 787
    .line 788
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 789
    .line 790
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 791
    .line 792
    .line 793
    move-result-object v1

    .line 794
    const v2, 0x7f120105

    .line 795
    .line 796
    .line 797
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 798
    .line 799
    .line 800
    move-result-object v1

    .line 801
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 802
    .line 803
    .line 804
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->butn_showdownload:Landroid/widget/ImageView;

    .line 805
    .line 806
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 807
    .line 808
    .line 809
    :cond_19
    :goto_5
    return-void
.end method

.method updatePlayImg()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x12cL
    .end annotation

    return-void
.end method

.method updateProgress(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->butnProgressBar:Landroid/widget/ProgressBar;

    .line 5
    .line 6
    instance-of v1, v0, Lcom/join/mgps/customview/DownloadProgressBar;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    check-cast v0, Lcom/join/mgps/customview/DownloadProgressBar;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/customview/DownloadProgressBar;->update(Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method updateTitleButn(Lcom/join/mgps/dto/ResultMainBean;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "result",
            "type"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 v0, 0x1

    .line 11
    if-ne p1, v0, :cond_5

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    if-eq p2, v0, :cond_4

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    if-eq p2, v1, :cond_3

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    if-eq p2, v1, :cond_2

    .line 21
    .line 22
    const/4 p1, 0x4

    .line 23
    if-eq p2, p1, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->setGame_book(I)V

    .line 29
    .line 30
    .line 31
    new-instance p1, Landroid/content/Intent;

    .line 32
    .line 33
    const-string p2, "com.broadcast.bespeak.sussess"

    .line 34
    .line 35
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object p2, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    const-string v1, "gameid"

    .line 45
    .line 46
    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    iget-object p2, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 50
    .line 51
    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iget-object p2, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 61
    .line 62
    new-instance v1, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment$1;

    .line 63
    .line 64
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment$1;-><init>(Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p2, v0, v1}, Lcom/join/mgps/Util/g0;->O(Landroid/content/Context;ILcom/join/mgps/callbacks/d;)Lcom/join/mgps/customview/t;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 76
    .line 77
    invoke-virtual {p2, p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->setGame_book(I)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->setGame_follow(I)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 87
    .line 88
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    const-string p2, "\u6536\u85cf\u6210\u529f"

    .line 93
    .line 94
    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_4
    iget-object p2, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 99
    .line 100
    invoke-virtual {p2, p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->setGame_follow(I)V

    .line 101
    .line 102
    .line 103
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->updateButn()V

    .line 104
    .line 105
    .line 106
    :cond_5
    return-void
.end method
