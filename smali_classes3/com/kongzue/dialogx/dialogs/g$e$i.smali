.class Lcom/kongzue/dialogx/dialogs/g$e$i;
.super Lcom/kongzue/dialogx/interfaces/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/g$e;->d()Lcom/kongzue/dialogx/interfaces/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kongzue/dialogx/interfaces/g<",
        "Lcom/kongzue/dialogx/dialogs/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/kongzue/dialogx/dialogs/g$e;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/g$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g$e$i;->a:Lcom/kongzue/dialogx/dialogs/g$e;

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
    check-cast p1, Lcom/kongzue/dialogx/dialogs/g;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/g$e$i;->c(Lcom/kongzue/dialogx/dialogs/g;Landroid/view/ViewGroup;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/kongzue/dialogx/dialogs/g;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/g$e$i;->d(Lcom/kongzue/dialogx/dialogs/g;Landroid/view/ViewGroup;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c(Lcom/kongzue/dialogx/dialogs/g;Landroid/view/ViewGroup;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/g$e$i;->a:Lcom/kongzue/dialogx/dialogs/g$e;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/kongzue/dialogx/dialogs/g;->v2(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->b()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    sget p1, Lcom/kongzue/dialogx/R$anim;->anim_dialogx_default_exit:I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/g$e$i;->a:Lcom/kongzue/dialogx/dialogs/g$e;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/kongzue/dialogx/dialogs/g;->w2(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->b()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    :goto_0
    sget p2, Lcom/kongzue/dialogx/dialogs/g;->k2:I

    .line 31
    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    move p1, p2

    .line 35
    :cond_1
    iget-object p2, p0, Lcom/kongzue/dialogx/dialogs/g$e$i;->a:Lcom/kongzue/dialogx/dialogs/g$e;

    .line 36
    .line 37
    iget-object p2, p2, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 38
    .line 39
    iget v0, p2, Lcom/kongzue/dialogx/dialogs/g;->R:I

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    move p1, v0

    .line 44
    :cond_2
    invoke-virtual {p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N()Landroid/app/Activity;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-static {p2, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iget-object p2, p0, Lcom/kongzue/dialogx/dialogs/g$e$i;->a:Lcom/kongzue/dialogx/dialogs/g$e;

    .line 53
    .line 54
    invoke-virtual {p2, p1}, Lcom/kongzue/dialogx/dialogs/g$e;->f(Landroid/view/animation/Animation;)J

    .line 55
    .line 56
    .line 57
    move-result-wide v0

    .line 58
    new-instance p2, Landroid/view/animation/AccelerateInterpolator;

    .line 59
    .line 60
    invoke-direct {p2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 67
    .line 68
    .line 69
    iget-object p2, p0, Lcom/kongzue/dialogx/dialogs/g$e$i;->a:Lcom/kongzue/dialogx/dialogs/g$e;

    .line 70
    .line 71
    iget-object p2, p2, Lcom/kongzue/dialogx/dialogs/g$e;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 72
    .line 73
    invoke-virtual {p2, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 74
    .line 75
    .line 76
    const/4 p1, 0x2

    .line 77
    new-array p1, p1, [F

    .line 78
    .line 79
    fill-array-data p1, :array_0

    .line 80
    .line 81
    .line 82
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 87
    .line 88
    .line 89
    new-instance p2, Lcom/kongzue/dialogx/dialogs/g$e$i$b;

    .line 90
    .line 91
    invoke-direct {p2, p0}, Lcom/kongzue/dialogx/dialogs/g$e$i$b;-><init>(Lcom/kongzue/dialogx/dialogs/g$e$i;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public d(Lcom/kongzue/dialogx/dialogs/g;Landroid/view/ViewGroup;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/g$e$i;->a:Lcom/kongzue/dialogx/dialogs/g$e;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/kongzue/dialogx/dialogs/g;->t2(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->a()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    sget p1, Lcom/kongzue/dialogx/R$anim;->anim_dialogx_default_enter:I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/g$e$i;->a:Lcom/kongzue/dialogx/dialogs/g$e;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/kongzue/dialogx/dialogs/g;->u2(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->a()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    :goto_0
    sget p2, Lcom/kongzue/dialogx/dialogs/g;->j2:I

    .line 31
    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    move p1, p2

    .line 35
    :cond_1
    iget-object p2, p0, Lcom/kongzue/dialogx/dialogs/g$e$i;->a:Lcom/kongzue/dialogx/dialogs/g$e;

    .line 36
    .line 37
    iget-object p2, p2, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 38
    .line 39
    iget v0, p2, Lcom/kongzue/dialogx/dialogs/g;->Q:I

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    move p1, v0

    .line 44
    :cond_2
    invoke-virtual {p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N()Landroid/app/Activity;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-static {p2, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iget-object p2, p0, Lcom/kongzue/dialogx/dialogs/g$e$i;->a:Lcom/kongzue/dialogx/dialogs/g$e;

    .line 53
    .line 54
    invoke-virtual {p2, p1}, Lcom/kongzue/dialogx/dialogs/g$e;->e(Landroid/view/animation/Animation;)J

    .line 55
    .line 56
    .line 57
    move-result-wide v0

    .line 58
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 59
    .line 60
    .line 61
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    .line 62
    .line 63
    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 67
    .line 68
    .line 69
    iget-object p2, p0, Lcom/kongzue/dialogx/dialogs/g$e$i;->a:Lcom/kongzue/dialogx/dialogs/g$e;

    .line 70
    .line 71
    iget-object p2, p2, Lcom/kongzue/dialogx/dialogs/g$e;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 72
    .line 73
    invoke-virtual {p2, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 74
    .line 75
    .line 76
    const/4 p1, 0x2

    .line 77
    new-array p1, p1, [F

    .line 78
    .line 79
    fill-array-data p1, :array_0

    .line 80
    .line 81
    .line 82
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 87
    .line 88
    .line 89
    new-instance p2, Lcom/kongzue/dialogx/dialogs/g$e$i$a;

    .line 90
    .line 91
    invoke-direct {p2, p0}, Lcom/kongzue/dialogx/dialogs/g$e$i$a;-><init>(Lcom/kongzue/dialogx/dialogs/g$e$i;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
