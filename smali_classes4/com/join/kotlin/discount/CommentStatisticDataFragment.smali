.class public final Lcom/join/kotlin/discount/CommentStatisticDataFragment;
.super Lcom/join/kotlin/base/fragment/BaseVmDbFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/kotlin/base/fragment/BaseVmDbFragment<",
        "Lcom/join/kotlin/discount/viewmodel/CommentStatisticDataViewModel;",
        "Lcom/join/android/app/mgsim/wufun/databinding/gl;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCommentStatisticDataFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommentStatisticDataFragment.kt\ncom/join/kotlin/discount/CommentStatisticDataFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,91:1\n1878#2,2:92\n1880#2:95\n1878#2,3:96\n1#3:94\n*S KotlinDebug\n*F\n+ 1 CommentStatisticDataFragment.kt\ncom/join/kotlin/discount/CommentStatisticDataFragment\n*L\n38#1:92,2\n38#1:95\n59#1:96,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0012\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\rH\u0016J\u0008\u0010\u0011\u001a\u00020\rH\u0016J\u000e\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0014R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/join/kotlin/discount/CommentStatisticDataFragment;",
        "Lcom/join/kotlin/base/fragment/BaseVmDbFragment;",
        "Lcom/join/kotlin/discount/viewmodel/CommentStatisticDataViewModel;",
        "Lcom/join/android/app/mgsim/wufun/databinding/FragmentCommentStatisticDataBinding;",
        "<init>",
        "()V",
        "mAdapter",
        "Lcom/join/kotlin/discount/adapter/CommentStatisticDataAdapter;",
        "getMAdapter",
        "()Lcom/join/kotlin/discount/adapter/CommentStatisticDataAdapter;",
        "mAdapter$delegate",
        "Lkotlin/Lazy;",
        "initView",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "createObserver",
        "lazyLoadData",
        "loadData",
        "refresh",
        "",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCommentStatisticDataFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommentStatisticDataFragment.kt\ncom/join/kotlin/discount/CommentStatisticDataFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,91:1\n1878#2,2:92\n1880#2:95\n1878#2,3:96\n1#3:94\n*S KotlinDebug\n*F\n+ 1 CommentStatisticDataFragment.kt\ncom/join/kotlin/discount/CommentStatisticDataFragment\n*L\n38#1:92,2\n38#1:95\n59#1:96,3\n*E\n"
    }
.end annotation


# instance fields
.field private final mAdapter$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/join/kotlin/discount/a;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/join/kotlin/discount/a;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/join/kotlin/discount/CommentStatisticDataFragment;->mAdapter$delegate:Lkotlin/Lazy;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic N()Lcom/join/kotlin/discount/adapter/CommentStatisticDataAdapter;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/kotlin/discount/CommentStatisticDataFragment;->mAdapter_delegate$lambda$0()Lcom/join/kotlin/discount/adapter/CommentStatisticDataAdapter;

    move-result-object v0

    return-object v0
.end method

.method private final getMAdapter()Lcom/join/kotlin/discount/adapter/CommentStatisticDataAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/discount/CommentStatisticDataFragment;->mAdapter$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/join/kotlin/discount/adapter/CommentStatisticDataAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final mAdapter_delegate$lambda$0()Lcom/join/kotlin/discount/adapter/CommentStatisticDataAdapter;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/kotlin/discount/adapter/CommentStatisticDataAdapter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/kotlin/discount/adapter/CommentStatisticDataAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public createObserver()V
    .locals 0

    return-void
.end method

