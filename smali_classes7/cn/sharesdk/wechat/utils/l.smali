.class public Lcn/sharesdk/wechat/utils/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcn/sharesdk/wechat/utils/l;


# instance fields
.field private b:Lcn/sharesdk/wechat/utils/j;

.field private c:Lcn/sharesdk/wechat/utils/k;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcn/sharesdk/wechat/utils/j;

    .line 5
    .line 6
    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/j;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcn/sharesdk/wechat/utils/l;->b:Lcn/sharesdk/wechat/utils/j;

    .line 10
    .line 11
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;D)Landroid/graphics/Bitmap;
    .locals 4

    .line 259
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 260
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 261
    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    int-to-double v2, v0

    div-double/2addr v2, p2

    double-to-int v0, v2

    int-to-double v1, v1

    div-double/2addr v1, p2

    double-to-int p2, v1

    const/4 p3, 0x1

    .line 262
    invoke-static {p1, v0, p2, p3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public static a()Lcn/sharesdk/wechat/utils/l;
    .locals 1

    .line 11
    sget-object v0, Lcn/sharesdk/wechat/utils/l;->a:Lcn/sharesdk/wechat/utils/l;

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Lcn/sharesdk/wechat/utils/l;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/l;-><init>()V

    sput-object v0, Lcn/sharesdk/wechat/utils/l;->a:Lcn/sharesdk/wechat/utils/l;

    .line 13
    :cond_0
    sget-object v0, Lcn/sharesdk/wechat/utils/l;->a:Lcn/sharesdk/wechat/utils/l;

    return-object v0
.end method

.method static synthetic a(Lcn/sharesdk/wechat/utils/l;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/wechat/utils/l;->d:Ljava/lang/String;

    return-object p0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 224
    new-instance v0, Lcn/sharesdk/wechat/utils/WXEmojiObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXEmojiObject;-><init>()V

    const/4 v1, 0x0

    .line 225
    invoke-direct {p0, p1, p4, v1}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Z)[B

    move-result-object p1

    .line 226
    iput-object p1, v0, Lcn/sharesdk/wechat/utils/WXEmojiObject;->emojiData:[B

    .line 227
    new-instance p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {p4}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 228
    iput-object p2, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 229
    iput-object v0, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    .line 230
    iput-object p3, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 231
    iput-object p1, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    const-string p1, "emoji"

    .line 232
    invoke-direct {p0, p4, p1, p5, p6}, Lcn/sharesdk/wechat/utils/l;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/k;Lcn/sharesdk/framework/Platform$ShareParams;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 116
    new-instance v0, Lcn/sharesdk/wechat/utils/WXImageObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXImageObject;-><init>()V

    .line 117
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 118
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x55

    invoke-virtual {p4, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 119
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 120
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 121
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/wechat/utils/WXImageObject;->imageData:[B

    .line 122
    new-instance v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {v1}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 123
    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    if-eqz p5, :cond_0

    .line 124
    iput-object p2, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 125
    iput-object p3, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {p7}, Lcn/sharesdk/framework/InnerShareParams;->getEntranceMiniProgramUsername()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 127
    invoke-virtual {p7}, Lcn/sharesdk/framework/InnerShareParams;->getEntranceMiniProgramUsername()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcn/sharesdk/wechat/utils/WXImageObject;->entranceMiniProgramUsername:Ljava/lang/String;

    .line 128
    :cond_1
    invoke-virtual {p7}, Lcn/sharesdk/framework/InnerShareParams;->getEntranceMiniProgramPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 129
    invoke-virtual {p7}, Lcn/sharesdk/framework/InnerShareParams;->getEntranceMiniProgramPath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcn/sharesdk/wechat/utils/WXImageObject;->entranceMiniProgramPath:Ljava/lang/String;

    :cond_2
    :goto_0
    const/4 p2, 0x0

    .line 130
    invoke-direct {p0, p1, p4, p2}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Z)[B

    move-result-object p1

    iput-object p1, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    const-string p1, "img"

    .line 131
    invoke-direct {p0, v1, p1, p5, p6}, Lcn/sharesdk/wechat/utils/l;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 212
    new-instance v0, Lcn/sharesdk/wechat/utils/WXEmojiObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXEmojiObject;-><init>()V

    .line 213
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 214
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0, v1}, Lcn/sharesdk/wechat/utils/l;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 216
    iput-object v1, v0, Lcn/sharesdk/wechat/utils/WXEmojiObject;->emojiPath:Ljava/lang/String;

    goto :goto_0

    .line 217
    :cond_0
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXEmojiObject;->emojiPath:Ljava/lang/String;

    .line 218
    :goto_0
    new-instance v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {v1}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 219
    iput-object p2, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 220
    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    .line 221
    iput-object p3, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    const/4 p2, 0x0

    .line 222
    invoke-direct {p0, p1, p4, p2}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Ljava/lang/String;Z)[B

    move-result-object p1

    iput-object p1, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    const-string p1, "emoji"

    .line 223
    invoke-direct {p0, v1, p1, p5, p6}, Lcn/sharesdk/wechat/utils/l;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;Lcn/sharesdk/framework/Platform$ShareParams;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 113
    :try_start_0
    new-instance v4, Lcn/sharesdk/wechat/utils/WXImageObject;

    invoke-direct {v4}, Lcn/sharesdk/wechat/utils/WXImageObject;-><init>()V

    .line 114
    new-instance v0, Lcn/sharesdk/wechat/utils/l$6;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p4

    move-object/from16 v5, p6

    move/from16 v6, p5

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p7

    move-object v10, p1

    invoke-direct/range {v1 .. v10}, Lcn/sharesdk/wechat/utils/l$6;-><init>(Lcn/sharesdk/wechat/utils/l;Ljava/lang/String;Lcn/sharesdk/wechat/utils/WXImageObject;Lcn/sharesdk/wechat/utils/k;ILjava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/Platform$ShareParams;Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v1, p0

    :try_start_1
    invoke-virtual {p0, v0}, Lcn/sharesdk/wechat/utils/l;->d(Lcn/sharesdk/framework/ShareSDKCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, p0

    .line 115
    :goto_0
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 158
    new-instance v0, Lcn/sharesdk/wechat/utils/WXVideoObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXVideoObject;-><init>()V

    .line 159
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXVideoObject;->videoUrl:Ljava/lang/String;

    .line 160
    new-instance p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {p4}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 161
    iput-object p2, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 162
    iput-object p3, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 163
    iput-object v0, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    const/4 p2, 0x0

    .line 164
    invoke-direct {p0, p1, p5, p2}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Z)[B

    move-result-object p1

    iput-object p1, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    const-string p1, "video"

    .line 165
    invoke-direct {p0, p4, p1, p6, p7}, Lcn/sharesdk/wechat/utils/l;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 150
    new-instance v0, Lcn/sharesdk/wechat/utils/WXVideoObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXVideoObject;-><init>()V

    .line 151
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXVideoObject;->videoUrl:Ljava/lang/String;

    .line 152
    new-instance p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {p4}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 153
    iput-object p2, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 154
    iput-object p3, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 155
    iput-object v0, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    const/4 p2, 0x0

    .line 156
    invoke-direct {p0, p1, p5, p2}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Ljava/lang/String;Z)[B

    move-result-object p1

    iput-object p1, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    const-string p1, "video"

    .line 157
    invoke-direct {p0, p4, p1, p6, p7}, Lcn/sharesdk/wechat/utils/l;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 141
    new-instance v0, Lcn/sharesdk/wechat/utils/WXMusicObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXMusicObject;-><init>()V

    .line 142
    iput-object p5, v0, Lcn/sharesdk/wechat/utils/WXMusicObject;->musicUrl:Ljava/lang/String;

    .line 143
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXMusicObject;->musicDataUrl:Ljava/lang/String;

    .line 144
    new-instance p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {p4}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 145
    iput-object p2, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 146
    iput-object p3, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 147
    iput-object v0, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    const/4 p2, 0x0

    .line 148
    invoke-direct {p0, p1, p6, p2}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Z)[B

    move-result-object p1

    iput-object p1, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    const-string p1, "music"

    .line 149
    invoke-direct {p0, p4, p1, p7, p8}, Lcn/sharesdk/wechat/utils/l;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 132
    new-instance v0, Lcn/sharesdk/wechat/utils/WXMusicObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXMusicObject;-><init>()V

    .line 133
    iput-object p5, v0, Lcn/sharesdk/wechat/utils/WXMusicObject;->musicUrl:Ljava/lang/String;

    .line 134
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXMusicObject;->musicDataUrl:Ljava/lang/String;

    .line 135
    new-instance p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {p4}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 136
    iput-object p2, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 137
    iput-object p3, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 138
    iput-object v0, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    const/4 p2, 0x0

    .line 139
    invoke-direct {p0, p1, p6, p2}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Ljava/lang/String;Z)[B

    move-result-object p1

    iput-object p1, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    const-string p1, "music"

    .line 140
    invoke-direct {p0, p4, p1, p7, p8}, Lcn/sharesdk/wechat/utils/l;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 166
    new-instance v0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;-><init>()V

    .line 167
    iput-object p2, v0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->webpageUrl:Ljava/lang/String;

    .line 168
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v1, "@app"

    if-nez p2, :cond_0

    invoke-virtual {p3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 169
    iput-object p3, v0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->userName:Ljava/lang/String;

    goto :goto_0

    .line 170
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->userName:Ljava/lang/String;

    .line 171
    :goto_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p3, 0x1

    if-nez p2, :cond_2

    const-string p2, "\\?"

    .line 172
    invoke-virtual {p4, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length p4, p2

    const/4 v1, 0x0

    if-le p4, p3, :cond_1

    .line 173
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p2, v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".html?"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, p2, p3

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 174
    :cond_1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p2, p2, v1

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".html"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 175
    :goto_1
    iput-object p2, v0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->path:Ljava/lang/String;

    .line 176
    iget-boolean p2, p0, Lcn/sharesdk/wechat/utils/l;->f:Z

    iput-boolean p2, v0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->withShareTicket:Z

    .line 177
    iget p2, p0, Lcn/sharesdk/wechat/utils/l;->g:I

    iput p2, v0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->miniprogramType:I

    .line 178
    :cond_2
    new-instance p2, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {p2}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 179
    iput-object p5, p2, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 180
    iput-object v0, p2, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    .line 181
    iput-object p6, p2, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    if-eqz p7, :cond_5

    .line 182
    invoke-virtual {p7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p4

    if-nez p4, :cond_5

    .line 183
    invoke-direct {p0, p1, p7, p3}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Z)[B

    move-result-object p1

    iput-object p1, p2, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    if-eqz p1, :cond_4

    .line 184
    array-length p1, p1

    const/high16 p3, 0x20000

    if-gt p1, p3, :cond_3

    goto :goto_2

    .line 185
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "checkArgs fail, thumbData is too large: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    array-length p2, p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " > "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 186
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "checkArgs fail, thumbData is null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    const-string p1, "webpage"

    .line 187
    invoke-direct {p0, p2, p1, p8, p9}, Lcn/sharesdk/wechat/utils/l;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 188
    new-instance v0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;-><init>()V

    .line 189
    iget v1, p0, Lcn/sharesdk/wechat/utils/l;->g:I

    iput v1, v0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->miniprogramType:I

    .line 190
    iput-object p2, v0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->webpageUrl:Ljava/lang/String;

    .line 191
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v1, "@app"

    if-nez p2, :cond_0

    invoke-virtual {p3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 192
    iput-object p3, v0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->userName:Ljava/lang/String;

    goto :goto_0

    .line 193
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->userName:Ljava/lang/String;

    .line 194
    :goto_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p3, 0x1

    if-nez p2, :cond_2

    const-string p2, "\\?"

    .line 195
    invoke-virtual {p4, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length p4, p2

    const/4 v1, 0x0

    if-le p4, p3, :cond_1

    .line 196
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p2, v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".html?"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, p2, p3

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 197
    :cond_1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p2, p2, v1

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".html"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 198
    :goto_1
    iput-object p2, v0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->path:Ljava/lang/String;

    .line 199
    iget-boolean p2, p0, Lcn/sharesdk/wechat/utils/l;->f:Z

    iput-boolean p2, v0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->withShareTicket:Z

    .line 200
    iget p2, p0, Lcn/sharesdk/wechat/utils/l;->g:I

    iput p2, v0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->miniprogramType:I

    .line 201
    :cond_2
    new-instance p2, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {p2}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 202
    iput-object p5, p2, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 203
    iput-object v0, p2, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    .line 204
    iput-object p6, p2, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 205
    invoke-direct {p0, p1, p7, p3}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Ljava/lang/String;Z)[B

    move-result-object p1

    iput-object p1, p2, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    const-string p1, "miniProgram"

    .line 206
    invoke-direct {p0, p2, p1, p8, p9}, Lcn/sharesdk/wechat/utils/l;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    return-void
.end method

.method private a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mob/tools/utils/DH$SyncMtd;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".wxapi.WXEntryActivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 266
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    .line 267
    const-class v2, Lcn/sharesdk/wechat/utils/WechatHandlerActivity;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " does not extend from "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 270
    :cond_0
    new-instance v0, Lcn/sharesdk/wechat/utils/SendMessageReq;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/SendMessageReq;-><init>()V

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcn/sharesdk/wechat/utils/m;->e:Ljava/lang/String;

    .line 272
    iput-object p1, v0, Lcn/sharesdk/wechat/utils/SendMessageReq;->a:Lcn/sharesdk/wechat/utils/WXMediaMessage;

    .line 273
    iput p3, v0, Lcn/sharesdk/wechat/utils/SendMessageReq;->b:I

    .line 274
    iput-object p4, p0, Lcn/sharesdk/wechat/utils/l;->c:Lcn/sharesdk/wechat/utils/k;

    .line 275
    iget-object p1, p1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    instance-of p1, p1, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;

    .line 276
    iget-object p2, p0, Lcn/sharesdk/wechat/utils/l;->b:Lcn/sharesdk/wechat/utils/j;

    invoke-virtual {p2, v0, p1}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/wechat/utils/m;Z)V

    return-void
.end method

.method private a(Lcn/sharesdk/wechat/utils/k;ILcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v12, p0

    move/from16 v0, p2

    move-object/from16 v10, p4

    .line 31
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/wechat/utils/k;->b()Lcn/sharesdk/framework/Platform;

    move-result-object v13

    .line 32
    invoke-virtual/range {p3 .. p3}, Lcn/sharesdk/framework/InnerShareParams;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 33
    invoke-virtual/range {p3 .. p3}, Lcn/sharesdk/framework/InnerShareParams;->getText()Ljava/lang/String;

    move-result-object v6

    .line 34
    invoke-virtual/range {p3 .. p3}, Lcn/sharesdk/framework/InnerShareParams;->getScence()I

    move-result v8

    .line 35
    invoke-virtual/range {p3 .. p3}, Lcn/sharesdk/framework/InnerShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v7

    .line 36
    invoke-virtual/range {p3 .. p3}, Lcn/sharesdk/framework/InnerShareParams;->getImageFileProviderPath()Ljava/lang/String;

    move-result-object v9

    .line 37
    invoke-virtual/range {p3 .. p3}, Lcn/sharesdk/framework/InnerShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v11

    .line 38
    invoke-virtual/range {p3 .. p3}, Lcn/sharesdk/framework/InnerShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v14

    .line 39
    invoke-virtual/range {p3 .. p3}, Lcn/sharesdk/framework/InnerShareParams;->getMusicUrl()Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-virtual/range {p3 .. p3}, Lcn/sharesdk/framework/InnerShareParams;->getUrl()Ljava/lang/String;

    move-result-object v15

    .line 41
    invoke-virtual/range {p3 .. p3}, Lcn/sharesdk/framework/InnerShareParams;->getFilePath()Ljava/lang/String;

    move-result-object v4

    .line 42
    invoke-virtual/range {p3 .. p3}, Lcn/sharesdk/framework/InnerShareParams;->getExtInfo()Ljava/lang/String;

    move-result-object v16

    const-string v2, "checkArgs fail, UserName or Path is invalid"

    const/4 v3, 0x1

    move-object/from16 v19, v15

    const/4 v15, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    if-eqz v10, :cond_1a

    .line 43
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shareType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x9

    .line 44
    invoke-interface {v10, v13, v0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto/16 :goto_2

    .line 45
    :pswitch_1
    iget-object v0, v12, Lcn/sharesdk/wechat/utils/l;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v12, Lcn/sharesdk/wechat/utils/l;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, v12, Lcn/sharesdk/wechat/utils/l;->d:Ljava/lang/String;

    iget-object v1, v12, Lcn/sharesdk/wechat/utils/l;->e:Ljava/lang/String;

    invoke-direct {v12, v0, v1}, Lcn/sharesdk/wechat/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    :goto_0
    if-eqz v10, :cond_2

    .line 47
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x9

    invoke-interface {v10, v13, v1, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_2
    return-void

    :pswitch_2
    const/4 v0, 0x2

    const/16 v1, 0x9

    if-eq v8, v0, :cond_5

    .line 48
    iget-object v0, v12, Lcn/sharesdk/wechat/utils/l;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v10, :cond_3

    .line 49
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v10, v13, v1, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_3
    return-void

    .line 50
    :cond_4
    new-instance v0, Lcn/sharesdk/wechat/utils/l$5;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v4, v7

    move v7, v8

    move-object v8, v14

    move-object v9, v11

    move-object/from16 v10, p4

    move-object v11, v13

    invoke-direct/range {v1 .. v11}, Lcn/sharesdk/wechat/utils/l$5;-><init>(Lcn/sharesdk/wechat/utils/l;Lcn/sharesdk/wechat/utils/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;Lcn/sharesdk/framework/Platform;)V

    move-object/from16 v9, v19

    invoke-virtual {v13, v9, v15, v0}, Lcn/sharesdk/framework/Platform;->getShortLintk(Ljava/lang/String;ZLcn/sharesdk/framework/ShareSDKCallback;)V

    goto/16 :goto_2

    .line 51
    :cond_5
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "WechatFavorite does not support SAHRE_WXMINIPROGRAM"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    if-eq v8, v3, :cond_a

    const/4 v0, 0x2

    if-eq v8, v0, :cond_9

    if-eqz v7, :cond_6

    .line 52
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 53
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move v6, v8

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    goto/16 :goto_2

    :cond_6
    if-eqz v11, :cond_7

    .line 54
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 55
    new-instance v14, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v14}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    .line 56
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v15

    const-string v17, "images"

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v16, v11

    invoke-virtual/range {v14 .. v19}, Lcom/mob/tools/network/NetworkHelper;->downloadCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v5

    move-object v4, v6

    move-object v5, v0

    move v6, v8

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    goto/16 :goto_2

    :cond_7
    if-eqz v14, :cond_8

    .line 58
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 59
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v5

    move-object v4, v6

    move-object v5, v14

    move v6, v8

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/k;)V

    goto/16 :goto_2

    .line 60
    :cond_8
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v0, ""

    move-object/from16 v1, p0

    move-object v3, v5

    move-object v4, v6

    move-object v5, v0

    move v6, v8

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    goto/16 :goto_2

    .line 61
    :cond_9
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "WechatFavorite does not support SHARE_EMOJI"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_a
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "WechatMoments does not support SHARE_EMOJI"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4
    if-eq v8, v3, :cond_e

    if-eqz v7, :cond_b

    .line 63
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 64
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v5

    move-object v0, v4

    move-object v4, v6

    move-object v5, v0

    move-object v6, v7

    move v7, v8

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lcn/sharesdk/wechat/utils/l;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    goto/16 :goto_2

    :cond_b
    move-object v0, v4

    if-eqz v14, :cond_c

    .line 65
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_c

    .line 66
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v5

    move-object v4, v6

    move-object v5, v0

    move-object v6, v14

    move v7, v8

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lcn/sharesdk/wechat/utils/l;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/k;)V

    goto/16 :goto_2

    :cond_c
    if-eqz v11, :cond_d

    .line 67
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_d

    .line 68
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v11}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 69
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v5

    move-object v4, v6

    move-object v5, v0

    move-object v6, v7

    move v7, v8

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lcn/sharesdk/wechat/utils/l;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    goto/16 :goto_2

    .line 70
    :cond_d
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Lcn/sharesdk/wechat/utils/l;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    const-string v7, ""

    move-object/from16 v1, p0

    move-object v3, v5

    move-object v4, v6

    move-object v5, v0

    move-object v6, v7

    move v7, v8

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lcn/sharesdk/wechat/utils/l;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    goto/16 :goto_2

    .line 71
    :cond_e
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "WechatMoments does not support SHARE_FILE"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5
    move-object v0, v4

    if-eq v8, v3, :cond_13

    const/4 v1, 0x2

    if-eq v8, v1, :cond_12

    if-eqz v7, :cond_f

    .line 72
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_f

    .line 73
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v5

    move-object v4, v6

    move-object v5, v0

    move-object/from16 v6, v16

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v9}, Lcn/sharesdk/wechat/utils/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    goto/16 :goto_2

    :cond_f
    if-eqz v14, :cond_10

    .line 74
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_10

    .line 75
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v5

    move-object v4, v6

    move-object v5, v0

    move-object/from16 v6, v16

    move-object v7, v14

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v9}, Lcn/sharesdk/wechat/utils/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/k;)V

    goto/16 :goto_2

    :cond_10
    if-eqz v11, :cond_11

    .line 76
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_11

    .line 77
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v11}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 78
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v5

    move-object v4, v6

    move-object v5, v0

    move-object/from16 v6, v16

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v9}, Lcn/sharesdk/wechat/utils/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    goto/16 :goto_2

    .line 79
    :cond_11
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v7, ""

    move-object/from16 v1, p0

    move-object v3, v5

    move-object v4, v6

    move-object v5, v0

    move-object/from16 v6, v16

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v9}, Lcn/sharesdk/wechat/utils/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    goto/16 :goto_2

    .line 80
    :cond_12
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "WechatFavorite does not support SAHRE_APP"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_13
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "WechatMoments does not support SAHRE_APP"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6
    move-object/from16 v9, v19

    .line 82
    new-instance v0, Lcn/sharesdk/wechat/utils/l$3;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v4, v7

    move v7, v8

    move-object v8, v14

    move-object v14, v9

    move-object v9, v11

    move-object/from16 v10, p4

    move-object v11, v13

    invoke-direct/range {v1 .. v11}, Lcn/sharesdk/wechat/utils/l$3;-><init>(Lcn/sharesdk/wechat/utils/l;Lcn/sharesdk/wechat/utils/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;Lcn/sharesdk/framework/Platform;)V

    invoke-virtual {v13, v14, v15, v0}, Lcn/sharesdk/framework/Platform;->getShortLintk(Ljava/lang/String;ZLcn/sharesdk/framework/ShareSDKCallback;)V

    goto/16 :goto_2

    :pswitch_7
    move-object/from16 v0, v19

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    new-instance v9, Lcn/sharesdk/wechat/utils/l$2;

    move-object v1, v9

    move-object/from16 v2, p0

    move-object v3, v7

    move-object v4, v5

    move-object v5, v6

    move v6, v8

    move-object/from16 v7, p1

    move-object v8, v14

    move-object v14, v9

    move-object v9, v11

    move-object/from16 v10, p4

    move-object v11, v13

    invoke-direct/range {v1 .. v11}, Lcn/sharesdk/wechat/utils/l$2;-><init>(Lcn/sharesdk/wechat/utils/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;Landroid/graphics/Bitmap;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;Lcn/sharesdk/framework/Platform;)V

    invoke-virtual {v13, v0, v15, v14}, Lcn/sharesdk/framework/Platform;->getShortLintk(Ljava/lang/String;ZLcn/sharesdk/framework/ShareSDKCallback;)V

    goto/16 :goto_2

    :pswitch_8
    move-object/from16 v0, v19

    .line 85
    new-instance v9, Lcn/sharesdk/wechat/utils/l$4;

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v4, v7

    move v7, v8

    move-object v8, v14

    move-object v14, v9

    move-object v9, v11

    move-object/from16 v10, p4

    move-object v11, v13

    invoke-direct/range {v1 .. v11}, Lcn/sharesdk/wechat/utils/l$4;-><init>(Lcn/sharesdk/wechat/utils/l;Lcn/sharesdk/wechat/utils/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;Lcn/sharesdk/framework/Platform;)V

    invoke-virtual {v13, v0, v15, v14}, Lcn/sharesdk/framework/Platform;->getShortLintk(Ljava/lang/String;ZLcn/sharesdk/framework/ShareSDKCallback;)V

    goto/16 :goto_2

    :pswitch_9
    if-eqz v7, :cond_14

    .line 86
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    .line 87
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move v6, v8

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lcn/sharesdk/wechat/utils/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;Lcn/sharesdk/framework/Platform$ShareParams;)V

    goto/16 :goto_2

    :cond_14
    if-eqz v9, :cond_15

    .line 88
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_15

    .line 89
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v5

    move-object v4, v6

    move-object v5, v9

    move v6, v8

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;Lcn/sharesdk/framework/Platform$ShareParams;)V

    goto/16 :goto_2

    :cond_15
    if-eqz v14, :cond_16

    .line 90
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_16

    .line 91
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v5

    move-object v4, v6

    move-object v5, v14

    move v6, v8

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/k;Lcn/sharesdk/framework/Platform$ShareParams;)V

    goto/16 :goto_2

    :cond_16
    if-eqz v11, :cond_19

    .line 92
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_19

    .line 93
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 94
    :try_start_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 95
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 97
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 98
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 99
    new-instance v1, Ljava/io/File;

    const-string v2, ".nomedia"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_18

    .line 101
    :cond_17
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 102
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "when share iamge wechat that create nomedia catch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v15, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 103
    :cond_18
    :goto_1
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move v6, v8

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lcn/sharesdk/wechat/utils/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;Lcn/sharesdk/framework/Platform$ShareParams;)V

    goto :goto_2

    .line 104
    :cond_19
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v0, ""

    move-object/from16 v1, p0

    move-object v3, v5

    move-object v4, v6

    move-object v5, v0

    move v6, v8

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lcn/sharesdk/wechat/utils/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;Lcn/sharesdk/framework/Platform$ShareParams;)V

    goto :goto_2

    :pswitch_a
    move-object/from16 v1, p1

    .line 105
    invoke-direct {v12, v5, v6, v8, v1}, Lcn/sharesdk/wechat/utils/l;->a(Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    :cond_1a
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcn/sharesdk/wechat/utils/l;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2
    invoke-direct/range {p0 .. p7}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/k;)V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/wechat/utils/l;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 3
    invoke-direct/range {p0 .. p7}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/wechat/utils/l;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 4
    invoke-direct/range {p0 .. p8}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/k;)V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/wechat/utils/l;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 5
    invoke-direct/range {p0 .. p8}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/wechat/utils/l;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 6
    invoke-direct/range {p0 .. p9}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/k;)V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/wechat/utils/l;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 7
    invoke-direct/range {p0 .. p9}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/wechat/utils/l;Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/sharesdk/wechat/utils/l;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/wechat/utils/l;Lcn/sharesdk/wechat/utils/k;ILcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/sharesdk/wechat/utils/l;->a(Lcn/sharesdk/wechat/utils/k;ILcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 207
    new-instance v0, Lcn/sharesdk/wechat/utils/i$a;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/i$a;-><init>()V

    .line 208
    iput-object p1, v0, Lcn/sharesdk/wechat/utils/i$a;->a:Ljava/lang/String;

    .line 209
    iput-object p2, v0, Lcn/sharesdk/wechat/utils/i$a;->b:Ljava/lang/String;

    .line 210
    iget p1, p0, Lcn/sharesdk/wechat/utils/l;->g:I

    iput p1, v0, Lcn/sharesdk/wechat/utils/i$a;->c:I

    .line 211
    iget-object p1, p0, Lcn/sharesdk/wechat/utils/l;->b:Lcn/sharesdk/wechat/utils/j;

    invoke-virtual {p1, v0}, Lcn/sharesdk/wechat/utils/j;->b(Lcn/sharesdk/wechat/utils/m;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 106
    new-instance v0, Lcn/sharesdk/wechat/utils/WXTextObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXTextObject;-><init>()V

    .line 107
    iput-object p2, v0, Lcn/sharesdk/wechat/utils/WXTextObject;->text:Ljava/lang/String;

    .line 108
    new-instance v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {v1}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 109
    iput-object p1, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 110
    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    .line 111
    iput-object p2, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    const-string p1, "text"

    .line 112
    invoke-direct {p0, v1, p1, p3, p4}, Lcn/sharesdk/wechat/utils/l;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Z)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p2, :cond_3

    .line 243
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 244
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x64

    .line 245
    invoke-virtual {p2, p3, v0, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 246
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 247
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 248
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 249
    array-length v1, p1

    if-eqz p4, :cond_0

    const/high16 p4, 0x20000

    goto :goto_0

    :cond_0
    const p4, 0x8000

    :goto_0
    if-le v1, p4, :cond_1

    int-to-double v1, v1

    int-to-double v3, p4

    div-double/2addr v1, v3

    .line 250
    invoke-direct {p0, p2, v1, v2}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/graphics/Bitmap;D)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 251
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 252
    invoke-virtual {p2, p3, v0, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 253
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 254
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 255
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 256
    array-length v1, p1

    goto :goto_0

    :cond_1
    return-object p1

    .line 257
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "checkArgs fail, thumbData is recycled"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 258
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "checkArgs fail, thumbData is null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Landroid/content/Context;Landroid/graphics/Bitmap;Z)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 239
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-direct {p0, p1, p2, v0, p3}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Z)[B

    move-result-object p1

    return-object p1

    .line 241
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "checkArgs fail, thumbData is recycled"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 242
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "checkArgs fail, thumbData is null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Z)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 233
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    invoke-static {p2}, Lcom/mob/tools/utils/BitmapHelper;->getBmpFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    .line 236
    invoke-static {p2}, Lcom/mob/tools/utils/BitmapHelper;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 237
    invoke-direct {p0, p1, p2, v0, p3}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Z)[B

    move-result-object p1

    return-object p1

    .line 238
    :cond_0
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1}, Ljava/io/FileNotFoundException;-><init>()V

    throw p1
.end method

.method static synthetic a(Lcn/sharesdk/wechat/utils/l;Landroid/content/Context;Ljava/lang/String;Z)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Ljava/lang/String;Z)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcn/sharesdk/wechat/utils/l;)Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcn/sharesdk/wechat/utils/l;->e:Ljava/lang/String;

    return-object p0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;Lcn/sharesdk/framework/Platform$ShareParams;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 16
    new-instance v0, Lcn/sharesdk/wechat/utils/WXImageObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXImageObject;-><init>()V

    .line 17
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, v1}, Lcn/sharesdk/wechat/utils/l;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 19
    iput-object v1, v0, Lcn/sharesdk/wechat/utils/WXImageObject;->imagePath:Ljava/lang/String;

    .line 20
    new-instance v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {v1}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 21
    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    if-eqz p5, :cond_0

    .line 22
    iput-object p2, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 23
    iput-object p3, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p7}, Lcn/sharesdk/framework/InnerShareParams;->getEntranceMiniProgramUsername()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 25
    invoke-virtual {p7}, Lcn/sharesdk/framework/InnerShareParams;->getEntranceMiniProgramUsername()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcn/sharesdk/wechat/utils/WXImageObject;->entranceMiniProgramUsername:Ljava/lang/String;

    .line 26
    :cond_1
    invoke-virtual {p7}, Lcn/sharesdk/framework/InnerShareParams;->getEntranceMiniProgramPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 27
    invoke-virtual {p7}, Lcn/sharesdk/framework/InnerShareParams;->getEntranceMiniProgramPath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcn/sharesdk/wechat/utils/WXImageObject;->entranceMiniProgramPath:Ljava/lang/String;

    :cond_2
    :goto_0
    const/4 p2, 0x0

    .line 28
    invoke-direct {p0, p1, p4, p2}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Ljava/lang/String;Z)[B

    move-result-object p1

    iput-object p1, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    const-string p1, "img"

    .line 29
    invoke-direct {p0, v1, p1, p5, p6}, Lcn/sharesdk/wechat/utils/l;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 42
    new-instance v0, Lcn/sharesdk/wechat/utils/WXWebpageObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXWebpageObject;-><init>()V

    .line 43
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    .line 44
    new-instance p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {p4}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 45
    iput-object p2, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 46
    iput-object p3, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 47
    iput-object v0, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    if-eqz p5, :cond_2

    .line 48
    invoke-virtual {p5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x0

    .line 49
    invoke-direct {p0, p1, p5, p2}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Z)[B

    move-result-object p1

    iput-object p1, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    if-eqz p1, :cond_1

    .line 50
    array-length p1, p1

    const p2, 0x8000

    if-gt p1, p2, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "checkArgs fail, thumbData is too large: "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    array-length p4, p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " > "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "checkArgs fail, thumbData is null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    const-string p1, "webpage"

    .line 53
    invoke-direct {p0, p4, p1, p6, p7}, Lcn/sharesdk/wechat/utils/l;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 30
    new-instance v0, Lcn/sharesdk/wechat/utils/WXWebpageObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXWebpageObject;-><init>()V

    .line 31
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    .line 32
    new-instance p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {p4}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 33
    iput-object p2, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 34
    iput-object p3, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 35
    iput-object v0, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    if-eqz p5, :cond_2

    .line 36
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    .line 37
    invoke-direct {p0, p1, p5, p2}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Ljava/lang/String;Z)[B

    move-result-object p1

    iput-object p1, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    if-eqz p1, :cond_1

    .line 38
    array-length p1, p1

    const p2, 0x8000

    if-gt p1, p2, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "checkArgs fail, thumbData is too large: "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    array-length p4, p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " > "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "checkArgs fail, thumbData is null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    const-string p1, "webpage"

    .line 41
    invoke-direct {p0, p4, p1, p6, p7}, Lcn/sharesdk/wechat/utils/l;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 63
    new-instance v0, Lcn/sharesdk/wechat/utils/WXAppExtendObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXAppExtendObject;-><init>()V

    .line 64
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXAppExtendObject;->filePath:Ljava/lang/String;

    .line 65
    iput-object p5, v0, Lcn/sharesdk/wechat/utils/WXAppExtendObject;->extInfo:Ljava/lang/String;

    .line 66
    new-instance p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {p4}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 67
    iput-object p2, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 68
    iput-object p3, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 69
    iput-object v0, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    const/4 p2, 0x0

    .line 70
    invoke-direct {p0, p1, p6, p2}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Z)[B

    move-result-object p1

    iput-object p1, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    const-string p1, "appdata"

    .line 71
    invoke-direct {p0, p4, p1, p7, p8}, Lcn/sharesdk/wechat/utils/l;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 54
    new-instance v0, Lcn/sharesdk/wechat/utils/WXAppExtendObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXAppExtendObject;-><init>()V

    .line 55
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXAppExtendObject;->filePath:Ljava/lang/String;

    .line 56
    iput-object p5, v0, Lcn/sharesdk/wechat/utils/WXAppExtendObject;->extInfo:Ljava/lang/String;

    .line 57
    new-instance p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {p4}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 58
    iput-object p2, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 59
    iput-object p3, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 60
    iput-object v0, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    const/4 p2, 0x0

    .line 61
    invoke-direct {p0, p1, p6, p2}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Ljava/lang/String;Z)[B

    move-result-object p1

    iput-object p1, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    const-string p1, "appdata"

    .line 62
    invoke-direct {p0, p4, p1, p7, p8}, Lcn/sharesdk/wechat/utils/l;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    return-void
.end method

.method static synthetic b(Lcn/sharesdk/wechat/utils/l;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 3
    invoke-direct/range {p0 .. p7}, Lcn/sharesdk/wechat/utils/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/k;)V

    return-void
.end method

.method static synthetic b(Lcn/sharesdk/wechat/utils/l;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 4
    invoke-direct/range {p0 .. p7}, Lcn/sharesdk/wechat/utils/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    return-void
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 16
    new-instance v0, Lcn/sharesdk/wechat/utils/WXFileObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXFileObject;-><init>()V

    .line 17
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXFileObject;->filePath:Ljava/lang/String;

    .line 18
    new-instance p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {p4}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 19
    iput-object p2, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 20
    iput-object p3, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 21
    iput-object v0, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    const/4 p2, 0x0

    .line 22
    invoke-direct {p0, p1, p5, p2}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Z)[B

    move-result-object p1

    iput-object p1, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    const-string p1, "filedata"

    .line 23
    invoke-direct {p0, p4, p1, p6, p7}, Lcn/sharesdk/wechat/utils/l;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    return-void
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 5
    new-instance v0, Lcn/sharesdk/wechat/utils/WXFileObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXFileObject;-><init>()V

    .line 6
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXFileObject;->filePath:Ljava/lang/String;

    .line 7
    new-instance p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {p4}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9
    iput-object p2, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 10
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 11
    iput-object p3, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 12
    :cond_1
    iput-object v0, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    .line 13
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x0

    .line 14
    invoke-direct {p0, p1, p5, p2}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Ljava/lang/String;Z)[B

    move-result-object p1

    iput-object p1, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    :cond_2
    const-string p1, "filedata"

    .line 15
    invoke-direct {p0, p4, p1, p6, p7}, Lcn/sharesdk/wechat/utils/l;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 277
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 278
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 279
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get packagename is catch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 280
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".cn.sharesdk.ShareSDKFileProvider"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 281
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.tencent.mm"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 282
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_1
    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 16
    iput p1, p0, Lcn/sharesdk/wechat/utils/l;->g:I

    return-void
.end method

.method public a(Lcn/sharesdk/framework/ShareSDKCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/ShareSDKCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/l;->b:Lcn/sharesdk/wechat/utils/j;

    invoke-virtual {v0, p1}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/framework/ShareSDKCallback;)V

    return-void
.end method

.method public a(Lcn/sharesdk/wechat/utils/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 17
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/l;->c:Lcn/sharesdk/wechat/utils/k;

    .line 18
    new-instance p1, Lcn/sharesdk/wechat/utils/b;

    invoke-direct {p1}, Lcn/sharesdk/wechat/utils/b;-><init>()V

    const-string v0, "snsapi_userinfo"

    .line 19
    iput-object v0, p1, Lcn/sharesdk/wechat/utils/b;->a:Ljava/lang/String;

    const-string v0, "sharesdk_wechat_auth"

    .line 20
    iput-object v0, p1, Lcn/sharesdk/wechat/utils/b;->b:Ljava/lang/String;

    .line 21
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/l;->b:Lcn/sharesdk/wechat/utils/j;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/wechat/utils/m;Z)V

    return-void
.end method

.method public a(Lcn/sharesdk/wechat/utils/k;Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 23
    invoke-virtual {p1}, Lcn/sharesdk/wechat/utils/k;->b()Lcn/sharesdk/framework/Platform;

    move-result-object p1

    const-string v0, "scene"

    .line 24
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p2, v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "com.tencent.mm.ui.tools.ShareToTimeLineUI"

    goto :goto_0

    :cond_0
    const-string v0, "com.tencent.mm.ui.tools.ShareImgUI"

    .line 25
    :goto_0
    new-instance v1, Lcn/sharesdk/framework/utils/g;

    invoke-direct {v1}, Lcn/sharesdk/framework/utils/g;-><init>()V

    const-string v2, "com.tencent.mm"

    .line 26
    invoke-virtual {v1, v2, v0}, Lcn/sharesdk/framework/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v1, p2, p1}, Lcn/sharesdk/framework/utils/g;->a(Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/Platform;)V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ShareParams"

    .line 29
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p2, 0x9

    .line 30
    invoke-interface {p3, p1, p2, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/l;->e:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcn/sharesdk/wechat/utils/l;->f:Z

    return-void
.end method

.method public a(Lcn/sharesdk/wechat/utils/WechatHandlerActivity;)Z
    .locals 2

    .line 263
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/l;->b:Lcn/sharesdk/wechat/utils/j;

    iget-object v1, p0, Lcn/sharesdk/wechat/utils/l;->c:Lcn/sharesdk/wechat/utils/k;

    invoke-virtual {v0, p1, v1}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/wechat/utils/WechatHandlerActivity;Lcn/sharesdk/wechat/utils/k;)Z

    move-result p1

    return p1
.end method

.method public b(Lcn/sharesdk/framework/ShareSDKCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/ShareSDKCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/l;->b:Lcn/sharesdk/wechat/utils/j;

    invoke-virtual {v0, p1}, Lcn/sharesdk/wechat/utils/j;->b(Lcn/sharesdk/framework/ShareSDKCallback;)V

    return-void
.end method

.method public b(Lcn/sharesdk/wechat/utils/k;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 6
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/l;->c:Lcn/sharesdk/wechat/utils/k;

    .line 7
    new-instance v0, Lcn/sharesdk/wechat/utils/g;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/g;-><init>()V

    .line 8
    invoke-virtual {p1}, Lcn/sharesdk/wechat/utils/k;->a()Lcn/sharesdk/framework/Platform$ShareParams;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcn/sharesdk/framework/InnerShareParams;->getWxTemplateid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {p1}, Lcn/sharesdk/framework/InnerShareParams;->getWxReserved()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-virtual {p1}, Lcn/sharesdk/framework/InnerShareParams;->getScence()I

    move-result p1

    .line 12
    iput-object v1, v0, Lcn/sharesdk/wechat/utils/g;->b:Ljava/lang/String;

    .line 13
    iput p1, v0, Lcn/sharesdk/wechat/utils/g;->a:I

    .line 14
    iput-object v2, v0, Lcn/sharesdk/wechat/utils/g;->c:Ljava/lang/String;

    .line 15
    iget-object p1, p0, Lcn/sharesdk/wechat/utils/l;->b:Lcn/sharesdk/wechat/utils/j;

    invoke-virtual {p1, v0}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/wechat/utils/m;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/l;->d:Ljava/lang/String;

    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public c(Lcn/sharesdk/framework/ShareSDKCallback;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/ShareSDKCallback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DH;->requester(Landroid/content/Context;)Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object v0

    const-string v1, "com.tencent.mm"

    const/16 v2, 0x80

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/utils/DH$RequestBuilder;->getAInfoForPkg(Ljava/lang/String;I)Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object v0

    new-instance v1, Lcn/sharesdk/wechat/utils/l$7;

    invoke-direct {v1, p0, p1}, Lcn/sharesdk/wechat/utils/l$7;-><init>(Lcn/sharesdk/wechat/utils/l;Lcn/sharesdk/framework/ShareSDKCallback;)V

    .line 27
    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/DH$RequestBuilder;->request(Lcom/mob/tools/utils/DH$DHResponder;)V

    return-void
.end method

.method public c(Lcn/sharesdk/wechat/utils/k;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcn/sharesdk/wechat/utils/k;->a()Lcn/sharesdk/framework/Platform$ShareParams;

    move-result-object v4

    .line 2
    invoke-virtual {v4}, Lcn/sharesdk/framework/InnerShareParams;->getShareType()I

    move-result v2

    .line 3
    invoke-virtual {p1}, Lcn/sharesdk/wechat/utils/k;->c()Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v5

    .line 4
    new-instance v6, Lcn/sharesdk/wechat/utils/l$1;

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcn/sharesdk/wechat/utils/l$1;-><init>(Lcn/sharesdk/wechat/utils/l;ILcn/sharesdk/wechat/utils/k;Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V

    invoke-virtual {p0, v6}, Lcn/sharesdk/wechat/utils/l;->c(Lcn/sharesdk/framework/ShareSDKCallback;)V

    return-void
.end method

.method public c()Z
    .locals 2

    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    .line 24
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/l;->b:Lcn/sharesdk/wechat/utils/j;

    invoke-virtual {v0, p1}, Lcn/sharesdk/wechat/utils/j;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public d(Lcn/sharesdk/framework/ShareSDKCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/ShareSDKCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/mob/tools/utils/DH;->requester(Landroid/content/Context;)Lcom/mob/tools/utils/DH$RequestBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "com.tencent.mm"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    invoke-virtual {v0, v3, v1, v2}, Lcom/mob/tools/utils/DH$RequestBuilder;->getPInfoForce(ZLjava/lang/String;I)Lcom/mob/tools/utils/DH$RequestBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Lcn/sharesdk/wechat/utils/l$8;

    .line 18
    .line 19
    invoke-direct {v1, p0, p1}, Lcn/sharesdk/wechat/utils/l$8;-><init>(Lcn/sharesdk/wechat/utils/l;Lcn/sharesdk/framework/ShareSDKCallback;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/DH$RequestBuilder;->request(Lcom/mob/tools/utils/DH$DHResponder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    nop

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 30
    .line 31
    invoke-interface {p1, v0}, Lcn/sharesdk/framework/ShareSDKCallback;->onCallback(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    :goto_0
    return-void
.end method
