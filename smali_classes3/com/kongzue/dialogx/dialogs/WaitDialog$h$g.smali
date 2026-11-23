.class Lcom/kongzue/dialogx/dialogs/WaitDialog$h$g;
.super Lcom/kongzue/dialogx/interfaces/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->d()Lcom/kongzue/dialogx/interfaces/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kongzue/dialogx/interfaces/g<",
        "Lcom/kongzue/dialogx/dialogs/WaitDialog;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/kongzue/dialogx/dialogs/WaitDialog$h;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/WaitDialog$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$g;->a:Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

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
    check-cast p1, Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$g;->c(Lcom/kongzue/dialogx/dialogs/WaitDialog;Landroid/view/ViewGroup;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$g;->d(Lcom/kongzue/dialogx/dialogs/WaitDialog;Landroid/view/ViewGroup;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c(Lcom/kongzue/dialogx/dialogs/WaitDialog;Landroid/view/ViewGroup;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$g;->a:Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N()Landroid/app/Activity;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$g;->a:Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :cond_0
    if-nez p1, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    sget p2, Lcom/kongzue/dialogx/R$anim;->anim_dialogx_default_exit:I

    .line 23
    .line 24
    sget v0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->L1:I

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    move p2, v0

    .line 29
    :cond_2
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$g;->a:Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 32
    .line 33
    iget v0, v0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->P:I

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    move p2, v0

    .line 38
    :cond_3
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object p2, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$g;->a:Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 43
    .line 44
    invoke-virtual {p2, p1}, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->f(Landroid/view/animation/Animation;)J

    .line 45
    .line 46
    .line 47
    move-result-wide v0

    .line 48
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 49
    .line 50
    .line 51
    new-instance p2, Landroid/view/animation/AccelerateInterpolator;

    .line 52
    .line 53
    invoke-direct {p2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 57
    .line 58
    .line 59
    iget-object p2, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$g;->a:Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 60
    .line 61
    iget-object p2, p2, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 62
    .line 63
    invoke-virtual {p2, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$g;->a:Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 67
    .line 68
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    const/4 p2, 0x0

    .line 75
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    new-instance p2, Landroid/view/animation/AccelerateInterpolator;

    .line 80
    .line 81
    invoke-direct {p2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 89
    .line 90
    .line 91
    const/4 p1, 0x2

    .line 92
    new-array p1, p1, [F

    .line 93
    .line 94
    fill-array-data p1, :array_0

    .line 95
    .line 96
    .line 97
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 102
    .line 103
    .line 104
    new-instance p2, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$g$b;

    .line 105
    .line 106
    invoke-direct {p2, p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$g$b;-><init>(Lcom/kongzue/dialogx/dialogs/WaitDialog$h$g;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    nop

    .line 117
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public d(Lcom/kongzue/dialogx/dialogs/WaitDialog;Landroid/view/ViewGroup;)V
    .locals 2

    .line 1
    sget p1, Lcom/kongzue/dialogx/R$anim;->anim_dialogx_default_enter:I

    .line 2
    .line 3
    sget p2, Lcom/kongzue/dialogx/dialogs/WaitDialog;->v1:I

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    move p1, p2

    .line 8
    :cond_0
    iget-object p2, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$g;->a:Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 9
    .line 10
    iget-object p2, p2, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 11
    .line 12
    iget v0, p2, Lcom/kongzue/dialogx/dialogs/WaitDialog;->O:I

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    move p1, v0

    .line 17
    :cond_1
    invoke-virtual {p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N()Landroid/app/Activity;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-static {p2, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object p2, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$g;->a:Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 26
    .line 27
    invoke-virtual {p2, p1}, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->e(Landroid/view/animation/Animation;)J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    .line 32
    .line 33
    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 40
    .line 41
    .line 42
    iget-object p2, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$g;->a:Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 43
    .line 44
    iget-object p2, p2, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 45
    .line 46
    invoke-virtual {p2, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 47
    .line 48
    .line 49
    const/4 p1, 0x2

    .line 50
    new-array p1, p1, [F

    .line 51
    .line 52
    fill-array-data p1, :array_0

    .line 53
    .line 54
    .line 55
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 60
    .line 61
    .line 62
    new-instance p2, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$g$a;

    .line 63
    .line 64
    invoke-direct {p2, p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$g$a;-><init>(Lcom/kongzue/dialogx/dialogs/WaitDialog$h$g;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$g;->a:Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 74
    .line 75
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    const/high16 p2, 0x3f800000    # 1.0f

    .line 86
    .line 87
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    .line 92
    .line 93
    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    const/4 p2, 0x0

    .line 101
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
