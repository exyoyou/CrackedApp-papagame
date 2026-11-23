.class public Lcom/join/android/app/component/optimizetext/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/util/DisplayMetrics; = null

.field private static final b:I = 0x140

.field private static final c:I = 0x280

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:F

.field private static h:I


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

.method public static a(F)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dp"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/join/android/app/component/optimizetext/a;->a:Landroid/util/DisplayMetrics;

    .line 2
    .line 3
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 4
    .line 5
    mul-float v0, v0, p0

    .line 6
    .line 7
    const/high16 p0, 0x3f000000    # 0.5f

    .line 8
    .line 9
    add-float/2addr v0, p0

    .line 10
    float-to-int p0, v0

    .line 11
    return p0
.end method

.method public static b()I
    .locals 1

    .line 1
    sget v0, Lcom/join/android/app/component/optimizetext/a;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public static c()F
    .locals 1

    .line 1
    sget v0, Lcom/join/android/app/component/optimizetext/a;->g:F

    .line 2
    .line 3
    return v0
.end method

.method public static d()I
    .locals 1

    .line 1
    sget v0, Lcom/join/android/app/component/optimizetext/a;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public static e()F
    .locals 1

    .line 1
    sget-object v0, Lcom/join/android/app/component/optimizetext/a;->a:Landroid/util/DisplayMetrics;

    .line 2
    .line 3
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 4
    .line 5
    return v0
.end method

.method public static f()I
    .locals 1

    .line 1
    sget-object v0, Lcom/join/android/app/component/optimizetext/a;->a:Landroid/util/DisplayMetrics;

    .line 2
    .line 3
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 4
    .line 5
    return v0
.end method

.method public static g()I
    .locals 1

    .line 1
    sget-object v0, Lcom/join/android/app/component/optimizetext/a;->a:Landroid/util/DisplayMetrics;

    .line 2
    .line 3
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 4
    .line 5
    return v0
.end method

.method public static h()I
    .locals 1

    .line 1
    sget-object v0, Lcom/join/android/app/component/optimizetext/a;->a:Landroid/util/DisplayMetrics;

    .line 2
    .line 3
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 4
    .line 5
    return v0
.end method

.method public static i()I
    .locals 1

    .line 1
    sget v0, Lcom/join/android/app/component/optimizetext/a;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public static j(Landroid/view/View;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static k()I
    .locals 1

    .line 1
    sget v0, Lcom/join/android/app/component/optimizetext/a;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public static l(Landroid/view/View;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 7
    .line 8
    .line 9
    iget p0, v0, Landroid/graphics/Rect;->bottom:I

    .line 10
    .line 11
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 12
    .line 13
    sub-int/2addr p0, v0

    .line 14
    return p0
.end method

.method public static m(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    sput-object p0, Lcom/join/android/app/component/optimizetext/a;->a:Landroid/util/DisplayMetrics;

    .line 10
    .line 11
    const/high16 p0, 0x43a00000    # 320.0f

    .line 12
    .line 13
    invoke-static {p0}, Lcom/join/android/app/component/optimizetext/a;->a(F)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    sput p0, Lcom/join/android/app/component/optimizetext/a;->d:I

    .line 18
    .line 19
    const/16 v0, 0x280

    .line 20
    .line 21
    if-le p0, v0, :cond_0

    .line 22
    .line 23
    sput v0, Lcom/join/android/app/component/optimizetext/a;->d:I

    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public static n(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "px"
        }
    .end annotation

    .line 1
    int-to-float p0, p0

    .line 2
    sget-object v0, Lcom/join/android/app/component/optimizetext/a;->a:Landroid/util/DisplayMetrics;

    .line 3
    .line 4
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 5
    .line 6
    div-float/2addr p0, v0

    .line 7
    const/high16 v0, 0x3f000000    # 0.5f

    .line 8
    .line 9
    add-float/2addr p0, v0

    .line 10
    float-to-int p0, p0

    .line 11
    return p0
.end method

.method public static o(Landroid/app/Activity;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    sget v0, Lcom/join/android/app/component/optimizetext/a;->h:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    sput v0, Lcom/join/android/app/component/optimizetext/a;->e:I

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    sput v0, Lcom/join/android/app/component/optimizetext/a;->f:I

    .line 24
    .line 25
    sget v1, Lcom/join/android/app/component/optimizetext/a;->e:I

    .line 26
    .line 27
    int-to-float v1, v1

    .line 28
    int-to-float v2, v0

    .line 29
    div-float/2addr v1, v2

    .line 30
    sput v1, Lcom/join/android/app/component/optimizetext/a;->g:F

    .line 31
    .line 32
    invoke-static {p0}, Lcom/join/android/app/component/optimizetext/a;->l(Landroid/view/View;)I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    sub-int/2addr v0, p0

    .line 37
    sput v0, Lcom/join/android/app/component/optimizetext/a;->h:I

    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public static p(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    .line 1
    sput p0, Lcom/join/android/app/component/optimizetext/a;->f:I

    .line 2
    .line 3
    return-void
.end method

.method public static q(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ratio"
        }
    .end annotation

    .line 1
    sput p0, Lcom/join/android/app/component/optimizetext/a;->g:F

    .line 2
    .line 3
    return-void
.end method

.method public static r(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "width"
        }
    .end annotation

    .line 1
    sput p0, Lcom/join/android/app/component/optimizetext/a;->e:I

    .line 2
    .line 3
    return-void
.end method

.method public static s(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "spValue"
        }
    .end annotation

    .line 1
    int-to-float p0, p0

    .line 2
    sget-object v0, Lcom/join/android/app/component/optimizetext/a;->a:Landroid/util/DisplayMetrics;

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    float-to-int p0, p0

    .line 10
    return p0
.end method
