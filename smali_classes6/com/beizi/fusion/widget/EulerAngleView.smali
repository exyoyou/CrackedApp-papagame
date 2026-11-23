.class public Lcom/beizi/fusion/widget/EulerAngleView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Landroid/content/Context;

.field private c:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;

.field private d:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRenderBean;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/ImageView;

.field private h:Lcom/beizi/fusion/update/ShakeArcView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:F

.field private l:F

.field private m:F

.field private n:I

.field private o:I

.field private p:I

.field private q:D

.field private r:D

.field private s:D

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Landroid/animation/AnimatorSet;

.field private x:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/beizi/fusion/widget/EulerAngleView;->a:Z

    const/high16 v0, 0x42700000    # 60.0f

    .line 3
    iput v0, p0, Lcom/beizi/fusion/widget/EulerAngleView;->k:F

    .line 4
    iput v0, p0, Lcom/beizi/fusion/widget/EulerAngleView;->l:F

    const/high16 v0, 0x41f00000    # 30.0f

    .line 5
    iput v0, p0, Lcom/beizi/fusion/widget/EulerAngleView;->m:F

    const/16 v0, 0x15e

    .line 6
    iput v0, p0, Lcom/beizi/fusion/widget/EulerAngleView;->n:I

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lcom/beizi/fusion/widget/EulerAngleView;->q:D

    .line 8
    iput-wide v0, p0, Lcom/beizi/fusion/widget/EulerAngleView;->r:D

    .line 9
    iput-wide v0, p0, Lcom/beizi/fusion/widget/EulerAngleView;->s:D

    .line 10
    invoke-virtual {p0, p1}, Lcom/beizi/fusion/widget/EulerAngleView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 11
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 12
    iput-boolean p2, p0, Lcom/beizi/fusion/widget/EulerAngleView;->a:Z

    const/high16 p2, 0x42700000    # 60.0f

    .line 13
    iput p2, p0, Lcom/beizi/fusion/widget/EulerAngleView;->k:F

    .line 14
    iput p2, p0, Lcom/beizi/fusion/widget/EulerAngleView;->l:F

    const/high16 p2, 0x41f00000    # 30.0f

    .line 15
    iput p2, p0, Lcom/beizi/fusion/widget/EulerAngleView;->m:F

    const/16 p2, 0x15e

    .line 16
    iput p2, p0, Lcom/beizi/fusion/widget/EulerAngleView;->n:I

    const-wide/16 v0, 0x0

    .line 17
    iput-wide v0, p0, Lcom/beizi/fusion/widget/EulerAngleView;->q:D

    .line 18
    iput-wide v0, p0, Lcom/beizi/fusion/widget/EulerAngleView;->r:D

    .line 19
    iput-wide v0, p0, Lcom/beizi/fusion/widget/EulerAngleView;->s:D

    .line 20
    invoke-virtual {p0, p1}, Lcom/beizi/fusion/widget/EulerAngleView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 22
    iput-boolean p2, p0, Lcom/beizi/fusion/widget/EulerAngleView;->a:Z

    const/high16 p2, 0x42700000    # 60.0f

    .line 23
    iput p2, p0, Lcom/beizi/fusion/widget/EulerAngleView;->k:F

    .line 24
    iput p2, p0, Lcom/beizi/fusion/widget/EulerAngleView;->l:F

    const/high16 p2, 0x41f00000    # 30.0f

    .line 25
    iput p2, p0, Lcom/beizi/fusion/widget/EulerAngleView;->m:F

    const/16 p2, 0x15e

    .line 26
    iput p2, p0, Lcom/beizi/fusion/widget/EulerAngleView;->n:I

    const-wide/16 p2, 0x0

    .line 27
    iput-wide p2, p0, Lcom/beizi/fusion/widget/EulerAngleView;->q:D

    .line 28
    iput-wide p2, p0, Lcom/beizi/fusion/widget/EulerAngleView;->r:D

    .line 29
    iput-wide p2, p0, Lcom/beizi/fusion/widget/EulerAngleView;->s:D

    .line 30
    invoke-virtual {p0, p1}, Lcom/beizi/fusion/widget/EulerAngleView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/beizi/fusion/widget/EulerAngleView;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/widget/EulerAngleView;->g:Landroid/widget/ImageView;

    return-object p0
.end method

