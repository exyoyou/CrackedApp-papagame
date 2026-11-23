.class public Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;
.super Lcom/kwad/components/ad/splashscreen/widget/c;
.source "SourceFile"


# instance fields
.field private LZ:Landroid/widget/ImageView;

.field private Ma:Landroid/widget/ImageView;

.field private Mb:Landroid/widget/ImageView;

.field private Mc:Landroid/widget/ImageView;

.field private Md:Landroid/widget/ImageView;

.field private Me:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/kwad/components/ad/splashscreen/widget/c;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/kwad/components/ad/splashscreen/widget/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/kwad/components/ad/splashscreen/widget/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance p2, Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Ma:Landroid/widget/ImageView;

    .line 7
    .line 8
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 9
    .line 10
    const/high16 p3, 0x434e0000    # 206.0f

    .line 11
    .line 12
    invoke-static {p1, p3}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/high16 v1, 0x42f00000    # 120.0f

    .line 17
    .line 18
    invoke-static {p1, v1}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-direct {p2, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Ma:Landroid/widget/ImageView;

    .line 26
    .line 27
    sget v2, Lcom/kwad/sdk/R$drawable;->ksad_splash_base_arrows:I

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 30
    .line 31
    .line 32
    const/16 v0, 0x11

    .line 33
    .line 34
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 35
    .line 36
    iget-object v2, p0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Ma:Landroid/widget/ImageView;

    .line 37
    .line 38
    invoke-virtual {p0, v2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    .line 40
    .line 41
    new-instance p2, Landroid/widget/ImageView;

    .line 42
    .line 43
    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    iput-object p2, p0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Md:Landroid/widget/ImageView;

    .line 47
    .line 48
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 49
    .line 50
    invoke-static {p1, p3}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    invoke-static {p1, v1}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    invoke-direct {p2, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 59
    .line 60
    .line 61
    iget-object v2, p0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Md:Landroid/widget/ImageView;

    .line 62
    .line 63
    sget v3, Lcom/kwad/sdk/R$drawable;->ksad_splash_up_highlight_arrow:I

    .line 64
    .line 65
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 66
    .line 67
    .line 68
    iget-object v2, p0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Md:Landroid/widget/ImageView;

    .line 69
    .line 70
    const/4 v3, 0x0

    .line 71
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 72
    .line 73
    .line 74
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 75
    .line 76
    iget-object v2, p0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Md:Landroid/widget/ImageView;

    .line 77
    .line 78
    invoke-virtual {p0, v2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    .line 80
    .line 81
    new-instance p2, Landroid/widget/ImageView;

    .line 82
    .line 83
    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 84
    .line 85
    .line 86
    iput-object p2, p0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Mc:Landroid/widget/ImageView;

    .line 87
    .line 88
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 89
    .line 90
    invoke-static {p1, p3}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    invoke-static {p1, v1}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    invoke-direct {p2, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 99
    .line 100
    .line 101
    iget-object v2, p0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Mc:Landroid/widget/ImageView;

    .line 102
    .line 103
    sget v4, Lcom/kwad/sdk/R$drawable;->ksad_splash_right_highlight_arrow:I

    .line 104
    .line 105
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    .line 107
    .line 108
    iget-object v2, p0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Mc:Landroid/widget/ImageView;

    .line 109
    .line 110
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 111
    .line 112
    .line 113
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 114
    .line 115
    iget-object v2, p0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Mc:Landroid/widget/ImageView;

    .line 116
    .line 117
    invoke-virtual {p0, v2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    .line 119
    .line 120
    new-instance p2, Landroid/widget/ImageView;

    .line 121
    .line 122
    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 123
    .line 124
    .line 125
    iput-object p2, p0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Me:Landroid/widget/ImageView;

    .line 126
    .line 127
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 128
    .line 129
    invoke-static {p1, p3}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    invoke-static {p1, v1}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    invoke-direct {p2, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 138
    .line 139
    .line 140
    iget-object v2, p0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Me:Landroid/widget/ImageView;

    .line 141
    .line 142
    sget v4, Lcom/kwad/sdk/R$drawable;->ksad_splash_down_highlight_arrow:I

    .line 143
    .line 144
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 145
    .line 146
    .line 147
    iget-object v2, p0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Me:Landroid/widget/ImageView;

    .line 148
    .line 149
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 150
    .line 151
    .line 152
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 153
    .line 154
    iget-object v2, p0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Me:Landroid/widget/ImageView;

    .line 155
    .line 156
    invoke-virtual {p0, v2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    .line 158
    .line 159
    new-instance p2, Landroid/widget/ImageView;

    .line 160
    .line 161
    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 162
    .line 163
    .line 164
    iput-object p2, p0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Mb:Landroid/widget/ImageView;

    .line 165
    .line 166
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 167
    .line 168
    invoke-static {p1, p3}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 169
    .line 170
    .line 171
    move-result p3

    .line 172
    invoke-static {p1, v1}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    invoke-direct {p2, p3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 177
    .line 178
    .line 179
    iget-object p3, p0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Mb:Landroid/widget/ImageView;

    .line 180
    .line 181
    sget v1, Lcom/kwad/sdk/R$drawable;->ksad_splash_left_highlight_arrow:I

    .line 182
    .line 183
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 184
    .line 185
    .line 186
    iget-object p3, p0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Mb:Landroid/widget/ImageView;

    .line 187
    .line 188
    invoke-virtual {p3, v3}, Landroid/view/View;->setAlpha(F)V

    .line 189
    .line 190
    .line 191
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 192
    .line 193
    iget-object p3, p0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Mb:Landroid/widget/ImageView;

    .line 194
    .line 195
    invoke-virtual {p0, p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    .line 197
    .line 198
    new-instance p2, Landroid/widget/ImageView;

    .line 199
    .line 200
    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 201
    .line 202
    .line 203
    iput-object p2, p0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->LZ:Landroid/widget/ImageView;

    .line 204
    .line 205
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 206
    .line 207
    const/high16 p3, 0x42c80000    # 100.0f

    .line 208
    .line 209
    invoke-static {p1, p3}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 210
    .line 211
    .line 212
    move-result p3

    .line 213
    const/high16 v0, 0x43220000    # 162.0f

    .line 214
    .line 215
    invoke-static {p1, v0}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    invoke-direct {p2, p3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 220
    .line 221
    .line 222
    iget-object p3, p0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->LZ:Landroid/widget/ImageView;

    .line 223
    .line 224
    sget v0, Lcom/kwad/sdk/R$drawable;->ksad_splash_slide_animation_hand:I

    .line 225
    .line 226
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 227
    .line 228
    .line 229
    const/high16 p3, 0x43150000    # 149.0f

    .line 230
    .line 231
    invoke-static {p1, p3}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 232
    .line 233
    .line 234
    move-result p3

    .line 235
    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 236
    .line 237
    const/high16 p3, -0x3e680000    # -19.0f

    .line 238
    .line 239
    invoke-static {p1, p3}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 244
    .line 245
    const/16 p1, 0x53

    .line 246
    .line 247
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 248
    .line 249
    iget-object p1, p0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->LZ:Landroid/widget/ImageView;

    .line 250
    .line 251
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    .line 253
    .line 254
    return-void
.end method

.method protected final fZ()Landroid/animation/Animator;
    .locals 38

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Landroid/animation/AnimatorSet;

    .line 4
    .line 5
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->LZ:Landroid/widget/ImageView;

    .line 9
    .line 10
    const/4 v3, 0x2

    .line 11
    new-array v4, v3, [F

    .line 12
    .line 13
    fill-array-data v4, :array_0

    .line 14
    .line 15
    .line 16
    const-string v5, "alpha"

    .line 17
    .line 18
    invoke-static {v2, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-wide/16 v6, 0x32

    .line 23
    .line 24
    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iget-object v4, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->LZ:Landroid/widget/ImageView;

    .line 29
    .line 30
    new-array v8, v3, [F

    .line 31
    .line 32
    fill-array-data v8, :array_1

    .line 33
    .line 34
    .line 35
    invoke-static {v4, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    const-wide/16 v8, 0x64

    .line 40
    .line 41
    invoke-virtual {v4, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    iget-object v10, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Md:Landroid/widget/ImageView;

    .line 46
    .line 47
    new-array v11, v3, [F

    .line 48
    .line 49
    fill-array-data v11, :array_2

    .line 50
    .line 51
    .line 52
    invoke-static {v10, v5, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 53
    .line 54
    .line 55
    move-result-object v10

    .line 56
    const-wide/16 v11, 0x1c2

    .line 57
    .line 58
    invoke-virtual {v10, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 59
    .line 60
    .line 61
    move-result-object v10

    .line 62
    iget-object v13, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->LZ:Landroid/widget/ImageView;

    .line 63
    .line 64
    const/4 v14, 0x1

    .line 65
    new-array v15, v14, [F

    .line 66
    .line 67
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    const/high16 v7, -0x3d6e0000    # -73.0f

    .line 72
    .line 73
    invoke-static {v6, v7}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    int-to-float v6, v6

    .line 78
    const/4 v7, 0x0

    .line 79
    aput v6, v15, v7

    .line 80
    .line 81
    const-string v6, "translationY"

    .line 82
    .line 83
    invoke-static {v13, v6, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 84
    .line 85
    .line 86
    move-result-object v13

    .line 87
    invoke-virtual {v13, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 88
    .line 89
    .line 90
    move-result-object v13

    .line 91
    iget-object v15, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Md:Landroid/widget/ImageView;

    .line 92
    .line 93
    new-array v7, v3, [F

    .line 94
    .line 95
    fill-array-data v7, :array_3

    .line 96
    .line 97
    .line 98
    invoke-static {v15, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    iget-object v15, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Md:Landroid/widget/ImageView;

    .line 107
    .line 108
    new-array v8, v3, [F

    .line 109
    .line 110
    fill-array-data v8, :array_4

    .line 111
    .line 112
    .line 113
    invoke-static {v15, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 114
    .line 115
    .line 116
    move-result-object v8

    .line 117
    invoke-virtual {v8, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    iget-object v9, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->LZ:Landroid/widget/ImageView;

    .line 122
    .line 123
    new-array v15, v3, [F

    .line 124
    .line 125
    fill-array-data v15, :array_5

    .line 126
    .line 127
    .line 128
    invoke-static {v9, v5, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 129
    .line 130
    .line 131
    move-result-object v9

    .line 132
    invoke-virtual {v9, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 133
    .line 134
    .line 135
    move-result-object v9

    .line 136
    iget-object v15, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->LZ:Landroid/widget/ImageView;

    .line 137
    .line 138
    new-array v11, v14, [F

    .line 139
    .line 140
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 141
    .line 142
    .line 143
    move-result-object v12

    .line 144
    const/4 v14, 0x0

    .line 145
    invoke-static {v12, v14}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 146
    .line 147
    .line 148
    move-result v12

    .line 149
    int-to-float v12, v12

    .line 150
    const/16 v16, 0x0

    .line 151
    .line 152
    aput v12, v11, v16

    .line 153
    .line 154
    invoke-static {v15, v6, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 155
    .line 156
    .line 157
    move-result-object v11

    .line 158
    const-wide/16 v14, 0x32

    .line 159
    .line 160
    invoke-virtual {v11, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 161
    .line 162
    .line 163
    move-result-object v11

    .line 164
    iget-object v14, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->LZ:Landroid/widget/ImageView;

    .line 165
    .line 166
    new-array v15, v3, [F

    .line 167
    .line 168
    fill-array-data v15, :array_6

    .line 169
    .line 170
    .line 171
    invoke-static {v14, v5, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 172
    .line 173
    .line 174
    move-result-object v14

    .line 175
    move-object v15, v13

    .line 176
    const-wide/16 v12, 0x64

    .line 177
    .line 178
    invoke-virtual {v14, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 179
    .line 180
    .line 181
    move-result-object v14

    .line 182
    iget-object v12, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->LZ:Landroid/widget/ImageView;

    .line 183
    .line 184
    new-array v13, v3, [F

    .line 185
    .line 186
    fill-array-data v13, :array_7

    .line 187
    .line 188
    .line 189
    invoke-static {v12, v5, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 190
    .line 191
    .line 192
    move-result-object v12

    .line 193
    move-object/from16 v20, v4

    .line 194
    .line 195
    const-wide/16 v3, 0x64

    .line 196
    .line 197
    invoke-virtual {v12, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 198
    .line 199
    .line 200
    move-result-object v12

    .line 201
    iget-object v3, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Mc:Landroid/widget/ImageView;

    .line 202
    .line 203
    const/4 v4, 0x2

    .line 204
    new-array v13, v4, [F

    .line 205
    .line 206
    move-object v4, v13

    .line 207
    fill-array-data v4, :array_8

    .line 208
    .line 209
    .line 210
    invoke-static {v3, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    move-object v4, v14

    .line 215
    const-wide/16 v13, 0x1c2

    .line 216
    .line 217
    invoke-virtual {v3, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    iget-object v13, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->LZ:Landroid/widget/ImageView;

    .line 222
    .line 223
    move-object/from16 v22, v12

    .line 224
    .line 225
    const/4 v14, 0x1

    .line 226
    new-array v12, v14, [F

    .line 227
    .line 228
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 229
    .line 230
    .line 231
    move-result-object v14

    .line 232
    move-object/from16 v23, v15

    .line 233
    .line 234
    const/high16 v15, 0x42aa0000    # 85.0f

    .line 235
    .line 236
    invoke-static {v14, v15}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 237
    .line 238
    .line 239
    move-result v14

    .line 240
    int-to-float v14, v14

    .line 241
    const/4 v15, 0x0

    .line 242
    aput v14, v12, v15

    .line 243
    .line 244
    const-string v14, "translationX"

    .line 245
    .line 246
    invoke-static {v13, v14, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 247
    .line 248
    .line 249
    move-result-object v12

    .line 250
    move-object/from16 v24, v3

    .line 251
    .line 252
    move-object v15, v4

    .line 253
    const-wide/16 v3, 0x1c2

    .line 254
    .line 255
    invoke-virtual {v12, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 256
    .line 257
    .line 258
    move-result-object v13

    .line 259
    iget-object v12, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Mc:Landroid/widget/ImageView;

    .line 260
    .line 261
    const/4 v3, 0x2

    .line 262
    new-array v4, v3, [F

    .line 263
    .line 264
    fill-array-data v4, :array_9

    .line 265
    .line 266
    .line 267
    invoke-static {v12, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 268
    .line 269
    .line 270
    move-result-object v4

    .line 271
    move-object/from16 v21, v13

    .line 272
    .line 273
    const-wide/16 v12, 0x64

    .line 274
    .line 275
    invoke-virtual {v4, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 276
    .line 277
    .line 278
    move-result-object v4

    .line 279
    iget-object v12, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Mc:Landroid/widget/ImageView;

    .line 280
    .line 281
    new-array v13, v3, [F

    .line 282
    .line 283
    fill-array-data v13, :array_a

    .line 284
    .line 285
    .line 286
    invoke-static {v12, v5, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 287
    .line 288
    .line 289
    move-result-object v12

    .line 290
    move-object/from16 v25, v4

    .line 291
    .line 292
    const-wide/16 v3, 0x1c2

    .line 293
    .line 294
    invoke-virtual {v12, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 295
    .line 296
    .line 297
    move-result-object v12

    .line 298
    iget-object v13, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->LZ:Landroid/widget/ImageView;

    .line 299
    .line 300
    const/4 v3, 0x2

    .line 301
    new-array v4, v3, [F

    .line 302
    .line 303
    fill-array-data v4, :array_b

    .line 304
    .line 305
    .line 306
    invoke-static {v13, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 307
    .line 308
    .line 309
    move-result-object v4

    .line 310
    move-object/from16 v28, v12

    .line 311
    .line 312
    const-wide/16 v12, 0x1c2

    .line 313
    .line 314
    invoke-virtual {v4, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 315
    .line 316
    .line 317
    move-result-object v4

    .line 318
    iget-object v13, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->LZ:Landroid/widget/ImageView;

    .line 319
    .line 320
    const/4 v12, 0x1

    .line 321
    new-array v3, v12, [F

    .line 322
    .line 323
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 324
    .line 325
    .line 326
    move-result-object v12

    .line 327
    move-object/from16 v27, v15

    .line 328
    .line 329
    const/4 v15, 0x0

    .line 330
    invoke-static {v12, v15}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 331
    .line 332
    .line 333
    move-result v12

    .line 334
    move-object/from16 v15, v22

    .line 335
    .line 336
    move-object/from16 v22, v4

    .line 337
    .line 338
    move v4, v12

    .line 339
    move-object/from16 v12, v28

    .line 340
    .line 341
    int-to-float v4, v4

    .line 342
    const/16 v16, 0x0

    .line 343
    .line 344
    aput v4, v3, v16

    .line 345
    .line 346
    invoke-static {v13, v14, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    const-wide/16 v12, 0x32

    .line 351
    .line 352
    invoke-virtual {v3, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 353
    .line 354
    .line 355
    move-result-object v3

    .line 356
    iget-object v4, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->LZ:Landroid/widget/ImageView;

    .line 357
    .line 358
    const/4 v12, 0x2

    .line 359
    new-array v13, v12, [F

    .line 360
    .line 361
    fill-array-data v13, :array_c

    .line 362
    .line 363
    .line 364
    invoke-static {v4, v5, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 365
    .line 366
    .line 367
    move-result-object v4

    .line 368
    const-wide/16 v12, 0x64

    .line 369
    .line 370
    invoke-virtual {v4, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 371
    .line 372
    .line 373
    move-result-object v4

    .line 374
    iget-object v12, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->LZ:Landroid/widget/ImageView;

    .line 375
    .line 376
    move-object/from16 v26, v4

    .line 377
    .line 378
    const/4 v13, 0x2

    .line 379
    new-array v4, v13, [F

    .line 380
    .line 381
    fill-array-data v4, :array_d

    .line 382
    .line 383
    .line 384
    invoke-static {v12, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 385
    .line 386
    .line 387
    move-result-object v4

    .line 388
    move-object v12, v14

    .line 389
    const-wide/16 v13, 0x64

    .line 390
    .line 391
    invoke-virtual {v4, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 392
    .line 393
    .line 394
    move-result-object v4

    .line 395
    iget-object v14, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Me:Landroid/widget/ImageView;

    .line 396
    .line 397
    move-object/from16 v29, v4

    .line 398
    .line 399
    const/4 v13, 0x2

    .line 400
    new-array v4, v13, [F

    .line 401
    .line 402
    move-object/from16 v13, v21

    .line 403
    .line 404
    fill-array-data v4, :array_e

    .line 405
    .line 406
    .line 407
    invoke-static {v14, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 408
    .line 409
    .line 410
    move-result-object v4

    .line 411
    const-wide/16 v13, 0x1c2

    .line 412
    .line 413
    invoke-virtual {v4, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 414
    .line 415
    .line 416
    move-result-object v4

    .line 417
    iget-object v13, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->LZ:Landroid/widget/ImageView;

    .line 418
    .line 419
    move-object/from16 v31, v4

    .line 420
    .line 421
    const/4 v14, 0x1

    .line 422
    new-array v4, v14, [F

    .line 423
    .line 424
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 425
    .line 426
    .line 427
    move-result-object v14

    .line 428
    move-object/from16 v32, v3

    .line 429
    .line 430
    const/high16 v3, 0x42700000    # 60.0f

    .line 431
    .line 432
    invoke-static {v14, v3}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 433
    .line 434
    .line 435
    move-result v3

    .line 436
    int-to-float v3, v3

    .line 437
    const/4 v14, 0x0

    .line 438
    aput v3, v4, v14

    .line 439
    .line 440
    invoke-static {v13, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 441
    .line 442
    .line 443
    move-result-object v3

    .line 444
    const-wide/16 v13, 0x1c2

    .line 445
    .line 446
    invoke-virtual {v3, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 447
    .line 448
    .line 449
    move-result-object v3

    .line 450
    iget-object v4, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Me:Landroid/widget/ImageView;

    .line 451
    .line 452
    const/4 v13, 0x2

    .line 453
    new-array v14, v13, [F

    .line 454
    .line 455
    fill-array-data v14, :array_f

    .line 456
    .line 457
    .line 458
    invoke-static {v4, v5, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 459
    .line 460
    .line 461
    move-result-object v4

    .line 462
    const-wide/16 v13, 0x64

    .line 463
    .line 464
    invoke-virtual {v4, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 465
    .line 466
    .line 467
    move-result-object v4

    .line 468
    iget-object v13, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Me:Landroid/widget/ImageView;

    .line 469
    .line 470
    move-object/from16 v30, v4

    .line 471
    .line 472
    const/4 v14, 0x2

    .line 473
    new-array v4, v14, [F

    .line 474
    .line 475
    fill-array-data v4, :array_10

    .line 476
    .line 477
    .line 478
    invoke-static {v13, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 479
    .line 480
    .line 481
    move-result-object v4

    .line 482
    move-object v13, v15

    .line 483
    const-wide/16 v14, 0x1c2

    .line 484
    .line 485
    invoke-virtual {v4, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 486
    .line 487
    .line 488
    move-result-object v4

    .line 489
    iget-object v14, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->LZ:Landroid/widget/ImageView;

    .line 490
    .line 491
    move-object/from16 v33, v4

    .line 492
    .line 493
    const/4 v15, 0x2

    .line 494
    new-array v4, v15, [F

    .line 495
    .line 496
    fill-array-data v4, :array_11

    .line 497
    .line 498
    .line 499
    invoke-static {v14, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 500
    .line 501
    .line 502
    move-result-object v4

    .line 503
    const-wide/16 v14, 0x1c2

    .line 504
    .line 505
    invoke-virtual {v4, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 506
    .line 507
    .line 508
    move-result-object v4

    .line 509
    iget-object v14, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->LZ:Landroid/widget/ImageView;

    .line 510
    .line 511
    move-object/from16 v34, v4

    .line 512
    .line 513
    const/4 v15, 0x1

    .line 514
    new-array v4, v15, [F

    .line 515
    .line 516
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 517
    .line 518
    .line 519
    move-result-object v15

    .line 520
    move-object/from16 v35, v3

    .line 521
    .line 522
    const/4 v3, 0x0

    .line 523
    invoke-static {v15, v3}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 524
    .line 525
    .line 526
    move-result v15

    .line 527
    int-to-float v15, v15

    .line 528
    const/16 v16, 0x0

    .line 529
    .line 530
    aput v15, v4, v16

    .line 531
    .line 532
    invoke-static {v14, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 533
    .line 534
    .line 535
    move-result-object v4

    .line 536
    const-wide/16 v14, 0x32

    .line 537
    .line 538
    invoke-virtual {v4, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 539
    .line 540
    .line 541
    move-result-object v4

    .line 542
    iget-object v6, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->LZ:Landroid/widget/ImageView;

    .line 543
    .line 544
    const/4 v14, 0x2

    .line 545
    new-array v15, v14, [F

    .line 546
    .line 547
    fill-array-data v15, :array_12

    .line 548
    .line 549
    .line 550
    invoke-static {v6, v5, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 551
    .line 552
    .line 553
    move-result-object v6

    .line 554
    move-object/from16 v19, v4

    .line 555
    .line 556
    const-wide/16 v3, 0x64

    .line 557
    .line 558
    invoke-virtual {v6, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 559
    .line 560
    .line 561
    move-result-object v6

    .line 562
    iget-object v15, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->LZ:Landroid/widget/ImageView;

    .line 563
    .line 564
    new-array v3, v14, [F

    .line 565
    .line 566
    fill-array-data v3, :array_13

    .line 567
    .line 568
    .line 569
    invoke-static {v15, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 570
    .line 571
    .line 572
    move-result-object v3

    .line 573
    const-wide/16 v14, 0x64

    .line 574
    .line 575
    invoke-virtual {v3, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 576
    .line 577
    .line 578
    move-result-object v3

    .line 579
    iget-object v14, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Mb:Landroid/widget/ImageView;

    .line 580
    .line 581
    const/4 v4, 0x2

    .line 582
    new-array v15, v4, [F

    .line 583
    .line 584
    fill-array-data v15, :array_14

    .line 585
    .line 586
    .line 587
    invoke-static {v14, v5, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 588
    .line 589
    .line 590
    move-result-object v14

    .line 591
    move-object v15, v5

    .line 592
    const-wide/16 v4, 0x1c2

    .line 593
    .line 594
    invoke-virtual {v14, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 595
    .line 596
    .line 597
    move-result-object v14

    .line 598
    iget-object v4, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->LZ:Landroid/widget/ImageView;

    .line 599
    .line 600
    move-object/from16 v36, v15

    .line 601
    .line 602
    const/4 v5, 0x1

    .line 603
    new-array v15, v5, [F

    .line 604
    .line 605
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 606
    .line 607
    .line 608
    move-result-object v5

    .line 609
    move-object/from16 v37, v14

    .line 610
    .line 611
    const/high16 v14, -0x3d100000    # -120.0f

    .line 612
    .line 613
    invoke-static {v5, v14}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 614
    .line 615
    .line 616
    move-result v5

    .line 617
    int-to-float v5, v5

    .line 618
    const/4 v14, 0x0

    .line 619
    aput v5, v15, v14

    .line 620
    .line 621
    invoke-static {v4, v12, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 622
    .line 623
    .line 624
    move-result-object v4

    .line 625
    const-wide/16 v14, 0x1c2

    .line 626
    .line 627
    invoke-virtual {v4, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 628
    .line 629
    .line 630
    move-result-object v4

    .line 631
    iget-object v5, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Mb:Landroid/widget/ImageView;

    .line 632
    .line 633
    const/4 v14, 0x2

    .line 634
    new-array v15, v14, [F

    .line 635
    .line 636
    fill-array-data v15, :array_15

    .line 637
    .line 638
    .line 639
    move-object/from16 v14, v36

    .line 640
    .line 641
    invoke-static {v5, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 642
    .line 643
    .line 644
    move-result-object v5

    .line 645
    move-object v15, v3

    .line 646
    move-object/from16 v36, v4

    .line 647
    .line 648
    const-wide/16 v3, 0x64

    .line 649
    .line 650
    invoke-virtual {v5, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 651
    .line 652
    .line 653
    move-result-object v3

    .line 654
    iget-object v4, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Mb:Landroid/widget/ImageView;

    .line 655
    .line 656
    move-object/from16 v17, v15

    .line 657
    .line 658
    const/4 v5, 0x2

    .line 659
    new-array v15, v5, [F

    .line 660
    .line 661
    fill-array-data v15, :array_16

    .line 662
    .line 663
    .line 664
    invoke-static {v4, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 665
    .line 666
    .line 667
    move-result-object v4

    .line 668
    move-object v15, v6

    .line 669
    const-wide/16 v5, 0x1c2

    .line 670
    .line 671
    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 672
    .line 673
    .line 674
    move-result-object v4

    .line 675
    iget-object v5, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->LZ:Landroid/widget/ImageView;

    .line 676
    .line 677
    const/4 v6, 0x2

    .line 678
    new-array v6, v6, [F

    .line 679
    .line 680
    fill-array-data v6, :array_17

    .line 681
    .line 682
    .line 683
    invoke-static {v5, v14, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 684
    .line 685
    .line 686
    move-result-object v5

    .line 687
    move-object v6, v15

    .line 688
    const-wide/16 v14, 0x1c2

    .line 689
    .line 690
    invoke-virtual {v5, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 691
    .line 692
    .line 693
    move-result-object v5

    .line 694
    iget-object v14, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->LZ:Landroid/widget/ImageView;

    .line 695
    .line 696
    const/4 v15, 0x1

    .line 697
    new-array v15, v15, [F

    .line 698
    .line 699
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 700
    .line 701
    .line 702
    move-result-object v0

    .line 703
    move-object/from16 v18, v6

    .line 704
    .line 705
    const/4 v6, 0x0

    .line 706
    invoke-static {v0, v6}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 707
    .line 708
    .line 709
    move-result v0

    .line 710
    int-to-float v0, v0

    .line 711
    const/4 v6, 0x0

    .line 712
    aput v0, v15, v6

    .line 713
    .line 714
    invoke-static {v14, v12, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 715
    .line 716
    .line 717
    move-result-object v0

    .line 718
    const-wide/16 v14, 0x32

    .line 719
    .line 720
    invoke-virtual {v0, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 721
    .line 722
    .line 723
    move-result-object v0

    .line 724
    move-object/from16 v6, v20

    .line 725
    .line 726
    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 727
    .line 728
    .line 729
    move-result-object v6

    .line 730
    invoke-virtual {v6, v10}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 731
    .line 732
    .line 733
    invoke-virtual {v1, v10}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 734
    .line 735
    .line 736
    move-result-object v6

    .line 737
    move-object/from16 v10, v23

    .line 738
    .line 739
    invoke-virtual {v6, v10}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 740
    .line 741
    .line 742
    move-result-object v6

    .line 743
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 744
    .line 745
    .line 746
    move-result-object v6

    .line 747
    invoke-virtual {v6, v8}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 748
    .line 749
    .line 750
    invoke-virtual {v1, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 751
    .line 752
    .line 753
    move-result-object v6

    .line 754
    invoke-virtual {v6, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 755
    .line 756
    .line 757
    move-result-object v6

    .line 758
    invoke-virtual {v6, v11}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 759
    .line 760
    .line 761
    invoke-virtual {v1, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 762
    .line 763
    .line 764
    move-result-object v6

    .line 765
    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 766
    .line 767
    .line 768
    move-result-object v6

    .line 769
    move-object/from16 v7, v27

    .line 770
    .line 771
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 772
    .line 773
    .line 774
    move-result-object v6

    .line 775
    invoke-virtual {v6, v13}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 776
    .line 777
    .line 778
    move-result-object v6

    .line 779
    move-object/from16 v7, v24

    .line 780
    .line 781
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 782
    .line 783
    .line 784
    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 785
    .line 786
    .line 787
    move-result-object v6

    .line 788
    move-object/from16 v7, v21

    .line 789
    .line 790
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 791
    .line 792
    .line 793
    move-result-object v6

    .line 794
    move-object/from16 v7, v25

    .line 795
    .line 796
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 797
    .line 798
    .line 799
    move-result-object v6

    .line 800
    move-object/from16 v7, v28

    .line 801
    .line 802
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 803
    .line 804
    .line 805
    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 806
    .line 807
    .line 808
    move-result-object v6

    .line 809
    move-object/from16 v7, v22

    .line 810
    .line 811
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 812
    .line 813
    .line 814
    move-result-object v6

    .line 815
    move-object/from16 v7, v32

    .line 816
    .line 817
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 818
    .line 819
    .line 820
    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 821
    .line 822
    .line 823
    move-result-object v6

    .line 824
    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 825
    .line 826
    .line 827
    move-result-object v6

    .line 828
    move-object/from16 v7, v26

    .line 829
    .line 830
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 831
    .line 832
    .line 833
    move-result-object v6

    .line 834
    move-object/from16 v7, v29

    .line 835
    .line 836
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 837
    .line 838
    .line 839
    move-result-object v6

    .line 840
    move-object/from16 v7, v31

    .line 841
    .line 842
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 843
    .line 844
    .line 845
    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 846
    .line 847
    .line 848
    move-result-object v6

    .line 849
    move-object/from16 v7, v35

    .line 850
    .line 851
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 852
    .line 853
    .line 854
    move-result-object v6

    .line 855
    move-object/from16 v7, v30

    .line 856
    .line 857
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 858
    .line 859
    .line 860
    move-result-object v6

    .line 861
    move-object/from16 v7, v33

    .line 862
    .line 863
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 864
    .line 865
    .line 866
    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 867
    .line 868
    .line 869
    move-result-object v6

    .line 870
    move-object/from16 v7, v34

    .line 871
    .line 872
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 873
    .line 874
    .line 875
    move-result-object v6

    .line 876
    move-object/from16 v7, v19

    .line 877
    .line 878
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 879
    .line 880
    .line 881
    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 882
    .line 883
    .line 884
    move-result-object v6

    .line 885
    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 886
    .line 887
    .line 888
    move-result-object v6

    .line 889
    move-object/from16 v7, v18

    .line 890
    .line 891
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 892
    .line 893
    .line 894
    move-result-object v6

    .line 895
    move-object/from16 v7, v17

    .line 896
    .line 897
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 898
    .line 899
    .line 900
    move-result-object v6

    .line 901
    move-object/from16 v7, v37

    .line 902
    .line 903
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 904
    .line 905
    .line 906
    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 907
    .line 908
    .line 909
    move-result-object v6

    .line 910
    move-object/from16 v7, v36

    .line 911
    .line 912
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 913
    .line 914
    .line 915
    move-result-object v6

    .line 916
    invoke-virtual {v6, v3}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 917
    .line 918
    .line 919
    move-result-object v3

    .line 920
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 921
    .line 922
    .line 923
    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 924
    .line 925
    .line 926
    move-result-object v3

    .line 927
    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 928
    .line 929
    .line 930
    move-result-object v3

    .line 931
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 932
    .line 933
    .line 934
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 935
    .line 936
    .line 937
    move-result-object v0

    .line 938
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 939
    .line 940
    .line 941
    return-object v1

    .line 942
    nop

    .line 943
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    :array_6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    :array_7
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    :array_8
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    :array_9
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    :array_a
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_b
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_d
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_e
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_f
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_10
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_11
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_12
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_13
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_14
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_15
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_16
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_17
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected getAnimationDelayTime()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getInteractionView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method protected final oa()V
    .locals 0

    return-void
.end method

.method protected final ob()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Ma:Landroid/widget/ImageView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Md:Landroid/widget/ImageView;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Mc:Landroid/widget/ImageView;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Me:Landroid/widget/ImageView;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Mb:Landroid/widget/ImageView;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->LZ:Landroid/widget/ImageView;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
