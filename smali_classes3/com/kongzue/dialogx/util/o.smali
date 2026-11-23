.class public Lcom/kongzue/dialogx/util/o;
.super Landroid/animation/ValueAnimator;
.source "SourceFile"


# instance fields
.field b:F

.field c:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static varargs c([F)Lcom/kongzue/dialogx/util/o;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/util/o;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/util/o;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/util/o;->setFloatValues([F)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public a()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/util/o;->c:F

    .line 2
    .line 3
    return v0
.end method

.method public b()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/util/o;->b:F

    .line 2
    .line 3
    return v0
.end method

.method public varargs setFloatValues([F)V
    .locals 2

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x1

    .line 3
    if-le v0, v1, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    aget v0, p1, v0

    .line 7
    .line 8
    iput v0, p0, Lcom/kongzue/dialogx/util/o;->b:F

    .line 9
    .line 10
    array-length v0, p1

    .line 11
    sub-int/2addr v0, v1

    .line 12
    aget v0, p1, v0

    .line 13
    .line 14
    iput v0, p0, Lcom/kongzue/dialogx/util/o;->c:F

    .line 15
    .line 16
    :cond_0
    invoke-super {p0, p1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
