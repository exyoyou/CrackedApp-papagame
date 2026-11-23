.class public Lm/framework/ui/widget/asyncview/AsyncImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"

# interfaces
.implements Lm/framework/ui/widget/asyncview/AsyncView;
.implements Lm/framework/ui/widget/asyncview/BitmapCallback;
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final DEFAULT_TRANSPARENT:I = 0x106000d

.field private static DEFAULT_TRANSPARENT_BITMAP:Landroid/graphics/Bitmap; = null

.field private static final MSG_IMG_GOT:I = 0x1

.field private static cacheDir:Ljava/lang/String;

.field private static final rnd:Ljava/util/Random;


# instance fields
.field private defaultRes:I

.field private onImageGotListener:Lm/framework/ui/widget/asyncview/OnImageGotListener;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Random;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lm/framework/ui/widget/asyncview/AsyncImageView;->rnd:Ljava/util/Random;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0, p1}, Lm/framework/ui/widget/asyncview/AsyncImageView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0, p1}, Lm/framework/ui/widget/asyncview/AsyncImageView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0, p1}, Lm/framework/ui/widget/asyncview/AsyncImageView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private getDefaultBitmap(I)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    const v0, 0x106000d

    .line 2
    .line 3
    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_0
    sget-object p1, Lm/framework/ui/widget/asyncview/AsyncImageView;->DEFAULT_TRANSPARENT_BITMAP:Landroid/graphics/Bitmap;

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    sput-object p1, Lm/framework/ui/widget/asyncview/AsyncImageView;->DEFAULT_TRANSPARENT_BITMAP:Landroid/graphics/Bitmap;

    .line 28
    .line 29
    :cond_1
    sget-object p1, Lm/framework/ui/widget/asyncview/AsyncImageView;->DEFAULT_TRANSPARENT_BITMAP:Landroid/graphics/Bitmap;

    .line 30
    .line 31
    return-object p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {}, Lm/framework/utils/UIHandler;->prepare()V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lm/framework/ui/widget/asyncview/AsyncImageView;->cacheDir:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, "images"

    .line 17
    .line 18
    invoke-static {p1, v0}, Lm/framework/utils/Utils;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    sput-object p1, Lm/framework/ui/widget/asyncview/AsyncImageView;->cacheDir:Ljava/lang/String;

    .line 23
    .line 24
    :cond_0
    sget-object p1, Lm/framework/ui/widget/asyncview/AsyncImageView;->cacheDir:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {p1}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->prepare(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sget-object p1, Lm/framework/ui/widget/asyncview/SimpleOnImageGotListener;->INSTANCE:Lm/framework/ui/widget/asyncview/SimpleOnImageGotListener;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lm/framework/ui/widget/asyncview/AsyncImageView;->setOnImageGotListener(Lm/framework/ui/widget/asyncview/OnImageGotListener;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lm/framework/ui/widget/asyncview/AsyncImageView;->execute(Ljava/lang/String;I)V

    return-void
.end method

.method public execute(Ljava/lang/String;I)V
    .locals 2

    .line 2
    iput-object p1, p0, Lm/framework/ui/widget/asyncview/AsyncImageView;->url:Ljava/lang/String;

    .line 3
    iput p2, p0, Lm/framework/ui/widget/asyncview/AsyncImageView;->defaultRes:I

    .line 4
    invoke-static {p1}, Lm/framework/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 6
    :cond_0
    invoke-static {p1}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->getBitmapFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_1
    if-lez p2, :cond_2

    .line 9
    invoke-direct {p0, p2}, Lm/framework/ui/widget/asyncview/AsyncImageView;->getDefaultBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 10
    :cond_2
    invoke-static {p1, p0}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->process(Ljava/lang/String;Lm/framework/ui/widget/asyncview/BitmapCallback;)V

    return-void
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/asyncview/AsyncImageView;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v2, :cond_1

    .line 6
    .line 7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8
    .line 9
    move-object v0, p1

    .line 10
    check-cast v0, [Ljava/lang/Object;

    .line 11
    .line 12
    aget-object v0, v0, v1

    .line 13
    .line 14
    check-cast p1, [Ljava/lang/Object;

    .line 15
    .line 16
    aget-object p1, p1, v2

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v2, p0, Lm/framework/ui/widget/asyncview/AsyncImageView;->url:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    check-cast p1, Landroid/graphics/Bitmap;

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget p1, p0, Lm/framework/ui/widget/asyncview/AsyncImageView;->defaultRes:I

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    return v1
.end method

.method public onImageGot(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/asyncview/AsyncImageView;->onImageGotListener:Lm/framework/ui/widget/asyncview/OnImageGotListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0, p2, p1}, Lm/framework/ui/widget/asyncview/OnImageGotListener;->onImageGot(Lm/framework/ui/widget/asyncview/AsyncView;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    :cond_0
    new-instance v0, Landroid/os/Message;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    iput v1, v0, Landroid/os/Message;->what:I

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    new-array v2, v2, [Ljava/lang/Object;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    aput-object p1, v2, v3

    .line 22
    .line 23
    aput-object p2, v2, v1

    .line 24
    .line 25
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object p1, Lm/framework/ui/widget/asyncview/AsyncImageView;->rnd:Ljava/util/Random;

    .line 28
    .line 29
    const/16 p2, 0x12c

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    int-to-long p1, p1

    .line 36
    invoke-static {v0, p1, p2, p0}, Lm/framework/utils/UIHandler;->sendMessageDelayed(Landroid/os/Message;JLandroid/os/Handler$Callback;)Z

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public setOnImageGotListener(Lm/framework/ui/widget/asyncview/OnImageGotListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm/framework/ui/widget/asyncview/AsyncImageView;->onImageGotListener:Lm/framework/ui/widget/asyncview/OnImageGotListener;

    .line 2
    .line 3
    return-void
.end method
