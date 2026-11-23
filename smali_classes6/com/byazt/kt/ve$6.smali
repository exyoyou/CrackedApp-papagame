.class public Lcom/byazt/kt/ve$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa6,
        0x182
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/kt/ve;->tt(Lcom/byazt/kt/RecyclerView$gu;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/byazt/kt/ve;

.field public final synthetic c:Lcom/byazt/kt/RecyclerView$gu;

.field public final synthetic n:Landroid/view/ViewPropertyAnimator;

.field public final synthetic tt:I

.field public final synthetic uj:I

.field public final synthetic ve:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/byazt/kt/ve;Lcom/byazt/kt/RecyclerView$gu;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/kt/ve$6;->a:Lcom/byazt/kt/ve;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/kt/ve$6;->c:Lcom/byazt/kt/RecyclerView$gu;

    .line 4
    .line 5
    iput p3, p0, Lcom/byazt/kt/ve$6;->tt:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/kt/ve$6;->ve:Landroid/view/View;

    .line 8
    .line 9
    iput p5, p0, Lcom/byazt/kt/ve$6;->uj:I

    .line 10
    .line 11
    iput-object p6, p0, Lcom/byazt/kt/ve$6;->n:Landroid/view/ViewPropertyAnimator;

    .line 12
    .line 13
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/byazt/kt/ve$6;->tt:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/byazt/kt/ve$6;->ve:Landroid/view/View;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget p1, p0, Lcom/byazt/kt/ve$6;->uj:I

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    iget-object p1, p0, Lcom/byazt/kt/ve$6;->ve:Landroid/view/View;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/byazt/kt/ve$6;->n:Landroid/view/ViewPropertyAnimator;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/byazt/kt/ve$6;->a:Lcom/byazt/kt/ve;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/kt/ve$6;->c:Lcom/byazt/kt/RecyclerView$gu;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/byazt/kt/sl;->i(Lcom/byazt/kt/RecyclerView$gu;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/byazt/kt/ve$6;->a:Lcom/byazt/kt/ve;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/byazt/kt/ve;->n:Ljava/util/ArrayList;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/byazt/kt/ve$6;->c:Lcom/byazt/kt/RecyclerView$gu;

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/byazt/kt/ve$6;->a:Lcom/byazt/kt/ve;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/byazt/kt/ve;->ve()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
