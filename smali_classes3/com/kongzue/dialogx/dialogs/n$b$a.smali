.class Lcom/kongzue/dialogx/dialogs/n$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/n$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:F

.field final synthetic c:F

.field final synthetic d:Lcom/kongzue/dialogx/dialogs/n$b;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/n$b;FF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/n$b$a;->d:Lcom/kongzue/dialogx/dialogs/n$b;

    .line 2
    .line 3
    iput p2, p0, Lcom/kongzue/dialogx/dialogs/n$b$a;->b:F

    .line 4
    .line 5
    iput p3, p0, Lcom/kongzue/dialogx/dialogs/n$b$a;->c:F

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
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$b$a;->d:Lcom/kongzue/dialogx/dialogs/n$b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/n$b;->c:Lcom/kongzue/dialogx/dialogs/n;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/n;->c2()Lcom/kongzue/dialogx/dialogs/n$h;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_6

    .line 10
    .line 11
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$b$a;->d:Lcom/kongzue/dialogx/dialogs/n$b;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/n$b;->c:Lcom/kongzue/dialogx/dialogs/n;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/n;->x1(Lcom/kongzue/dialogx/dialogs/n;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto/16 :goto_3

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$b$a;->d:Lcom/kongzue/dialogx/dialogs/n$b;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/n$b;->c:Lcom/kongzue/dialogx/dialogs/n;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/n;->c2()Lcom/kongzue/dialogx/dialogs/n$h;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/n$h;->b:Landroid/widget/LinearLayout;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljava/lang/Float;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 40
    .line 41
    .line 42
    move-result v11

    .line 43
    iget v1, p0, Lcom/kongzue/dialogx/dialogs/n$b$a;->b:F

    .line 44
    .line 45
    iget v2, p0, Lcom/kongzue/dialogx/dialogs/n$b$a;->c:F

    .line 46
    .line 47
    sub-float/2addr v1, v2

    .line 48
    sget-object v2, Lcom/kongzue/dialogx/dialogs/n;->c2:Lcom/kongzue/dialogx/interfaces/a0;

    .line 49
    .line 50
    if-eqz v2, :cond_4

    .line 51
    .line 52
    sget-object v3, Lcom/kongzue/dialogx/dialogs/n;->v1:Ljava/util/List;

    .line 53
    .line 54
    if-nez v3, :cond_1

    .line 55
    .line 56
    const/4 v3, 0x0

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget-object v4, p0, Lcom/kongzue/dialogx/dialogs/n$b$a;->d:Lcom/kongzue/dialogx/dialogs/n$b;

    .line 59
    .line 60
    iget-object v4, v4, Lcom/kongzue/dialogx/dialogs/n$b;->c:Lcom/kongzue/dialogx/dialogs/n;

    .line 61
    .line 62
    iget-object v4, v4, Lcom/kongzue/dialogx/dialogs/n;->O:Lcom/kongzue/dialogx/dialogs/n;

    .line 63
    .line 64
    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    :goto_0
    iget-object v4, p0, Lcom/kongzue/dialogx/dialogs/n$b$a;->d:Lcom/kongzue/dialogx/dialogs/n$b;

    .line 69
    .line 70
    iget-object v4, v4, Lcom/kongzue/dialogx/dialogs/n$b;->c:Lcom/kongzue/dialogx/dialogs/n;

    .line 71
    .line 72
    iget-object v4, v4, Lcom/kongzue/dialogx/dialogs/n;->O:Lcom/kongzue/dialogx/dialogs/n;

    .line 73
    .line 74
    iget v5, p0, Lcom/kongzue/dialogx/dialogs/n$b$a;->c:F

    .line 75
    .line 76
    iget v6, p0, Lcom/kongzue/dialogx/dialogs/n$b$a;->b:F

    .line 77
    .line 78
    const/high16 v7, 0x3f800000    # 1.0f

    .line 79
    .line 80
    const/4 v8, 0x0

    .line 81
    cmpl-float v9, v1, v8

    .line 82
    .line 83
    if-nez v9, :cond_2

    .line 84
    .line 85
    const/high16 v9, 0x3f800000    # 1.0f

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    sub-float v9, v11, v5

    .line 89
    .line 90
    div-float/2addr v9, v1

    .line 91
    :goto_1
    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    invoke-static {v8, v1}, Ljava/lang/Math;->max(FF)F

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    sget-object v1, Lcom/kongzue/dialogx/dialogs/n;->v1:Ljava/util/List;

    .line 100
    .line 101
    if-nez v1, :cond_3

    .line 102
    .line 103
    const/4 v1, 0x1

    .line 104
    const/4 v9, 0x1

    .line 105
    goto :goto_2

    .line 106
    :cond_3
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/n$b$a;->d:Lcom/kongzue/dialogx/dialogs/n$b;

    .line 107
    .line 108
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/n$b;->c:Lcom/kongzue/dialogx/dialogs/n;

    .line 109
    .line 110
    invoke-static {v1}, Lcom/kongzue/dialogx/dialogs/n;->y1(Lcom/kongzue/dialogx/dialogs/n;)I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    move v9, v1

    .line 115
    :goto_2
    const/4 v10, 0x1

    .line 116
    move-object v1, v2

    .line 117
    move v2, v3

    .line 118
    move-object v3, v4

    .line 119
    move-object v4, v0

    .line 120
    move-object v8, p1

    .line 121
    invoke-virtual/range {v1 .. v10}, Lcom/kongzue/dialogx/interfaces/a0;->a(ILcom/kongzue/dialogx/interfaces/BaseDialog;Landroid/view/View;FFFLandroid/animation/ValueAnimator;IZ)Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-eqz p1, :cond_4

    .line 126
    .line 127
    return-void

    .line 128
    :cond_4
    if-eqz v0, :cond_5

    .line 129
    .line 130
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-eqz p1, :cond_5

    .line 135
    .line 136
    invoke-virtual {v0, v11}, Landroid/view/View;->setY(F)V

    .line 137
    .line 138
    .line 139
    :cond_5
    return-void

    .line 140
    :cond_6
    :goto_3
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 141
    .line 142
    .line 143
    return-void
.end method
