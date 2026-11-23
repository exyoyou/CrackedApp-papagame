.class Lcom/kongzue/dialogx/dialogs/l$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/l;->N2(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:F

.field final synthetic c:F

.field final synthetic d:Lcom/kongzue/dialogx/dialogs/l;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/l;FF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/l$c;->d:Lcom/kongzue/dialogx/dialogs/l;

    .line 2
    .line 3
    iput p2, p0, Lcom/kongzue/dialogx/dialogs/l$c;->b:F

    .line 4
    .line 5
    iput p3, p0, Lcom/kongzue/dialogx/dialogs/l$c;->c:F

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$c;->d:Lcom/kongzue/dialogx/dialogs/l;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/l;->k2()Lcom/kongzue/dialogx/dialogs/l$h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_6

    .line 8
    .line 9
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$c;->d:Lcom/kongzue/dialogx/dialogs/l;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/l;->P1(Lcom/kongzue/dialogx/dialogs/l;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto/16 :goto_3

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$c;->d:Lcom/kongzue/dialogx/dialogs/l;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/l;->k2()Lcom/kongzue/dialogx/dialogs/l$h;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/l$h;->b:Landroid/view/ViewGroup;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/lang/Float;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 34
    .line 35
    .line 36
    move-result v11

    .line 37
    iget v1, p0, Lcom/kongzue/dialogx/dialogs/l$c;->b:F

    .line 38
    .line 39
    iget v2, p0, Lcom/kongzue/dialogx/dialogs/l$c;->c:F

    .line 40
    .line 41
    sub-float/2addr v1, v2

    .line 42
    sget-object v2, Lcom/kongzue/dialogx/dialogs/l;->k2:Lcom/kongzue/dialogx/interfaces/a0;

    .line 43
    .line 44
    if-eqz v2, :cond_4

    .line 45
    .line 46
    sget-object v3, Lcom/kongzue/dialogx/dialogs/l;->e2:Ljava/util/List;

    .line 47
    .line 48
    if-nez v3, :cond_1

    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-object v4, p0, Lcom/kongzue/dialogx/dialogs/l$c;->d:Lcom/kongzue/dialogx/dialogs/l;

    .line 53
    .line 54
    iget-object v4, v4, Lcom/kongzue/dialogx/dialogs/l;->O:Lcom/kongzue/dialogx/dialogs/l;

    .line 55
    .line 56
    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    :goto_0
    iget-object v4, p0, Lcom/kongzue/dialogx/dialogs/l$c;->d:Lcom/kongzue/dialogx/dialogs/l;

    .line 61
    .line 62
    iget-object v4, v4, Lcom/kongzue/dialogx/dialogs/l;->O:Lcom/kongzue/dialogx/dialogs/l;

    .line 63
    .line 64
    iget v5, p0, Lcom/kongzue/dialogx/dialogs/l$c;->c:F

    .line 65
    .line 66
    iget v6, p0, Lcom/kongzue/dialogx/dialogs/l$c;->b:F

    .line 67
    .line 68
    const/high16 v7, 0x3f800000    # 1.0f

    .line 69
    .line 70
    const/4 v8, 0x0

    .line 71
    cmpl-float v9, v1, v8

    .line 72
    .line 73
    if-nez v9, :cond_2

    .line 74
    .line 75
    const/high16 v9, 0x3f800000    # 1.0f

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    sub-float v9, v11, v5

    .line 79
    .line 80
    div-float/2addr v9, v1

    .line 81
    :goto_1
    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    invoke-static {v8, v1}, Ljava/lang/Math;->max(FF)F

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    sget-object v1, Lcom/kongzue/dialogx/dialogs/l;->e2:Ljava/util/List;

    .line 90
    .line 91
    if-nez v1, :cond_3

    .line 92
    .line 93
    const/4 v1, 0x1

    .line 94
    const/4 v9, 0x1

    .line 95
    goto :goto_2

    .line 96
    :cond_3
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/l$c;->d:Lcom/kongzue/dialogx/dialogs/l;

    .line 97
    .line 98
    invoke-static {v1}, Lcom/kongzue/dialogx/dialogs/l;->O1(Lcom/kongzue/dialogx/dialogs/l;)I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    move v9, v1

    .line 103
    :goto_2
    const/4 v10, 0x0

    .line 104
    move-object v1, v2

    .line 105
    move v2, v3

    .line 106
    move-object v3, v4

    .line 107
    move-object v4, v0

    .line 108
    move-object v8, p1

    .line 109
    invoke-virtual/range {v1 .. v10}, Lcom/kongzue/dialogx/interfaces/a0;->a(ILcom/kongzue/dialogx/interfaces/BaseDialog;Landroid/view/View;FFFLandroid/animation/ValueAnimator;IZ)Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-eqz p1, :cond_4

    .line 114
    .line 115
    return-void

    .line 116
    :cond_4
    if-eqz v0, :cond_5

    .line 117
    .line 118
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    if-eqz p1, :cond_5

    .line 123
    .line 124
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/l$c;->d:Lcom/kongzue/dialogx/dialogs/l;

    .line 125
    .line 126
    invoke-static {p1, v11}, Lcom/kongzue/dialogx/dialogs/l;->W0(Lcom/kongzue/dialogx/dialogs/l;F)F

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    invoke-virtual {v0, p1}, Landroid/view/View;->setY(F)V

    .line 131
    .line 132
    .line 133
    :cond_5
    return-void

    .line 134
    :cond_6
    :goto_3
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 135
    .line 136
    .line 137
    return-void
.end method
