.class public Lcom/byazt/oj/uj$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x313,
        0x63
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/oj/uj;->ve()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/animation/ObjectAnimator;

.field public final synthetic tt:Lcom/byazt/oj/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/oj/uj;Landroid/animation/ObjectAnimator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/oj/uj$1;->tt:Lcom/byazt/oj/uj;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/oj/uj$1;->c:Landroid/animation/ObjectAnimator;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/byazt/oj/uj$1;->c:Landroid/animation/ObjectAnimator;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/animation/Animator;->pause()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/byazt/oj/uj$c;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/oj/uj$1;->tt:Lcom/byazt/oj/uj;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/byazt/oj/uj$1;->c:Landroid/animation/ObjectAnimator;

    .line 11
    .line 12
    invoke-direct {p1, v0, v1}, Lcom/byazt/oj/uj$c;-><init>(Lcom/byazt/oj/uj;Landroid/animation/ObjectAnimator;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/byazt/oj/uj$1;->tt:Lcom/byazt/oj/uj;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/byazt/oj/uj;->tt:Lcom/byazt/aq/c;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/byazt/aq/c;->nu()D

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    mul-double v0, v0, v2

    .line 29
    .line 30
    double-to-long v0, v0

    .line 31
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 32
    .line 33
    invoke-static {p1, v0, v1, v2}, Lcom/byazt/or/n;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p1, v0}, Lcom/byazt/oj/uj$c;->c(Ljava/util/concurrent/ScheduledFuture;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/byazt/oj/uj$1;->tt:Lcom/byazt/oj/uj;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/byazt/oj/uj;->c(Lcom/byazt/oj/uj;)Ljava/util/Set;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
