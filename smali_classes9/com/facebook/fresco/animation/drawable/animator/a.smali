.class public Lcom/facebook/fresco/animation/drawable/animator/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Lcom/facebook/fresco/animation/drawable/a;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "drawable"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/fresco/animation/drawable/animator/a$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/facebook/fresco/animation/drawable/animator/a$a;-><init>(Lcom/facebook/fresco/animation/drawable/a;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static b(Lcom/facebook/fresco/animation/drawable/a;)Landroid/animation/ValueAnimator;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animatedDrawable"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/fresco/animation/drawable/a;->g()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Landroid/animation/ValueAnimator;

    .line 6
    .line 7
    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/facebook/fresco/animation/drawable/a;->h()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    long-to-int v3, v2

    .line 15
    const/4 v2, 0x0

    .line 16
    filled-new-array {v2, v3}, [I

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/facebook/fresco/animation/drawable/a;->h()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 28
    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, -0x1

    .line 34
    :goto_0
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p0}, Lcom/facebook/fresco/animation/drawable/animator/a;->a(Lcom/facebook/fresco/animation/drawable/a;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {v1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 50
    .line 51
    .line 52
    return-object v1
.end method

.method public static c(Lcom/facebook/fresco/animation/drawable/a;I)Landroid/animation/ValueAnimator;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "animatedDrawable",
            "maxDurationMs"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/facebook/fresco/animation/drawable/animator/a;->b(Lcom/facebook/fresco/animation/drawable/a;)Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    int-to-long v1, p1

    .line 10
    invoke-virtual {p0}, Lcom/facebook/fresco/animation/drawable/a;->h()J

    .line 11
    .line 12
    .line 13
    move-result-wide p0

    .line 14
    div-long/2addr v1, p0

    .line 15
    const-wide/16 p0, 0x1

    .line 16
    .line 17
    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->max(JJ)J

    .line 18
    .line 19
    .line 20
    move-result-wide p0

    .line 21
    long-to-int p1, p0

    .line 22
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method