.method public initView(Landroid/os/Bundle;)V
    .locals 17
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v2, "type"

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v0, v1

    .line 16
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    const-string v1, "data"

    .line 23
    .line 24
    invoke-virtual {v2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lcom/join/android/app/mgsim/wufun/databinding/gl;

    .line 33
    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Lcom/join/kotlin/discount/viewmodel/CommentStatisticDataViewModel;

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Lcom/join/android/app/mgsim/wufun/databinding/gl;->n(Lcom/join/kotlin/discount/viewmodel/CommentStatisticDataViewModel;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Lcom/join/android/app/mgsim/wufun/databinding/gl;

    .line 48
    .line 49
    iget-object v2, v2, Lcom/join/android/app/mgsim/wufun/databinding/gl;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 50
    .line 51
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    new-instance v4, Lcom/join/kotlin/discount/CommentStatisticDataFragment$initView$1;

    .line 56
    .line 57
    invoke-direct {v4, v3}, Lcom/join/kotlin/discount/CommentStatisticDataFragment$initView$1;-><init>(Landroid/content/Context;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Lcom/join/android/app/mgsim/wufun/databinding/gl;

    .line 68
    .line 69
    iget-object v2, v2, Lcom/join/android/app/mgsim/wufun/databinding/gl;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 70
    .line 71
    invoke-direct/range {p0 .. p0}, Lcom/join/kotlin/discount/CommentStatisticDataFragment;->getMAdapter()Lcom/join/kotlin/discount/adapter/CommentStatisticDataAdapter;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 76
    .line 77
    .line 78
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    const-class v3, Lcom/join/kotlin/discount/model/bean/CommentStatisticDataBean;

    .line 83
    .line 84
    invoke-virtual {v2, v1, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Lcom/join/kotlin/discount/model/bean/CommentStatisticDataBean;

    .line 89
    .line 90
    if-eqz v1, :cond_11

    .line 91
    .line 92
    new-instance v2, Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v3, "\u65f6\u957f\u6570\u636e"

    .line 98
    .line 99
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    const-string v4, "%\u7528\u6237"

    .line 104
    .line 105
    const/16 v5, 0x32

    .line 106
    .line 107
    const/16 v6, 0x64

    .line 108
    .line 109
    const/4 v7, 0x0

    .line 110
    if-eqz v3, :cond_a

    .line 111
    .line 112
    :try_start_1
    invoke-virtual {v1}, Lcom/join/kotlin/discount/model/bean/CommentStatisticDataBean;->getDuration()Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    if-eqz v0, :cond_2

    .line 117
    .line 118
    check-cast v0, Ljava/lang/Iterable;

    .line 119
    .line 120
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    if-eqz v0, :cond_2

    .line 125
    .line 126
    check-cast v0, Ljava/lang/Iterable;

    .line 127
    .line 128
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->maxOrThrow(Ljava/lang/Iterable;)D

    .line 129
    .line 130
    .line 131
    move-result-wide v8

    .line 132
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    goto :goto_1

    .line 137
    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    :goto_1
    invoke-virtual {v1}, Lcom/join/kotlin/discount/model/bean/CommentStatisticDataBean;->getDuration()Ljava/util/List;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    if-eqz v3, :cond_3

    .line 146
    .line 147
    check-cast v3, Ljava/lang/Iterable;

    .line 148
    .line 149
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    if-eqz v3, :cond_3

    .line 154
    .line 155
    check-cast v3, Ljava/lang/Iterable;

    .line 156
    .line 157
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->minOrThrow(Ljava/lang/Iterable;)D

    .line 158
    .line 159
    .line 160
    move-result-wide v8

    .line 161
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    goto :goto_2

    .line 166
    :cond_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    :goto_2
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    if-eqz v3, :cond_4

    .line 175
    .line 176
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    :cond_4
    invoke-virtual {v1}, Lcom/join/kotlin/discount/model/bean/CommentStatisticDataBean;->getDuration()Ljava/util/List;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    if-eqz v1, :cond_10

    .line 185
    .line 186
    check-cast v1, Ljava/lang/Iterable;

    .line 187
    .line 188
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    if-eqz v3, :cond_10

    .line 197
    .line 198
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    add-int/lit8 v5, v7, 0x1

    .line 203
    .line 204
    if-gez v7, :cond_5

    .line 205
    .line 206
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .line 207
    .line 208
    .line 209
    :cond_5
    check-cast v3, Ljava/lang/Double;

    .line 210
    .line 211
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 212
    .line 213
    .line 214
    move-result v10

    .line 215
    if-eqz v7, :cond_8

    .line 216
    .line 217
    const/4 v6, 0x1

    .line 218
    if-eq v7, v6, :cond_7

    .line 219
    .line 220
    const/4 v6, 0x2

    .line 221
    if-eq v7, v6, :cond_6

    .line 222
    .line 223
    const-string v6, "\u8d85\u8fc720min"

    .line 224
    .line 225
    :goto_4
    move-object v12, v6

    .line 226
    goto :goto_5

    .line 227
    :cond_6
    const-string v6, "10~20min"

    .line 228
    .line 229
    goto :goto_4

    .line 230
    :cond_7
    const-string v6, "5~10min"

    .line 231
    .line 232
    goto :goto_4

    .line 233
    :cond_8
    const-string v6, "0~5min"

    .line 234
    .line 235
    goto :goto_4

    .line 236
    :goto_5
    new-instance v6, Ljava/lang/StringBuilder;

    .line 237
    .line 238
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v14

    .line 251
    if-eqz v3, :cond_9

    .line 252
    .line 253
    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 257
    .line 258
    .line 259
    move-result v6

    .line 260
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 261
    .line 262
    .line 263
    move-result-wide v7

    .line 264
    double-to-int v3, v7

    .line 265
    sub-int/2addr v6, v3

    .line 266
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 271
    .line 272
    .line 273
    move-result v3

    .line 274
    goto :goto_6

    .line 275
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 276
    .line 277
    .line 278
    move-result v3

    .line 279
    :goto_6
    move v9, v3

    .line 280
    new-instance v3, Lcom/join/kotlin/discount/model/bean/CommentDataProgressBean;

    .line 281
    .line 282
    const/4 v13, 0x1

    .line 283
    move-object v8, v3

    .line 284
    move v11, v5

    .line 285
    invoke-direct/range {v8 .. v14}, Lcom/join/kotlin/discount/model/bean/CommentDataProgressBean;-><init>(IIILjava/lang/String;ILjava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move v7, v5

    .line 292
    goto :goto_3

    .line 293
    :cond_a
    const-string v3, "\u8bc4\u5206\u6570\u636e"

    .line 294
    .line 295
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    if-eqz v0, :cond_10

    .line 300
    .line 301
    invoke-virtual {v1}, Lcom/join/kotlin/discount/model/bean/CommentStatisticDataBean;->getScore()Ljava/util/List;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    if-eqz v0, :cond_b

    .line 306
    .line 307
    check-cast v0, Ljava/lang/Iterable;

    .line 308
    .line 309
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    if-eqz v0, :cond_b

    .line 314
    .line 315
    check-cast v0, Ljava/lang/Iterable;

    .line 316
    .line 317
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->maxOrThrow(Ljava/lang/Iterable;)D

    .line 318
    .line 319
    .line 320
    move-result-wide v8

    .line 321
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    goto :goto_7

    .line 326
    :cond_b
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    :goto_7
    invoke-virtual {v1}, Lcom/join/kotlin/discount/model/bean/CommentStatisticDataBean;->getScore()Ljava/util/List;

    .line 331
    .line 332
    .line 333
    move-result-object v3

    .line 334
    if-eqz v3, :cond_c

    .line 335
    .line 336
    check-cast v3, Ljava/lang/Iterable;

    .line 337
    .line 338
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    .line 339
    .line 340
    .line 341
    move-result-object v3

    .line 342
    if-eqz v3, :cond_c

    .line 343
    .line 344
    check-cast v3, Ljava/lang/Iterable;

    .line 345
    .line 346
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->minOrThrow(Ljava/lang/Iterable;)D

    .line 347
    .line 348
    .line 349
    move-result-wide v8

    .line 350
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 351
    .line 352
    .line 353
    move-result-object v3

    .line 354
    goto :goto_8

    .line 355
    :cond_c
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 356
    .line 357
    .line 358
    move-result-object v3

    .line 359
    :goto_8
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    move-result v3

    .line 363
    if-eqz v3, :cond_d

    .line 364
    .line 365
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    :cond_d
    invoke-virtual {v1}, Lcom/join/kotlin/discount/model/bean/CommentStatisticDataBean;->getScore()Ljava/util/List;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    if-eqz v1, :cond_10

    .line 374
    .line 375
    check-cast v1, Ljava/lang/Iterable;

    .line 376
    .line 377
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 382
    .line 383
    .line 384
    move-result v3

    .line 385
    if-eqz v3, :cond_10

    .line 386
    .line 387
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v3

    .line 391
    add-int/lit8 v5, v7, 0x1

    .line 392
    .line 393
    if-gez v7, :cond_e

    .line 394
    .line 395
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .line 396
    .line 397
    .line 398
    :cond_e
    check-cast v3, Ljava/lang/Double;

    .line 399
    .line 400
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 401
    .line 402
    .line 403
    move-result v10

    .line 404
    new-instance v6, Ljava/lang/StringBuilder;

    .line 405
    .line 406
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v14

    .line 419
    if-eqz v3, :cond_f

    .line 420
    .line 421
    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    .line 422
    .line 423
    .line 424
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 425
    .line 426
    .line 427
    move-result v6

    .line 428
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 429
    .line 430
    .line 431
    move-result-wide v7

    .line 432
    double-to-int v3, v7

    .line 433
    sub-int/2addr v6, v3

    .line 434
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 435
    .line 436
    .line 437
    move-result-object v3

    .line 438
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 439
    .line 440
    .line 441
    move-result v3

    .line 442
    goto :goto_a

    .line 443
    :cond_f
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 444
    .line 445
    .line 446
    move-result v3

    .line 447
    :goto_a
    move v9, v3

    .line 448
    new-instance v3, Lcom/join/kotlin/discount/model/bean/CommentDataProgressBean;

    .line 449
    .line 450
    const/4 v12, 0x0

    .line 451
    const/4 v13, 0x2

    .line 452
    const/16 v15, 0x8

    .line 453
    .line 454
    const/16 v16, 0x0

    .line 455
    .line 456
    move-object v8, v3

    .line 457
    move v11, v5

    .line 458
    invoke-direct/range {v8 .. v16}, Lcom/join/kotlin/discount/model/bean/CommentDataProgressBean;-><init>(IIILjava/lang/String;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    move v7, v5

    .line 465
    goto :goto_9

    .line 466
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/join/kotlin/discount/CommentStatisticDataFragment;->getMAdapter()Lcom/join/kotlin/discount/adapter/CommentStatisticDataAdapter;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->submitList(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 471
    .line 472
    .line 473
    goto :goto_b

    .line 474
    :catch_0
    move-exception v0

    .line 475
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 476
    .line 477
    .line 478
    :cond_11
    :goto_b
    return-void
.end method

.method public lazyLoadData()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/kotlin/discount/CommentStatisticDataFragment;->loadData(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final loadData(Z)V
    .locals 0

    return-void
.end method
