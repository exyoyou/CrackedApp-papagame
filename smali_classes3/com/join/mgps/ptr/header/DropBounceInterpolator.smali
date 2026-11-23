.class public Lcom/join/mgps/ptr/header/DropBounceInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
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

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    const/high16 v0, 0x3e800000    # 0.25f

    .line 2
    .line 3
    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    .line 4
    .line 5
    cmpg-float v0, p1, v0

    .line 6
    .line 7
    if-gez v0, :cond_0

    .line 8
    .line 9
    float-to-double v3, p1

    .line 10
    const-wide/high16 v5, 0x3fc0000000000000L    # 0.125

    .line 11
    .line 12
    sub-double/2addr v3, v5

    .line 13
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    double-to-float p1, v0

    .line 18
    const v0, -0x3de66666    # -38.4f

    .line 19
    .line 20
    .line 21
    mul-float p1, p1, v0

    .line 22
    .line 23
    const v0, 0x3f19999a    # 0.6f

    .line 24
    .line 25
    .line 26
    :goto_0
    add-float/2addr p1, v0

    .line 27
    return p1

    .line 28
    :cond_0
    float-to-double v3, p1

    .line 29
    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    .line 30
    .line 31
    cmpl-double p1, v3, v5

    .line 32
    .line 33
    if-ltz p1, :cond_1

    .line 34
    .line 35
    const-wide/high16 v5, 0x3fe8000000000000L    # 0.75

    .line 36
    .line 37
    cmpg-double p1, v3, v5

    .line 38
    .line 39
    if-gez p1, :cond_1

    .line 40
    .line 41
    const-wide/high16 v5, 0x3fe4000000000000L    # 0.625

    .line 42
    .line 43
    sub-double/2addr v3, v5

    .line 44
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    .line 45
    .line 46
    .line 47
    move-result-wide v0

    .line 48
    double-to-float p1, v0

    .line 49
    const v0, -0x3e666666    # -19.2f

    .line 50
    .line 51
    .line 52
    mul-float p1, p1, v0

    .line 53
    .line 54
    const v0, 0x3e99999a    # 0.3f

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const/4 p1, 0x0

    .line 59
    return p1
.end method
