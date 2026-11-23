.class public Lcom/byazt/xzj/DownloadItemView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2a3,
        0x55e
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/ete/ic;)V
    .locals 11

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/byazt/vfu/a;->cu(Landroid/content/Context;)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    const v1, 0x7e06ff51

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/byazt/ff/TTRoundRectImageView;

    .line 23
    .line 24
    const v2, 0x7e06ffa3

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Landroid/widget/TextView;

    .line 32
    .line 33
    const v3, 0x7e06feb5

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Landroid/widget/TextView;

    .line 41
    .line 42
    const v4, 0x7e06ff76

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Landroid/widget/TextView;

    .line 50
    .line 51
    const v5, 0x7e06feae

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    check-cast v5, Landroid/widget/TextView;

    .line 59
    .line 60
    const v6, 0x7e06fe99

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    check-cast v6, Lcom/byazt/ff/TTRatingBar;

    .line 68
    .line 69
    const/4 v7, 0x4

    .line 70
    const/4 v8, 0x1

    .line 71
    if-eqz v6, :cond_1

    .line 72
    .line 73
    invoke-virtual {v6, v8}, Lcom/byazt/ff/TTRatingBar;->setStarEmptyNum(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v6, v7}, Lcom/byazt/ff/TTRatingBar;->setStarFillNum(I)V

    .line 77
    .line 78
    .line 79
    const/high16 v9, 0x41400000    # 12.0f

    .line 80
    .line 81
    invoke-static {v0, v9}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 82
    .line 83
    .line 84
    move-result v10

    .line 85
    int-to-float v10, v10

    .line 86
    invoke-virtual {v6, v10}, Lcom/byazt/ff/TTRatingBar;->setStarImageWidth(F)V

    .line 87
    .line 88
    .line 89
    invoke-static {v0, v9}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 90
    .line 91
    .line 92
    move-result v9

    .line 93
    int-to-float v9, v9

    .line 94
    invoke-virtual {v6, v9}, Lcom/byazt/ff/TTRatingBar;->setStarImageHeight(F)V

    .line 95
    .line 96
    .line 97
    const/high16 v9, 0x40800000    # 4.0f

    .line 98
    .line 99
    invoke-static {v0, v9}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 100
    .line 101
    .line 102
    move-result v9

    .line 103
    int-to-float v9, v9

    .line 104
    invoke-virtual {v6, v9}, Lcom/byazt/ff/TTRatingBar;->setStarImagePadding(F)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v6}, Lcom/byazt/ff/TTRatingBar;->c()V

    .line 108
    .line 109
    .line 110
    :cond_1
    if-eqz v5, :cond_4

    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    if-eqz v6, :cond_2

    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    invoke-virtual {v6}, Lcom/byazt/ete/n;->a()I

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    goto :goto_0

    .line 127
    :cond_2
    const/16 v6, 0x1ad6

    .line 128
    .line 129
    :goto_0
    const/16 v9, 0x2710

    .line 130
    .line 131
    if-le v6, v9, :cond_3

    .line 132
    .line 133
    new-instance v10, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    div-int/2addr v6, v9

    .line 139
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v6, "\u4e07"

    .line 143
    .line 144
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    goto :goto_1

    .line 152
    :cond_3
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    :goto_1
    new-array v8, v8, [Ljava/lang/Object;

    .line 157
    .line 158
    const/4 v9, 0x0

    .line 159
    aput-object v6, v8, v9

    .line 160
    .line 161
    const-string v6, "%1$s\u4e2a\u8bc4\u5206"

    .line 162
    .line 163
    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    .line 169
    .line 170
    :cond_4
    if-eqz v1, :cond_6

    .line 171
    .line 172
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->te()Lcom/byazt/ete/zb;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    if-eqz v5, :cond_5

    .line 177
    .line 178
    invoke-virtual {v5}, Lcom/byazt/ete/zb;->c()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 183
    .line 184
    .line 185
    move-result v6

    .line 186
    if-nez v6, :cond_5

    .line 187
    .line 188
    invoke-static {v5}, Lcom/byazt/xky/tt;->c(Lcom/byazt/ete/zb;)Lcom/byazt/yj/yp;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-interface {v0, v1}, Lcom/byazt/yj/yp;->to(Landroid/widget/ImageView;)Lcom/byazt/yj/t;

    .line 193
    .line 194
    .line 195
    goto :goto_2

    .line 196
    :cond_5
    const-string v5, "tt_ad_logo_small"

    .line 197
    .line 198
    const/16 v6, 0x140

    .line 199
    .line 200
    invoke-static {v0, v5, v1, v6}, Lcom/byazt/nr/z;->c(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 201
    .line 202
    .line 203
    :cond_6
    :goto_2
    if-eqz v2, :cond_7

    .line 204
    .line 205
    invoke-static {p1}, Lcom/byazt/aas/nb;->gt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    .line 211
    .line 212
    :cond_7
    if-eqz v3, :cond_8

    .line 213
    .line 214
    invoke-static {p1}, Lcom/byazt/aas/nb;->rl(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    .line 220
    .line 221
    :cond_8
    if-eqz v4, :cond_b

    .line 222
    .line 223
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->tj()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    if-eqz v0, :cond_a

    .line 232
    .line 233
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->i()I

    .line 234
    .line 235
    .line 236
    move-result p1

    .line 237
    if-eq p1, v7, :cond_9

    .line 238
    .line 239
    const-string p1, "\u67e5\u770b\u8be6\u60c5"

    .line 240
    .line 241
    goto :goto_3

    .line 242
    :cond_9
    const-string p1, "\u7acb\u5373\u4e0b\u8f7d"

    .line 243
    .line 244
    goto :goto_3

    .line 245
    :cond_a
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->tj()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    :goto_3
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    .line 251
    .line 252
    :cond_b
    return-void
.end method
