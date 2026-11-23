.class public final Lcom/join/mgps/activity/recomend/adapter/GameListAdapter;
.super Lcom/chad/library/adapter/base/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/recomend/adapter/GameListAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/c<",
        "Lcom/join/mgps/dto/MultiRecommendBean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGameListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameListAdapter.kt\ncom/join/mgps/activity/recomend/adapter/GameListAdapter\n+ 2 BaseMultiItemAdapter.kt\ncom/chad/library/adapter/base/BaseMultiItemAdapter\n*L\n1#1,338:1\n55#2:339\n55#2:340\n55#2:341\n*S KotlinDebug\n*F\n+ 1 GameListAdapter.kt\ncom/join/mgps/activity/recomend/adapter/GameListAdapter\n*L\n42#1:339\n52#1:340\n76#1:341\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00112\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0011B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nJ \u0010\u000c\u001a\u00020\u00062\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000bH\u0002\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/join/mgps/activity/recomend/adapter/GameListAdapter;",
        "Lcom/chad/library/adapter/base/BaseMultiItemAdapter;",
        "Lcom/join/mgps/dto/MultiRecommendBean;",
        "<init>",
        "()V",
        "expGame",
        "",
        "rv_game",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "gameList",
        "",
        "Lcom/join/mgps/dto/AppBean;",
        "onBindGameList",
        "helper",
        "Lcom/chad/library/adapter/base/viewholder/DataBindingHolder;",
        "Lcom/join/android/app/mgsim/wufun/databinding/ItemRecommendGame4Binding;",
        "bean",
        "Companion",
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
        "SMAP\nGameListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameListAdapter.kt\ncom/join/mgps/activity/recomend/adapter/GameListAdapter\n+ 2 BaseMultiItemAdapter.kt\ncom/chad/library/adapter/base/BaseMultiItemAdapter\n*L\n1#1,338:1\n55#2:339\n55#2:340\n55#2:341\n*S KotlinDebug\n*F\n+ 1 GameListAdapter.kt\ncom/join/mgps/activity/recomend/adapter/GameListAdapter\n*L\n42#1:339\n52#1:340\n76#1:341\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/join/mgps/activity/recomend/adapter/GameListAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ITEM_TYPE_GAME:I = 0x3

.field public static final ITEM_TYPE_H_LIST:I = 0x2

