.class Lcom/papa91/arc/view/MenuView$12;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/view/MenuView;->showAnimationResult(ILcom/papa91/arc/bean/EndGameAllowBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/view/MenuView;

.field final synthetic val$bean:Lcom/papa91/arc/bean/EndGameAllowBean;

.field final synthetic val$mills:I


# direct methods
.method constructor <init>(Lcom/papa91/arc/view/MenuView;ILcom/papa91/arc/bean/EndGameAllowBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/view/MenuView$12;->this$0:Lcom/papa91/arc/view/MenuView;

    .line 2
    .line 3
    iput p2, p0, Lcom/papa91/arc/view/MenuView$12;->val$mills:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/papa91/arc/view/MenuView$12;->val$bean:Lcom/papa91/arc/bean/EndGameAllowBean;

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView$12;->this$0:Lcom/papa91/arc/view/MenuView;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/papa91/arc/view/MenuView;->tvTimeCost:Landroid/widget/TextView;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    iget p1, p0, Lcom/papa91/arc/view/MenuView$12;->val$mills:I

    .line 13
    .line 14
    int-to-float p1, p1

    .line 15
    const/high16 v1, 0x3f800000    # 1.0f

    .line 16
    .line 17
    mul-float p1, p1, v1

    .line 18
    .line 19
    const/high16 v1, 0x447a0000    # 1000.0f

    .line 20
    .line 21
    div-float/2addr p1, v1

    .line 22
    const/high16 v1, 0x42700000    # 60.0f

    .line 23
    .line 24
    cmpg-float v1, p1, v1

    .line 25
    .line 26
    if-gez v1, :cond_0

    .line 27
    .line 28
    new-instance v1, Ljava/text/DecimalFormat;

    .line 29
    .line 30
    const-string v2, "#0.00"

    .line 31
    .line 32
    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    float-to-double v2, p1

    .line 36
    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    float-to-int p1, p1

    .line 41
    div-int/lit8 v1, p1, 0x3c

    .line 42
    .line 43
    rem-int/lit8 p1, p1, 0x3c

    .line 44
    .line 45
    :goto_0
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView$12;->this$0:Lcom/papa91/arc/view/MenuView;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/papa91/arc/view/MenuView;->tvTimeCost:Landroid/widget/TextView;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/papa91/arc/view/MenuView$12;->val$bean:Lcom/papa91/arc/bean/EndGameAllowBean;

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/papa91/arc/bean/EndGameAllowBean;->getElapsedTimeHint()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView$12;->val$bean:Lcom/papa91/arc/bean/EndGameAllowBean;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/papa91/arc/bean/EndGameAllowBean;->getAwardCards()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-lez p1, :cond_2

    .line 65
    .line 66
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView$12;->val$bean:Lcom/papa91/arc/bean/EndGameAllowBean;

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/papa91/arc/bean/EndGameAllowBean;->getMultipleAwardCards()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-gtz p1, :cond_1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView$12;->this$0:Lcom/papa91/arc/view/MenuView;

    .line 76
    .line 77
    iget-object p1, p1, Lcom/papa91/arc/view/MenuView;->clReward:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView$12;->this$0:Lcom/papa91/arc/view/MenuView;

    .line 84
    .line 85
    iget-object p1, p1, Lcom/papa91/arc/view/MenuView;->clReward:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 86
    .line 87
    const/4 v0, 0x4

    .line 88
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 89
    .line 90
    .line 91
    :goto_2
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView$12;->this$0:Lcom/papa91/arc/view/MenuView;

    .line 92
    .line 93
    iget-object p1, p1, Lcom/papa91/arc/view/MenuView;->tvRewardCount:Landroid/widget/TextView;

    .line 94
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    iget-object v1, p0, Lcom/papa91/arc/view/MenuView$12;->val$bean:Lcom/papa91/arc/bean/EndGameAllowBean;

    .line 101
    .line 102
    invoke-virtual {v1}, Lcom/papa91/arc/bean/EndGameAllowBean;->getAwardCards()I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v1, ""

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView$12;->this$0:Lcom/papa91/arc/view/MenuView;

    .line 122
    .line 123
    iget-object p1, p1, Lcom/papa91/arc/view/MenuView;->tvRewardCountDouble:Landroid/widget/TextView;

    .line 124
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    iget-object v2, p0, Lcom/papa91/arc/view/MenuView$12;->val$bean:Lcom/papa91/arc/bean/EndGameAllowBean;

    .line 131
    .line 132
    invoke-virtual {v2}, Lcom/papa91/arc/bean/EndGameAllowBean;->getMultipleAwardCards()I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    .line 148
    .line 149
    new-instance p1, Landroid/os/Handler;

    .line 150
    .line 151
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 152
    .line 153
    .line 154
    new-instance v0, Lcom/papa91/arc/view/MenuView$12$1;

    .line 155
    .line 156
    invoke-direct {v0, p0}, Lcom/papa91/arc/view/MenuView$12$1;-><init>(Lcom/papa91/arc/view/MenuView$12;)V

    .line 157
    .line 158
    .line 159
    const-wide/16 v1, 0x5dc

    .line 160
    .line 161
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 162
    .line 163
    .line 164
    return-void
.end method
