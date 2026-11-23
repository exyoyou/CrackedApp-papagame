.class Lme/relex/photodraweeview/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/relex/photodraweeview/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private final b:F

.field private final c:F

.field private final d:J

.field private final e:F

.field private final f:F

.field final synthetic g:Lme/relex/photodraweeview/a;


# direct methods
.method public constructor <init>(Lme/relex/photodraweeview/a;FFFF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lme/relex/photodraweeview/a$b;->g:Lme/relex/photodraweeview/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p4, p0, Lme/relex/photodraweeview/a$b;->b:F

    .line 7
    .line 8
    iput p5, p0, Lme/relex/photodraweeview/a$b;->c:F

    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide p4

    .line 14
    iput-wide p4, p0, Lme/relex/photodraweeview/a$b;->d:J

    .line 15
    .line 16
    iput p2, p0, Lme/relex/photodraweeview/a$b;->e:F

    .line 17
    .line 18
    iput p3, p0, Lme/relex/photodraweeview/a$b;->f:F

    .line 19
    .line 20
    return-void
.end method

.method private a()F
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lme/relex/photodraweeview/a$b;->d:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    long-to-float v0, v0

    .line 9
    const/high16 v1, 0x3f800000    # 1.0f

    .line 10
    .line 11
    mul-float v0, v0, v1

    .line 12
    .line 13
    iget-object v2, p0, Lme/relex/photodraweeview/a$b;->g:Lme/relex/photodraweeview/a;

    .line 14
    .line 15
    invoke-static {v2}, Lme/relex/photodraweeview/a;->g(Lme/relex/photodraweeview/a;)J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    long-to-float v2, v2

    .line 20
    div-float/2addr v0, v2

    .line 21
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget-object v1, p0, Lme/relex/photodraweeview/a$b;->g:Lme/relex/photodraweeview/a;

    .line 26
    .line 27
    invoke-static {v1}, Lme/relex/photodraweeview/a;->h(Lme/relex/photodraweeview/a;)Landroid/view/animation/Interpolator;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-interface {v1, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    return v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lme/relex/photodraweeview/a$b;->g:Lme/relex/photodraweeview/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lme/relex/photodraweeview/a;->r()Lcom/facebook/drawee/view/DraweeView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-direct {p0}, Lme/relex/photodraweeview/a$b;->a()F

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iget v2, p0, Lme/relex/photodraweeview/a$b;->e:F

    .line 15
    .line 16
    iget v3, p0, Lme/relex/photodraweeview/a$b;->f:F

    .line 17
    .line 18
    sub-float/2addr v3, v2

    .line 19
    mul-float v3, v3, v1

    .line 20
    .line 21
    add-float/2addr v2, v3

    .line 22
    iget-object v3, p0, Lme/relex/photodraweeview/a$b;->g:Lme/relex/photodraweeview/a;

    .line 23
    .line 24
    invoke-virtual {v3}, Lme/relex/photodraweeview/a;->getScale()F

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    div-float/2addr v2, v3

    .line 29
    iget-object v3, p0, Lme/relex/photodraweeview/a$b;->g:Lme/relex/photodraweeview/a;

    .line 30
    .line 31
    iget v4, p0, Lme/relex/photodraweeview/a$b;->b:F

    .line 32
    .line 33
    iget v5, p0, Lme/relex/photodraweeview/a$b;->c:F

    .line 34
    .line 35
    invoke-virtual {v3, v2, v4, v5}, Lme/relex/photodraweeview/a;->d(FFF)V

    .line 36
    .line 37
    .line 38
    const/high16 v2, 0x3f800000    # 1.0f

    .line 39
    .line 40
    cmpg-float v1, v1, v2

    .line 41
    .line 42
    if-gez v1, :cond_1

    .line 43
    .line 44
    iget-object v1, p0, Lme/relex/photodraweeview/a$b;->g:Lme/relex/photodraweeview/a;

    .line 45
    .line 46
    invoke-static {v1, v0, p0}, Lme/relex/photodraweeview/a;->f(Lme/relex/photodraweeview/a;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void
.end method
