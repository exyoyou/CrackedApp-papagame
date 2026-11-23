.class public Lcom/byazt/xs/uj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/sa/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1d4,
        0xf
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/xs/uj$c;
    }
.end annotation


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

.method public static synthetic c(Lcom/byazt/xs/uj;[B)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/xs/uj;->ve([B)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private c(Lcom/byazt/sz/yp;Lcom/byazt/yj/yp;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 33
    invoke-virtual {p1}, Lcom/byazt/sz/yp;->tt()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "image_info"

    .line 34
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 35
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 36
    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 37
    invoke-interface {p2, p3}, Lcom/byazt/yj/yp;->key(Ljava/lang/String;)Lcom/byazt/yj/yp;

    :cond_0
    const-string p3, "cache_dir"

    .line 38
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 39
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 40
    invoke-interface {p2, p1}, Lcom/byazt/yj/yp;->cacheDir(Ljava/lang/String;)Lcom/byazt/yj/yp;

    :cond_1
    return-void
.end method

.method public static synthetic c(Lcom/byazt/xs/uj;Lcom/byazt/yj/m;Landroid/widget/ImageView;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/byazt/xs/uj;->c(Lcom/byazt/yj/m;Landroid/widget/ImageView;)V

    return-void
.end method

.method private c(Lcom/byazt/yj/m;Landroid/widget/ImageView;)V
    .locals 9

    .line 17
    invoke-interface {p1}, Lcom/byazt/yj/m;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 18
    instance-of v1, v0, [B

    if-eqz v1, :cond_5

    .line 19
    invoke-interface {p1}, Lcom/byazt/yj/m;->isGif()Z

    move-result p1

    if-nez p1, :cond_3

    move-object p1, v0

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/byazt/xs/uj;->tt([B)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0, p1}, Lcom/byazt/xs/uj;->c([B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {p2, p1, v0, v1}, Lcom/byazt/or/a;->c(Landroid/widget/ImageView;[BII)V

    return-void

    .line 22
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/byazt/ete/f;->c(II)I

    move-result v0

    .line 23
    new-instance v8, Lcom/byazt/ib/c;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p2}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 24
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int v6, v1, v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int v7, v1, v0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/byazt/ib/c;-><init>(IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;II)V

    .line 25
    invoke-virtual {v8, p1}, Lcom/byazt/ib/c;->c([B)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 26
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    return-void

    .line 27
    :cond_3
    :goto_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-gt p1, v1, :cond_4

    .line 28
    check-cast v0, [B

    invoke-direct {p0, v0, p2}, Lcom/byazt/xs/uj;->c([BLandroid/widget/ImageView;)V

    return-void

    .line 29
    :cond_4
    check-cast v0, [B

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {p2, v0, p1, v1}, Lcom/byazt/or/a;->c(Landroid/widget/ImageView;[BII)V

    return-void

    .line 30
    :cond_5
    instance-of p1, v0, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_6

    .line 31
    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_6
    return-void
.end method

.method private c([BLandroid/widget/ImageView;)V
    .locals 2

    :try_start_0
    const-string v0, "ImageLoaderProvider"

    const-string v1, "load animation image"

    .line 41
    invoke-static {v0, v1}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance v0, Lcom/byazt/xs/uj$4;

    invoke-direct {v0, p0, p2}, Lcom/byazt/xs/uj$4;-><init>(Lcom/byazt/xs/uj;Landroid/widget/ImageView;)V

    invoke-direct {p0, p1, v0}, Lcom/byazt/xs/uj;->c([BLcom/byazt/xs/uj$c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 43
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method private c([BLcom/byazt/xs/uj$c;)V
    .locals 2

    .line 44
    new-instance v0, Lcom/byazt/xs/uj$5;

    const-string v1, "csj_animation_drawable"

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/byazt/xs/uj$5;-><init>(Lcom/byazt/xs/uj;Ljava/lang/String;[BLcom/byazt/xs/uj$c;)V

    invoke-static {v0}, Lcom/byazt/bwm/n;->tt(Lcom/byazt/bwm/sp;)V

    return-void
.end method

.method private ve([B)Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/byazt/ue/tt;->c()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const-string v3, "UGEN_GIF_AD_CACHE/"

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string v3, "/UGEN_GIF_CACHE/"

    .line 16
    .line 17
    :goto_0
    const-string v4, "TT_UGEN_GIF_FILE"

    .line 18
    .line 19
    invoke-static {v2, v1, v3, v4}, Lcom/byazt/nr/x;->tt(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    new-instance v2, Ljava/io/FileOutputStream;

    .line 24
    .line 25
    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 26
    .line 27
    .line 28
    :try_start_1
    array-length v3, p1

    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-virtual {v2, p1, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 31
    .line 32
    .line 33
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 34
    .line 35
    const/16 v5, 0x1c

    .line 36
    .line 37
    if-lt v3, v5, :cond_1

    .line 38
    .line 39
    invoke-static {v1}, Lcom/aggmoread/sdk/z/a/i/i;->a(Ljava/io/File;)Landroid/graphics/ImageDecoder$Source;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/i/j;->a(Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/drawable/Drawable;

    .line 44
    .line 45
    .line 46
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 47
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    .line 49
    .line 50
    :catchall_0
    return-object p1

    .line 51
    :cond_1
    :try_start_3
    array-length v1, p1

    .line 52
    invoke-static {p1, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 57
    .line 58
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-direct {v1, v3, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 67
    .line 68
    .line 69
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 70
    .line 71
    .line 72
    :catchall_1
    return-object v1

    .line 73
    :catchall_2
    move-exception p1

    .line 74
    goto :goto_1

    .line 75
    :catchall_3
    move-exception p1

    .line 76
    move-object v2, v0

    .line 77
    :goto_1
    :try_start_5
    const-string v1, "ImageLoaderProvider"

    .line 78
    .line 79
    const-string v3, "GifView  getSourceByFile fail : "

    .line 80
    .line 81
    invoke-static {v1, v3, p1}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 82
    .line 83
    .line 84
    if-eqz v2, :cond_2

    .line 85
    .line 86
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 87
    .line 88
    .line 89
    :catchall_4
    :cond_2
    return-object v0

    .line 90
    :catchall_5
    move-exception p1

    .line 91
    if-eqz v2, :cond_3

    .line 92
    .line 93
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 94
    .line 95
    .line 96
    :catchall_6
    :cond_3
    throw p1
.end method


# virtual methods
.method public c(Lcom/byazt/sz/yp;Ljava/lang/String;Landroid/widget/ImageView;IILcom/byazt/sa/c$c;)V
    .locals 0

    .line 14
    invoke-static {p2}, Lcom/byazt/xky/tt;->c(Ljava/lang/String;)Lcom/byazt/yj/yp;

    move-result-object p4

    const/4 p5, 0x3

    invoke-interface {p4, p5}, Lcom/byazt/yj/yp;->type(I)Lcom/byazt/yj/yp;

    move-result-object p4

    .line 15
    invoke-direct {p0, p1, p4, p2}, Lcom/byazt/xs/uj;->c(Lcom/byazt/sz/yp;Lcom/byazt/yj/yp;Ljava/lang/String;)V

    .line 16
    new-instance p1, Lcom/byazt/xs/uj$2;

    invoke-direct {p1, p0, p3}, Lcom/byazt/xs/uj$2;-><init>(Lcom/byazt/xs/uj;Landroid/widget/ImageView;)V

    invoke-interface {p4, p1}, Lcom/byazt/yj/yp;->to(Lcom/byazt/yj/gr;)Lcom/byazt/yj/t;

    return-void
.end method

.method public c(Lcom/byazt/sz/yp;Ljava/lang/String;Landroid/widget/ImageView;Lcom/byazt/sa/c$c;)V
    .locals 0

    .line 3
    instance-of p4, p3, Lcom/byazt/oq/GifView;

    if-eqz p4, :cond_0

    .line 4
    check-cast p3, Lcom/byazt/oq/GifView;

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p3, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 7
    invoke-static {p2}, Lcom/byazt/xky/tt;->c(Ljava/lang/String;)Lcom/byazt/yj/yp;

    move-result-object p1

    const/4 p2, 0x3

    .line 8
    invoke-interface {p1, p2}, Lcom/byazt/yj/yp;->type(I)Lcom/byazt/yj/yp;

    move-result-object p1

    sget-object p2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 9
    invoke-interface {p1, p2}, Lcom/byazt/yj/yp;->config(Landroid/graphics/Bitmap$Config;)Lcom/byazt/yj/yp;

    move-result-object p1

    new-instance p2, Lcom/byazt/xs/uj$1;

    invoke-direct {p2, p0, p3}, Lcom/byazt/xs/uj$1;-><init>(Lcom/byazt/xs/uj;Lcom/byazt/oq/GifView;)V

    .line 10
    invoke-interface {p1, p2}, Lcom/byazt/yj/yp;->to(Lcom/byazt/yj/gr;)Lcom/byazt/yj/t;

    return-void

    .line 11
    :cond_0
    invoke-static {p2}, Lcom/byazt/xky/tt;->c(Ljava/lang/String;)Lcom/byazt/yj/yp;

    move-result-object p4

    .line 12
    invoke-direct {p0, p1, p4, p2}, Lcom/byazt/xs/uj;->c(Lcom/byazt/sz/yp;Lcom/byazt/yj/yp;Ljava/lang/String;)V

    .line 13
    invoke-interface {p4, p3}, Lcom/byazt/yj/yp;->to(Landroid/widget/ImageView;)Lcom/byazt/yj/t;

    return-void
.end method

.method public c(Lcom/byazt/sz/yp;Ljava/lang/String;Lcom/byazt/sa/c$c;)V
    .locals 0

    .line 32
    invoke-virtual {p0, p1, p2, p3}, Lcom/byazt/xs/uj;->tt(Lcom/byazt/sz/yp;Ljava/lang/String;Lcom/byazt/sa/c$c;)V

    return-void
.end method

.method public c([B)Z
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-static {p1, v0}, Lcom/byazt/or/a;->c([BI)Z

    move-result p1

    return p1
.end method

.method public tt(Lcom/byazt/sz/yp;Ljava/lang/String;Lcom/byazt/sa/c$c;)V
    .locals 2

    .line 1
    invoke-static {p2}, Lcom/byazt/xky/tt;->c(Ljava/lang/String;)Lcom/byazt/yj/yp;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/byazt/yj/yp;->type(I)Lcom/byazt/yj/yp;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lcom/byazt/xs/uj;->c(Lcom/byazt/sz/yp;Lcom/byazt/yj/yp;Ljava/lang/String;)V

    .line 3
    new-instance p1, Lcom/byazt/xs/uj$3;

    invoke-direct {p1, p0, p3}, Lcom/byazt/xs/uj$3;-><init>(Lcom/byazt/xs/uj;Lcom/byazt/sa/c$c;)V

    invoke-interface {v0, p1}, Lcom/byazt/yj/yp;->to(Lcom/byazt/yj/gr;)Lcom/byazt/yj/t;

    return-void
.end method

.method public tt([B)Z
    .locals 3

    .line 4
    invoke-static {}, Lcom/byazt/nr/t;->c()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/byazt/nr/t;->c([B)Ljava/lang/String;

    move-result-object v0

    const-string v2, "png"

    .line 6
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/byazt/or/a;->c([B)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method
