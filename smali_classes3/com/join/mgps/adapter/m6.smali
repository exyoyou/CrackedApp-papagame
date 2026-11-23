.class public Lcom/join/mgps/adapter/m6;
.super Lcom/join/mgps/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/mgps/base/BaseQuickAdapter<",
        "Lcom/join/mgps/dto/CommonGameInfoBean;",
        "Lcom/join/mgps/base/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
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
    const v0, 0x7f0d0802

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method protected bridge synthetic convert(Lcom/join/mgps/base/b;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lcom/join/mgps/base/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "helper",
            "bean"
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/m6;->s(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public r(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CommonGameInfoBean;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "helper",
            "bean"
        }
    .end annotation

    .line 1
    const v0, 0x7f0a054e

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/join/mgps/customview/DownloadNormalView;

    .line 9
    .line 10
    new-instance v1, Lm6/c;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-direct {v1, v2, p2}, Lm6/c;-><init>(Landroid/content/Context;Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/DownloadNormalView;->f(Lcom/join/mgps/callbacks/f;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getJp_info()Lcom/join/mgps/dto/JpInfoBean;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const v1, 0x7f0a1a3f

    .line 25
    .line 26
    .line 27
    const v2, 0x7f0a1a3b

    .line 28
    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    const v4, 0x7f0a1a3e

    .line 32
    .line 33
    .line 34
    const v5, 0x7f0a1a3d

    .line 35
    .line 36
    .line 37
    const v6, 0x7f0a06d8

    .line 38
    .line 39
    .line 40
    const/4 v7, 0x0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getJp_info()Lcom/join/mgps/dto/JpInfoBean;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/join/mgps/dto/JpInfoBean;->getLink_type()Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eq v0, v3, :cond_0

    .line 56
    .line 57
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getTitle()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p1, v2, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getSub_title()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-virtual {v0, v1, p2}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v6, v7}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v5, v7}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v4, v7}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->isH5Game()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_1

    .line 87
    .line 88
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getTitle()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {p1, v2, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getSub_title()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-virtual {v0, v1, p2}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v6, v7}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v5, v7}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v4, v7}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_1
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    if-eqz p2, :cond_2

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_2
    const/4 v3, 0x0

    .line 121
    :goto_0
    invoke-virtual {p1, v6, v3}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, v5, v3}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v4, v3}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 128
    .line 129
    .line 130
    :goto_1
    return-void
.end method

