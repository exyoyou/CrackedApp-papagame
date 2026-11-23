.class public Lcom/papa/sim/statistic/http/b$m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa/sim/statistic/http/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa/sim/statistic/http/b$m$a;
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

.method public static a(Lcom/papa/sim/statistic/http/b$m$a;Lcom/papa/sim/statistic/http/b$m$a;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/http/b$m$a;->a:I

    .line 2
    .line 3
    iget p0, p0, Lcom/papa/sim/statistic/http/b$m$a;->b:I

    .line 4
    .line 5
    iget v1, p1, Lcom/papa/sim/statistic/http/b$m$a;->a:I

    .line 6
    .line 7
    iget p1, p1, Lcom/papa/sim/statistic/http/b$m$a;->b:I

    .line 8
    .line 9
    if-le v0, v1, :cond_0

    .line 10
    .line 11
    if-le p0, p1, :cond_0

    .line 12
    .line 13
    int-to-float v0, v0

    .line 14
    int-to-float v1, v1

    .line 15
    div-float/2addr v0, v1

    .line 16
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    int-to-float p0, p0

    .line 21
    int-to-float p1, p1

    .line 22
    div-float/2addr p0, p1

    .line 23
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p0, 0x1

    .line 33
    :goto_0
    return p0
.end method

.method private static b(Landroid/view/View;)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 12
    .line 13
    const/4 v3, -0x2

    .line 14
    if-eq v2, v3, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    :cond_1
    if-gtz v0, :cond_2

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 25
    .line 26
    :cond_2
    if-gtz v0, :cond_3

    .line 27
    .line 28
    const-string v0, "mMaxHeight"

    .line 29
    .line 30
    invoke-static {p0, v0}, Lcom/papa/sim/statistic/http/b$m;->e(Ljava/lang/Object;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    :cond_3
    if-gtz v0, :cond_4

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 49
    .line 50
    :cond_4
    return v0
.end method

.method private static c(Landroid/view/View;)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 12
    .line 13
    const/4 v3, -0x2

    .line 14
    if-eq v2, v3, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    :cond_1
    if-gtz v0, :cond_2

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 25
    .line 26
    :cond_2
    if-gtz v0, :cond_3

    .line 27
    .line 28
    const-string v0, "mMaxWidth"

    .line 29
    .line 30
    invoke-static {p0, v0}, Lcom/papa/sim/statistic/http/b$m;->e(Ljava/lang/Object;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    :cond_3
    if-gtz v0, :cond_4

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 49
    .line 50
    :cond_4
    return v0
.end method

.method public static d(Ljava/io/InputStream;)Lcom/papa/sim/statistic/http/b$m$a;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 11
    .line 12
    .line 13
    new-instance p0, Lcom/papa/sim/statistic/http/b$m$a;

    .line 14
    .line 15
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 16
    .line 17
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 18
    .line 19
    invoke-direct {p0, v1, v0}, Lcom/papa/sim/statistic/http/b$m$a;-><init>(II)V

    .line 20
    .line 21
    .line 22
    return-object p0
.end method

.method private static e(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-class v1, Landroid/widget/ImageView;

    .line 3
    .line 4
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 13
    .line 14
    .line 15
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    if-lez p0, :cond_0

    .line 17
    .line 18
    const p1, 0x7fffffff

    .line 19
    .line 20
    .line 21
    if-ge p0, p1, :cond_0

    .line 22
    .line 23
    move v0, p0

    .line 24
    :catch_0
    :cond_0
    return v0
.end method

.method public static f(Landroid/view/View;)Lcom/papa/sim/statistic/http/b$m$a;
    .locals 2

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/http/b$m$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/http/b$m$a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lcom/papa/sim/statistic/http/b$m;->c(Landroid/view/View;)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iput v1, v0, Lcom/papa/sim/statistic/http/b$m$a;->a:I

    .line 11
    .line 12
    invoke-static {p0}, Lcom/papa/sim/statistic/http/b$m;->b(Landroid/view/View;)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    iput p0, v0, Lcom/papa/sim/statistic/http/b$m$a;->b:I

    .line 17
    .line 18
    return-object v0
.end method
