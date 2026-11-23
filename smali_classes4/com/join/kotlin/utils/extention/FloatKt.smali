.class public final Lcom/join/kotlin/utils/extention/FloatKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0000\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "round",
        "",
        "decimal",
        "",
        "app_wufunNormalRelease"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final round(FI)F
    .locals 4

    .line 1
    const/high16 v0, 0x41200000    # 10.0f

    .line 2
    .line 3
    float-to-double v0, v0

    .line 4
    int-to-double v2, p1

    .line 5
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    double-to-float p1, v0

    .line 10
    mul-float p0, p0, p1

    .line 11
    .line 12
    invoke-static {p0}, Lkotlin/math/MathKt;->roundToInt(F)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    int-to-float p0, p0

    .line 17
    div-float/2addr p0, p1

    .line 18
    return p0
.end method

.method public static synthetic round$default(FIILjava/lang/Object;)F
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    :cond_0
    invoke-static {p0, p1}, Lcom/join/kotlin/utils/extention/FloatKt;->round(FI)F

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method