.method private a(Ljava/util/List;Ljava/lang/String;FF)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/lang/String;",
            "FF)V"
        }
    .end annotation

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/widget/EulerAngleView;->g:Landroid/widget/ImageView;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p3, v1, v2

    const/4 p3, 0x1

    aput p4, v1, p3

    invoke-static {v0, p2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 3
    iget p3, p0, Lcom/beizi/fusion/widget/EulerAngleView;->n:I

    int-to-long p3, p3

    invoke-virtual {p2, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 4
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/beizi/fusion/widget/EulerAngleView;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/widget/EulerAngleView;->w:Landroid/animation/AnimatorSet;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public buildEulerAngleView()V
    .locals 9

    .line 1
    const-string v0, "2"

    .line 2
    .line 3
    const-string v1, "1"

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/beizi/fusion/widget/EulerAngleView;->c:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    sget v3, Lcom/beizi/fusion/R$layout;->beizi_interaction_euler_angle_view:I

    .line 15
    .line 16
    invoke-static {v2, v3, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    sget v2, Lcom/beizi/fusion/R$id;->bz_eav_container_ll:I

    .line 20
    .line 21
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Landroid/widget/LinearLayout;

    .line 26
    .line 27
    iput-object v2, p0, Lcom/beizi/fusion/widget/EulerAngleView;->e:Landroid/widget/LinearLayout;

    .line 28
    .line 29
    sget v2, Lcom/beizi/fusion/R$id;->bz_eav_img_container_rl:I

    .line 30
    .line 31
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Landroid/widget/RelativeLayout;

    .line 36
    .line 37
    iput-object v2, p0, Lcom/beizi/fusion/widget/EulerAngleView;->f:Landroid/widget/RelativeLayout;

    .line 38
    .line 39
    sget v2, Lcom/beizi/fusion/R$id;->bz_eav_img_iv:I

    .line 40
    .line 41
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Landroid/widget/ImageView;

    .line 46
    .line 47
    iput-object v2, p0, Lcom/beizi/fusion/widget/EulerAngleView;->g:Landroid/widget/ImageView;

    .line 48
    .line 49
    sget v2, Lcom/beizi/fusion/R$id;->bz_eav_sav_iv:I

    .line 50
    .line 51
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Lcom/beizi/fusion/update/ShakeArcView;

    .line 56
    .line 57
    iput-object v2, p0, Lcom/beizi/fusion/widget/EulerAngleView;->h:Lcom/beizi/fusion/update/ShakeArcView;

    .line 58
    .line 59
    sget v2, Lcom/beizi/fusion/R$id;->bz_eav_title_tv:I

    .line 60
    .line 61
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Landroid/widget/TextView;

    .line 66
    .line 67
    iput-object v2, p0, Lcom/beizi/fusion/widget/EulerAngleView;->i:Landroid/widget/TextView;

    .line 68
    .line 69
    sget v2, Lcom/beizi/fusion/R$id;->bz_eav_subtitle_tv:I

    .line 70
    .line 71
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Landroid/widget/TextView;

    .line 76
    .line 77
    iput-object v2, p0, Lcom/beizi/fusion/widget/EulerAngleView;->j:Landroid/widget/TextView;

    .line 78
    .line 79
    iget-object v2, p0, Lcom/beizi/fusion/widget/EulerAngleView;->f:Landroid/widget/RelativeLayout;

    .line 80
    .line 81
    if-eqz v2, :cond_1

    .line 82
    .line 83
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 88
    .line 89
    iget v3, p0, Lcom/beizi/fusion/widget/EulerAngleView;->o:I

    .line 90
    .line 91
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 92
    .line 93
    iget v3, p0, Lcom/beizi/fusion/widget/EulerAngleView;->p:I

    .line 94
    .line 95
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 96
    .line 97
    iget-object v3, p0, Lcom/beizi/fusion/widget/EulerAngleView;->f:Landroid/widget/RelativeLayout;

    .line 98
    .line 99
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    .line 101
    .line 102
    :cond_1
    iget-object v2, p0, Lcom/beizi/fusion/widget/EulerAngleView;->g:Landroid/widget/ImageView;

    .line 103
    .line 104
    const/4 v3, 0x0

    .line 105
    if-eqz v2, :cond_2

    .line 106
    .line 107
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 112
    .line 113
    iget v4, p0, Lcom/beizi/fusion/widget/EulerAngleView;->o:I

    .line 114
    .line 115
    int-to-double v4, v4

    .line 116
    const-wide v6, 0x3fd6666666666666L    # 0.35

    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    mul-double v4, v4, v6

    .line 122
    .line 123
    double-to-int v4, v4

    .line 124
    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 125
    .line 126
    iget v4, p0, Lcom/beizi/fusion/widget/EulerAngleView;->p:I

    .line 127
    .line 128
    int-to-double v5, v4

    .line 129
    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    .line 130
    .line 131
    mul-double v5, v5, v7

    .line 132
    .line 133
    double-to-int v5, v5

    .line 134
    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 135
    .line 136
    int-to-double v4, v4

    .line 137
    const-wide v6, 0x3fc999999999999aL    # 0.2

    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    mul-double v4, v4, v6

    .line 143
    .line 144
    double-to-int v4, v4

    .line 145
    invoke-virtual {v2, v3, v3, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 146
    .line 147
    .line 148
    iget-object v4, p0, Lcom/beizi/fusion/widget/EulerAngleView;->g:Landroid/widget/ImageView;

    .line 149
    .line 150
    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    .line 152
    .line 153
    :cond_2
    iget-object v2, p0, Lcom/beizi/fusion/widget/EulerAngleView;->h:Lcom/beizi/fusion/update/ShakeArcView;

    .line 154
    .line 155
    const/4 v4, 0x2

    .line 156
    if-eqz v2, :cond_c

    .line 157
    .line 158
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 163
    .line 164
    iget v5, p0, Lcom/beizi/fusion/widget/EulerAngleView;->o:I

    .line 165
    .line 166
    iget v6, p0, Lcom/beizi/fusion/widget/EulerAngleView;->p:I

    .line 167
    .line 168
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    int-to-double v5, v5

    .line 173
    const-wide v7, 0x3fe6666666666666L    # 0.7

    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    mul-double v5, v5, v7

    .line 179
    .line 180
    double-to-int v5, v5

    .line 181
    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 182
    .line 183
    iget v5, p0, Lcom/beizi/fusion/widget/EulerAngleView;->o:I

    .line 184
    .line 185
    iget v6, p0, Lcom/beizi/fusion/widget/EulerAngleView;->p:I

    .line 186
    .line 187
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    .line 188
    .line 189
    .line 190
    move-result v5

    .line 191
    int-to-double v5, v5

    .line 192
    mul-double v5, v5, v7

    .line 193
    .line 194
    double-to-int v5, v5

    .line 195
    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 196
    .line 197
    iget-object v5, p0, Lcom/beizi/fusion/widget/EulerAngleView;->h:Lcom/beizi/fusion/update/ShakeArcView;

    .line 198
    .line 199
    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    .line 201
    .line 202
    iget-object v2, p0, Lcom/beizi/fusion/widget/EulerAngleView;->t:Ljava/lang/String;

    .line 203
    .line 204
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    if-nez v2, :cond_3

    .line 209
    .line 210
    iget-object v0, p0, Lcom/beizi/fusion/widget/EulerAngleView;->h:Lcom/beizi/fusion/update/ShakeArcView;

    .line 211
    .line 212
    invoke-virtual {v0, v3}, Lcom/beizi/fusion/update/ShakeArcView;->setArrowDirection(I)Lcom/beizi/fusion/update/ShakeArcView;

    .line 213
    .line 214
    .line 215
    goto :goto_0

    .line 216
    :cond_3
    iget-object v2, p0, Lcom/beizi/fusion/widget/EulerAngleView;->u:Ljava/lang/String;

    .line 217
    .line 218
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    if-eqz v2, :cond_4

    .line 223
    .line 224
    iget-object v2, p0, Lcom/beizi/fusion/widget/EulerAngleView;->v:Ljava/lang/String;

    .line 225
    .line 226
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    if-nez v2, :cond_6

    .line 231
    .line 232
    :cond_4
    iget-object v2, p0, Lcom/beizi/fusion/widget/EulerAngleView;->u:Ljava/lang/String;

    .line 233
    .line 234
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    if-eqz v2, :cond_5

    .line 239
    .line 240
    iget-object v2, p0, Lcom/beizi/fusion/widget/EulerAngleView;->v:Ljava/lang/String;

    .line 241
    .line 242
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v2

    .line 246
    if-nez v2, :cond_6

    .line 247
    .line 248
    :cond_5
    iget-object v2, p0, Lcom/beizi/fusion/widget/EulerAngleView;->v:Ljava/lang/String;

    .line 249
    .line 250
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    if-eqz v2, :cond_7

    .line 255
    .line 256
    iget-object v2, p0, Lcom/beizi/fusion/widget/EulerAngleView;->u:Ljava/lang/String;

    .line 257
    .line 258
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    if-eqz v1, :cond_7

    .line 263
    .line 264
    :cond_6
    iget-object v0, p0, Lcom/beizi/fusion/widget/EulerAngleView;->h:Lcom/beizi/fusion/update/ShakeArcView;

    .line 265
    .line 266
    const/4 v1, 0x1

    .line 267
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/update/ShakeArcView;->setArrowDirection(I)Lcom/beizi/fusion/update/ShakeArcView;

    .line 268
    .line 269
    .line 270
    goto :goto_0

    .line 271
    :cond_7
    iget-object v1, p0, Lcom/beizi/fusion/widget/EulerAngleView;->u:Ljava/lang/String;

    .line 272
    .line 273
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result v1

    .line 277
    if-eqz v1, :cond_8

    .line 278
    .line 279
    iget-object v1, p0, Lcom/beizi/fusion/widget/EulerAngleView;->v:Ljava/lang/String;

    .line 280
    .line 281
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    if-nez v1, :cond_a

    .line 286
    .line 287
    :cond_8
    iget-object v1, p0, Lcom/beizi/fusion/widget/EulerAngleView;->u:Ljava/lang/String;

    .line 288
    .line 289
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 290
    .line 291
    .line 292
    move-result v1

    .line 293
    if-eqz v1, :cond_9

    .line 294
    .line 295
    iget-object v1, p0, Lcom/beizi/fusion/widget/EulerAngleView;->v:Ljava/lang/String;

    .line 296
    .line 297
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    move-result v1

    .line 301
    if-nez v1, :cond_a

    .line 302
    .line 303
    :cond_9
    iget-object v1, p0, Lcom/beizi/fusion/widget/EulerAngleView;->v:Ljava/lang/String;

    .line 304
    .line 305
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    if-eqz v1, :cond_b

    .line 310
    .line 311
    iget-object v1, p0, Lcom/beizi/fusion/widget/EulerAngleView;->u:Ljava/lang/String;

    .line 312
    .line 313
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result v0

    .line 317
    if-eqz v0, :cond_b

    .line 318
    .line 319
    :cond_a
    iget-object v0, p0, Lcom/beizi/fusion/widget/EulerAngleView;->h:Lcom/beizi/fusion/update/ShakeArcView;

    .line 320
    .line 321
    invoke-virtual {v0, v4}, Lcom/beizi/fusion/update/ShakeArcView;->setArrowDirection(I)Lcom/beizi/fusion/update/ShakeArcView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 322
    .line 323
    .line 324
    :cond_b
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/beizi/fusion/widget/EulerAngleView;->h:Lcom/beizi/fusion/update/ShakeArcView;

    .line 325
    .line 326
    iget v1, p0, Lcom/beizi/fusion/widget/EulerAngleView;->o:I

    .line 327
    .line 328
    iget v2, p0, Lcom/beizi/fusion/widget/EulerAngleView;->p:I

    .line 329
    .line 330
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 331
    .line 332
    .line 333
    move-result v1

    .line 334
    div-int/lit8 v1, v1, 0x1e

    .line 335
    .line 336
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/update/ShakeArcView;->setLineWidth(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 337
    .line 338
    .line 339
    goto :goto_1

    .line 340
    :catch_0
    move-exception v0

    .line 341
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 342
    .line 343
    .line 344
    :cond_c
    :goto_1
    const-string v0, "#66333333"

    .line 345
    .line 346
    iget-object v1, p0, Lcom/beizi/fusion/widget/EulerAngleView;->d:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRenderBean;

    .line 347
    .line 348
    if-eqz v1, :cond_d

    .line 349
    .line 350
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRenderBean;->getColor()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    :cond_d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 355
    .line 356
    .line 357
    move-result v1

    .line 358
    const/4 v2, 0x0

    .line 359
    if-nez v1, :cond_e

    .line 360
    .line 361
    const-string v1, "#"

    .line 362
    .line 363
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 364
    .line 365
    .line 366
    move-result v1

    .line 367
    if-eqz v1, :cond_e

    .line 368
    .line 369
    iget-object v1, p0, Lcom/beizi/fusion/widget/EulerAngleView;->f:Landroid/widget/RelativeLayout;

    .line 370
    .line 371
    iget v5, p0, Lcom/beizi/fusion/widget/EulerAngleView;->o:I

    .line 372
    .line 373
    div-int/2addr v5, v4

    .line 374
    invoke-static {v1, v0, v3, v2, v5}, Lcom/beizi/fusion/tool/ar;->a(Landroid/view/View;Ljava/lang/String;ILjava/lang/String;I)V

    .line 375
    .line 376
    .line 377
    :cond_e
    iget-object v0, p0, Lcom/beizi/fusion/widget/EulerAngleView;->c:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;

    .line 378
    .line 379
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;->getStyle()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleStyleBean;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    if-eqz v0, :cond_f

    .line 384
    .line 385
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleStyleBean;->getImgs()Ljava/util/List;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    if-eqz v1, :cond_f

    .line 390
    .line 391
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 392
    .line 393
    .line 394
    move-result v4

    .line 395
    if-lez v4, :cond_f

    .line 396
    .line 397
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    check-cast v1, Ljava/lang/String;

    .line 402
    .line 403
    goto :goto_2

    .line 404
    :cond_f
    move-object v1, v2

    .line 405
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 406
    .line 407
    .line 408
    move-result v3

    .line 409
    if-nez v3, :cond_10

    .line 410
    .line 411
    iget-object v3, p0, Lcom/beizi/fusion/widget/EulerAngleView;->b:Landroid/content/Context;

    .line 412
    .line 413
    invoke-static {v3}, Lcom/beizi/fusion/tool/f;->a(Landroid/content/Context;)Lcom/beizi/fusion/tool/f;

    .line 414
    .line 415
    .line 416
    move-result-object v3

    .line 417
    new-instance v4, Lcom/beizi/fusion/widget/EulerAngleView$1;

    .line 418
    .line 419
    invoke-direct {v4, p0}, Lcom/beizi/fusion/widget/EulerAngleView$1;-><init>(Lcom/beizi/fusion/widget/EulerAngleView;)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v3, v1, v4}, Lcom/beizi/fusion/tool/f;->b(Ljava/lang/String;Lcom/beizi/fusion/tool/f$a;)V

    .line 423
    .line 424
    .line 425
    :cond_10
    iget-object v1, p0, Lcom/beizi/fusion/widget/EulerAngleView;->h:Lcom/beizi/fusion/update/ShakeArcView;

    .line 426
    .line 427
    if-eqz v1, :cond_11

    .line 428
    .line 429
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 430
    .line 431
    invoke-virtual {v1, v3, v4}, Lcom/beizi/fusion/update/ShakeArcView;->setMaxProgress(D)Lcom/beizi/fusion/update/ShakeArcView;

    .line 432
    .line 433
    .line 434
    :cond_11
    if-eqz v0, :cond_13

    .line 435
    .line 436
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleStyleBean;->getTitle()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v2

    .line 440
    iget-object v1, p0, Lcom/beizi/fusion/widget/EulerAngleView;->x:Ljava/lang/Boolean;

    .line 441
    .line 442
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 443
    .line 444
    .line 445
    move-result v1

    .line 446
    if-nez v1, :cond_12

    .line 447
    .line 448
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleStyleBean;->getSubTitle()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    goto :goto_3

    .line 453
    :cond_12
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleStyleBean;->getDownloadSubTitle()Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 458
    .line 459
    .line 460
    move-result v1

    .line 461
    if-eqz v1, :cond_14

    .line 462
    .line 463
    const-string v0, "\u4e0b\u8f7d\u5e94\u7528"

    .line 464
    .line 465
    goto :goto_3

    .line 466
    :cond_13
    move-object v0, v2

    .line 467
    :cond_14
    :goto_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 468
    .line 469
    .line 470
    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 471
    const-string v3, "#8C000000"

    .line 472
    .line 473
    const/high16 v4, 0x40a00000    # 5.0f

    .line 474
    .line 475
    const-string v5, "#FFFFFFFF"

    .line 476
    .line 477
    const/high16 v6, 0x40800000    # 4.0f

    .line 478
    .line 479
    if-nez v1, :cond_15

    .line 480
    .line 481
    :try_start_3
    iget-object v1, p0, Lcom/beizi/fusion/widget/EulerAngleView;->i:Landroid/widget/TextView;

    .line 482
    .line 483
    if-eqz v1, :cond_15

    .line 484
    .line 485
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    .line 487
    .line 488
    iget-object v1, p0, Lcom/beizi/fusion/widget/EulerAngleView;->i:Landroid/widget/TextView;

    .line 489
    .line 490
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 491
    .line 492
    .line 493
    move-result v2

    .line 494
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 495
    .line 496
    .line 497
    iget-object v1, p0, Lcom/beizi/fusion/widget/EulerAngleView;->i:Landroid/widget/TextView;

    .line 498
    .line 499
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 500
    .line 501
    .line 502
    move-result v2

    .line 503
    invoke-virtual {v1, v4, v6, v6, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 504
    .line 505
    .line 506
    :cond_15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 507
    .line 508
    .line 509
    move-result v1

    .line 510
    if-nez v1, :cond_16

    .line 511
    .line 512
    iget-object v1, p0, Lcom/beizi/fusion/widget/EulerAngleView;->j:Landroid/widget/TextView;

    .line 513
    .line 514
    if-eqz v1, :cond_16

    .line 515
    .line 516
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    .line 518
    .line 519
    iget-object v0, p0, Lcom/beizi/fusion/widget/EulerAngleView;->j:Landroid/widget/TextView;

    .line 520
    .line 521
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 522
    .line 523
    .line 524
    move-result v1

    .line 525
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 526
    .line 527
    .line 528
    iget-object v0, p0, Lcom/beizi/fusion/widget/EulerAngleView;->j:Landroid/widget/TextView;

    .line 529
    .line 530
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 531
    .line 532
    .line 533
    move-result v1

    .line 534
    invoke-virtual {v0, v4, v6, v6, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 535
    .line 536
    .line 537
    goto :goto_4

    .line 538
    :catch_1
    move-exception v0

    .line 539
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 540
    .line 541
    .line 542
    :cond_16
    :goto_4
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/beizi/fusion/widget/EulerAngleView;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/beizi/fusion/widget/EulerAngleView;->b:Landroid/content/Context;

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/beizi/fusion/widget/EulerAngleView;->a:Z

    .line 10
    .line 11
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iput-object v0, p0, Lcom/beizi/fusion/widget/EulerAngleView;->b:Landroid/content/Context;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/beizi/fusion/widget/EulerAngleView;->w:Landroid/animation/AnimatorSet;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iput-object v0, p0, Lcom/beizi/fusion/widget/EulerAngleView;->w:Landroid/animation/AnimatorSet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

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
    :goto_0
    return-void
.end method

.method public setAngle(DDD)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/beizi/fusion/widget/EulerAngleView;->q:D

    .line 2
    .line 3
    iput-wide p3, p0, Lcom/beizi/fusion/widget/EulerAngleView;->r:D

    .line 4
    .line 5
    iput-wide p5, p0, Lcom/beizi/fusion/widget/EulerAngleView;->s:D

    .line 6
    .line 7
    return-void
.end method

.method public setAnimationViewWidthAndHeight(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/beizi/fusion/widget/EulerAngleView;->o:I

    .line 2
    .line 3
    iput p2, p0, Lcom/beizi/fusion/widget/EulerAngleView;->p:I

    .line 4
    .line 5
    return-void
.end method

.method public setCurrentProgress(DDD)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, v1, Lcom/beizi/fusion/widget/EulerAngleView;->h:Lcom/beizi/fusion/update/ShakeArcView;

    .line 4
    .line 5
    if-eqz v0, :cond_c

    .line 6
    .line 7
    iget-wide v2, v1, Lcom/beizi/fusion/widget/EulerAngleView;->q:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    const-string v0, "3"

    .line 10
    .line 11
    const-string v4, "0"

    .line 12
    .line 13
    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    .line 14
    .line 15
    const-string v7, "1"

    .line 16
    .line 17
    const-string v8, "2"

    .line 18
    .line 19
    const-wide/16 v9, 0x0

    .line 20
    .line 21
    cmpl-double v11, v2, v9

    .line 22
    .line 23
    if-lez v11, :cond_3

    .line 24
    .line 25
    :try_start_1
    iget-object v2, v1, Lcom/beizi/fusion/widget/EulerAngleView;->t:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    cmpl-double v2, p1, v9

    .line 34
    .line 35
    if-gtz v2, :cond_2

    .line 36
    .line 37
    :cond_0
    iget-object v2, v1, Lcom/beizi/fusion/widget/EulerAngleView;->t:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    cmpg-double v2, p1, v9

    .line 46
    .line 47
    if-ltz v2, :cond_2

    .line 48
    .line 49
    :cond_1
    iget-object v2, v1, Lcom/beizi/fusion/widget/EulerAngleView;->t:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_2

    .line 56
    .line 57
    iget-object v2, v1, Lcom/beizi/fusion/widget/EulerAngleView;->t:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_3

    .line 64
    .line 65
    :cond_2
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->abs(D)D

    .line 66
    .line 67
    .line 68
    move-result-wide v2

    .line 69
    mul-double v2, v2, v5

    .line 70
    .line 71
    iget-wide v11, v1, Lcom/beizi/fusion/widget/EulerAngleView;->q:D

    .line 72
    .line 73
    div-double/2addr v2, v11

    .line 74
    goto :goto_0

    .line 75
    :cond_3
    move-wide v2, v9

    .line 76
    :goto_0
    iget-wide v11, v1, Lcom/beizi/fusion/widget/EulerAngleView;->r:D

    .line 77
    .line 78
    cmpl-double v13, v11, v9

    .line 79
    .line 80
    if-lez v13, :cond_7

    .line 81
    .line 82
    iget-object v11, v1, Lcom/beizi/fusion/widget/EulerAngleView;->u:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v11

    .line 88
    if-eqz v11, :cond_4

    .line 89
    .line 90
    cmpg-double v11, p3, v9

    .line 91
    .line 92
    if-ltz v11, :cond_6

    .line 93
    .line 94
    :cond_4
    iget-object v11, v1, Lcom/beizi/fusion/widget/EulerAngleView;->u:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v11

    .line 100
    if-eqz v11, :cond_5

    .line 101
    .line 102
    cmpl-double v11, p3, v9

    .line 103
    .line 104
    if-gtz v11, :cond_6

    .line 105
    .line 106
    :cond_5
    iget-object v11, v1, Lcom/beizi/fusion/widget/EulerAngleView;->u:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v11

    .line 112
    if-nez v11, :cond_6

    .line 113
    .line 114
    iget-object v11, v1, Lcom/beizi/fusion/widget/EulerAngleView;->u:Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v11

    .line 120
    if-eqz v11, :cond_7

    .line 121
    .line 122
    :cond_6
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->abs(D)D

    .line 123
    .line 124
    .line 125
    move-result-wide v11

    .line 126
    mul-double v11, v11, v5

    .line 127
    .line 128
    iget-wide v13, v1, Lcom/beizi/fusion/widget/EulerAngleView;->r:D

    .line 129
    .line 130
    div-double/2addr v11, v13

    .line 131
    goto :goto_1

    .line 132
    :cond_7
    move-wide v11, v9

    .line 133
    :goto_1
    iget-wide v13, v1, Lcom/beizi/fusion/widget/EulerAngleView;->s:D

    .line 134
    .line 135
    cmpl-double v15, v13, v9

    .line 136
    .line 137
    if-lez v15, :cond_b

    .line 138
    .line 139
    iget-object v13, v1, Lcom/beizi/fusion/widget/EulerAngleView;->v:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v8

    .line 145
    if-eqz v8, :cond_8

    .line 146
    .line 147
    cmpl-double v8, p5, v9

    .line 148
    .line 149
    if-gtz v8, :cond_a

    .line 150
    .line 151
    :cond_8
    iget-object v8, v1, Lcom/beizi/fusion/widget/EulerAngleView;->v:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v7

    .line 157
    if-eqz v7, :cond_9

    .line 158
    .line 159
    cmpg-double v7, p5, v9

    .line 160
    .line 161
    if-ltz v7, :cond_a

    .line 162
    .line 163
    :cond_9
    iget-object v7, v1, Lcom/beizi/fusion/widget/EulerAngleView;->v:Ljava/lang/String;

    .line 164
    .line 165
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    if-nez v4, :cond_a

    .line 170
    .line 171
    iget-object v4, v1, Lcom/beizi/fusion/widget/EulerAngleView;->v:Ljava/lang/String;

    .line 172
    .line 173
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    if-eqz v0, :cond_b

    .line 178
    .line 179
    :cond_a
    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->abs(D)D

    .line 180
    .line 181
    .line 182
    move-result-wide v7

    .line 183
    mul-double v7, v7, v5

    .line 184
    .line 185
    iget-wide v4, v1, Lcom/beizi/fusion/widget/EulerAngleView;->s:D

    .line 186
    .line 187
    div-double v9, v7, v4

    .line 188
    .line 189
    :cond_b
    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->max(DD)D

    .line 190
    .line 191
    .line 192
    move-result-wide v2

    .line 193
    iget-object v0, v1, Lcom/beizi/fusion/widget/EulerAngleView;->h:Lcom/beizi/fusion/update/ShakeArcView;

    .line 194
    .line 195
    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->max(DD)D

    .line 196
    .line 197
    .line 198
    move-result-wide v2

    .line 199
    invoke-virtual {v0, v2, v3}, Lcom/beizi/fusion/update/ShakeArcView;->setCurrentProgress(D)Lcom/beizi/fusion/update/ShakeArcView;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 200
    .line 201
    .line 202
    goto :goto_2

    .line 203
    :catch_0
    move-exception v0

    .line 204
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 205
    .line 206
    .line 207
    :cond_c
    :goto_2
    return-void
.end method

.method public setDownloadApp(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/widget/EulerAngleView;->x:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public setEulerAngleRenderBean(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRenderBean;)V
    .locals 4

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/beizi/fusion/widget/EulerAngleView;->d:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRenderBean;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/beizi/fusion/widget/EulerAngleView;->c:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;->getRules()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_6

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_7

    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;

    .line 36
    .line 37
    if-nez v0, :cond_3

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;->getDirection()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v2, "x"

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;->getAxis()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_4

    .line 55
    .line 56
    iput-object v1, p0, Lcom/beizi/fusion/widget/EulerAngleView;->t:Ljava/lang/String;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_4
    const-string v2, "y"

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;->getAxis()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_5

    .line 70
    .line 71
    iput-object v1, p0, Lcom/beizi/fusion/widget/EulerAngleView;->u:Ljava/lang/String;

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_5
    const-string v2, "z"

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;->getAxis()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_2

    .line 85
    .line 86
    iput-object v1, p0, Lcom/beizi/fusion/widget/EulerAngleView;->v:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_6
    :goto_1
    return-void

    .line 90
    :catch_0
    move-exception p1

    .line 91
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 92
    .line 93
    .line 94
    :cond_7
    return-void
.end method

.method public setEulerAngleViewRuleBean(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/widget/EulerAngleView;->c:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;

    .line 2
    .line 3
    return-void
.end method

.method public startContinuousRotations()V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/widget/EulerAngleView;->c:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;->getRules()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_e

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    goto/16 :goto_1

    .line 19
    .line 20
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_d

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;

    .line 40
    .line 41
    if-nez v2, :cond_3

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;->getAngle()D

    .line 45
    .line 46
    .line 47
    move-result-wide v3

    .line 48
    const-wide/16 v5, 0x0

    .line 49
    .line 50
    cmpl-double v7, v3, v5

    .line 51
    .line 52
    if-nez v7, :cond_4

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_4
    const-string v3, "x"

    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;->getAxis()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    const-string v4, "1"

    .line 66
    .line 67
    const-string v5, "2"

    .line 68
    .line 69
    const/4 v6, 0x0

    .line 70
    if-eqz v3, :cond_7

    .line 71
    .line 72
    :try_start_1
    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;->getDirection()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 80
    const-string v5, "rotationX"

    .line 81
    .line 82
    if-eqz v3, :cond_5

    .line 83
    .line 84
    :try_start_2
    iget v2, p0, Lcom/beizi/fusion/widget/EulerAngleView;->k:F

    .line 85
    .line 86
    neg-float v2, v2

    .line 87
    invoke-direct {p0, v1, v5, v6, v2}, Lcom/beizi/fusion/widget/EulerAngleView;->a(Ljava/util/List;Ljava/lang/String;FF)V

    .line 88
    .line 89
    .line 90
    iget v2, p0, Lcom/beizi/fusion/widget/EulerAngleView;->k:F

    .line 91
    .line 92
    neg-float v2, v2

    .line 93
    invoke-direct {p0, v1, v5, v2, v6}, Lcom/beizi/fusion/widget/EulerAngleView;->a(Ljava/util/List;Ljava/lang/String;FF)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_5
    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;->getDirection()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_6

    .line 106
    .line 107
    iget v2, p0, Lcom/beizi/fusion/widget/EulerAngleView;->k:F

    .line 108
    .line 109
    invoke-direct {p0, v1, v5, v6, v2}, Lcom/beizi/fusion/widget/EulerAngleView;->a(Ljava/util/List;Ljava/lang/String;FF)V

    .line 110
    .line 111
    .line 112
    iget v2, p0, Lcom/beizi/fusion/widget/EulerAngleView;->k:F

    .line 113
    .line 114
    invoke-direct {p0, v1, v5, v2, v6}, Lcom/beizi/fusion/widget/EulerAngleView;->a(Ljava/util/List;Ljava/lang/String;FF)V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_6
    iget v2, p0, Lcom/beizi/fusion/widget/EulerAngleView;->k:F

    .line 119
    .line 120
    invoke-direct {p0, v1, v5, v6, v2}, Lcom/beizi/fusion/widget/EulerAngleView;->a(Ljava/util/List;Ljava/lang/String;FF)V

    .line 121
    .line 122
    .line 123
    iget v2, p0, Lcom/beizi/fusion/widget/EulerAngleView;->k:F

    .line 124
    .line 125
    invoke-direct {p0, v1, v5, v2, v6}, Lcom/beizi/fusion/widget/EulerAngleView;->a(Ljava/util/List;Ljava/lang/String;FF)V

    .line 126
    .line 127
    .line 128
    iget v2, p0, Lcom/beizi/fusion/widget/EulerAngleView;->k:F

    .line 129
    .line 130
    neg-float v2, v2

    .line 131
    invoke-direct {p0, v1, v5, v6, v2}, Lcom/beizi/fusion/widget/EulerAngleView;->a(Ljava/util/List;Ljava/lang/String;FF)V

    .line 132
    .line 133
    .line 134
    iget v2, p0, Lcom/beizi/fusion/widget/EulerAngleView;->k:F

    .line 135
    .line 136
    neg-float v2, v2

    .line 137
    invoke-direct {p0, v1, v5, v2, v6}, Lcom/beizi/fusion/widget/EulerAngleView;->a(Ljava/util/List;Ljava/lang/String;FF)V

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_7
    const-string v3, "y"

    .line 142
    .line 143
    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;->getAxis()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v7

    .line 147
    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    if-eqz v3, :cond_a

    .line 152
    .line 153
    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;->getDirection()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 161
    const-string v5, "rotationY"

    .line 162
    .line 163
    if-eqz v3, :cond_8

    .line 164
    .line 165
    :try_start_3
    iget v2, p0, Lcom/beizi/fusion/widget/EulerAngleView;->l:F

    .line 166
    .line 167
    neg-float v2, v2

    .line 168
    invoke-direct {p0, v1, v5, v6, v2}, Lcom/beizi/fusion/widget/EulerAngleView;->a(Ljava/util/List;Ljava/lang/String;FF)V

    .line 169
    .line 170
    .line 171
    iget v2, p0, Lcom/beizi/fusion/widget/EulerAngleView;->l:F

    .line 172
    .line 173
    neg-float v2, v2

    .line 174
    invoke-direct {p0, v1, v5, v2, v6}, Lcom/beizi/fusion/widget/EulerAngleView;->a(Ljava/util/List;Ljava/lang/String;FF)V

    .line 175
    .line 176
    .line 177
    goto/16 :goto_0

    .line 178
    .line 179
    :cond_8
    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;->getDirection()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    if-eqz v2, :cond_9

    .line 188
    .line 189
    iget v2, p0, Lcom/beizi/fusion/widget/EulerAngleView;->l:F

    .line 190
    .line 191
    invoke-direct {p0, v1, v5, v6, v2}, Lcom/beizi/fusion/widget/EulerAngleView;->a(Ljava/util/List;Ljava/lang/String;FF)V

    .line 192
    .line 193
    .line 194
    iget v2, p0, Lcom/beizi/fusion/widget/EulerAngleView;->l:F

    .line 195
    .line 196
    invoke-direct {p0, v1, v5, v2, v6}, Lcom/beizi/fusion/widget/EulerAngleView;->a(Ljava/util/List;Ljava/lang/String;FF)V

    .line 197
    .line 198
    .line 199
    goto/16 :goto_0

    .line 200
    .line 201
    :cond_9
    iget v2, p0, Lcom/beizi/fusion/widget/EulerAngleView;->l:F

    .line 202
    .line 203
    invoke-direct {p0, v1, v5, v6, v2}, Lcom/beizi/fusion/widget/EulerAngleView;->a(Ljava/util/List;Ljava/lang/String;FF)V

    .line 204
    .line 205
    .line 206
    iget v2, p0, Lcom/beizi/fusion/widget/EulerAngleView;->l:F

    .line 207
    .line 208
    invoke-direct {p0, v1, v5, v2, v6}, Lcom/beizi/fusion/widget/EulerAngleView;->a(Ljava/util/List;Ljava/lang/String;FF)V

    .line 209
    .line 210
    .line 211
    iget v2, p0, Lcom/beizi/fusion/widget/EulerAngleView;->l:F

    .line 212
    .line 213
    neg-float v2, v2

    .line 214
    invoke-direct {p0, v1, v5, v6, v2}, Lcom/beizi/fusion/widget/EulerAngleView;->a(Ljava/util/List;Ljava/lang/String;FF)V

    .line 215
    .line 216
    .line 217
    iget v2, p0, Lcom/beizi/fusion/widget/EulerAngleView;->l:F

    .line 218
    .line 219
    neg-float v2, v2

    .line 220
    invoke-direct {p0, v1, v5, v2, v6}, Lcom/beizi/fusion/widget/EulerAngleView;->a(Ljava/util/List;Ljava/lang/String;FF)V

    .line 221
    .line 222
    .line 223
    goto/16 :goto_0

    .line 224
    .line 225
    :cond_a
    const-string v3, "z"

    .line 226
    .line 227
    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;->getAxis()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v7

    .line 231
    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 232
    .line 233
    .line 234
    move-result v3

    .line 235
    if-eqz v3, :cond_2

    .line 236
    .line 237
    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;->getDirection()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 245
    const-string v5, "rotation"

    .line 246
    .line 247
    if-eqz v3, :cond_b

    .line 248
    .line 249
    :try_start_4
    iget v2, p0, Lcom/beizi/fusion/widget/EulerAngleView;->m:F

    .line 250
    .line 251
    neg-float v2, v2

    .line 252
    invoke-direct {p0, v1, v5, v6, v2}, Lcom/beizi/fusion/widget/EulerAngleView;->a(Ljava/util/List;Ljava/lang/String;FF)V

    .line 253
    .line 254
    .line 255
    iget v2, p0, Lcom/beizi/fusion/widget/EulerAngleView;->m:F

    .line 256
    .line 257
    neg-float v2, v2

    .line 258
    invoke-direct {p0, v1, v5, v2, v6}, Lcom/beizi/fusion/widget/EulerAngleView;->a(Ljava/util/List;Ljava/lang/String;FF)V

    .line 259
    .line 260
    .line 261
    goto/16 :goto_0

    .line 262
    .line 263
    :cond_b
    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;->getDirection()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    if-eqz v2, :cond_c

    .line 272
    .line 273
    iget v2, p0, Lcom/beizi/fusion/widget/EulerAngleView;->m:F

    .line 274
    .line 275
    invoke-direct {p0, v1, v5, v6, v2}, Lcom/beizi/fusion/widget/EulerAngleView;->a(Ljava/util/List;Ljava/lang/String;FF)V

    .line 276
    .line 277
    .line 278
    iget v2, p0, Lcom/beizi/fusion/widget/EulerAngleView;->m:F

    .line 279
    .line 280
    invoke-direct {p0, v1, v5, v2, v6}, Lcom/beizi/fusion/widget/EulerAngleView;->a(Ljava/util/List;Ljava/lang/String;FF)V

    .line 281
    .line 282
    .line 283
    goto/16 :goto_0

    .line 284
    .line 285
    :cond_c
    iget v2, p0, Lcom/beizi/fusion/widget/EulerAngleView;->m:F

    .line 286
    .line 287
    invoke-direct {p0, v1, v5, v6, v2}, Lcom/beizi/fusion/widget/EulerAngleView;->a(Ljava/util/List;Ljava/lang/String;FF)V

    .line 288
    .line 289
    .line 290
    iget v2, p0, Lcom/beizi/fusion/widget/EulerAngleView;->m:F

    .line 291
    .line 292
    invoke-direct {p0, v1, v5, v2, v6}, Lcom/beizi/fusion/widget/EulerAngleView;->a(Ljava/util/List;Ljava/lang/String;FF)V

    .line 293
    .line 294
    .line 295
    iget v2, p0, Lcom/beizi/fusion/widget/EulerAngleView;->m:F

    .line 296
    .line 297
    neg-float v2, v2

    .line 298
    invoke-direct {p0, v1, v5, v6, v2}, Lcom/beizi/fusion/widget/EulerAngleView;->a(Ljava/util/List;Ljava/lang/String;FF)V

    .line 299
    .line 300
    .line 301
    iget v2, p0, Lcom/beizi/fusion/widget/EulerAngleView;->m:F

    .line 302
    .line 303
    neg-float v2, v2

    .line 304
    invoke-direct {p0, v1, v5, v2, v6}, Lcom/beizi/fusion/widget/EulerAngleView;->a(Ljava/util/List;Ljava/lang/String;FF)V

    .line 305
    .line 306
    .line 307
    goto/16 :goto_0

    .line 308
    .line 309
    :cond_d
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    if-lez v0, :cond_f

    .line 314
    .line 315
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 316
    .line 317
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 318
    .line 319
    .line 320
    iput-object v0, p0, Lcom/beizi/fusion/widget/EulerAngleView;->w:Landroid/animation/AnimatorSet;

    .line 321
    .line 322
    new-instance v2, Lcom/beizi/fusion/widget/EulerAngleView$2;

    .line 323
    .line 324
    invoke-direct {v2, p0}, Lcom/beizi/fusion/widget/EulerAngleView$2;-><init>(Lcom/beizi/fusion/widget/EulerAngleView;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 328
    .line 329
    .line 330
    iget-object v0, p0, Lcom/beizi/fusion/widget/EulerAngleView;->w:Landroid/animation/AnimatorSet;

    .line 331
    .line 332
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 333
    .line 334
    .line 335
    iget-object v0, p0, Lcom/beizi/fusion/widget/EulerAngleView;->w:Landroid/animation/AnimatorSet;

    .line 336
    .line 337
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 338
    .line 339
    .line 340
    goto :goto_2

    .line 341
    :cond_e
    :goto_1
    return-void

    .line 342
    :catch_0
    move-exception v0

    .line 343
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 344
    .line 345
    .line 346
    :cond_f
    :goto_2
    return-void
.end method
