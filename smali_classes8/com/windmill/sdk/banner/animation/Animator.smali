.class public Lcom/windmill/sdk/banner/animation/Animator;
.super Landroid/widget/ViewAnimator;
.source "SourceFile"


# instance fields
.field private a:Lcom/windmill/sdk/banner/animation/f;

.field private b:Lcom/windmill/sdk/banner/animation/h;

.field private c:Lcom/windmill/sdk/banner/animation/g;

.field private d:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/windmill/sdk/banner/animation/h;Lcom/windmill/sdk/banner/animation/g;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "type",
            "direction",
            "duration"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/windmill/sdk/banner/animation/Animator;->a:Lcom/windmill/sdk/banner/animation/f;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/windmill/sdk/banner/animation/Animator;->b:Lcom/windmill/sdk/banner/animation/h;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/windmill/sdk/banner/animation/Animator;->c:Lcom/windmill/sdk/banner/animation/g;

    .line 10
    .line 11
    iput-wide p4, p0, Lcom/windmill/sdk/banner/animation/Animator;->d:J

    .line 12
    .line 13
    invoke-static {p2, p4, p5, p3}, Lcom/windmill/sdk/banner/animation/a;->a(Lcom/windmill/sdk/banner/animation/h;JLcom/windmill/sdk/banner/animation/g;)Lcom/windmill/sdk/banner/animation/f;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/windmill/sdk/banner/animation/Animator;->a:Lcom/windmill/sdk/banner/animation/f;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/windmill/sdk/banner/animation/Animator;->setAnimation()V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public clearAnimation()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public getTransitionDirection()Lcom/windmill/sdk/banner/animation/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/banner/animation/Animator;->c:Lcom/windmill/sdk/banner/animation/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTransitionDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/windmill/sdk/banner/animation/Animator;->d:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getTransitionType()Lcom/windmill/sdk/banner/animation/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/banner/animation/Animator;->b:Lcom/windmill/sdk/banner/animation/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public setAnimation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/banner/animation/Animator;->a:Lcom/windmill/sdk/banner/animation/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/windmill/sdk/banner/animation/f;->a()Landroid/view/animation/Animation;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/windmill/sdk/banner/animation/Animator;->a:Lcom/windmill/sdk/banner/animation/f;

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/windmill/sdk/banner/animation/f;->b()Landroid/view/animation/Animation;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public setTransitionDirection(Lcom/windmill/sdk/banner/animation/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/banner/animation/Animator;->c:Lcom/windmill/sdk/banner/animation/g;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/windmill/sdk/banner/animation/Animator;->c:Lcom/windmill/sdk/banner/animation/g;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/windmill/sdk/banner/animation/Animator;->b:Lcom/windmill/sdk/banner/animation/h;

    .line 8
    .line 9
    iget-wide v1, p0, Lcom/windmill/sdk/banner/animation/Animator;->d:J

    .line 10
    .line 11
    invoke-static {v0, v1, v2, p1}, Lcom/windmill/sdk/banner/animation/a;->a(Lcom/windmill/sdk/banner/animation/h;JLcom/windmill/sdk/banner/animation/g;)Lcom/windmill/sdk/banner/animation/f;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/windmill/sdk/banner/animation/Animator;->a:Lcom/windmill/sdk/banner/animation/f;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/windmill/sdk/banner/animation/Animator;->setAnimation()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public setTransitionDuration(J)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "duration"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/windmill/sdk/banner/animation/Animator;->d:J

    .line 2
    .line 3
    cmp-long v2, v0, p1

    .line 4
    .line 5
    if-eqz v2, :cond_0

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/windmill/sdk/banner/animation/Animator;->d:J

    .line 8
    .line 9
    iget-object v0, p0, Lcom/windmill/sdk/banner/animation/Animator;->b:Lcom/windmill/sdk/banner/animation/h;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/windmill/sdk/banner/animation/Animator;->c:Lcom/windmill/sdk/banner/animation/g;

    .line 12
    .line 13
    invoke-static {v0, p1, p2, v1}, Lcom/windmill/sdk/banner/animation/a;->a(Lcom/windmill/sdk/banner/animation/h;JLcom/windmill/sdk/banner/animation/g;)Lcom/windmill/sdk/banner/animation/f;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/windmill/sdk/banner/animation/Animator;->a:Lcom/windmill/sdk/banner/animation/f;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/windmill/sdk/banner/animation/Animator;->setAnimation()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public setTransitionType(Lcom/windmill/sdk/banner/animation/h;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/banner/animation/Animator;->b:Lcom/windmill/sdk/banner/animation/h;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/windmill/sdk/banner/animation/Animator;->b:Lcom/windmill/sdk/banner/animation/h;

    .line 6
    .line 7
    iget-wide v0, p0, Lcom/windmill/sdk/banner/animation/Animator;->d:J

    .line 8
    .line 9
    iget-object v2, p0, Lcom/windmill/sdk/banner/animation/Animator;->c:Lcom/windmill/sdk/banner/animation/g;

    .line 10
    .line 11
    invoke-static {p1, v0, v1, v2}, Lcom/windmill/sdk/banner/animation/a;->a(Lcom/windmill/sdk/banner/animation/h;JLcom/windmill/sdk/banner/animation/g;)Lcom/windmill/sdk/banner/animation/f;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/windmill/sdk/banner/animation/Animator;->a:Lcom/windmill/sdk/banner/animation/f;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/windmill/sdk/banner/animation/Animator;->setAnimation()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
