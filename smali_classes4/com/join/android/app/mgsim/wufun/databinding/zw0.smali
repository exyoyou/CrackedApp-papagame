.class public Lcom/join/android/app/mgsim/wufun/databinding/zw0;
.super Lcom/join/android/app/mgsim/wufun/databinding/yw0;
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

.field private final p:Lcom/join/kotlin/ui/userrecom/UserRecomTagView;
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
    sput-object v0, Lcom/join/android/app/mgsim/wufun/databinding/zw0;->s:Landroid/util/SparseIntArray;

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
    sget-object v0, Lcom/join/android/app/mgsim/wufun/databinding/zw0;->r:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/join/android/app/mgsim/wufun/databinding/zw0;->s:Landroid/util/SparseIntArray;

    const/16 v2, 0xd

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/zw0;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

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

    invoke-direct/range {v0 .. v13}, Lcom/join/android/app/mgsim/wufun/databinding/yw0;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Lcom/join/mgps/customview/DownloadNormalView;Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/zw0;->q:J

    .line 4
    iget-object v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/yw0;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/yw0;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/yw0;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/yw0;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/yw0;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/yw0;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 10
    aget-object v0, p3, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/zw0;->n:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 12
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/zw0;->o:Landroid/widget/TextView;

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x4

    .line 14
    aget-object v0, p3, v0

    check-cast v0, Lcom/join/kotlin/ui/userrecom/UserRecomTagView;

    iput-object v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/zw0;->p:Lcom/join/kotlin/ui/userrecom/UserRecomTagView;

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 16
    iget-object v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/yw0;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 17
    iget-object v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/yw0;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 18
    invoke-virtual {p0, v0}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 19
    invoke-virtual {p0}, Lcom/join/android/app/mgsim/wufun/databinding/zw0;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 28

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/zw0;->q:J

    .line 5
    .line 6
    const-wide/16 v4, 0x0

    .line 7
    .line 8
    iput-wide v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/zw0;->q:J

    .line 9
    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/yw0;->l:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 12
    .line 13
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/yw0;->m:Lcom/join/kotlin/domain/common/AppListItemShowBean;

    .line 14
    .line 15
    const-wide/16 v7, 0x5

    .line 16
    .line 17
    and-long v9, v2, v7

    .line 18
    .line 19
    const/4 v11, 0x0

    .line 20
    cmp-long v12, v9, v4

    .line 21
    .line 22
    if-eqz v12, :cond_0

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v9

    .line 30
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v10

    .line 34
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v12

    .line 38
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getInfo()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move-object v0, v11

    .line 44
    move-object v9, v0

    .line 45
    move-object v10, v9

    .line 46
    move-object v12, v10

    .line 47
    :goto_0
    const-wide/16 v13, 0x6

    .line 48
    .line 49
    and-long v15, v2, v13

    .line 50
    .line 51
    const/16 v17, 0x0

    .line 52
    .line 53
    cmp-long v18, v15, v4

    .line 54
    .line 55
    if-eqz v18, :cond_14

    .line 56
    .line 57
    if-eqz v6, :cond_1

    .line 58
    .line 59
    invoke-virtual {v6}, Lcom/join/kotlin/domain/common/AppListItemShowBean;->getGiftShow()Z

    .line 60
    .line 61
    .line 62
    move-result v11

    .line 63
    invoke-virtual {v6}, Lcom/join/kotlin/domain/common/AppListItemShowBean;->getLodingInfo()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v15

    .line 67
    invoke-virtual {v6}, Lcom/join/kotlin/domain/common/AppListItemShowBean;->getProgressZipShow()Z

    .line 68
    .line 69
    .line 70
    move-result v16

    .line 71
    invoke-virtual {v6}, Lcom/join/kotlin/domain/common/AppListItemShowBean;->getDescribeShow()Z

    .line 72
    .line 73
    .line 74
    move-result v19

    .line 75
    invoke-virtual {v6}, Lcom/join/kotlin/domain/common/AppListItemShowBean;->getDownMessageShow()Z

    .line 76
    .line 77
    .line 78
    move-result v20

    .line 79
    invoke-virtual {v6}, Lcom/join/kotlin/domain/common/AppListItemShowBean;->getTagshow()Z

    .line 80
    .line 81
    .line 82
    move-result v21

    .line 83
    invoke-virtual {v6}, Lcom/join/kotlin/domain/common/AppListItemShowBean;->getAppSizeText()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v22

    .line 87
    invoke-virtual {v6}, Lcom/join/kotlin/domain/common/AppListItemShowBean;->getDownloadProgress()I

    .line 88
    .line 89
    .line 90
    move-result v23

    .line 91
    invoke-virtual {v6}, Lcom/join/kotlin/domain/common/AppListItemShowBean;->getProgresShow()Z

    .line 92
    .line 93
    .line 94
    move-result v24

    .line 95
    invoke-virtual {v6}, Lcom/join/kotlin/domain/common/AppListItemShowBean;->getZipProgress()I

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    goto :goto_1

    .line 100
    :cond_1
    move-object v15, v11

    .line 101
    move-object/from16 v22, v15

    .line 102
    .line 103
    const/4 v6, 0x0

    .line 104
    const/4 v11, 0x0

    .line 105
    const/16 v16, 0x0

    .line 106
    .line 107
    const/16 v19, 0x0

    .line 108
    .line 109
    const/16 v20, 0x0

    .line 110
    .line 111
    const/16 v21, 0x0

    .line 112
    .line 113
    const/16 v23, 0x0

    .line 114
    .line 115
    const/16 v24, 0x0

    .line 116
    .line 117
    :goto_1
    if-eqz v18, :cond_3

    .line 118
    .line 119
    if-eqz v11, :cond_2

    .line 120
    .line 121
    const-wide/16 v25, 0x40

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_2
    const-wide/16 v25, 0x20

    .line 125
    .line 126
    :goto_2
    or-long v2, v2, v25

    .line 127
    .line 128
    :cond_3
    and-long v25, v2, v13

    .line 129
    .line 130
    cmp-long v18, v25, v4

    .line 131
    .line 132
    if-eqz v18, :cond_5

    .line 133
    .line 134
    if-eqz v16, :cond_4

    .line 135
    .line 136
    const-wide/16 v25, 0x10

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_4
    const-wide/16 v25, 0x8

    .line 140
    .line 141
    :goto_3
    or-long v2, v2, v25

    .line 142
    .line 143
    :cond_5
    and-long v25, v2, v13

    .line 144
    .line 145
    cmp-long v18, v25, v4

    .line 146
    .line 147
    if-eqz v18, :cond_7

    .line 148
    .line 149
    if-eqz v19, :cond_6

    .line 150
    .line 151
    const-wide/16 v25, 0x400

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_6
    const-wide/16 v25, 0x200

    .line 155
    .line 156
    :goto_4
    or-long v2, v2, v25

    .line 157
    .line 158
    :cond_7
    and-long v25, v2, v13

    .line 159
    .line 160
    cmp-long v18, v25, v4

    .line 161
    .line 162
    if-eqz v18, :cond_9

    .line 163
    .line 164
    if-eqz v20, :cond_8

    .line 165
    .line 166
    const-wide/16 v25, 0x4000

    .line 167
    .line 168
    goto :goto_5

    .line 169
    :cond_8
    const-wide/16 v25, 0x2000

    .line 170
    .line 171
    :goto_5
    or-long v2, v2, v25

    .line 172
    .line 173
    :cond_9
    and-long v25, v2, v13

    .line 174
    .line 175
    cmp-long v18, v25, v4

    .line 176
    .line 177
    if-eqz v18, :cond_b

    .line 178
    .line 179
    if-eqz v21, :cond_a

    .line 180
    .line 181
    const-wide/16 v25, 0x100

    .line 182
    .line 183
    goto :goto_6

    .line 184
    :cond_a
    const-wide/16 v25, 0x80

    .line 185
    .line 186
    :goto_6
    or-long v2, v2, v25

    .line 187
    .line 188
    :cond_b
    and-long v25, v2, v13

    .line 189
    .line 190
    cmp-long v18, v25, v4

    .line 191
    .line 192
    if-eqz v18, :cond_d

    .line 193
    .line 194
    if-eqz v24, :cond_c

    .line 195
    .line 196
    const-wide/16 v25, 0x1000

    .line 197
    .line 198
    goto :goto_7

    .line 199
    :cond_c
    const-wide/16 v25, 0x800

    .line 200
    .line 201
    :goto_7
    or-long v2, v2, v25

    .line 202
    .line 203
    :cond_d
    const/16 v18, 0x8

    .line 204
    .line 205
    if-eqz v11, :cond_e

    .line 206
    .line 207
    const/4 v11, 0x0

    .line 208
    goto :goto_8

    .line 209
    :cond_e
    const/16 v11, 0x8

    .line 210
    .line 211
    :goto_8
    if-eqz v16, :cond_f

    .line 212
    .line 213
    const/16 v16, 0x0

    .line 214
    .line 215
    goto :goto_9

    .line 216
    :cond_f
    const/16 v16, 0x8

    .line 217
    .line 218
    :goto_9
    if-eqz v19, :cond_10

    .line 219
    .line 220
    const/16 v19, 0x0

    .line 221
    .line 222
    goto :goto_a

    .line 223
    :cond_10
    const/16 v19, 0x8

    .line 224
    .line 225
    :goto_a
    if-eqz v20, :cond_11

    .line 226
    .line 227
    const/16 v20, 0x0

    .line 228
    .line 229
    goto :goto_b

    .line 230
    :cond_11
    const/16 v20, 0x8

    .line 231
    .line 232
    :goto_b
    if-eqz v21, :cond_12

    .line 233
    .line 234
    const/16 v21, 0x0

    .line 235
    .line 236
    goto :goto_c

    .line 237
    :cond_12
    const/16 v21, 0x8

    .line 238
    .line 239
    :goto_c
    if-eqz v24, :cond_13

    .line 240
    .line 241
    goto :goto_d

    .line 242
    :cond_13
    const/16 v17, 0x8

    .line 243
    .line 244
    :goto_d
    move-object/from16 v18, v10

    .line 245
    .line 246
    move v7, v11

    .line 247
    move/from16 v27, v16

    .line 248
    .line 249
    move/from16 v8, v20

    .line 250
    .line 251
    move/from16 v10, v21

    .line 252
    .line 253
    move-object/from16 v11, v22

    .line 254
    .line 255
    move-object/from16 v20, v0

    .line 256
    .line 257
    move-object/from16 v21, v12

    .line 258
    .line 259
    move/from16 v0, v17

    .line 260
    .line 261
    move v12, v6

    .line 262
    move/from16 v6, v19

    .line 263
    .line 264
    move-object/from16 v19, v9

    .line 265
    .line 266
    move/from16 v9, v23

    .line 267
    .line 268
    goto :goto_e

    .line 269
    :cond_14
    move-object/from16 v20, v0

    .line 270
    .line 271
    move-object/from16 v19, v9

    .line 272
    .line 273
    move-object/from16 v18, v10

    .line 274
    .line 275
    move-object v15, v11

    .line 276
    move-object/from16 v21, v12

    .line 277
    .line 278
    const/4 v0, 0x0

    .line 279
    const/4 v6, 0x0

    .line 280
    const/4 v7, 0x0

    .line 281
    const/4 v8, 0x0

    .line 282
    const/4 v9, 0x0

    .line 283
    const/4 v10, 0x0

    .line 284
    const/4 v12, 0x0

    .line 285
    const/16 v27, 0x0

    .line 286
    .line 287
    :goto_e
    and-long/2addr v13, v2

    .line 288
    cmp-long v22, v13, v4

    .line 289
    .line 290
    if-eqz v22, :cond_15

    .line 291
    .line 292
    iget-object v13, v1, Lcom/join/android/app/mgsim/wufun/databinding/yw0;->b:Landroid/widget/TextView;

    .line 293
    .line 294
    invoke-static {v13, v11}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 295
    .line 296
    .line 297
    iget-object v11, v1, Lcom/join/android/app/mgsim/wufun/databinding/yw0;->e:Landroid/widget/TextView;

    .line 298
    .line 299
    invoke-virtual {v11, v6}, Landroid/view/View;->setVisibility(I)V

    .line 300
    .line 301
    .line 302
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/yw0;->g:Landroid/widget/ImageView;

    .line 303
    .line 304
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 305
    .line 306
    .line 307
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/yw0;->h:Landroid/widget/LinearLayout;

    .line 308
    .line 309
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 310
    .line 311
    .line 312
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/yw0;->i:Landroid/widget/TextView;

    .line 313
    .line 314
    invoke-static {v6, v15}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 315
    .line 316
    .line 317
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/zw0;->p:Lcom/join/kotlin/ui/userrecom/UserRecomTagView;

    .line 318
    .line 319
    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 320
    .line 321
    .line 322
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/yw0;->j:Landroid/widget/ProgressBar;

    .line 323
    .line 324
    invoke-virtual {v6, v9}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 325
    .line 326
    .line 327
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/yw0;->j:Landroid/widget/ProgressBar;

    .line 328
    .line 329
    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 330
    .line 331
    .line 332
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/yw0;->k:Landroid/widget/ProgressBar;

    .line 333
    .line 334
    invoke-virtual {v0, v12}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 335
    .line 336
    .line 337
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/yw0;->k:Landroid/widget/ProgressBar;

    .line 338
    .line 339
    move/from16 v6, v27

    .line 340
    .line 341
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 342
    .line 343
    .line 344
    :cond_15
    const-wide/16 v6, 0x5

    .line 345
    .line 346
    and-long/2addr v2, v6

    .line 347
    cmp-long v0, v2, v4

    .line 348
    .line 349
    if-eqz v0, :cond_16

    .line 350
    .line 351
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/yw0;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 352
    .line 353
    move-object/from16 v11, v21

    .line 354
    .line 355
    invoke-static {v0, v11}, Lcom/join/kotlin/bindingadapter/ViewBindingFresscoImageKt;->simpleDraweeViewBinding(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/yw0;->e:Landroid/widget/TextView;

    .line 359
    .line 360
    move-object/from16 v11, v20

    .line 361
    .line 362
    invoke-static {v0, v11}, Lcom/join/kotlin/bindingadapter/ViewBindingTextviewKt;->textViewBinding(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/zw0;->o:Landroid/widget/TextView;

    .line 366
    .line 367
    move-object/from16 v9, v19

    .line 368
    .line 369
    invoke-static {v0, v9}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 370
    .line 371
    .line 372
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/zw0;->p:Lcom/join/kotlin/ui/userrecom/UserRecomTagView;

    .line 373
    .line 374
    move-object/from16 v10, v18

    .line 375
    .line 376
    invoke-virtual {v0, v10}, Lcom/join/kotlin/ui/userrecom/UserRecomTagView;->setDatas(Ljava/util/List;)V

    .line 377
    .line 378
    .line 379
    :cond_16
    return-void

    .line 380
    :catchall_0
    move-exception v0

    .line 381
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 382
    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/zw0;->q:J

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
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/zw0;->q:J

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
    check-cast p2, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/zw0;->t(Lcom/join/mgps/dto/CollectionBeanSub;)V

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
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/zw0;->u(Lcom/join/kotlin/domain/common/AppListItemShowBean;)V

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

.method public t(Lcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 4
    .param p1    # Lcom/join/mgps/dto/CollectionBeanSub;
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
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/yw0;->l:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/zw0;->q:J

    .line 5
    .line 6
    const-wide/16 v2, 0x1

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/zw0;->q:J

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
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/yw0;->m:Lcom/join/kotlin/domain/common/AppListItemShowBean;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/zw0;->q:J

    .line 5
    .line 6
    const-wide/16 v2, 0x2

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/zw0;->q:J

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
