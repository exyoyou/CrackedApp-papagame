.class Lcom/join/mgps/fragment/e1$f;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/e1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/join/mgps/fragment/e1$g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/join/mgps/fragment/e1;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/e1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/e1$f;->e:Lcom/join/mgps/fragment/e1;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/fragment/e1$f;Lcom/join/mgps/fragment/e1$g;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/fragment/e1$f;->d(Lcom/join/mgps/fragment/e1$g;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/join/mgps/fragment/e1$f;Lcom/join/mgps/dto/EndGameBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/fragment/e1$f;->c(Lcom/join/mgps/dto/EndGameBean;Landroid/view/View;)V

    return-void
.end method

.method private synthetic c(Lcom/join/mgps/dto/EndGameBean;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/join/mgps/fragment/e1$f;->e:Lcom/join/mgps/fragment/e1;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/join/mgps/fragment/e1;->S(Lcom/join/mgps/fragment/e1;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-static {p2}, Lcom/join/mgps/activity/EndGameDetailActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/EndGameDetailActivity_$o;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/EndGameBean;->getGameId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p2, v0}, Lcom/join/mgps/activity/EndGameDetailActivity_$o;->b(Ljava/lang/String;)Lcom/join/mgps/activity/EndGameDetailActivity_$o;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/dto/EndGameBean;->getEndgameId()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p2, v0}, Lcom/join/mgps/activity/EndGameDetailActivity_$o;->a(Ljava/lang/String;)Lcom/join/mgps/activity/EndGameDetailActivity_$o;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    iget-object v0, p0, Lcom/join/mgps/fragment/e1$f;->e:Lcom/join/mgps/fragment/e1;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/join/mgps/fragment/e1;->i:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p2, v0}, Lcom/join/mgps/activity/EndGameDetailActivity_$o;->d(Ljava/lang/String;)Lcom/join/mgps/activity/EndGameDetailActivity_$o;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p2}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 36
    .line 37
    .line 38
    iget-object p2, p0, Lcom/join/mgps/fragment/e1$f;->e:Lcom/join/mgps/fragment/e1;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/join/mgps/dto/EndGameBean;->getEndgameId()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p2, p1}, Lcom/join/mgps/fragment/e1;->P(Lcom/join/mgps/fragment/e1;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method private synthetic d(Lcom/join/mgps/fragment/e1$g;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/join/mgps/fragment/e1$f;->e:Lcom/join/mgps/fragment/e1;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/join/mgps/fragment/e1;->T(Lcom/join/mgps/fragment/e1;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/join/mgps/dto/EndGameBean;

    .line 16
    .line 17
    invoke-static {p2, p1}, Lcom/join/mgps/fragment/e1;->Q(Lcom/join/mgps/fragment/e1;Lcom/join/mgps/dto/EndGameBean;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public e(Lcom/join/mgps/fragment/e1$g;I)V
    .locals 11
    .param p1    # Lcom/join/mgps/fragment/e1$g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/e1$f;->e:Lcom/join/mgps/fragment/e1;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/fragment/e1;->T(Lcom/join/mgps/fragment/e1;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Lcom/join/mgps/dto/EndGameBean;

    .line 12
    .line 13
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    :try_start_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/EndGameBean;->getChallengeSucRateStr()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 20
    .line 21
    .line 22
    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception v2

    .line 25
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 26
    .line 27
    .line 28
    move-wide v2, v0

    .line 29
    :goto_0
    iget-object v4, p1, Lcom/join/mgps/fragment/e1$g;->p:Landroid/widget/TextView;

    .line 30
    .line 31
    invoke-virtual {p2}, Lcom/join/mgps/dto/EndGameBean;->getGameName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    iget-object v4, p1, Lcom/join/mgps/fragment/e1$g;->o:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/join/mgps/dto/EndGameBean;->getGameIcon()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-static {v4, v5}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lcom/join/mgps/fragment/e1$g;->b(Lcom/join/mgps/fragment/e1$g;)Landroid/widget/TextView;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {p2}, Lcom/join/mgps/dto/EndGameBean;->getTitle()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Lcom/join/mgps/fragment/e1$g;->c(Lcom/join/mgps/fragment/e1$g;)Landroid/widget/TextView;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {p2}, Lcom/join/mgps/dto/EndGameBean;->getChallenge()I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-gtz v5, :cond_0

    .line 67
    .line 68
    const-string v5, "\u8fd8\u6ca1\u6709\u4eba\u6311\u6218\u8fc7"

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    iget-object v6, p0, Lcom/join/mgps/fragment/e1$f;->e:Lcom/join/mgps/fragment/e1;

    .line 77
    .line 78
    invoke-virtual {p2}, Lcom/join/mgps/dto/EndGameBean;->getChallenge()I

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    invoke-static {v6, v7}, Lcom/join/mgps/fragment/e1;->U(Lcom/join/mgps/fragment/e1;I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v6, "\u4eba\u6311\u6218\u8fc7"

    .line 90
    .line 91
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    .line 100
    .line 101
    invoke-static {p1}, Lcom/join/mgps/fragment/e1$g;->d(Lcom/join/mgps/fragment/e1$g;)Landroid/widget/TextView;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    cmpl-double v5, v2, v0

    .line 106
    .line 107
    if-lez v5, :cond_1

    .line 108
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    const-string v1, "\u901a\u8fc7\u7387 "

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2}, Lcom/join/mgps/dto/EndGameBean;->getChallengeSucRate()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    goto :goto_2

    .line 131
    :cond_1
    const-string v0, "\u7b49\u4f60\u6311\u6218"

    .line 132
    .line 133
    :goto_2
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    .line 135
    .line 136
    invoke-static {p1}, Lcom/join/mgps/fragment/e1$g;->e(Lcom/join/mgps/fragment/e1$g;)Landroid/widget/ImageView;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {p2}, Lcom/join/mgps/dto/EndGameBean;->getWin()I

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    const/4 v2, 0x1

    .line 145
    const/4 v3, 0x0

    .line 146
    if-ne v1, v2, :cond_2

    .line 147
    .line 148
    const/4 v1, 0x0

    .line 149
    goto :goto_3

    .line 150
    :cond_2
    const/16 v1, 0x8

    .line 151
    .line 152
    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 153
    .line 154
    .line 155
    iget-object v0, p1, Lcom/join/mgps/fragment/e1$g;->l:Lcom/join/mgps/customview/MStarBar;

    .line 156
    .line 157
    invoke-virtual {p2}, Lcom/join/mgps/dto/EndGameBean;->getStar()I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/MStarBar;->setStarCount(I)V

    .line 162
    .line 163
    .line 164
    iget-object v0, p1, Lcom/join/mgps/fragment/e1$g;->m:Landroid/widget/TextView;

    .line 165
    .line 166
    invoke-virtual {p2}, Lcom/join/mgps/dto/EndGameBean;->getStar()I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    const/4 v2, 0x4

    .line 171
    if-gtz v1, :cond_3

    .line 172
    .line 173
    const/4 v1, 0x4

    .line 174
    goto :goto_4

    .line 175
    :cond_3
    const/4 v1, 0x0

    .line 176
    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 177
    .line 178
    .line 179
    iget-object v0, p1, Lcom/join/mgps/fragment/e1$g;->l:Lcom/join/mgps/customview/MStarBar;

    .line 180
    .line 181
    invoke-virtual {p2}, Lcom/join/mgps/dto/EndGameBean;->getStar()I

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-gtz v1, :cond_4

    .line 186
    .line 187
    const/4 v1, 0x4

    .line 188
    goto :goto_5

    .line 189
    :cond_4
    const/4 v1, 0x0

    .line 190
    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 191
    .line 192
    .line 193
    iget-object v0, p1, Lcom/join/mgps/fragment/e1$g;->n:Landroid/view/View;

    .line 194
    .line 195
    invoke-virtual {p2}, Lcom/join/mgps/dto/EndGameBean;->getStar()I

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    if-gtz v1, :cond_5

    .line 200
    .line 201
    goto :goto_6

    .line 202
    :cond_5
    const/4 v2, 0x0

    .line 203
    :goto_6
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 204
    .line 205
    .line 206
    iget-object v0, p1, Lcom/join/mgps/fragment/e1$g;->l:Lcom/join/mgps/customview/MStarBar;

    .line 207
    .line 208
    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 209
    .line 210
    .line 211
    iget-object v0, p1, Lcom/join/mgps/fragment/e1$g;->l:Lcom/join/mgps/customview/MStarBar;

    .line 212
    .line 213
    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 214
    .line 215
    .line 216
    iget-object v0, p1, Lcom/join/mgps/fragment/e1$g;->l:Lcom/join/mgps/customview/MStarBar;

    .line 217
    .line 218
    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p2}, Lcom/join/mgps/dto/EndGameBean;->getVideo()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    if-eqz v0, :cond_6

    .line 230
    .line 231
    iget-object v0, p1, Lcom/join/mgps/fragment/e1$g;->j:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 232
    .line 233
    const v1, 0x7f08018d

    .line 234
    .line 235
    .line 236
    invoke-virtual {p2}, Lcom/join/mgps/dto/EndGameBean;->getCover()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    invoke-static {v0, v1, v2}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 241
    .line 242
    .line 243
    iget-object v0, p1, Lcom/join/mgps/fragment/e1$g;->j:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 244
    .line 245
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p2}, Lcom/join/mgps/dto/EndGameBean;->getVideo()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v6

    .line 260
    new-instance v0, Lcom/join/android/app/component/video/c$l;

    .line 261
    .line 262
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 263
    .line 264
    .line 265
    move-result v5

    .line 266
    invoke-virtual {p2}, Lcom/join/mgps/dto/EndGameBean;->getCover()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v7

    .line 270
    invoke-virtual {p2}, Lcom/join/mgps/dto/EndGameBean;->getGameId()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v8

    .line 274
    invoke-virtual {p2}, Lcom/join/mgps/dto/EndGameBean;->getEndgameId()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v9

    .line 278
    iget-object v1, p0, Lcom/join/mgps/fragment/e1$f;->e:Lcom/join/mgps/fragment/e1;

    .line 279
    .line 280
    iget-object v10, v1, Lcom/join/mgps/fragment/e1;->i:Ljava/lang/String;

    .line 281
    .line 282
    move-object v4, v0

    .line 283
    invoke-direct/range {v4 .. v10}, Lcom/join/android/app/component/video/c$l;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    iget-object v1, p0, Lcom/join/mgps/fragment/e1$f;->e:Lcom/join/mgps/fragment/e1;

    .line 287
    .line 288
    invoke-static {v1}, Lcom/join/mgps/fragment/e1;->O(Lcom/join/mgps/fragment/e1;)Lcom/join/android/app/component/video/c;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 293
    .line 294
    .line 295
    move-result v2

    .line 296
    new-array v3, v3, [Z

    .line 297
    .line 298
    invoke-virtual {v1, v2, v0, v3}, Lcom/join/android/app/component/video/c;->d(ILcom/join/android/app/component/video/c$l;[Z)V

    .line 299
    .line 300
    .line 301
    iget-object v0, p1, Lcom/join/mgps/fragment/e1$g;->k:Landroid/widget/FrameLayout;

    .line 302
    .line 303
    new-instance v1, Lcom/join/mgps/fragment/e1$f$a;

    .line 304
    .line 305
    invoke-direct {v1, p0, p1, p2}, Lcom/join/mgps/fragment/e1$f$a;-><init>(Lcom/join/mgps/fragment/e1$f;Lcom/join/mgps/fragment/e1$g;Lcom/join/mgps/dto/EndGameBean;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    .line 310
    .line 311
    :cond_6
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 312
    .line 313
    new-instance v1, Lcom/join/mgps/fragment/f1;

    .line 314
    .line 315
    invoke-direct {v1, p0, p2}, Lcom/join/mgps/fragment/f1;-><init>(Lcom/join/mgps/fragment/e1$f;Lcom/join/mgps/dto/EndGameBean;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    .line 320
    .line 321
    invoke-static {p1}, Lcom/join/mgps/fragment/e1$g;->a(Lcom/join/mgps/fragment/e1$g;)Landroid/widget/TextView;

    .line 322
    .line 323
    .line 324
    move-result-object p2

    .line 325
    new-instance v0, Lcom/join/mgps/fragment/g1;

    .line 326
    .line 327
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/g1;-><init>(Lcom/join/mgps/fragment/e1$f;Lcom/join/mgps/fragment/e1$g;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    .line 332
    .line 333
    return-void
.end method

.method public f(Landroid/view/ViewGroup;I)Lcom/join/mgps/fragment/e1$g;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/join/mgps/fragment/e1$f;->e:Lcom/join/mgps/fragment/e1;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/join/mgps/fragment/e1;->S(Lcom/join/mgps/fragment/e1;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    const v0, 0x7f0d0406

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    new-instance p2, Lcom/join/mgps/fragment/e1$g;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/fragment/e1$f;->e:Lcom/join/mgps/fragment/e1;

    .line 22
    .line 23
    invoke-direct {p2, v0, p1}, Lcom/join/mgps/fragment/e1$g;-><init>(Lcom/join/mgps/fragment/e1;Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    return-object p2
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/e1$f;->e:Lcom/join/mgps/fragment/e1;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/fragment/e1;->T(Lcom/join/mgps/fragment/e1;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/join/mgps/fragment/e1$g;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/fragment/e1$f;->e(Lcom/join/mgps/fragment/e1$g;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/fragment/e1$f;->f(Landroid/view/ViewGroup;I)Lcom/join/mgps/fragment/e1$g;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
