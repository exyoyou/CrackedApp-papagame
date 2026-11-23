.class public final Lcom/alipay/sdk/widget/a$a;
.super Landroid/app/AlertDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/sdk/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Lcom/alipay/sdk/widget/a;


# direct methods
.method protected constructor <init>(Lcom/alipay/sdk/widget/a;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/sdk/widget/a$a;->b:Lcom/alipay/sdk/widget/a;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static a(Landroid/content/Context;F)I
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :goto_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 17
    .line 18
    mul-float p1, p1, p0

    .line 19
    .line 20
    float-to-int p0, p1

    .line 21
    return p0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 3
    .line 4
    invoke-static {p1}, Lv/a;->d(Ljava/lang/String;)[B

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    .line 10
    .line 11
    :try_start_1
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    .line 12
    .line 13
    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 14
    .line 15
    .line 16
    const/16 v2, 0x1e0

    .line 17
    .line 18
    iput v2, p1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 29
    .line 30
    iput v2, p1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 31
    .line 32
    invoke-static {v1, v0, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-direct {v2, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    .line 45
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 46
    .line 47
    .line 48
    :catch_0
    move-object v0, v2

    .line 49
    goto :goto_1

    .line 50
    :catchall_0
    nop

    .line 51
    goto :goto_0

    .line 52
    :catchall_1
    nop

    .line 53
    move-object v1, v0

    .line 54
    :goto_0
    if-eqz v1, :cond_0

    .line 55
    .line 56
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 57
    .line 58
    .line 59
    :catch_1
    :cond_0
    :goto_1
    return-object v0
.end method

.method private c(Landroid/content/Context;)Landroid/view/View;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    new-instance v2, Landroid/widget/LinearLayout;

    .line 6
    .line 7
    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 11
    .line 12
    const/high16 v4, 0x42480000    # 50.0f

    .line 13
    .line 14
    invoke-static {v1, v4}, Lcom/alipay/sdk/widget/a$a;->a(Landroid/content/Context;F)I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    const/4 v5, -0x2

    .line 19
    invoke-direct {v3, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 20
    .line 21
    .line 22
    const/16 v4, 0x11

    .line 23
    .line 24
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    .line 32
    .line 33
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    .line 34
    .line 35
    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 36
    .line 37
    .line 38
    const v6, -0x1ae0dcc9

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 42
    .line 43
    .line 44
    const/high16 v6, 0x40a00000    # 5.0f

    .line 45
    .line 46
    invoke-static {v1, v6}, Lcom/alipay/sdk/widget/a$a;->a(Landroid/content/Context;F)I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    int-to-float v6, v6

    .line 51
    invoke-virtual {v3, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    .line 56
    .line 57
    new-instance v3, Landroid/widget/ImageView;

    .line 58
    .line 59
    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 60
    .line 61
    .line 62
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 63
    .line 64
    const/high16 v7, 0x41a00000    # 20.0f

    .line 65
    .line 66
    invoke-static {v1, v7}, Lcom/alipay/sdk/widget/a$a;->a(Landroid/content/Context;F)I

    .line 67
    .line 68
    .line 69
    move-result v8

    .line 70
    invoke-static {v1, v7}, Lcom/alipay/sdk/widget/a$a;->a(Landroid/content/Context;F)I

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    invoke-direct {v6, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 75
    .line 76
    .line 77
    const/16 v7, 0x10

    .line 78
    .line 79
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 80
    .line 81
    iget-object v8, v0, Lcom/alipay/sdk/widget/a$a;->b:Lcom/alipay/sdk/widget/a;

    .line 82
    .line 83
    invoke-static {v8}, Lcom/alipay/sdk/widget/a;->a(Lcom/alipay/sdk/widget/a;)Landroid/app/Activity;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    const/high16 v9, 0x41880000    # 17.0f

    .line 88
    .line 89
    invoke-static {v8, v9}, Lcom/alipay/sdk/widget/a$a;->a(Landroid/content/Context;F)I

    .line 90
    .line 91
    .line 92
    move-result v8

    .line 93
    iget-object v10, v0, Lcom/alipay/sdk/widget/a$a;->b:Lcom/alipay/sdk/widget/a;

    .line 94
    .line 95
    invoke-static {v10}, Lcom/alipay/sdk/widget/a;->a(Lcom/alipay/sdk/widget/a;)Landroid/app/Activity;

    .line 96
    .line 97
    .line 98
    move-result-object v10

    .line 99
    const/high16 v11, 0x41200000    # 10.0f

    .line 100
    .line 101
    invoke-static {v10, v11}, Lcom/alipay/sdk/widget/a$a;->a(Landroid/content/Context;F)I

    .line 102
    .line 103
    .line 104
    move-result v10

    .line 105
    iget-object v12, v0, Lcom/alipay/sdk/widget/a$a;->b:Lcom/alipay/sdk/widget/a;

    .line 106
    .line 107
    invoke-static {v12}, Lcom/alipay/sdk/widget/a;->a(Lcom/alipay/sdk/widget/a;)Landroid/app/Activity;

    .line 108
    .line 109
    .line 110
    move-result-object v12

    .line 111
    const/high16 v13, 0x41000000    # 8.0f

    .line 112
    .line 113
    invoke-static {v12, v13}, Lcom/alipay/sdk/widget/a$a;->a(Landroid/content/Context;F)I

    .line 114
    .line 115
    .line 116
    move-result v12

    .line 117
    iget-object v13, v0, Lcom/alipay/sdk/widget/a$a;->b:Lcom/alipay/sdk/widget/a;

    .line 118
    .line 119
    invoke-static {v13}, Lcom/alipay/sdk/widget/a;->a(Lcom/alipay/sdk/widget/a;)Landroid/app/Activity;

    .line 120
    .line 121
    .line 122
    move-result-object v13

    .line 123
    invoke-static {v13, v11}, Lcom/alipay/sdk/widget/a$a;->a(Landroid/content/Context;F)I

    .line 124
    .line 125
    .line 126
    move-result v11

    .line 127
    invoke-virtual {v6, v8, v10, v12, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    .line 132
    .line 133
    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 134
    .line 135
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 136
    .line 137
    .line 138
    sget-object v6, Lcom/alipay/sdk/widget/a;->g:Ljava/lang/String;

    .line 139
    .line 140
    invoke-static {v1, v6}, Lcom/alipay/sdk/widget/a$a;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 145
    .line 146
    .line 147
    new-instance v6, Landroid/view/animation/RotateAnimation;

    .line 148
    .line 149
    const/4 v11, 0x0

    .line 150
    const v12, 0x43b38000    # 359.0f

    .line 151
    .line 152
    .line 153
    const/4 v13, 0x1

    .line 154
    const/high16 v14, 0x3f000000    # 0.5f

    .line 155
    .line 156
    const/4 v15, 0x1

    .line 157
    const/high16 v16, 0x3f000000    # 0.5f

    .line 158
    .line 159
    move-object v10, v6

    .line 160
    invoke-direct/range {v10 .. v16}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 161
    .line 162
    .line 163
    const/4 v8, -0x1

    .line 164
    invoke-virtual {v6, v8}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 165
    .line 166
    .line 167
    const-wide/16 v10, 0x384

    .line 168
    .line 169
    invoke-virtual {v6, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 170
    .line 171
    .line 172
    new-instance v10, Landroid/view/animation/LinearInterpolator;

    .line 173
    .line 174
    invoke-direct {v10}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v6, v10}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 181
    .line 182
    .line 183
    new-instance v6, Landroid/widget/TextView;

    .line 184
    .line 185
    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 186
    .line 187
    .line 188
    iget-object v10, v0, Lcom/alipay/sdk/widget/a$a;->b:Lcom/alipay/sdk/widget/a;

    .line 189
    .line 190
    invoke-static {v10}, Lcom/alipay/sdk/widget/a;->e(Lcom/alipay/sdk/widget/a;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v10

    .line 194
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 195
    .line 196
    .line 197
    move-result v10

    .line 198
    if-eqz v10, :cond_0

    .line 199
    .line 200
    const-string v10, "\u6b63\u5728\u52a0\u8f7d"

    .line 201
    .line 202
    goto :goto_0

    .line 203
    :cond_0
    iget-object v10, v0, Lcom/alipay/sdk/widget/a$a;->b:Lcom/alipay/sdk/widget/a;

    .line 204
    .line 205
    invoke-static {v10}, Lcom/alipay/sdk/widget/a;->e(Lcom/alipay/sdk/widget/a;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v10

    .line 209
    :goto_0
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    .line 211
    .line 212
    const/high16 v10, 0x41800000    # 16.0f

    .line 213
    .line 214
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 218
    .line 219
    .line 220
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 221
    .line 222
    invoke-direct {v8, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 223
    .line 224
    .line 225
    iput v7, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 226
    .line 227
    invoke-static {v1, v9}, Lcom/alipay/sdk/widget/a$a;->a(Landroid/content/Context;F)I

    .line 228
    .line 229
    .line 230
    move-result v1

    .line 231
    invoke-virtual {v8, v4, v4, v1, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v6, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 241
    .line 242
    .line 243
    return-object v2
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v2, Landroid/widget/LinearLayout;

    .line 11
    .line 12
    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 16
    .line 17
    const/high16 v4, 0x42480000    # 50.0f

    .line 18
    .line 19
    invoke-static {v1, v4}, Lcom/alipay/sdk/widget/a$a;->a(Landroid/content/Context;F)I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    const/4 v5, -0x2

    .line 24
    invoke-direct {v3, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 25
    .line 26
    .line 27
    const/16 v4, 0x11

    .line 28
    .line 29
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    .line 37
    .line 38
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    .line 39
    .line 40
    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 41
    .line 42
    .line 43
    const v6, -0x1ae0dcc9

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 47
    .line 48
    .line 49
    const/high16 v6, 0x40a00000    # 5.0f

    .line 50
    .line 51
    invoke-static {v1, v6}, Lcom/alipay/sdk/widget/a$a;->a(Landroid/content/Context;F)I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    int-to-float v6, v6

    .line 56
    invoke-virtual {v3, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    .line 61
    .line 62
    new-instance v3, Landroid/widget/ImageView;

    .line 63
    .line 64
    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 65
    .line 66
    .line 67
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 68
    .line 69
    const/high16 v7, 0x41a00000    # 20.0f

    .line 70
    .line 71
    invoke-static {v1, v7}, Lcom/alipay/sdk/widget/a$a;->a(Landroid/content/Context;F)I

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    invoke-static {v1, v7}, Lcom/alipay/sdk/widget/a$a;->a(Landroid/content/Context;F)I

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    invoke-direct {v6, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 80
    .line 81
    .line 82
    const/16 v7, 0x10

    .line 83
    .line 84
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 85
    .line 86
    iget-object v8, v0, Lcom/alipay/sdk/widget/a$a;->b:Lcom/alipay/sdk/widget/a;

    .line 87
    .line 88
    invoke-static {v8}, Lcom/alipay/sdk/widget/a;->a(Lcom/alipay/sdk/widget/a;)Landroid/app/Activity;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    const/high16 v9, 0x41880000    # 17.0f

    .line 93
    .line 94
    invoke-static {v8, v9}, Lcom/alipay/sdk/widget/a$a;->a(Landroid/content/Context;F)I

    .line 95
    .line 96
    .line 97
    move-result v8

    .line 98
    iget-object v10, v0, Lcom/alipay/sdk/widget/a$a;->b:Lcom/alipay/sdk/widget/a;

    .line 99
    .line 100
    invoke-static {v10}, Lcom/alipay/sdk/widget/a;->a(Lcom/alipay/sdk/widget/a;)Landroid/app/Activity;

    .line 101
    .line 102
    .line 103
    move-result-object v10

    .line 104
    const/high16 v11, 0x41200000    # 10.0f

    .line 105
    .line 106
    invoke-static {v10, v11}, Lcom/alipay/sdk/widget/a$a;->a(Landroid/content/Context;F)I

    .line 107
    .line 108
    .line 109
    move-result v10

    .line 110
    iget-object v12, v0, Lcom/alipay/sdk/widget/a$a;->b:Lcom/alipay/sdk/widget/a;

    .line 111
    .line 112
    invoke-static {v12}, Lcom/alipay/sdk/widget/a;->a(Lcom/alipay/sdk/widget/a;)Landroid/app/Activity;

    .line 113
    .line 114
    .line 115
    move-result-object v12

    .line 116
    const/high16 v13, 0x41000000    # 8.0f

    .line 117
    .line 118
    invoke-static {v12, v13}, Lcom/alipay/sdk/widget/a$a;->a(Landroid/content/Context;F)I

    .line 119
    .line 120
    .line 121
    move-result v12

    .line 122
    iget-object v13, v0, Lcom/alipay/sdk/widget/a$a;->b:Lcom/alipay/sdk/widget/a;

    .line 123
    .line 124
    invoke-static {v13}, Lcom/alipay/sdk/widget/a;->a(Lcom/alipay/sdk/widget/a;)Landroid/app/Activity;

    .line 125
    .line 126
    .line 127
    move-result-object v13

    .line 128
    invoke-static {v13, v11}, Lcom/alipay/sdk/widget/a$a;->a(Landroid/content/Context;F)I

    .line 129
    .line 130
    .line 131
    move-result v11

    .line 132
    invoke-virtual {v6, v8, v10, v12, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    .line 137
    .line 138
    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 139
    .line 140
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 141
    .line 142
    .line 143
    sget-object v6, Lcom/alipay/sdk/widget/a;->g:Ljava/lang/String;

    .line 144
    .line 145
    invoke-static {v1, v6}, Lcom/alipay/sdk/widget/a$a;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 150
    .line 151
    .line 152
    new-instance v6, Landroid/view/animation/RotateAnimation;

    .line 153
    .line 154
    const/4 v11, 0x0

    .line 155
    const v12, 0x43b38000    # 359.0f

    .line 156
    .line 157
    .line 158
    const/4 v13, 0x1

    .line 159
    const/high16 v14, 0x3f000000    # 0.5f

    .line 160
    .line 161
    const/4 v15, 0x1

    .line 162
    const/high16 v16, 0x3f000000    # 0.5f

    .line 163
    .line 164
    move-object v10, v6

    .line 165
    invoke-direct/range {v10 .. v16}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 166
    .line 167
    .line 168
    const/4 v8, -0x1

    .line 169
    invoke-virtual {v6, v8}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 170
    .line 171
    .line 172
    const-wide/16 v10, 0x384

    .line 173
    .line 174
    invoke-virtual {v6, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 175
    .line 176
    .line 177
    new-instance v10, Landroid/view/animation/LinearInterpolator;

    .line 178
    .line 179
    invoke-direct {v10}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v6, v10}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v3, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 186
    .line 187
    .line 188
    new-instance v6, Landroid/widget/TextView;

    .line 189
    .line 190
    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 191
    .line 192
    .line 193
    iget-object v10, v0, Lcom/alipay/sdk/widget/a$a;->b:Lcom/alipay/sdk/widget/a;

    .line 194
    .line 195
    invoke-static {v10}, Lcom/alipay/sdk/widget/a;->e(Lcom/alipay/sdk/widget/a;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v10

    .line 199
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 200
    .line 201
    .line 202
    move-result v10

    .line 203
    if-eqz v10, :cond_0

    .line 204
    .line 205
    const-string v10, "\u6b63\u5728\u52a0\u8f7d"

    .line 206
    .line 207
    goto :goto_0

    .line 208
    :cond_0
    iget-object v10, v0, Lcom/alipay/sdk/widget/a$a;->b:Lcom/alipay/sdk/widget/a;

    .line 209
    .line 210
    invoke-static {v10}, Lcom/alipay/sdk/widget/a;->e(Lcom/alipay/sdk/widget/a;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v10

    .line 214
    :goto_0
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    .line 216
    .line 217
    const/high16 v10, 0x41800000    # 16.0f

    .line 218
    .line 219
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 223
    .line 224
    .line 225
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 226
    .line 227
    invoke-direct {v8, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 228
    .line 229
    .line 230
    iput v7, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 231
    .line 232
    invoke-static {v1, v9}, Lcom/alipay/sdk/widget/a$a;->a(Landroid/content/Context;F)I

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    invoke-virtual {v8, v4, v4, v1, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v6, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 252
    .line 253
    .line 254
    return-void
.end method
