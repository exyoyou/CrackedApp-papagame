.class Lcom/kongzue/dialogx/dialogs/l$h$b;
.super Lcom/kongzue/dialogx/interfaces/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/l$h;->d()Lcom/kongzue/dialogx/interfaces/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kongzue/dialogx/interfaces/g<",
        "Lcom/kongzue/dialogx/dialogs/l;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/kongzue/dialogx/dialogs/l$h;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/l$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/l$h$b;->a:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/g;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/kongzue/dialogx/dialogs/l;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/l$h$b;->c(Lcom/kongzue/dialogx/dialogs/l;Landroid/view/ViewGroup;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/kongzue/dialogx/dialogs/l;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/l$h$b;->d(Lcom/kongzue/dialogx/dialogs/l;Landroid/view/ViewGroup;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c(Lcom/kongzue/dialogx/dialogs/l;Landroid/view/ViewGroup;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->u()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/l$h$b;->a:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/l$h;->a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->u()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :goto_0
    iget-object p2, p0, Lcom/kongzue/dialogx/dialogs/l$h$b;->a:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 21
    .line 22
    iget-object p2, p2, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 23
    .line 24
    iget p2, p2, Lcom/kongzue/dialogx/dialogs/l;->R:I

    .line 25
    .line 26
    if-nez p2, :cond_1

    .line 27
    .line 28
    sget p2, Lcom/kongzue/dialogx/R$anim;->anim_dialogx_notification_exit:I

    .line 29
    .line 30
    :cond_1
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object p2, p0, Lcom/kongzue/dialogx/dialogs/l$h$b;->a:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 35
    .line 36
    invoke-virtual {p2, p1}, Lcom/kongzue/dialogx/dialogs/l$h;->f(Landroid/view/animation/Animation;)J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 41
    .line 42
    .line 43
    const/4 p2, 0x1

    .line 44
    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 45
    .line 46
    .line 47
    iget-object p2, p0, Lcom/kongzue/dialogx/dialogs/l$h$b;->a:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 48
    .line 49
    iget-object p2, p2, Lcom/kongzue/dialogx/dialogs/l$h;->b:Landroid/view/ViewGroup;

    .line 50
    .line 51
    invoke-virtual {p2, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/l$h$b;->a:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 55
    .line 56
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/l$h;->a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const/4 p2, 0x0

    .line 63
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    new-instance p2, Landroid/view/animation/AccelerateInterpolator;

    .line 68
    .line 69
    invoke-direct {p2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public d(Lcom/kongzue/dialogx/dialogs/l;Landroid/view/ViewGroup;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->u()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/kongzue/dialogx/dialogs/l$h$b;->a:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 6
    .line 7
    iget-object p2, p2, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 8
    .line 9
    iget p2, p2, Lcom/kongzue/dialogx/dialogs/l;->Q:I

    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    sget p2, Lcom/kongzue/dialogx/R$anim;->anim_dialogx_notification_enter:I

    .line 14
    .line 15
    :cond_0
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p2, p0, Lcom/kongzue/dialogx/dialogs/l$h$b;->a:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 20
    .line 21
    invoke-virtual {p2, p1}, Lcom/kongzue/dialogx/dialogs/l$h;->e(Landroid/view/animation/Animation;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    .line 26
    .line 27
    const/high16 v2, 0x40000000    # 2.0f

    .line 28
    .line 29
    invoke-direct {p2, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 36
    .line 37
    .line 38
    const/4 p2, 0x1

    .line 39
    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 40
    .line 41
    .line 42
    iget-object p2, p0, Lcom/kongzue/dialogx/dialogs/l$h$b;->a:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 43
    .line 44
    iget-object p2, p2, Lcom/kongzue/dialogx/dialogs/l$h;->b:Landroid/view/ViewGroup;

    .line 45
    .line 46
    invoke-virtual {p2, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/l$h$b;->a:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 50
    .line 51
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/l$h;->a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const/high16 p2, 0x3f800000    # 1.0f

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    .line 68
    .line 69
    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const/4 p2, 0x0

    .line 77
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 78
    .line 79
    .line 80
    return-void
.end method
