.class public Lcom/facebook/drawee/generic/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "gdhAttrs",
            "attrId"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :goto_0
    return-object p0
.end method

.method private static b(Lcom/facebook/drawee/generic/b;)Lcom/facebook/drawee/generic/RoundingParams;
    .locals 1
    .annotation build Lcom/facebook/infer/annotation/ReturnsOwnership;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/drawee/generic/b;->r()Lcom/facebook/drawee/generic/RoundingParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/facebook/drawee/generic/RoundingParams;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/facebook/drawee/generic/RoundingParams;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/facebook/drawee/generic/b;->Y(Lcom/facebook/drawee/generic/RoundingParams;)Lcom/facebook/drawee/generic/b;

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/drawee/generic/b;->r()Lcom/facebook/drawee/generic/RoundingParams;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method private static c(Landroid/content/res/TypedArray;I)Lcom/facebook/drawee/drawable/s$c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gdhAttrs",
            "attrId"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, -0x2

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    packed-switch p0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    new-instance p0, Ljava/lang/RuntimeException;

    .line 10
    .line 11
    const-string p1, "XML attribute not specified!"

    .line 12
    .line 13
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p0

    .line 17
    :pswitch_0
    sget-object p0, Lcom/facebook/drawee/drawable/s$c;->k:Lcom/facebook/drawee/drawable/s$c;

    .line 18
    .line 19
    return-object p0

    .line 20
    :pswitch_1
    sget-object p0, Lcom/facebook/drawee/drawable/s$c;->j:Lcom/facebook/drawee/drawable/s$c;

    .line 21
    .line 22
    return-object p0

    .line 23
    :pswitch_2
    sget-object p0, Lcom/facebook/drawee/drawable/s$c;->i:Lcom/facebook/drawee/drawable/s$c;

    .line 24
    .line 25
    return-object p0

    .line 26
    :pswitch_3
    sget-object p0, Lcom/facebook/drawee/drawable/s$c;->h:Lcom/facebook/drawee/drawable/s$c;

    .line 27
    .line 28
    return-object p0

    .line 29
    :pswitch_4
    sget-object p0, Lcom/facebook/drawee/drawable/s$c;->g:Lcom/facebook/drawee/drawable/s$c;

    .line 30
    .line 31
    return-object p0

    .line 32
    :pswitch_5
    sget-object p0, Lcom/facebook/drawee/drawable/s$c;->f:Lcom/facebook/drawee/drawable/s$c;

    .line 33
    .line 34
    return-object p0

    .line 35
    :pswitch_6
    sget-object p0, Lcom/facebook/drawee/drawable/s$c;->e:Lcom/facebook/drawee/drawable/s$c;

    .line 36
    .line 37
    return-object p0

    .line 38
    :pswitch_7
    sget-object p0, Lcom/facebook/drawee/drawable/s$c;->d:Lcom/facebook/drawee/drawable/s$c;

    .line 39
    .line 40
    return-object p0

    .line 41
    :pswitch_8
    sget-object p0, Lcom/facebook/drawee/drawable/s$c;->a:Lcom/facebook/drawee/drawable/s$c;

    .line 42
    .line 43
    return-object p0

    .line 44
    :pswitch_9
    const/4 p0, 0x0

    .line 45
    return-object p0

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static d(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/facebook/drawee/generic/b;
    .locals 2
    .param p1    # Landroid/util/AttributeSet;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "GenericDraweeHierarchyBuilder#inflateBuilder"

    .line 8
    .line 9
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Lcom/facebook/drawee/generic/b;

    .line 17
    .line 18
    invoke-direct {v1, v0}, Lcom/facebook/drawee/generic/b;-><init>(Landroid/content/res/Resources;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v1, p0, p1}, Lcom/facebook/drawee/generic/c;->f(Lcom/facebook/drawee/generic/b;Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/facebook/drawee/generic/b;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-object p0
.end method

.method public static e(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/facebook/drawee/generic/a;
    .locals 0
    .param p1    # Landroid/util/AttributeSet;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/facebook/drawee/generic/c;->d(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/facebook/drawee/generic/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/facebook/drawee/generic/b;->a()Lcom/facebook/drawee/generic/a;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static f(Lcom/facebook/drawee/generic/b;Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/facebook/drawee/generic/b;
    .locals 17
    .param p2    # Landroid/util/AttributeSet;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "builder",
            "context",
            "attrs"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    if-eqz v2, :cond_26

    .line 8
    .line 9
    sget-object v6, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy:[I

    .line 10
    .line 11
    invoke-virtual {v1, v2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    :try_start_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 16
    .line 17
    .line 18
    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v7, 0x0

    .line 21
    const/4 v8, 0x1

    .line 22
    const/4 v9, 0x1

    .line 23
    const/4 v10, 0x1

    .line 24
    const/4 v11, 0x1

    .line 25
    const/4 v12, 0x1

    .line 26
    const/4 v13, 0x1

    .line 27
    const/4 v14, 0x1

    .line 28
    const/4 v15, 0x1

    .line 29
    const/16 v16, 0x0

    .line 30
    .line 31
    :goto_0
    if-ge v7, v6, :cond_1d

    .line 32
    .line 33
    :try_start_1
    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    sget v4, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_actualImageScaleType:I

    .line 38
    .line 39
    if-ne v3, v4, :cond_0

    .line 40
    .line 41
    invoke-static {v2, v3}, Lcom/facebook/drawee/generic/c;->c(Landroid/content/res/TypedArray;I)Lcom/facebook/drawee/drawable/s$c;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v0, v3}, Lcom/facebook/drawee/generic/b;->x(Lcom/facebook/drawee/drawable/s$c;)Lcom/facebook/drawee/generic/b;

    .line 46
    .line 47
    .line 48
    goto/16 :goto_1

    .line 49
    .line 50
    :cond_0
    sget v4, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_placeholderImage:I

    .line 51
    .line 52
    if-ne v3, v4, :cond_1

    .line 53
    .line 54
    invoke-static {v1, v2, v3}, Lcom/facebook/drawee/generic/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v0, v3}, Lcom/facebook/drawee/generic/b;->K(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/generic/b;

    .line 59
    .line 60
    .line 61
    goto/16 :goto_1

    .line 62
    .line 63
    :cond_1
    sget v4, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_pressedStateOverlayImage:I

    .line 64
    .line 65
    if-ne v3, v4, :cond_2

    .line 66
    .line 67
    invoke-static {v1, v2, v3}, Lcom/facebook/drawee/generic/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v0, v3}, Lcom/facebook/drawee/generic/b;->N(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/generic/b;

    .line 72
    .line 73
    .line 74
    goto/16 :goto_1

    .line 75
    .line 76
    :cond_2
    sget v4, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_progressBarImage:I

    .line 77
    .line 78
    if-ne v3, v4, :cond_3

    .line 79
    .line 80
    invoke-static {v1, v2, v3}, Lcom/facebook/drawee/generic/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v0, v3}, Lcom/facebook/drawee/generic/b;->Q(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/generic/b;

    .line 85
    .line 86
    .line 87
    goto/16 :goto_1

    .line 88
    .line 89
    :cond_3
    sget v4, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_fadeDuration:I

    .line 90
    .line 91
    if-ne v3, v4, :cond_4

    .line 92
    .line 93
    const/4 v4, 0x0

    .line 94
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    invoke-virtual {v0, v3}, Lcom/facebook/drawee/generic/b;->A(I)Lcom/facebook/drawee/generic/b;

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_4
    sget v4, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_viewAspectRatio:I

    .line 103
    .line 104
    if-ne v3, v4, :cond_5

    .line 105
    .line 106
    const/4 v4, 0x0

    .line 107
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    invoke-virtual {v0, v3}, Lcom/facebook/drawee/generic/b;->z(F)Lcom/facebook/drawee/generic/b;

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_5
    sget v4, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_placeholderImageScaleType:I

    .line 116
    .line 117
    if-ne v3, v4, :cond_6

    .line 118
    .line 119
    invoke-static {v2, v3}, Lcom/facebook/drawee/generic/c;->c(Landroid/content/res/TypedArray;I)Lcom/facebook/drawee/drawable/s$c;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-virtual {v0, v3}, Lcom/facebook/drawee/generic/b;->M(Lcom/facebook/drawee/drawable/s$c;)Lcom/facebook/drawee/generic/b;

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_6
    sget v4, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_retryImage:I

    .line 128
    .line 129
    if-ne v3, v4, :cond_7

    .line 130
    .line 131
    invoke-static {v1, v2, v3}, Lcom/facebook/drawee/generic/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {v0, v3}, Lcom/facebook/drawee/generic/b;->V(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/generic/b;

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_7
    sget v4, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_retryImageScaleType:I

    .line 140
    .line 141
    if-ne v3, v4, :cond_8

    .line 142
    .line 143
    invoke-static {v2, v3}, Lcom/facebook/drawee/generic/c;->c(Landroid/content/res/TypedArray;I)Lcom/facebook/drawee/drawable/s$c;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-virtual {v0, v3}, Lcom/facebook/drawee/generic/b;->X(Lcom/facebook/drawee/drawable/s$c;)Lcom/facebook/drawee/generic/b;

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_8
    sget v4, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_failureImage:I

    .line 152
    .line 153
    if-ne v3, v4, :cond_9

    .line 154
    .line 155
    invoke-static {v1, v2, v3}, Lcom/facebook/drawee/generic/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-virtual {v0, v3}, Lcom/facebook/drawee/generic/b;->D(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/generic/b;

    .line 160
    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_9
    sget v4, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_failureImageScaleType:I

    .line 164
    .line 165
    if-ne v3, v4, :cond_a

    .line 166
    .line 167
    invoke-static {v2, v3}, Lcom/facebook/drawee/generic/c;->c(Landroid/content/res/TypedArray;I)Lcom/facebook/drawee/drawable/s$c;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    invoke-virtual {v0, v3}, Lcom/facebook/drawee/generic/b;->F(Lcom/facebook/drawee/drawable/s$c;)Lcom/facebook/drawee/generic/b;

    .line 172
    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_a
    sget v4, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_progressBarImageScaleType:I

    .line 176
    .line 177
    if-ne v3, v4, :cond_b

    .line 178
    .line 179
    invoke-static {v2, v3}, Lcom/facebook/drawee/generic/c;->c(Landroid/content/res/TypedArray;I)Lcom/facebook/drawee/drawable/s$c;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    invoke-virtual {v0, v3}, Lcom/facebook/drawee/generic/b;->S(Lcom/facebook/drawee/drawable/s$c;)Lcom/facebook/drawee/generic/b;

    .line 184
    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_b
    sget v4, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_progressBarAutoRotateInterval:I

    .line 188
    .line 189
    if-ne v3, v4, :cond_d

    .line 190
    .line 191
    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 192
    .line 193
    .line 194
    move-result v5

    .line 195
    :cond_c
    :goto_1
    const/4 v4, 0x0

    .line 196
    goto/16 :goto_3

    .line 197
    .line 198
    :cond_d
    sget v4, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_backgroundImage:I

    .line 199
    .line 200
    if-ne v3, v4, :cond_e

    .line 201
    .line 202
    invoke-static {v1, v2, v3}, Lcom/facebook/drawee/generic/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    invoke-virtual {v0, v3}, Lcom/facebook/drawee/generic/b;->y(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/generic/b;

    .line 207
    .line 208
    .line 209
    goto :goto_1

    .line 210
    :cond_e
    sget v4, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_overlayImage:I

    .line 211
    .line 212
    if-ne v3, v4, :cond_f

    .line 213
    .line 214
    invoke-static {v1, v2, v3}, Lcom/facebook/drawee/generic/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    invoke-virtual {v0, v3}, Lcom/facebook/drawee/generic/b;->G(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/generic/b;

    .line 219
    .line 220
    .line 221
    goto :goto_1

    .line 222
    :cond_f
    sget v4, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_roundAsCircle:I

    .line 223
    .line 224
    if-ne v3, v4, :cond_10

    .line 225
    .line 226
    invoke-static/range {p0 .. p0}, Lcom/facebook/drawee/generic/c;->b(Lcom/facebook/drawee/generic/b;)Lcom/facebook/drawee/generic/RoundingParams;

    .line 227
    .line 228
    .line 229
    move-result-object v4

    .line 230
    const/4 v1, 0x0

    .line 231
    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 232
    .line 233
    .line 234
    move-result v3

    .line 235
    invoke-virtual {v4, v3}, Lcom/facebook/drawee/generic/RoundingParams;->x(Z)Lcom/facebook/drawee/generic/RoundingParams;

    .line 236
    .line 237
    .line 238
    goto :goto_1

    .line 239
    :cond_10
    sget v1, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_roundedCornerRadius:I

    .line 240
    .line 241
    if-ne v3, v1, :cond_11

    .line 242
    .line 243
    move/from16 v4, v16

    .line 244
    .line 245
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 246
    .line 247
    .line 248
    move-result v16

    .line 249
    goto :goto_1

    .line 250
    :cond_11
    move/from16 v4, v16

    .line 251
    .line 252
    sget v1, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_roundTopLeft:I

    .line 253
    .line 254
    if-ne v3, v1, :cond_12

    .line 255
    .line 256
    invoke-virtual {v2, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 257
    .line 258
    .line 259
    move-result v8

    .line 260
    :goto_2
    move/from16 v16, v4

    .line 261
    .line 262
    goto :goto_1

    .line 263
    :cond_12
    sget v1, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_roundTopRight:I

    .line 264
    .line 265
    if-ne v3, v1, :cond_13

    .line 266
    .line 267
    invoke-virtual {v2, v3, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 268
    .line 269
    .line 270
    move-result v10

    .line 271
    goto :goto_2

    .line 272
    :cond_13
    sget v1, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_roundBottomLeft:I

    .line 273
    .line 274
    if-ne v3, v1, :cond_14

    .line 275
    .line 276
    invoke-virtual {v2, v3, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 277
    .line 278
    .line 279
    move-result v14

    .line 280
    goto :goto_2

    .line 281
    :cond_14
    sget v1, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_roundBottomRight:I

    .line 282
    .line 283
    if-ne v3, v1, :cond_15

    .line 284
    .line 285
    invoke-virtual {v2, v3, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 286
    .line 287
    .line 288
    move-result v12

    .line 289
    goto :goto_2

    .line 290
    :cond_15
    sget v1, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_roundTopStart:I

    .line 291
    .line 292
    if-ne v3, v1, :cond_16

    .line 293
    .line 294
    invoke-virtual {v2, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 295
    .line 296
    .line 297
    move-result v9

    .line 298
    goto :goto_2

    .line 299
    :cond_16
    sget v1, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_roundTopEnd:I

    .line 300
    .line 301
    if-ne v3, v1, :cond_17

    .line 302
    .line 303
    invoke-virtual {v2, v3, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 304
    .line 305
    .line 306
    move-result v11

    .line 307
    goto :goto_2

    .line 308
    :cond_17
    sget v1, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_roundBottomStart:I

    .line 309
    .line 310
    if-ne v3, v1, :cond_18

    .line 311
    .line 312
    invoke-virtual {v2, v3, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 313
    .line 314
    .line 315
    move-result v15

    .line 316
    goto :goto_2

    .line 317
    :cond_18
    sget v1, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_roundBottomEnd:I

    .line 318
    .line 319
    if-ne v3, v1, :cond_19

    .line 320
    .line 321
    invoke-virtual {v2, v3, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 322
    .line 323
    .line 324
    move-result v13

    .line 325
    goto :goto_2

    .line 326
    :cond_19
    sget v1, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_roundWithOverlayColor:I

    .line 327
    .line 328
    if-ne v3, v1, :cond_1a

    .line 329
    .line 330
    invoke-static/range {p0 .. p0}, Lcom/facebook/drawee/generic/c;->b(Lcom/facebook/drawee/generic/b;)Lcom/facebook/drawee/generic/RoundingParams;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    move/from16 v16, v4

    .line 335
    .line 336
    const/4 v4, 0x0

    .line 337
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 338
    .line 339
    .line 340
    move-result v3

    .line 341
    invoke-virtual {v1, v3}, Lcom/facebook/drawee/generic/RoundingParams;->u(I)Lcom/facebook/drawee/generic/RoundingParams;

    .line 342
    .line 343
    .line 344
    goto/16 :goto_1

    .line 345
    .line 346
    :cond_1a
    move/from16 v16, v4

    .line 347
    .line 348
    sget v1, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_roundingBorderWidth:I

    .line 349
    .line 350
    if-ne v3, v1, :cond_1b

    .line 351
    .line 352
    invoke-static/range {p0 .. p0}, Lcom/facebook/drawee/generic/c;->b(Lcom/facebook/drawee/generic/b;)Lcom/facebook/drawee/generic/RoundingParams;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    const/4 v4, 0x0

    .line 357
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 358
    .line 359
    .line 360
    move-result v3

    .line 361
    int-to-float v3, v3

    .line 362
    invoke-virtual {v1, v3}, Lcom/facebook/drawee/generic/RoundingParams;->q(F)Lcom/facebook/drawee/generic/RoundingParams;

    .line 363
    .line 364
    .line 365
    goto/16 :goto_1

    .line 366
    .line 367
    :cond_1b
    sget v1, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_roundingBorderColor:I

    .line 368
    .line 369
    if-ne v3, v1, :cond_1c

    .line 370
    .line 371
    invoke-static/range {p0 .. p0}, Lcom/facebook/drawee/generic/c;->b(Lcom/facebook/drawee/generic/b;)Lcom/facebook/drawee/generic/RoundingParams;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    const/4 v4, 0x0

    .line 376
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 377
    .line 378
    .line 379
    move-result v3

    .line 380
    invoke-virtual {v1, v3}, Lcom/facebook/drawee/generic/RoundingParams;->p(I)Lcom/facebook/drawee/generic/RoundingParams;

    .line 381
    .line 382
    .line 383
    goto/16 :goto_1

    .line 384
    .line 385
    :cond_1c
    sget v1, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_roundingBorderPadding:I

    .line 386
    .line 387
    if-ne v3, v1, :cond_c

    .line 388
    .line 389
    invoke-static/range {p0 .. p0}, Lcom/facebook/drawee/generic/c;->b(Lcom/facebook/drawee/generic/b;)Lcom/facebook/drawee/generic/RoundingParams;

    .line 390
    .line 391
    .line 392
    move-result-object v1

    .line 393
    const/4 v4, 0x0

    .line 394
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 395
    .line 396
    .line 397
    move-result v3

    .line 398
    int-to-float v3, v3

    .line 399
    invoke-virtual {v1, v3}, Lcom/facebook/drawee/generic/RoundingParams;->v(F)Lcom/facebook/drawee/generic/RoundingParams;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 400
    .line 401
    .line 402
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 403
    .line 404
    move-object/from16 v1, p1

    .line 405
    .line 406
    goto/16 :goto_0

    .line 407
    .line 408
    :catchall_0
    move-exception v0

    .line 409
    goto/16 :goto_b

    .line 410
    .line 411
    :cond_1d
    const/4 v4, 0x0

    .line 412
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 413
    .line 414
    .line 415
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 420
    .line 421
    .line 422
    move-result-object v1

    .line 423
    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 424
    .line 425
    .line 426
    move-result v1

    .line 427
    const/4 v2, 0x1

    .line 428
    if-ne v1, v2, :cond_21

    .line 429
    .line 430
    if-eqz v8, :cond_1e

    .line 431
    .line 432
    if-eqz v11, :cond_1e

    .line 433
    .line 434
    const/4 v1, 0x1

    .line 435
    goto :goto_4

    .line 436
    :cond_1e
    const/4 v1, 0x0

    .line 437
    :goto_4
    if-eqz v10, :cond_1f

    .line 438
    .line 439
    if-eqz v9, :cond_1f

    .line 440
    .line 441
    const/4 v2, 0x1

    .line 442
    goto :goto_5

    .line 443
    :cond_1f
    const/4 v2, 0x0

    .line 444
    :goto_5
    if-eqz v12, :cond_20

    .line 445
    .line 446
    if-eqz v15, :cond_20

    .line 447
    .line 448
    const/4 v3, 0x1

    .line 449
    goto :goto_6

    .line 450
    :cond_20
    const/4 v3, 0x0

    .line 451
    :goto_6
    if-eqz v14, :cond_25

    .line 452
    .line 453
    if-eqz v13, :cond_25

    .line 454
    .line 455
    goto :goto_a

    .line 456
    :cond_21
    if-eqz v8, :cond_22

    .line 457
    .line 458
    if-eqz v9, :cond_22

    .line 459
    .line 460
    const/4 v1, 0x1

    .line 461
    goto :goto_7

    .line 462
    :cond_22
    const/4 v1, 0x0

    .line 463
    :goto_7
    if-eqz v10, :cond_23

    .line 464
    .line 465
    if-eqz v11, :cond_23

    .line 466
    .line 467
    const/4 v2, 0x1

    .line 468
    goto :goto_8

    .line 469
    :cond_23
    const/4 v2, 0x0

    .line 470
    :goto_8
    if-eqz v12, :cond_24

    .line 471
    .line 472
    if-eqz v13, :cond_24

    .line 473
    .line 474
    const/4 v3, 0x1

    .line 475
    goto :goto_9

    .line 476
    :cond_24
    const/4 v3, 0x0

    .line 477
    :goto_9
    if-eqz v14, :cond_25

    .line 478
    .line 479
    if-eqz v15, :cond_25

    .line 480
    .line 481
    :goto_a
    const/4 v4, 0x1

    .line 482
    :cond_25
    move v6, v4

    .line 483
    move v4, v5

    .line 484
    move v5, v1

    .line 485
    move/from16 v1, v16

    .line 486
    .line 487
    goto :goto_c

    .line 488
    :catchall_1
    move-exception v0

    .line 489
    const/4 v8, 0x1

    .line 490
    const/4 v9, 0x1

    .line 491
    const/4 v10, 0x1

    .line 492
    const/4 v11, 0x1

    .line 493
    const/4 v12, 0x1

    .line 494
    const/4 v13, 0x1

    .line 495
    const/4 v14, 0x1

    .line 496
    const/4 v15, 0x1

    .line 497
    :goto_b
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 498
    .line 499
    .line 500
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 501
    .line 502
    .line 503
    move-result-object v1

    .line 504
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 505
    .line 506
    .line 507
    move-result-object v1

    .line 508
    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 509
    .line 510
    .line 511
    move-result v1

    .line 512
    const/4 v2, 0x1

    .line 513
    throw v0

    .line 514
    :cond_26
    const/4 v2, 0x1

    .line 515
    const/4 v4, 0x0

    .line 516
    const/4 v1, 0x0

    .line 517
    const/4 v3, 0x1

    .line 518
    const/4 v5, 0x1

    .line 519
    const/4 v6, 0x1

    .line 520
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/drawee/generic/b;->n()Landroid/graphics/drawable/Drawable;

    .line 521
    .line 522
    .line 523
    move-result-object v7

    .line 524
    if-eqz v7, :cond_27

    .line 525
    .line 526
    if-lez v4, :cond_27

    .line 527
    .line 528
    new-instance v7, Lcom/facebook/drawee/drawable/b;

    .line 529
    .line 530
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/drawee/generic/b;->n()Landroid/graphics/drawable/Drawable;

    .line 531
    .line 532
    .line 533
    move-result-object v8

    .line 534
    invoke-direct {v7, v8, v4}, Lcom/facebook/drawee/drawable/b;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v0, v7}, Lcom/facebook/drawee/generic/b;->Q(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/generic/b;

    .line 538
    .line 539
    .line 540
    :cond_27
    if-lez v1, :cond_2c

    .line 541
    .line 542
    invoke-static/range {p0 .. p0}, Lcom/facebook/drawee/generic/c;->b(Lcom/facebook/drawee/generic/b;)Lcom/facebook/drawee/generic/RoundingParams;

    .line 543
    .line 544
    .line 545
    move-result-object v4

    .line 546
    if-eqz v5, :cond_28

    .line 547
    .line 548
    int-to-float v5, v1

    .line 549
    goto :goto_d

    .line 550
    :cond_28
    const/4 v5, 0x0

    .line 551
    :goto_d
    if-eqz v2, :cond_29

    .line 552
    .line 553
    int-to-float v2, v1

    .line 554
    goto :goto_e

    .line 555
    :cond_29
    const/4 v2, 0x0

    .line 556
    :goto_e
    if-eqz v3, :cond_2a

    .line 557
    .line 558
    int-to-float v3, v1

    .line 559
    goto :goto_f

    .line 560
    :cond_2a
    const/4 v3, 0x0

    .line 561
    :goto_f
    if-eqz v6, :cond_2b

    .line 562
    .line 563
    int-to-float v1, v1

    .line 564
    goto :goto_10

    .line 565
    :cond_2b
    const/4 v1, 0x0

    .line 566
    :goto_10
    invoke-virtual {v4, v5, v2, v3, v1}, Lcom/facebook/drawee/generic/RoundingParams;->r(FFFF)Lcom/facebook/drawee/generic/RoundingParams;

    .line 567
    .line 568
    .line 569
    :cond_2c
    return-object v0
.end method