.field public static final ITEM_TYPE_TITLE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/join/mgps/activity/recomend/adapter/GameListAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/join/mgps/activity/recomend/adapter/GameListAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/join/mgps/activity/recomend/adapter/GameListAdapter;->Companion:Lcom/join/mgps/activity/recomend/adapter/GameListAdapter$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter/base/c;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/join/mgps/activity/recomend/adapter/GameListAdapter$1;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/join/mgps/activity/recomend/adapter/GameListAdapter$1;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/c;->onItemViewType(Lcom/chad/library/adapter/base/c$a;)Lcom/chad/library/adapter/base/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v2, Lcom/join/mgps/activity/recomend/adapter/GameListAdapter$2;

    .line 16
    .line 17
    invoke-direct {v2}, Lcom/join/mgps/activity/recomend/adapter/GameListAdapter$2;-><init>()V

    .line 18
    .line 19
    .line 20
    const-class v3, Lv2/a;

    .line 21
    .line 22
    invoke-virtual {v0, v1, v3, v2}, Lcom/chad/library/adapter/base/c;->addItemType(ILjava/lang/Class;Lcom/chad/library/adapter/base/c$b;)Lcom/chad/library/adapter/base/c;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Lcom/join/mgps/activity/recomend/adapter/GameListAdapter$3;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/recomend/adapter/GameListAdapter$3;-><init>(Lcom/join/mgps/activity/recomend/adapter/GameListAdapter;)V

    .line 29
    .line 30
    .line 31
    const/4 v2, 0x2

    .line 32
    invoke-virtual {v0, v2, v3, v1}, Lcom/chad/library/adapter/base/c;->addItemType(ILjava/lang/Class;Lcom/chad/library/adapter/base/c$b;)Lcom/chad/library/adapter/base/c;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Lcom/join/mgps/activity/recomend/adapter/GameListAdapter$4;

    .line 37
    .line 38
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/recomend/adapter/GameListAdapter$4;-><init>(Lcom/join/mgps/activity/recomend/adapter/GameListAdapter;)V

    .line 39
    .line 40
    .line 41
    const/4 v2, 0x3

    .line 42
    invoke-virtual {v0, v2, v3, v1}, Lcom/chad/library/adapter/base/c;->addItemType(ILjava/lang/Class;Lcom/chad/library/adapter/base/c$b;)Lcom/chad/library/adapter/base/c;

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public static final synthetic access$onBindGameList(Lcom/join/mgps/activity/recomend/adapter/GameListAdapter;Lv2/a;Lcom/join/mgps/dto/AppBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/recomend/adapter/GameListAdapter;->onBindGameList(Lv2/a;Lcom/join/mgps/dto/AppBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final onBindGameList(Lv2/a;Lcom/join/mgps/dto/AppBean;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv2/a<",
            "Lcom/join/android/app/mgsim/wufun/databinding/e50;",
            ">;",
            "Lcom/join/mgps/dto/AppBean;",
            ")V"
        }
    .end annotation

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    if-eqz p2, :cond_c

    .line 4
    .line 5
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v3, ""

    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getTag_info()Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    move-result-object v8

    .line 21
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getScore()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getDown_count()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getSize()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    invoke-virtual {p1}, Lv2/a;->a()Landroidx/databinding/ViewDataBinding;

    .line 38
    .line 39
    .line 40
    move-result-object v9

    .line 41
    check-cast v9, Lcom/join/android/app/mgsim/wufun/databinding/e50;

    .line 42
    .line 43
    if-eqz v9, :cond_0

    .line 44
    .line 45
    iget-object v9, v9, Lcom/join/android/app/mgsim/wufun/databinding/e50;->j:Landroid/widget/LinearLayout;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 v9, 0x0

    .line 49
    :goto_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v10

    .line 53
    invoke-static/range {v4 .. v10}, Lcom/join/mgps/Util/UtilsMy;->K(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 54
    .line 55
    .line 56
    const-wide/16 v4, 0x0

    .line 57
    .line 58
    :try_start_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getSize()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    const-string v7, "getSize(...)"

    .line 63
    .line 64
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 68
    .line 69
    .line 70
    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    const/16 v8, 0x400

    .line 72
    .line 73
    int-to-double v8, v8

    .line 74
    mul-double v6, v6, v8

    .line 75
    .line 76
    mul-double v6, v6, v8

    .line 77
    .line 78
    double-to-long v6, v6

    .line 79
    goto :goto_1

    .line 80
    :catch_0
    move-exception v6

    .line 81
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 82
    .line 83
    .line 84
    move-wide v6, v4

    .line 85
    :goto_1
    invoke-virtual {p1}, Lv2/a;->a()Landroidx/databinding/ViewDataBinding;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    check-cast v8, Lcom/join/android/app/mgsim/wufun/databinding/e50;

    .line 90
    .line 91
    if-eqz v8, :cond_2

    .line 92
    .line 93
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getGift_package_switch()I

    .line 94
    .line 95
    .line 96
    move-result v9

    .line 97
    const/4 v10, 0x1

    .line 98
    if-ne v9, v10, :cond_1

    .line 99
    .line 100
    iget-object v9, v8, Lcom/join/android/app/mgsim/wufun/databinding/e50;->e:Landroid/widget/ImageView;

    .line 101
    .line 102
    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_1
    iget-object v9, v8, Lcom/join/android/app/mgsim/wufun/databinding/e50;->e:Landroid/widget/ImageView;

    .line 107
    .line 108
    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    .line 110
    .line 111
    :goto_2
    iget-object v8, v8, Lcom/join/android/app/mgsim/wufun/databinding/e50;->m:Landroid/widget/TextView;

    .line 112
    .line 113
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getInfo()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v9

    .line 117
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    .line 119
    .line 120
    :cond_2
    invoke-virtual {p1}, Lv2/a;->a()Landroidx/databinding/ViewDataBinding;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    check-cast v8, Lcom/join/android/app/mgsim/wufun/databinding/e50;

    .line 125
    .line 126
    if-eqz v8, :cond_3

    .line 127
    .line 128
    iget-object v8, v8, Lcom/join/android/app/mgsim/wufun/databinding/e50;->b:Lcom/join/mgps/customview/DownloadNormalView;

    .line 129
    .line 130
    if-eqz v8, :cond_3

    .line 131
    .line 132
    new-instance v9, Lm6/c;

    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 135
    .line 136
    .line 137
    move-result-object v10

    .line 138
    invoke-direct {v9, v10, p2}, Lm6/c;-><init>(Landroid/content/Context;Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v8, v9}, Lcom/join/mgps/customview/DownloadNormalView;->f(Lcom/join/mgps/callbacks/f;)V

    .line 142
    .line 143
    .line 144
    :cond_3
    invoke-virtual {p2}, Lcom/join/mgps/dto/DownloadPointBase;->isH5Game()Z

    .line 145
    .line 146
    .line 147
    move-result p2

    .line 148
    if-eqz p2, :cond_4

    .line 149
    .line 150
    invoke-virtual {p1}, Lv2/a;->a()Landroidx/databinding/ViewDataBinding;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;

    .line 155
    .line 156
    if-eqz p1, :cond_d

    .line 157
    .line 158
    iget-object p2, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->j:Landroid/widget/LinearLayout;

    .line 159
    .line 160
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 161
    .line 162
    .line 163
    iget-object p2, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->f:Landroid/widget/LinearLayout;

    .line 164
    .line 165
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 166
    .line 167
    .line 168
    iget-object p2, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->i:Landroid/widget/ProgressBar;

    .line 169
    .line 170
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 171
    .line 172
    .line 173
    iget-object p2, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->h:Landroid/widget/ProgressBar;

    .line 174
    .line 175
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 176
    .line 177
    .line 178
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->m:Landroid/widget/TextView;

    .line 179
    .line 180
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 181
    .line 182
    .line 183
    goto/16 :goto_5

    .line 184
    .line 185
    :cond_4
    if-nez v1, :cond_5

    .line 186
    .line 187
    invoke-virtual {p1}, Lv2/a;->a()Landroidx/databinding/ViewDataBinding;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;

    .line 192
    .line 193
    if-eqz p1, :cond_d

    .line 194
    .line 195
    iget-object p2, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->j:Landroid/widget/LinearLayout;

    .line 196
    .line 197
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 198
    .line 199
    .line 200
    iget-object p2, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->f:Landroid/widget/LinearLayout;

    .line 201
    .line 202
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 203
    .line 204
    .line 205
    iget-object p2, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->i:Landroid/widget/ProgressBar;

    .line 206
    .line 207
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 208
    .line 209
    .line 210
    iget-object p2, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->h:Landroid/widget/ProgressBar;

    .line 211
    .line 212
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 213
    .line 214
    .line 215
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->m:Landroid/widget/TextView;

    .line 216
    .line 217
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 218
    .line 219
    .line 220
    goto/16 :goto_5

    .line 221
    .line 222
    :cond_5
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 223
    .line 224
    .line 225
    move-result p2

    .line 226
    if-eqz p2, :cond_b

    .line 227
    .line 228
    const/16 v8, 0x2a

    .line 229
    .line 230
    if-eq p2, v8, :cond_a

    .line 231
    .line 232
    const/16 v8, 0x30

    .line 233
    .line 234
    if-eq p2, v8, :cond_9

    .line 235
    .line 236
    const/4 v8, 0x2

    .line 237
    const/16 v9, 0x2f

    .line 238
    .line 239
    if-eq p2, v8, :cond_8

    .line 240
    .line 241
    const/4 v8, 0x3

    .line 242
    if-eq p2, v8, :cond_6

    .line 243
    .line 244
    const/4 v8, 0x5

    .line 245
    if-eq p2, v8, :cond_a

    .line 246
    .line 247
    const/4 v8, 0x6

    .line 248
    if-eq p2, v8, :cond_6

    .line 249
    .line 250
    const/4 v3, 0x7

    .line 251
    if-eq p2, v3, :cond_b

    .line 252
    .line 253
    packed-switch p2, :pswitch_data_0

    .line 254
    .line 255
    .line 256
    goto/16 :goto_5

    .line 257
    .line 258
    :pswitch_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .line 262
    .line 263
    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object p2

    .line 284
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 285
    .line 286
    .line 287
    move-result-wide v3

    .line 288
    long-to-int v1, v3

    .line 289
    invoke-virtual {p1}, Lv2/a;->a()Landroidx/databinding/ViewDataBinding;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;

    .line 294
    .line 295
    if-eqz p1, :cond_d

    .line 296
    .line 297
    iget-object v3, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->j:Landroid/widget/LinearLayout;

    .line 298
    .line 299
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 300
    .line 301
    .line 302
    iget-object v3, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->m:Landroid/widget/TextView;

    .line 303
    .line 304
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 305
    .line 306
    .line 307
    iget-object v3, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->f:Landroid/widget/LinearLayout;

    .line 308
    .line 309
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 310
    .line 311
    .line 312
    iget-object v3, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->i:Landroid/widget/ProgressBar;

    .line 313
    .line 314
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 315
    .line 316
    .line 317
    iget-object v2, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->h:Landroid/widget/ProgressBar;

    .line 318
    .line 319
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 320
    .line 321
    .line 322
    iget-object v0, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->k:Landroid/widget/TextView;

    .line 323
    .line 324
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    .line 326
    .line 327
    iget-object p2, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->g:Landroid/widget/TextView;

    .line 328
    .line 329
    const-string v0, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    .line 330
    .line 331
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    .line 333
    .line 334
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->i:Landroid/widget/ProgressBar;

    .line 335
    .line 336
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 337
    .line 338
    .line 339
    goto/16 :goto_5

    .line 340
    .line 341
    :pswitch_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 342
    .line 343
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    .line 345
    .line 346
    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v3

    .line 360
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object p2

    .line 367
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 368
    .line 369
    .line 370
    move-result-wide v3

    .line 371
    long-to-int v1, v3

    .line 372
    invoke-virtual {p1}, Lv2/a;->a()Landroidx/databinding/ViewDataBinding;

    .line 373
    .line 374
    .line 375
    move-result-object p1

    .line 376
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;

    .line 377
    .line 378
    if-eqz p1, :cond_d

    .line 379
    .line 380
    iget-object v3, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->j:Landroid/widget/LinearLayout;

    .line 381
    .line 382
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 383
    .line 384
    .line 385
    iget-object v3, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->m:Landroid/widget/TextView;

    .line 386
    .line 387
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 388
    .line 389
    .line 390
    iget-object v3, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->f:Landroid/widget/LinearLayout;

    .line 391
    .line 392
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 393
    .line 394
    .line 395
    iget-object v3, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->i:Landroid/widget/ProgressBar;

    .line 396
    .line 397
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 398
    .line 399
    .line 400
    iget-object v0, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->h:Landroid/widget/ProgressBar;

    .line 401
    .line 402
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 403
    .line 404
    .line 405
    iget-object v0, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->k:Landroid/widget/TextView;

    .line 406
    .line 407
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    .line 409
    .line 410
    iget-object p2, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->g:Landroid/widget/TextView;

    .line 411
    .line 412
    const-string v0, "\u89e3\u538b\u4e2d"

    .line 413
    .line 414
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    .line 416
    .line 417
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->i:Landroid/widget/ProgressBar;

    .line 418
    .line 419
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 420
    .line 421
    .line 422
    goto/16 :goto_5

    .line 423
    .line 424
    :pswitch_2
    invoke-virtual {p1}, Lv2/a;->a()Landroidx/databinding/ViewDataBinding;

    .line 425
    .line 426
    .line 427
    move-result-object p1

    .line 428
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;

    .line 429
    .line 430
    if-eqz p1, :cond_d

    .line 431
    .line 432
    iget-object p2, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->j:Landroid/widget/LinearLayout;

    .line 433
    .line 434
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 435
    .line 436
    .line 437
    iget-object p2, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->m:Landroid/widget/TextView;

    .line 438
    .line 439
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 440
    .line 441
    .line 442
    iget-object p2, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->f:Landroid/widget/LinearLayout;

    .line 443
    .line 444
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 445
    .line 446
    .line 447
    iget-object p2, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->i:Landroid/widget/ProgressBar;

    .line 448
    .line 449
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 450
    .line 451
    .line 452
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->h:Landroid/widget/ProgressBar;

    .line 453
    .line 454
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 455
    .line 456
    .line 457
    goto/16 :goto_5

    .line 458
    .line 459
    :pswitch_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 460
    .line 461
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 465
    .line 466
    .line 467
    move-result-wide v3

    .line 468
    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v3

    .line 472
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v3

    .line 482
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object p2

    .line 489
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 490
    .line 491
    .line 492
    move-result-wide v3

    .line 493
    long-to-int v1, v3

    .line 494
    invoke-virtual {p1}, Lv2/a;->a()Landroidx/databinding/ViewDataBinding;

    .line 495
    .line 496
    .line 497
    move-result-object p1

    .line 498
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;

    .line 499
    .line 500
    if-eqz p1, :cond_d

    .line 501
    .line 502
    iget-object v3, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->j:Landroid/widget/LinearLayout;

    .line 503
    .line 504
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 505
    .line 506
    .line 507
    iget-object v3, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->m:Landroid/widget/TextView;

    .line 508
    .line 509
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 510
    .line 511
    .line 512
    iget-object v3, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->f:Landroid/widget/LinearLayout;

    .line 513
    .line 514
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 515
    .line 516
    .line 517
    iget-object v3, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->i:Landroid/widget/ProgressBar;

    .line 518
    .line 519
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 520
    .line 521
    .line 522
    iget-object v2, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->h:Landroid/widget/ProgressBar;

    .line 523
    .line 524
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 525
    .line 526
    .line 527
    iget-object v0, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->k:Landroid/widget/TextView;

    .line 528
    .line 529
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    .line 531
    .line 532
    iget-object p2, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->g:Landroid/widget/TextView;

    .line 533
    .line 534
    const-string v0, "\u7b49\u5f85\u4e2d"

    .line 535
    .line 536
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    .line 538
    .line 539
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->h:Landroid/widget/ProgressBar;

    .line 540
    .line 541
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 542
    .line 543
    .line 544
    goto/16 :goto_5

    .line 545
    .line 546
    :pswitch_4
    invoke-virtual {p1}, Lv2/a;->a()Landroidx/databinding/ViewDataBinding;

    .line 547
    .line 548
    .line 549
    move-result-object p1

    .line 550
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;

    .line 551
    .line 552
    if-eqz p1, :cond_d

    .line 553
    .line 554
    iget-object p2, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->j:Landroid/widget/LinearLayout;

    .line 555
    .line 556
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 557
    .line 558
    .line 559
    iget-object p2, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->m:Landroid/widget/TextView;

    .line 560
    .line 561
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 562
    .line 563
    .line 564
    iget-object p2, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->f:Landroid/widget/LinearLayout;

    .line 565
    .line 566
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 567
    .line 568
    .line 569
    iget-object p2, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->i:Landroid/widget/ProgressBar;

    .line 570
    .line 571
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 572
    .line 573
    .line 574
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->h:Landroid/widget/ProgressBar;

    .line 575
    .line 576
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 577
    .line 578
    .line 579
    goto/16 :goto_5

    .line 580
    .line 581
    :cond_6
    :try_start_1
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 582
    .line 583
    .line 584
    move-result-wide v10

    .line 585
    cmp-long p2, v10, v4

    .line 586
    .line 587
    if-nez p2, :cond_7

    .line 588
    .line 589
    new-instance p2, Ljava/lang/StringBuilder;

    .line 590
    .line 591
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 592
    .line 593
    .line 594
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 595
    .line 596
    .line 597
    move-result-wide v4

    .line 598
    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v4

    .line 602
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    .line 604
    .line 605
    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v4

    .line 612
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    .line 614
    .line 615
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object p2

    .line 619
    goto :goto_3

    .line 620
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    .line 621
    .line 622
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 623
    .line 624
    .line 625
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 626
    .line 627
    .line 628
    move-result-wide v4

    .line 629
    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v4

    .line 633
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    .line 635
    .line 636
    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 637
    .line 638
    .line 639
    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 640
    .line 641
    .line 642
    move-result-object v4

    .line 643
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    .line 645
    .line 646
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object p2

    .line 650
    :goto_3
    move-object v3, p2

    .line 651
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 652
    .line 653
    .line 654
    move-result-wide v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 655
    long-to-int p2, v4

    .line 656
    goto :goto_4

    .line 657
    :catch_1
    move-exception p2

    .line 658
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 659
    .line 660
    .line 661
    const/4 p2, 0x0

    .line 662
    :goto_4
    invoke-virtual {p1}, Lv2/a;->a()Landroidx/databinding/ViewDataBinding;

    .line 663
    .line 664
    .line 665
    move-result-object p1

    .line 666
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;

    .line 667
    .line 668
    if-eqz p1, :cond_d

    .line 669
    .line 670
    iget-object v1, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->j:Landroid/widget/LinearLayout;

    .line 671
    .line 672
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 673
    .line 674
    .line 675
    iget-object v1, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->m:Landroid/widget/TextView;

    .line 676
    .line 677
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 678
    .line 679
    .line 680
    iget-object v1, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->f:Landroid/widget/LinearLayout;

    .line 681
    .line 682
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 683
    .line 684
    .line 685
    iget-object v1, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->i:Landroid/widget/ProgressBar;

    .line 686
    .line 687
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 688
    .line 689
    .line 690
    iget-object v0, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->h:Landroid/widget/ProgressBar;

    .line 691
    .line 692
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 693
    .line 694
    .line 695
    iget-object v0, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->k:Landroid/widget/TextView;

    .line 696
    .line 697
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 698
    .line 699
    .line 700
    iget-object v0, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->g:Landroid/widget/TextView;

    .line 701
    .line 702
    const-string v1, "\u6682\u505c\u4e2d"

    .line 703
    .line 704
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 705
    .line 706
    .line 707
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->h:Landroid/widget/ProgressBar;

    .line 708
    .line 709
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 710
    .line 711
    .line 712
    goto/16 :goto_5

    .line 713
    .line 714
    :cond_8
    new-instance p2, Ljava/lang/StringBuilder;

    .line 715
    .line 716
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 717
    .line 718
    .line 719
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 720
    .line 721
    .line 722
    move-result-wide v3

    .line 723
    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 724
    .line 725
    .line 726
    move-result-object v3

    .line 727
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    .line 729
    .line 730
    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 731
    .line 732
    .line 733
    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 734
    .line 735
    .line 736
    move-result-object v3

    .line 737
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    .line 739
    .line 740
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 741
    .line 742
    .line 743
    move-result-object p2

    .line 744
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 745
    .line 746
    .line 747
    move-result-wide v3

    .line 748
    long-to-int v4, v3

    .line 749
    invoke-virtual {p1}, Lv2/a;->a()Landroidx/databinding/ViewDataBinding;

    .line 750
    .line 751
    .line 752
    move-result-object p1

    .line 753
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;

    .line 754
    .line 755
    if-eqz p1, :cond_d

    .line 756
    .line 757
    iget-object v3, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->j:Landroid/widget/LinearLayout;

    .line 758
    .line 759
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 760
    .line 761
    .line 762
    iget-object v3, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->m:Landroid/widget/TextView;

    .line 763
    .line 764
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 765
    .line 766
    .line 767
    iget-object v3, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->f:Landroid/widget/LinearLayout;

    .line 768
    .line 769
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 770
    .line 771
    .line 772
    iget-object v3, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->i:Landroid/widget/ProgressBar;

    .line 773
    .line 774
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 775
    .line 776
    .line 777
    iget-object v0, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->h:Landroid/widget/ProgressBar;

    .line 778
    .line 779
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 780
    .line 781
    .line 782
    iget-object v0, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->k:Landroid/widget/TextView;

    .line 783
    .line 784
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 785
    .line 786
    .line 787
    iget-object p2, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->g:Landroid/widget/TextView;

    .line 788
    .line 789
    new-instance v0, Ljava/lang/StringBuilder;

    .line 790
    .line 791
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 792
    .line 793
    .line 794
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    .line 795
    .line 796
    .line 797
    move-result-object v1

    .line 798
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    .line 800
    .line 801
    const-string v1, "/S"

    .line 802
    .line 803
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    .line 805
    .line 806
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 807
    .line 808
    .line 809
    move-result-object v0

    .line 810
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 811
    .line 812
    .line 813
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->h:Landroid/widget/ProgressBar;

    .line 814
    .line 815
    invoke-virtual {p1, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 816
    .line 817
    .line 818
    goto :goto_5

    .line 819
    :cond_9
    invoke-virtual {p1}, Lv2/a;->a()Landroidx/databinding/ViewDataBinding;

    .line 820
    .line 821
    .line 822
    move-result-object p1

    .line 823
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;

    .line 824
    .line 825
    if-eqz p1, :cond_d

    .line 826
    .line 827
    iget-object p2, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->j:Landroid/widget/LinearLayout;

    .line 828
    .line 829
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 830
    .line 831
    .line 832
    iget-object p2, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->m:Landroid/widget/TextView;

    .line 833
    .line 834
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 835
    .line 836
    .line 837
    iget-object p2, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->f:Landroid/widget/LinearLayout;

    .line 838
    .line 839
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 840
    .line 841
    .line 842
    iget-object p2, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->i:Landroid/widget/ProgressBar;

    .line 843
    .line 844
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 845
    .line 846
    .line 847
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->h:Landroid/widget/ProgressBar;

    .line 848
    .line 849
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 850
    .line 851
    .line 852
    goto :goto_5

    .line 853
    :cond_a
    invoke-virtual {p1}, Lv2/a;->a()Landroidx/databinding/ViewDataBinding;

    .line 854
    .line 855
    .line 856
    move-result-object p1

    .line 857
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;

    .line 858
    .line 859
    if-eqz p1, :cond_d

    .line 860
    .line 861
    iget-object p2, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->j:Landroid/widget/LinearLayout;

    .line 862
    .line 863
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 864
    .line 865
    .line 866
    iget-object p2, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->m:Landroid/widget/TextView;

    .line 867
    .line 868
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 869
    .line 870
    .line 871
    iget-object p2, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->f:Landroid/widget/LinearLayout;

    .line 872
    .line 873
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 874
    .line 875
    .line 876
    iget-object p2, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->i:Landroid/widget/ProgressBar;

    .line 877
    .line 878
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 879
    .line 880
    .line 881
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->h:Landroid/widget/ProgressBar;

    .line 882
    .line 883
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 884
    .line 885
    .line 886
    goto :goto_5

    .line 887
    :cond_b
    invoke-virtual {p1}, Lv2/a;->a()Landroidx/databinding/ViewDataBinding;

    .line 888
    .line 889
    .line 890
    move-result-object p1

    .line 891
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;

    .line 892
    .line 893
    if-eqz p1, :cond_d

    .line 894
    .line 895
    iget-object p2, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->j:Landroid/widget/LinearLayout;

    .line 896
    .line 897
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 898
    .line 899
    .line 900
    iget-object p2, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->m:Landroid/widget/TextView;

    .line 901
    .line 902
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 903
    .line 904
    .line 905
    iget-object p2, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->f:Landroid/widget/LinearLayout;

    .line 906
    .line 907
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 908
    .line 909
    .line 910
    iget-object p2, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->i:Landroid/widget/ProgressBar;

    .line 911
    .line 912
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 913
    .line 914
    .line 915
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->h:Landroid/widget/ProgressBar;

    .line 916
    .line 917
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 918
    .line 919
    .line 920
    goto :goto_5

    .line 921
    :cond_c
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 922
    .line 923
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 924
    .line 925
    .line 926
    :cond_d
    :goto_5
    return-void

    .line 927
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final expGame(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;)V
    .locals 10
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Ljava/util/List<",
            "+",
            "Lcom/join/mgps/dto/AppBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "gameList"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 9
    .line 10
    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    invoke-static {p1}, Lcom/join/android/app/component/video/h;->m(Landroidx/recyclerview/widget/RecyclerView;)[I

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x0

    .line 24
    aget v3, v1, v2

    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    aget v5, v1, v4

    .line 28
    .line 29
    if-gt v3, v5, :cond_2

    .line 30
    .line 31
    :goto_0
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    check-cast v6, Lcom/join/mgps/dto/AppBean;

    .line 36
    .line 37
    invoke-virtual {v6}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExposure()Z

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    if-nez v7, :cond_1

    .line 42
    .line 43
    aget v7, v1, v2

    .line 44
    .line 45
    sub-int v7, v3, v7

    .line 46
    .line 47
    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    if-eqz v7, :cond_1

    .line 52
    .line 53
    invoke-virtual {v7, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    if-eqz v7, :cond_1

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    invoke-static {v7}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    sget-object v8, Lcom/papa/sim/statistic/Event;->expGameAdPage:Lcom/papa/sim/statistic/Event;

    .line 68
    .line 69
    invoke-virtual {v6}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 70
    .line 71
    .line 72
    move-result-object v9

    .line 73
    invoke-virtual {v9}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    if-eqz v9, :cond_0

    .line 78
    .line 79
    invoke-virtual {v9}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    goto :goto_1

    .line 84
    :cond_0
    const/4 v9, 0x0

    .line 85
    :goto_1
    invoke-virtual {v7, v8, v9}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v6, v4}, Lcom/join/kotlin/base/impl/BaseDownloadable;->setExposure(Z)V

    .line 89
    .line 90
    .line 91
    :cond_1
    if-eq v3, v5, :cond_2

    .line 92
    .line 93
    add-int/lit8 v3, v3, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    return-void
.end method
