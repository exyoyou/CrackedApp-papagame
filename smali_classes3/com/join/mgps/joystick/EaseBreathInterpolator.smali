.class public Lcom/join/mgps/joystick/EaseBreathInterpolator;
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
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 1
    float-to-double v0, p1

    .line 2
    const-wide v2, 0x3fd54fdf3b645a1dL    # 0.333

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    const-wide v4, 0x400921fb54442d18L    # Math.PI

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 13
    .line 14
    cmpg-double v8, v0, v2

    .line 15
    .line 16
    if-gez v8, :cond_0

    .line 17
    .line 18
    const/high16 v0, 0x40400000    # 3.0f

    .line 19
    .line 20
    mul-float p1, p1, v0

    .line 21
    .line 22
    float-to-double v0, p1

    .line 23
    mul-double v0, v0, v4

    .line 24
    .line 25
    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    sub-double/2addr v0, v2

    .line 31
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    mul-double v0, v0, v6

    .line 36
    .line 37
    add-double/2addr v0, v6

    .line 38
    :goto_0
    double-to-float p1, v0

    .line 39
    return p1

    .line 40
    :cond_0
    const-wide v2, -0x3fdd268380ccde2eL    # -9.42477796076938

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    mul-double v0, v0, v2

    .line 46
    .line 47
    mul-double v0, v0, v6

    .line 48
    .line 49
    add-double/2addr v0, v4

    .line 50
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 51
    .line 52
    .line 53
    move-result-wide v0

    .line 54
    mul-double v0, v0, v6

    .line 55
    .line 56
    add-double/2addr v0, v6

    .line 57
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 58
    .line 59
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 60
    .line 61
    .line 62
    move-result-wide v0

    .line 63
    goto :goto_0
.end method
