.class Lcom/kongzue/dialogx/dialogs/CustomDialog$f$h;
.super Lcom/kongzue/dialogx/interfaces/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->c()Lcom/kongzue/dialogx/interfaces/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kongzue/dialogx/interfaces/g<",
        "Lcom/kongzue/dialogx/dialogs/CustomDialog;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/CustomDialog$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$h;->a:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

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
    check-cast p1, Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$h;->c(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/ViewGroup;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$h;->d(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/ViewGroup;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/ViewGroup;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$h;->a:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->O1()Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_5

    .line 10
    .line 11
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$h;->a:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->O1()Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->b:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_0
    sget p1, Lcom/kongzue/dialogx/R$anim;->anim_dialogx_default_exit:I

    .line 25
    .line 26
    sget p2, Lcom/kongzue/dialogx/dialogs/CustomDialog;->V1:I

    .line 27
    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    move p1, p2

    .line 31
    :cond_1
    iget-object p2, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$h;->a:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 32
    .line 33
    iget-object v0, p2, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 34
    .line 35
    iget v1, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->S:I

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    move p1, v1

    .line 40
    :cond_2
    iget-object v1, p2, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->b:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 41
    .line 42
    if-eqz v1, :cond_4

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N()Landroid/app/Activity;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    if-nez p2, :cond_3

    .line 49
    .line 50
    iget-object p2, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$h;->a:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 51
    .line 52
    iget-object p2, p2, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->b:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 53
    .line 54
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    goto :goto_0

    .line 59
    :cond_3
    iget-object p2, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$h;->a:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 60
    .line 61
    iget-object p2, p2, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 62
    .line 63
    invoke-virtual {p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N()Landroid/app/Activity;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    :goto_0
    invoke-static {p2, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iget-object p2, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$h;->a:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 72
    .line 73
    invoke-virtual {p2, p1}, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e(Landroid/view/animation/Animation;)J

    .line 74
    .line 75
    .line 76
    move-result-wide v0

    .line 77
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 78
    .line 79
    .line 80
    iget-object p2, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$h;->a:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 81
    .line 82
    iget-object p2, p2, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->b:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 83
    .line 84
    invoke-virtual {p2, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_4
    const/4 p1, 0x0

    .line 89
    invoke-virtual {p2, p1}, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e(Landroid/view/animation/Animation;)J

    .line 90
    .line 91
    .line 92
    move-result-wide v0

    .line 93
    :goto_1
    const/4 p1, 0x2

    .line 94
    new-array p1, p1, [F

    .line 95
    .line 96
    fill-array-data p1, :array_0

    .line 97
    .line 98
    .line 99
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 104
    .line 105
    .line 106
    new-instance p2, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$h$b;

    .line 107
    .line 108
    invoke-direct {p2, p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$h$b;-><init>(Lcom/kongzue/dialogx/dialogs/CustomDialog$f$h;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 115
    .line 116
    .line 117
    :cond_5
    :goto_2
    return-void

    .line 118
    nop

    .line 119
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public d(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/ViewGroup;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$h;->a:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->O1()Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_3

    .line 10
    .line 11
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$h;->a:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->O1()Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->b:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$h;->a:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->k1(Lcom/kongzue/dialogx/dialogs/CustomDialog;)Landroid/view/animation/Animation;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object p2, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$h;->a:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 33
    .line 34
    invoke-virtual {p2, p1}, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->d(Landroid/view/animation/Animation;)J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$h;->a:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 42
    .line 43
    iget-object p2, p2, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->b:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 44
    .line 45
    if-eqz p2, :cond_1

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    iget-object p2, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$h;->a:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 52
    .line 53
    iget-object p2, p2, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->b:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 54
    .line 55
    invoke-virtual {p2, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$h;->a:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 59
    .line 60
    iget-object p2, p1, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 61
    .line 62
    iget p2, p2, Lcom/kongzue/dialogx/dialogs/CustomDialog;->U:I

    .line 63
    .line 64
    if-eqz p2, :cond_2

    .line 65
    .line 66
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->setBackgroundColor(I)V

    .line 69
    .line 70
    .line 71
    :cond_2
    const/4 p1, 0x2

    .line 72
    new-array p1, p1, [F

    .line 73
    .line 74
    fill-array-data p1, :array_0

    .line 75
    .line 76
    .line 77
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 82
    .line 83
    .line 84
    new-instance p2, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$h$a;

    .line 85
    .line 86
    invoke-direct {p2, p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$h$a;-><init>(Lcom/kongzue/dialogx/dialogs/CustomDialog$f$h;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 93
    .line 94
    .line 95
    :cond_3
    :goto_0
    return-void

    .line 96
    nop

    .line 97
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
