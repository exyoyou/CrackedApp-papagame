.class public Lcom/join/mgps/customview/ClipImageLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private b:Lcom/join/mgps/customview/ClipZoomImageView;

.field private c:Lcom/join/mgps/customview/ClipImageBorderView;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
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
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x2

    .line 5
    iput p2, p0, Lcom/join/mgps/customview/ClipImageLayout;->d:I

    .line 6
    .line 7
    new-instance p2, Lcom/join/mgps/customview/ClipZoomImageView;

    .line 8
    .line 9
    invoke-direct {p2, p1}, Lcom/join/mgps/customview/ClipZoomImageView;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, Lcom/join/mgps/customview/ClipImageLayout;->b:Lcom/join/mgps/customview/ClipZoomImageView;

    .line 13
    .line 14
    new-instance p2, Lcom/join/mgps/customview/ClipImageBorderView;

    .line 15
    .line 16
    invoke-direct {p2, p1}, Lcom/join/mgps/customview/ClipImageBorderView;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Lcom/join/mgps/customview/ClipImageLayout;->c:Lcom/join/mgps/customview/ClipImageBorderView;

    .line 20
    .line 21
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 22
    .line 23
    const/4 p2, -0x1

    .line 24
    invoke-direct {p1, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 25
    .line 26
    .line 27
    iget-object p2, p0, Lcom/join/mgps/customview/ClipImageLayout;->b:Lcom/join/mgps/customview/ClipZoomImageView;

    .line 28
    .line 29
    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    .line 31
    .line 32
    iget-object p2, p0, Lcom/join/mgps/customview/ClipImageLayout;->c:Lcom/join/mgps/customview/ClipImageBorderView;

    .line 33
    .line 34
    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    .line 36
    .line 37
    iget p1, p0, Lcom/join/mgps/customview/ClipImageLayout;->d:I

    .line 38
    .line 39
    int-to-float p1, p1

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    const/4 v0, 0x1

    .line 49
    invoke-static {v0, p1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    float-to-int p1, p1

    .line 54
    iput p1, p0, Lcom/join/mgps/customview/ClipImageLayout;->d:I

    .line 55
    .line 56
    iget-object p2, p0, Lcom/join/mgps/customview/ClipImageLayout;->b:Lcom/join/mgps/customview/ClipZoomImageView;

    .line 57
    .line 58
    invoke-virtual {p2, p1}, Lcom/join/mgps/customview/ClipZoomImageView;->setHorizontalPadding(I)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/join/mgps/customview/ClipImageLayout;->c:Lcom/join/mgps/customview/ClipImageBorderView;

    .line 62
    .line 63
    iget p2, p0, Lcom/join/mgps/customview/ClipImageLayout;->d:I

    .line 64
    .line 65
    invoke-virtual {p1, p2}, Lcom/join/mgps/customview/ClipImageBorderView;->setHorizontalPadding(I)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method private b(I)Landroid/graphics/BitmapFactory$Options;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inSampleSize"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 11
    .line 12
    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ClipImageLayout;->b:Lcom/join/mgps/customview/ClipZoomImageView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/ClipZoomImageView;->h()Landroid/graphics/Bitmap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "CaptureUri"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v2, "content://"

    .line 14
    .line 15
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    const/4 v3, 0x1

    .line 20
    const-string v4, "window"

    .line 21
    .line 22
    if-eqz v2, :cond_4

    .line 23
    .line 24
    :try_start_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    if-nez v2, :cond_1

    .line 41
    .line 42
    return-object v1

    .line 43
    :cond_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Landroid/view/WindowManager;

    .line 55
    .line 56
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    div-int/2addr v4, v5

    .line 69
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    div-int/2addr v2, v0

    .line 82
    if-le v4, v2, :cond_2

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    move v4, v2

    .line 86
    :goto_0
    if-nez v4, :cond_3

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    move v3, v4

    .line 90
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-direct {p0, v3}, Lcom/join/mgps/customview/ClipImageLayout;->b(I)Landroid/graphics/BitmapFactory$Options;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    invoke-static {p1, v1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 107
    .line 108
    .line 109
    return-object p2

    .line 110
    :cond_4
    new-instance p1, Ljava/io/File;

    .line 111
    .line 112
    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 120
    .line 121
    .line 122
    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 123
    :try_start_2
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    .line 124
    .line 125
    .line 126
    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    if-nez v0, :cond_6

    .line 128
    .line 129
    if-eqz p1, :cond_5

    .line 130
    .line 131
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :catch_0
    move-exception p1

    .line 136
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 137
    .line 138
    .line 139
    :cond_5
    :goto_2
    return-object v1

    .line 140
    :cond_6
    :try_start_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    check-cast v2, Landroid/view/WindowManager;

    .line 149
    .line 150
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    div-int/2addr v4, v5

    .line 163
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    div-int/2addr v0, v2

    .line 176
    if-le v4, v0, :cond_7

    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_7
    move v4, v0

    .line 180
    :goto_3
    if-nez v4, :cond_8

    .line 181
    .line 182
    goto :goto_4

    .line 183
    :cond_8
    move v3, v4

    .line 184
    :goto_4
    invoke-direct {p0, v3}, Lcom/join/mgps/customview/ClipImageLayout;->b(I)Landroid/graphics/BitmapFactory$Options;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 189
    .line 190
    .line 191
    move-result-object p2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 192
    if-eqz p1, :cond_9

    .line 193
    .line 194
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 195
    .line 196
    .line 197
    goto :goto_5

    .line 198
    :catch_1
    move-exception p1

    .line 199
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 200
    .line 201
    .line 202
    :cond_9
    :goto_5
    return-object p2

    .line 203
    :catchall_0
    move-exception p2

    .line 204
    move-object v1, p1

    .line 205
    move-object p1, p2

    .line 206
    goto :goto_8

    .line 207
    :catch_2
    move-exception p2

    .line 208
    move-object v6, p2

    .line 209
    move-object p2, p1

    .line 210
    move-object p1, v6

    .line 211
    goto :goto_6

    .line 212
    :catchall_1
    move-exception p1

    .line 213
    goto :goto_8

    .line 214
    :catch_3
    move-exception p1

    .line 215
    move-object p2, v1

    .line 216
    :goto_6
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 217
    .line 218
    .line 219
    if-eqz p2, :cond_a

    .line 220
    .line 221
    :try_start_7
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 222
    .line 223
    .line 224
    goto :goto_7

    .line 225
    :catch_4
    move-exception p1

    .line 226
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 227
    .line 228
    .line 229
    :cond_a
    :goto_7
    return-object v1

    .line 230
    :catchall_2
    move-exception p1

    .line 231
    move-object v1, p2

    .line 232
    :goto_8
    if-eqz v1, :cond_b

    .line 233
    .line 234
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 235
    .line 236
    .line 237
    goto :goto_9

    .line 238
    :catch_5
    move-exception p2

    .line 239
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 240
    .line 241
    .line 242
    :cond_b
    :goto_9
    throw p1
.end method

.method public getmClipImageView()Lcom/join/mgps/customview/ClipImageBorderView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ClipImageLayout;->c:Lcom/join/mgps/customview/ClipImageBorderView;

    .line 2
    .line 3
    return-object v0
.end method

.method public getmZoomImageView()Lcom/join/mgps/customview/ClipZoomImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ClipImageLayout;->b:Lcom/join/mgps/customview/ClipZoomImageView;

    .line 2
    .line 3
    return-object v0
.end method

.method public setHorizontalPadding(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mHorizontalPadding"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/ClipImageLayout;->d:I

    .line 2
    .line 3
    return-void
.end method

.method public setmClipImageView(Lcom/join/mgps/customview/ClipImageBorderView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mClipImageView"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ClipImageLayout;->c:Lcom/join/mgps/customview/ClipImageBorderView;

    .line 2
    .line 3
    return-void
.end method

.method public setmZoomImageView(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "CaptureUri"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Lcom/join/mgps/customview/ClipImageLayout;->b(I)Landroid/graphics/BitmapFactory$Options;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/join/mgps/customview/ClipImageLayout;->b:Lcom/join/mgps/customview/ClipZoomImageView;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