.method protected s(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CommonGameInfoBean;)V
    .locals 11
    .param p1    # Lcom/join/mgps/base/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "helper",
            "bean"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-gez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    :cond_0
    const/4 v2, 0x1

    .line 10
    add-int/2addr v0, v2

    .line 11
    const v3, 0x7f0a18b0

    .line 12
    .line 13
    .line 14
    if-ne v0, v2, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1, v3, v2}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1, v3, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 24
    .line 25
    .line 26
    const-string v0, "#FF7300"

    .line 27
    .line 28
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-virtual {p1, v3, v0}, Lcom/join/mgps/base/b;->setTextColor(II)Lcom/join/mgps/base/b;

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v4, 0x2

    .line 37
    if-ne v0, v4, :cond_2

    .line 38
    .line 39
    invoke-virtual {p1, v3, v2}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p1, v3, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 47
    .line 48
    .line 49
    const-string v0, "#FFBB00"

    .line 50
    .line 51
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-virtual {p1, v3, v0}, Lcom/join/mgps/base/b;->setTextColor(II)Lcom/join/mgps/base/b;

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {p1, v3, v2}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 60
    .line 61
    .line 62
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {p1, v3, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 67
    .line 68
    .line 69
    const-string v0, "#333333"

    .line 70
    .line 71
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    invoke-virtual {p1, v3, v0}, Lcom/join/mgps/base/b;->setTextColor(II)Lcom/join/mgps/base/b;

    .line 76
    .line 77
    .line 78
    :goto_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    if-nez v0, :cond_3

    .line 83
    .line 84
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBig_pic()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    goto :goto_1

    .line 89
    :cond_3
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getGif_ico()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-eqz v3, :cond_4

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getIco()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    goto :goto_1

    .line 104
    :cond_4
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getGif_ico()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    :goto_1
    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 109
    .line 110
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    if-eqz v4, :cond_5

    .line 115
    .line 116
    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 117
    .line 118
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    if-nez v4, :cond_6

    .line 131
    .line 132
    :cond_5
    const v4, 0x7f0a14a2

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, v4}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    check-cast v4, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 140
    .line 141
    invoke-static {v4, v3}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 145
    .line 146
    invoke-virtual {v4, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .line 148
    .line 149
    :cond_6
    const v3, 0x7f0a1a3f

    .line 150
    .line 151
    .line 152
    const v4, 0x7f0a1a3d

    .line 153
    .line 154
    .line 155
    const v5, 0x7f0a1a3c

    .line 156
    .line 157
    .line 158
    const v6, 0x7f0a1a3b

    .line 159
    .line 160
    .line 161
    const v7, 0x7f0a1a3e

    .line 162
    .line 163
    .line 164
    const-string v8, ""

    .line 165
    .line 166
    if-eqz v0, :cond_b

    .line 167
    .line 168
    :try_start_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getName()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v9

    .line 172
    invoke-virtual {p1, v6, v9}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getScore()Ljava/lang/Double;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    if-nez v6, :cond_7

    .line 180
    .line 181
    move-object v6, v8

    .line 182
    goto :goto_2

    .line 183
    :cond_7
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getScore()Ljava/lang/Double;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    :goto_2
    invoke-virtual {p1, v5, v6}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getTag_info()Ljava/util/List;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    const-string v9, " | "

    .line 203
    .line 204
    invoke-static {v5, v6, v9}, Lcom/join/mgps/Util/UtilsMy;->R1(Lcom/join/mgps/dto/TipNew;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    invoke-virtual {p1, v4, v5}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getApp_size()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 216
    .line 217
    .line 218
    move-result v4

    .line 219
    if-nez v4, :cond_9

    .line 220
    .line 221
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getApp_size()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v4

    .line 225
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 226
    .line 227
    .line 228
    move-result-wide v4

    .line 229
    const-wide/high16 v9, 0x4090000000000000L    # 1024.0

    .line 230
    .line 231
    mul-double v4, v4, v9

    .line 232
    .line 233
    mul-double v4, v4, v9

    .line 234
    .line 235
    double-to-long v4, v4

    .line 236
    const-wide/16 v9, 0x0

    .line 237
    .line 238
    cmp-long v6, v4, v9

    .line 239
    .line 240
    if-lez v6, :cond_8

    .line 241
    .line 242
    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v4

    .line 246
    invoke-virtual {p1, v7, v4}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 247
    .line 248
    .line 249
    goto :goto_3

    .line 250
    :cond_8
    invoke-virtual {p1, v7, v8}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 251
    .line 252
    .line 253
    goto :goto_3

    .line 254
    :cond_9
    invoke-virtual {p1, v7, v8}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 255
    .line 256
    .line 257
    :goto_3
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getInfo()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v4

    .line 261
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 262
    .line 263
    .line 264
    move-result v4

    .line 265
    if-eqz v4, :cond_a

    .line 266
    .line 267
    goto :goto_4

    .line 268
    :cond_a
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getInfo()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v8

    .line 272
    :goto_4
    invoke-virtual {p1, v3, v8}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 273
    .line 274
    .line 275
    goto :goto_5

    .line 276
    :cond_b
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getTitle()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-virtual {p1, v6, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 281
    .line 282
    .line 283
    invoke-virtual {p1, v5, v8}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 284
    .line 285
    .line 286
    invoke-virtual {p1, v4, v8}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 287
    .line 288
    .line 289
    invoke-virtual {p1, v7, v8}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 290
    .line 291
    .line 292
    invoke-virtual {p1, v3, v8}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 293
    .line 294
    .line 295
    :goto_5
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->giftSwitch()Z

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    const v3, 0x7f0a09fe

    .line 300
    .line 301
    .line 302
    if-eqz v0, :cond_c

    .line 303
    .line 304
    invoke-virtual {p1, v3, v2}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 305
    .line 306
    .line 307
    goto :goto_6

    .line 308
    :cond_c
    invoke-virtual {p1, v3, v1}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 309
    .line 310
    .line 311
    :goto_6
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/m6;->r(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CommonGameInfoBean;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 312
    .line 313
    .line 314
    goto :goto_7

    .line 315
    :catch_0
    move-exception p1

    .line 316
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 317
    .line 318
    .line 319
    :goto_7
    return-void
.end method
