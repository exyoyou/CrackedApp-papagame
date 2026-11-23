.class public Lz6/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I

.field public static b:I

.field public static c:F

.field public static d:I

.field public static e:I


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
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "designedDp"
        }
    .end annotation

    .line 1
    sget v0, Lz6/b;->d:I

    .line 2
    .line 3
    const/16 v1, 0x140

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    int-to-float v0, v0

    .line 8
    mul-float p0, p0, v0

    .line 9
    .line 10
    const/high16 v0, 0x43a00000    # 320.0f

    .line 11
    .line 12
    div-float/2addr p0, v0

    .line 13
    :cond_0
    invoke-static {p0}, Lz6/b;->b(F)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public static b(F)I
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
    sget v0, Lz6/b;->c:F

    .line 2
    .line 3
    mul-float p0, p0, v0

    .line 4
    .line 5
    const/high16 v0, 0x3f000000    # 0.5f

    .line 6
    .line 7
    add-float/2addr p0, v0

    .line 8
    float-to-int p0, p0

    .line 9
    return p0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "window"

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Landroid/view/WindowManager;

    .line 16
    .line 17
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 22
    .line 23
    .line 24
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 25
    .line 26
    sput p0, Lz6/b;->a:I

    .line 27
    .line 28
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 29
    .line 30
    sput v1, Lz6/b;->b:I

    .line 31
    .line 32
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 33
    .line 34
    sput v0, Lz6/b;->c:F

    .line 35
    .line 36
    int-to-float p0, p0

    .line 37
    div-float/2addr p0, v0

    .line 38
    float-to-int p0, p0

    .line 39
    sput p0, Lz6/b;->d:I

    .line 40
    .line 41
    int-to-float p0, v1

    .line 42
    div-float/2addr p0, v0

    .line 43
    float-to-int p0, p0

    .line 44
    sput p0, Lz6/b;->e:I

    .line 45
    .line 46
    return-void
.end method

.method public static d(Landroid/view/View;FFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lz6/b;->a(F)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p2}, Lz6/b;->b(F)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    invoke-static {p3}, Lz6/b;->a(F)I

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    invoke-static {p4}, Lz6/b;->b(F)I

    .line 14
    .line 15
    .line 16
    move-result p4

    .line 17
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
