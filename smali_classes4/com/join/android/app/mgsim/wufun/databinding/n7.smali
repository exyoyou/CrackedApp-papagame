.class public Lcom/join/android/app/mgsim/wufun/databinding/n7;
.super Lcom/join/android/app/mgsim/wufun/databinding/m7;
.source "SourceFile"


# static fields
.field private static final r:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final s:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final n:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final o:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final p:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private q:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/join/android/app/mgsim/wufun/databinding/n7;->s:Landroid/util/SparseIntArray;

    .line 7
    .line 8
    const v1, 0x7f0a0713

    .line 9
    .line 10
    .line 11
    const/16 v2, 0xb

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 14
    .line 15
    .line 16
    const v1, 0x7f0a054e

    .line 17
    .line 18
    .line 19
    const/16 v2, 0xc

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3
    .param p1    # Landroidx/databinding/DataBindingComponent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bindingComponent",
            "root"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/join/android/app/mgsim/wufun/databinding/n7;->r:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/join/android/app/mgsim/wufun/databinding/n7;->s:Landroid/util/SparseIntArray;

    const/16 v2, 0xd

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/n7;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bindingComponent",
            "root",
            "bindings"
        }
    .end annotation

    move-object v14, p0

    const/4 v3, 0x0

    const/4 v0, 0x7

    .line 2
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    const/16 v0, 0xc

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lcom/join/mgps/customview/DownloadNormalView;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    const/16 v0, 0xb

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/LinearLayout;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/ImageView;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Landroid/widget/TextView;

    const/16 v0, 0xa

    aget-object v0, p3, v0

    move-object v12, v0

    check-cast v12, Landroid/widget/ProgressBar;

    const/16 v0, 0x9

    aget-object v0, p3, v0

    move-object v13, v0

    check-cast v13, Landroid/widget/ProgressBar;

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v13}, Lcom/join/android/app/mgsim/wufun/databinding/m7;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Lcom/join/mgps/customview/DownloadNormalView;Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/n7;->q:J

    .line 4
    iget-object v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/m7;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/m7;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/m7;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/m7;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/m7;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/m7;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 10
    aget-object v0, p3, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/n7;->n:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 12
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/n7;->o:Landroid/widget/TextView;

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x4

    .line 14
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/n7;->p:Landroid/widget/TextView;

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 16
    iget-object v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/m7;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 17
    iget-object v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/m7;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 18
    invoke-virtual {p0, v0}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 19
    invoke-virtual {p0}, Lcom/join/android/app/mgsim/wufun/databinding/n7;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 33

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/n7;->q:J

    .line 5
    .line 6
    const-wide/16 v4, 0x0

    .line 7
    .line 8
    iput-wide v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/n7;->q:J

    .line 9
    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/m7;->l:Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;

    .line 12
    .line 13
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/m7;->m:Lcom/join/kotlin/domain/common/AppListItemShowBean;

    .line 14
    .line 15
    const-wide/16 v7, 0x5

    .line 16
    .line 17
    and-long v9, v2, v7

    .line 18
    .line 19
    cmp-long v12, v9, v4

    .line 20
    .line 21
    if-eqz v12, :cond_0

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;->getIcon()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v9

    .line 29
    invoke-virtual {v0}, Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;->getTags()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v10

    .line 33
    invoke-virtual {v0}, Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;->getInfo()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v12

    .line 37
    invoke-virtual {v0}, Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;->getGameName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v13

    .line 41
    invoke-virtual {v0}, Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;->getIconGif()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 v0, 0x0

    .line 47
    const/4 v9, 0x0

    .line 48
    const/4 v10, 0x0

    .line 49
    const/4 v12, 0x0

    .line 50
    const/4 v13, 0x0

    .line 51
    :goto_0
    const-wide/16 v14, 0x6

    .line 52
    .line 53
    and-long v16, v2, v14

    .line 54
    .line 55
    cmp-long v19, v16, v4

    .line 56
    .line 57
    if-eqz v19, :cond_14

    .line 58
    .line 59
    if-eqz v6, :cond_1

    .line 60
    .line 61
    invoke-virtual {v6}, Lcom/join/kotlin/domain/common/AppListItemShowBean;->getGiftShow()Z

    .line 62
    .line 63
    .line 64
    move-result v16

    .line 65
    invoke-virtual {v6}, Lcom/join/kotlin/domain/common/AppListItemShowBean;->getLodingInfo()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v17

    .line 69
    invoke-virtual {v6}, Lcom/join/kotlin/domain/common/AppListItemShowBean;->getProgressZipShow()Z

    .line 70
    .line 71
    .line 72
    move-result v18

    .line 73
    invoke-virtual {v6}, Lcom/join/kotlin/domain/common/AppListItemShowBean;->getDescribeShow()Z

    .line 74
    .line 75
    .line 76
    move-result v20

    .line 77
    invoke-virtual {v6}, Lcom/join/kotlin/domain/common/AppListItemShowBean;->getDownMessageShow()Z

    .line 78
    .line 79
    .line 80
    move-result v21

    .line 81
    invoke-virtual {v6}, Lcom/join/kotlin/domain/common/AppListItemShowBean;->getTagshow()Z

    .line 82
    .line 83
    .line 84
    move-result v22

    .line 85
    invoke-virtual {v6}, Lcom/join/kotlin/domain/common/AppListItemShowBean;->getAppSizeText()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v23

    .line 89
    invoke-virtual {v6}, Lcom/join/kotlin/domain/common/AppListItemShowBean;->getDownloadProgress()I

    .line 90
    .line 91
    .line 92
    move-result v24

    .line 93
    invoke-virtual {v6}, Lcom/join/kotlin/domain/common/AppListItemShowBean;->getProgresShow()Z

    .line 94
    .line 95
    .line 96
    move-result v25

    .line 97
    invoke-virtual {v6}, Lcom/join/kotlin/domain/common/AppListItemShowBean;->getZipProgress()I

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    move/from16 v28, v20

    .line 102
    .line 103
    move/from16 v20, v18

    .line 104
    .line 105
    move-object/from16 v18, v23

    .line 106
    .line 107
    move/from16 v23, v22

    .line 108
    .line 109
    move/from16 v22, v21

    .line 110
    .line 111
    move/from16 v21, v28

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_1
    const/4 v6, 0x0

    .line 115
    const/16 v16, 0x0

    .line 116
    .line 117
    const/16 v17, 0x0

    .line 118
    .line 119
    const/16 v18, 0x0

    .line 120
    .line 121
    const/16 v20, 0x0

    .line 122
    .line 123
    const/16 v21, 0x0

    .line 124
    .line 125
    const/16 v22, 0x0

    .line 126
    .line 127
    const/16 v23, 0x0

    .line 128
    .line 129
    const/16 v24, 0x0

    .line 130
    .line 131
    const/16 v25, 0x0

    .line 132
    .line 133
    :goto_1
    if-eqz v19, :cond_3

    .line 134
    .line 135
    if-eqz v16, :cond_2

    .line 136
    .line 137
    const-wide/16 v26, 0x40

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_2
    const-wide/16 v26, 0x20

    .line 141
    .line 142
    :goto_2
    or-long v2, v2, v26

    .line 143
    .line 144
    :cond_3
    and-long v26, v2, v14

    .line 145
    .line 146
    cmp-long v19, v26, v4

    .line 147
    .line 148
    if-eqz v19, :cond_5

    .line 149
    .line 150
    if-eqz v20, :cond_4

    .line 151
    .line 152
    const-wide/16 v26, 0x10

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_4
    const-wide/16 v26, 0x8

    .line 156
    .line 157
    :goto_3
    or-long v2, v2, v26

    .line 158
    .line 159
    :cond_5
    and-long v26, v2, v14

    .line 160
    .line 161
    cmp-long v19, v26, v4

    .line 162
    .line 163
    if-eqz v19, :cond_7

    .line 164
    .line 165
    if-eqz v21, :cond_6

    .line 166
    .line 167
    const-wide/16 v26, 0x400

    .line 168
    .line 169
    goto :goto_4

    .line 170
    :cond_6
    const-wide/16 v26, 0x200

    .line 171
    .line 172
    :goto_4
    or-long v2, v2, v26

    .line 173
    .line 174
    :cond_7
    and-long v26, v2, v14

    .line 175
    .line 176
    cmp-long v19, v26, v4

    .line 177
    .line 178
    if-eqz v19, :cond_9

    .line 179
    .line 180
    if-eqz v22, :cond_8

    .line 181
    .line 182
    const-wide/16 v26, 0x4000

    .line 183
    .line 184
    goto :goto_5

    .line 185
    :cond_8
    const-wide/16 v26, 0x2000

    .line 186
    .line 187
    :goto_5
    or-long v2, v2, v26

    .line 188
    .line 189
    :cond_9
    and-long v26, v2, v14

    .line 190
    .line 191
    cmp-long v19, v26, v4

    .line 192
    .line 193
    if-eqz v19, :cond_b

    .line 194
    .line 195
    if-eqz v23, :cond_a

    .line 196
    .line 197
    const-wide/16 v26, 0x100

    .line 198
    .line 199
    goto :goto_6

    .line 200
    :cond_a
    const-wide/16 v26, 0x80

    .line 201
    .line 202
    :goto_6
    or-long v2, v2, v26

    .line 203
    .line 204
    :cond_b
    and-long v26, v2, v14

    .line 205
    .line 206
    cmp-long v19, v26, v4

    .line 207
    .line 208
    if-eqz v19, :cond_d

    .line 209
    .line 210
    if-eqz v25, :cond_c

    .line 211
    .line 212
    const-wide/16 v26, 0x1000

    .line 213
    .line 214
    goto :goto_7

    .line 215
    :cond_c
    const-wide/16 v26, 0x800

    .line 216
    .line 217
    :goto_7
    or-long v2, v2, v26

    .line 218
    .line 219
    :cond_d
    const/16 v19, 0x8

    .line 220
    .line 221
    if-eqz v16, :cond_e

    .line 222
    .line 223
    const/16 v16, 0x0

    .line 224
    .line 225
    goto :goto_8

    .line 226
    :cond_e
    const/16 v16, 0x8

    .line 227
    .line 228
    :goto_8
    if-eqz v20, :cond_f

    .line 229
    .line 230
    const/16 v20, 0x0

    .line 231
    .line 232
    goto :goto_9

    .line 233
    :cond_f
    const/16 v20, 0x8

    .line 234
    .line 235
    :goto_9
    if-eqz v21, :cond_10

    .line 236
    .line 237
    const/16 v21, 0x0

    .line 238
    .line 239
    goto :goto_a

    .line 240
    :cond_10
    const/16 v21, 0x8

    .line 241
    .line 242
    :goto_a
    if-eqz v22, :cond_11

    .line 243
    .line 244
    const/16 v22, 0x0

    .line 245
    .line 246
    goto :goto_b

    .line 247
    :cond_11
    const/16 v22, 0x8

    .line 248
    .line 249
    :goto_b
    if-eqz v23, :cond_12

    .line 250
    .line 251
    const/16 v23, 0x0

    .line 252
    .line 253
    goto :goto_c

    .line 254
    :cond_12
    const/16 v23, 0x8

    .line 255
    .line 256
    :goto_c
    if-eqz v25, :cond_13

    .line 257
    .line 258
    const/16 v19, 0x0

    .line 259
    .line 260
    :cond_13
    move/from16 v8, v16

    .line 261
    .line 262
    move-object/from16 v7, v17

    .line 263
    .line 264
    move-object/from16 v11, v18

    .line 265
    .line 266
    move/from16 v28, v22

    .line 267
    .line 268
    move-object/from16 v22, v0

    .line 269
    .line 270
    move/from16 v0, v28

    .line 271
    .line 272
    move/from16 v29, v23

    .line 273
    .line 274
    move-object/from16 v23, v9

    .line 275
    .line 276
    move/from16 v9, v29

    .line 277
    .line 278
    move/from16 v30, v19

    .line 279
    .line 280
    move-object/from16 v19, v10

    .line 281
    .line 282
    move/from16 v10, v30

    .line 283
    .line 284
    move/from16 v31, v21

    .line 285
    .line 286
    move-object/from16 v21, v12

    .line 287
    .line 288
    move/from16 v12, v31

    .line 289
    .line 290
    move/from16 v32, v20

    .line 291
    .line 292
    move-object/from16 v20, v13

    .line 293
    .line 294
    move/from16 v13, v24

    .line 295
    .line 296
    move/from16 v24, v32

    .line 297
    .line 298
    goto :goto_d

    .line 299
    :cond_14
    move-object/from16 v22, v0

    .line 300
    .line 301
    move-object/from16 v23, v9

    .line 302
    .line 303
    move-object/from16 v19, v10

    .line 304
    .line 305
    move-object/from16 v21, v12

    .line 306
    .line 307
    move-object/from16 v20, v13

    .line 308
    .line 309
    const/4 v0, 0x0

    .line 310
    const/4 v6, 0x0

    .line 311
    const/4 v7, 0x0

    .line 312
    const/4 v8, 0x0

    .line 313
    const/4 v9, 0x0

    .line 314
    const/4 v10, 0x0

    .line 315
    const/4 v11, 0x0

    .line 316
    const/4 v12, 0x0

    .line 317
    const/4 v13, 0x0

    .line 318
    const/16 v24, 0x0

    .line 319
    .line 320
    :goto_d
    and-long/2addr v14, v2

    .line 321
    cmp-long v25, v14, v4

    .line 322
    .line 323
    if-eqz v25, :cond_15

    .line 324
    .line 325
    iget-object v14, v1, Lcom/join/android/app/mgsim/wufun/databinding/m7;->b:Landroid/widget/TextView;

    .line 326
    .line 327
    invoke-static {v14, v11}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 328
    .line 329
    .line 330
    iget-object v11, v1, Lcom/join/android/app/mgsim/wufun/databinding/m7;->e:Landroid/widget/TextView;

    .line 331
    .line 332
    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 333
    .line 334
    .line 335
    iget-object v11, v1, Lcom/join/android/app/mgsim/wufun/databinding/m7;->g:Landroid/widget/ImageView;

    .line 336
    .line 337
    invoke-virtual {v11, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 338
    .line 339
    .line 340
    iget-object v8, v1, Lcom/join/android/app/mgsim/wufun/databinding/m7;->h:Landroid/widget/LinearLayout;

    .line 341
    .line 342
    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 343
    .line 344
    .line 345
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/m7;->i:Landroid/widget/TextView;

    .line 346
    .line 347
    invoke-static {v0, v7}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 348
    .line 349
    .line 350
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/n7;->p:Landroid/widget/TextView;

    .line 351
    .line 352
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 353
    .line 354
    .line 355
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/m7;->j:Landroid/widget/ProgressBar;

    .line 356
    .line 357
    invoke-virtual {v0, v13}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 358
    .line 359
    .line 360
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/m7;->j:Landroid/widget/ProgressBar;

    .line 361
    .line 362
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 363
    .line 364
    .line 365
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/m7;->k:Landroid/widget/ProgressBar;

    .line 366
    .line 367
    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 368
    .line 369
    .line 370
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/m7;->k:Landroid/widget/ProgressBar;

    .line 371
    .line 372
    move/from16 v11, v24

    .line 373
    .line 374
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 375
    .line 376
    .line 377
    :cond_15
    const-wide/16 v6, 0x5

    .line 378
    .line 379
    and-long/2addr v2, v6

    .line 380
    cmp-long v0, v2, v4

    .line 381
    .line 382
    if-eqz v0, :cond_16

    .line 383
    .line 384
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/m7;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 385
    .line 386
    move-object/from16 v11, v22

    .line 387
    .line 388
    move-object/from16 v9, v23

    .line 389
    .line 390
    const/4 v2, 0x0

    .line 391
    invoke-static {v0, v9, v11, v2}, Lcom/join/kotlin/bindingadapter/SimpleDrawableViewKt;->loadUrl(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Ljava/lang/String;I)V

    .line 392
    .line 393
    .line 394
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/m7;->e:Landroid/widget/TextView;

    .line 395
    .line 396
    move-object/from16 v11, v21

    .line 397
    .line 398
    invoke-static {v0, v11}, Lcom/join/kotlin/bindingadapter/ViewBindingTextviewKt;->textViewBinding(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/n7;->o:Landroid/widget/TextView;

    .line 402
    .line 403
    move-object/from16 v11, v20

    .line 404
    .line 405
    invoke-static {v0, v11}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 406
    .line 407
    .line 408
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/n7;->p:Landroid/widget/TextView;

    .line 409
    .line 410
    move-object/from16 v10, v19

    .line 411
    .line 412
    invoke-static {v0, v10}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 413
    .line 414
    .line 415
    :cond_16
    return-void

    .line 416
    :catchall_0
    move-exception v0

    .line 417
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 418
    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/n7;->q:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v4, v0, v2

    .line 7
    .line 8
    if-eqz v4, :cond_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    monitor-exit p0

    .line 14
    const/4 v0, 0x0

    .line 15
    return v0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const-wide/16 v0, 0x4

    .line 3
    .line 4
    :try_start_0
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/n7;->q:J

    .line 5
    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "localFieldId",
            "object",
            "fieldId"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "variableId",
            "variable"
        }
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    if-ne v0, p1, :cond_0

    .line 3
    .line 4
    check-cast p2, Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;

    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/n7;->t(Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;)V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/16 v0, 0x1c

    .line 11
    .line 12
    if-ne v0, p1, :cond_1

    .line 13
    .line 14
    check-cast p2, Lcom/join/kotlin/domain/common/AppListItemShowBean;

    .line 15
    .line 16
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/n7;->u(Lcom/join/kotlin/domain/common/AppListItemShowBean;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    const/4 p1, 0x1

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    const/4 p1, 0x0

    .line 22
    :goto_1
    return p1
.end method

.method public t(Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Album"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/m7;->l:Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/n7;->q:J

    .line 5
    .line 6
    const-wide/16 v2, 0x1

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/n7;->q:J

    .line 10
    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    const/4 p1, 0x3

    .line 13
    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 14
    .line 15
    .line 16
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    throw p1
.end method

.method public u(Lcom/join/kotlin/domain/common/AppListItemShowBean;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/domain/common/AppListItemShowBean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ListBean"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/m7;->m:Lcom/join/kotlin/domain/common/AppListItemShowBean;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/n7;->q:J

    .line 5
    .line 6
    const-wide/16 v2, 0x2

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/n7;->q:J

    .line 10
    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    const/16 p1, 0x1c

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 15
    .line 16
    .line 17
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw p1
.end method
