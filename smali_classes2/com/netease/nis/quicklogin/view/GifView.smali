.class public Lcom/netease/nis/quicklogin/view/GifView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/Movie;

.field private b:Landroid/graphics/Canvas;

.field private c:Landroid/graphics/Bitmap;

.field private d:Landroid/graphics/drawable/BitmapDrawable;

.field private e:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/netease/nis/quicklogin/view/GifView;->e:J

    .line 7
    .line 8
    return-void
.end method

.method private a()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/view/GifView;->a:Landroid/graphics/Movie;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/netease/nis/quicklogin/view/GifView;->b:Landroid/graphics/Canvas;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iget-wide v2, p0, Lcom/netease/nis/quicklogin/view/GifView;->e:J

    .line 15
    .line 16
    const-wide/16 v4, 0x0

    .line 17
    .line 18
    cmp-long v6, v2, v4

    .line 19
    .line 20
    if-nez v6, :cond_0

    .line 21
    .line 22
    iput-wide v0, p0, Lcom/netease/nis/quicklogin/view/GifView;->e:J

    .line 23
    .line 24
    :cond_0
    iget-object v2, p0, Lcom/netease/nis/quicklogin/view/GifView;->a:Landroid/graphics/Movie;

    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/graphics/Movie;->duration()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    iget-wide v3, p0, Lcom/netease/nis/quicklogin/view/GifView;->e:J

    .line 31
    .line 32
    sub-long/2addr v0, v3

    .line 33
    int-to-long v2, v2

    .line 34
    rem-long/2addr v0, v2

    .line 35
    long-to-int v1, v0

    .line 36
    iget-object v0, p0, Lcom/netease/nis/quicklogin/view/GifView;->a:Landroid/graphics/Movie;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/graphics/Movie;->setTime(I)Z

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/netease/nis/quicklogin/view/GifView;->a:Landroid/graphics/Movie;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/netease/nis/quicklogin/view/GifView;->b:Landroid/graphics/Canvas;

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-virtual {v0, v1, v2, v2}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/netease/nis/quicklogin/view/GifView;->d:Landroid/graphics/drawable/BitmapDrawable;

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/netease/nis/quicklogin/view/GifView;->b:Landroid/graphics/Canvas;

    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 60
    .line 61
    .line 62
    :cond_1
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/view/GifView;->a()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setGifDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/netease/nis/quicklogin/view/GifView;->a:Landroid/graphics/Movie;

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/graphics/Movie;->width()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iget-object v0, p0, Lcom/netease/nis/quicklogin/view/GifView;->a:Landroid/graphics/Movie;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/graphics/Movie;->height()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 19
    .line 20
    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/netease/nis/quicklogin/view/GifView;->c:Landroid/graphics/Bitmap;

    .line 25
    .line 26
    new-instance p1, Landroid/graphics/Canvas;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/netease/nis/quicklogin/view/GifView;->c:Landroid/graphics/Bitmap;

    .line 29
    .line 30
    invoke-direct {p1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/netease/nis/quicklogin/view/GifView;->b:Landroid/graphics/Canvas;

    .line 34
    .line 35
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/netease/nis/quicklogin/view/GifView;->c:Landroid/graphics/Bitmap;

    .line 38
    .line 39
    invoke-direct {p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lcom/netease/nis/quicklogin/view/GifView;->d:Landroid/graphics/drawable/BitmapDrawable;

    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method public setGifResId(I)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, "[GifView#setGifResId] 0 is not a valid resource id,please check your gif resource name"

    .line 4
    .line 5
    invoke-static {p1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/netease/nis/quicklogin/view/GifView;->a:Landroid/graphics/Movie;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/graphics/Movie;->width()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    iget-object v0, p0, Lcom/netease/nis/quicklogin/view/GifView;->a:Landroid/graphics/Movie;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/graphics/Movie;->height()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 34
    .line 35
    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lcom/netease/nis/quicklogin/view/GifView;->c:Landroid/graphics/Bitmap;

    .line 40
    .line 41
    new-instance p1, Landroid/graphics/Canvas;

    .line 42
    .line 43
    iget-object v0, p0, Lcom/netease/nis/quicklogin/view/GifView;->c:Landroid/graphics/Bitmap;

    .line 44
    .line 45
    invoke-direct {p1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lcom/netease/nis/quicklogin/view/GifView;->b:Landroid/graphics/Canvas;

    .line 49
    .line 50
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 51
    .line 52
    iget-object v0, p0, Lcom/netease/nis/quicklogin/view/GifView;->c:Landroid/graphics/Bitmap;

    .line 53
    .line 54
    invoke-direct {p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Lcom/netease/nis/quicklogin/view/GifView;->d:Landroid/graphics/drawable/BitmapDrawable;

    .line 58
    .line 59
    return-void
.end method
