.class public Lcom/yatoooon/screenadaptation/b;
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

.method public static a(Landroid/content/Context;)[F
    .locals 3

    .line 1
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "window"

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/view/WindowManager;

    .line 13
    .line 14
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x4

    .line 22
    new-array p0, p0, [F

    .line 23
    .line 24
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 25
    .line 26
    int-to-float v1, v1

    .line 27
    const/4 v2, 0x0

    .line 28
    aput v1, p0, v2

    .line 29
    .line 30
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 31
    .line 32
    int-to-float v1, v1

    .line 33
    const/4 v2, 0x1

    .line 34
    aput v1, p0, v2

    .line 35
    .line 36
    const/4 v1, 0x2

    .line 37
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    .line 38
    .line 39
    aput v2, p0, v1

    .line 40
    .line 41
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 42
    .line 43
    int-to-float v0, v0

    .line 44
    const/4 v1, 0x3

    .line 45
    aput v0, p0, v1

    .line 46
    .line 47
    return-object p0
.end method
