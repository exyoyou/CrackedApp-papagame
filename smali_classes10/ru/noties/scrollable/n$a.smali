.class Lru/noties/scrollable/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/noties/scrollable/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final a:F = 8.0f

.field private static final b:F

.field private static final c:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    invoke-static {v0}, Lru/noties/scrollable/n$a;->a(F)F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    div-float v1, v0, v1

    .line 8
    .line 9
    sput v1, Lru/noties/scrollable/n$a;->b:F

    .line 10
    .line 11
    invoke-static {v0}, Lru/noties/scrollable/n$a;->a(F)F

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    mul-float v1, v1, v2

    .line 16
    .line 17
    sub-float/2addr v0, v1

    .line 18
    sput v0, Lru/noties/scrollable/n$a;->c:F

    .line 19
    .line 20
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static a(F)F
    .locals 3

    .line 1
    const/high16 v0, 0x41000000    # 8.0f

    .line 2
    .line 3
    mul-float p0, p0, v0

    .line 4
    .line 5
    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    .line 7
    cmpg-float v1, p0, v0

    .line 8
    .line 9
    if-gez v1, :cond_0

    .line 10
    .line 11
    neg-float v1, p0

    .line 12
    float-to-double v1, v1

    .line 13
    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    double-to-float v1, v1

    .line 18
    sub-float/2addr v0, v1

    .line 19
    sub-float/2addr p0, v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sub-float p0, v0, p0

    .line 22
    .line 23
    float-to-double v1, p0

    .line 24
    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    double-to-float p0, v1

    .line 29
    sub-float/2addr v0, p0

    .line 30
    const p0, 0x3f21d2a7

    .line 31
    .line 32
    .line 33
    mul-float v0, v0, p0

    .line 34
    .line 35
    const p0, 0x3ebc5ab2

    .line 36
    .line 37
    .line 38
    add-float/2addr p0, v0

    .line 39
    :goto_0
    return p0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    .line 1
    sget v0, Lru/noties/scrollable/n$a;->b:F

    .line 2
    .line 3
    invoke-static {p1}, Lru/noties/scrollable/n$a;->a(F)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    mul-float v0, v0, p1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    cmpl-float p1, v0, p1

    .line 11
    .line 12
    if-lez p1, :cond_0

    .line 13
    .line 14
    sget p1, Lru/noties/scrollable/n$a;->c:F

    .line 15
    .line 16
    add-float/2addr v0, p1

    .line 17
    :cond_0
    return v0
.end method
