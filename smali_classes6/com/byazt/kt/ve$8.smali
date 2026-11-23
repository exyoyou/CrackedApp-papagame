.class public Lcom/byazt/kt/ve$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa6,
        0x292
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/kt/ve;->c(Lcom/byazt/kt/ve$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/kt/ve$c;

.field public final synthetic tt:Landroid/view/ViewPropertyAnimator;

.field public final synthetic uj:Lcom/byazt/kt/ve;

.field public final synthetic ve:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/byazt/kt/ve;Lcom/byazt/kt/ve$c;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/kt/ve$8;->uj:Lcom/byazt/kt/ve;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/kt/ve$8;->c:Lcom/byazt/kt/ve$c;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/kt/ve$8;->tt:Landroid/view/ViewPropertyAnimator;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/kt/ve$8;->ve:Landroid/view/View;

    .line 8
    .line 9
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/byazt/kt/ve$8;->tt:Landroid/view/ViewPropertyAnimator;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/byazt/kt/ve$8;->ve:Landroid/view/View;

    .line 8
    .line 9
    const/high16 v0, 0x3f800000    # 1.0f

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/byazt/kt/ve$8;->ve:Landroid/view/View;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/byazt/kt/ve$8;->ve:Landroid/view/View;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/byazt/kt/ve$8;->uj:Lcom/byazt/kt/ve;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/byazt/kt/ve$8;->c:Lcom/byazt/kt/ve$c;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/byazt/kt/ve$c;->tt:Lcom/byazt/kt/RecyclerView$gu;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {p1, v0, v1}, Lcom/byazt/kt/sl;->c(Lcom/byazt/kt/RecyclerView$gu;Z)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/byazt/kt/ve$8;->uj:Lcom/byazt/kt/ve;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/byazt/kt/ve;->sp:Ljava/util/ArrayList;

    .line 38
    .line 39
    iget-object v0, p0, Lcom/byazt/kt/ve$8;->c:Lcom/byazt/kt/ve$c;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/byazt/kt/ve$c;->tt:Lcom/byazt/kt/RecyclerView$gu;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/byazt/kt/ve$8;->uj:Lcom/byazt/kt/ve;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/byazt/kt/ve;->ve()V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
