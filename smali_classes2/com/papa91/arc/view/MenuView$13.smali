.class Lcom/papa91/arc/view/MenuView$13;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/view/MenuView;->showResultAnimationRedPackage(ILcom/papa91/arc/bean/EndGameAllowBean;)V
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
    iput-object p1, p0, Lcom/papa91/arc/view/MenuView$13;->this$0:Lcom/papa91/arc/view/MenuView;

    .line 2
    .line 3
    iput p2, p0, Lcom/papa91/arc/view/MenuView$13;->val$mills:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/papa91/arc/view/MenuView$13;->val$bean:Lcom/papa91/arc/bean/EndGameAllowBean;

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
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView$13;->this$0:Lcom/papa91/arc/view/MenuView;

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
    iget p1, p0, Lcom/papa91/arc/view/MenuView$13;->val$mills:I

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
    const-string v2, "\u79d2"

    .line 25
    .line 26
    cmpg-float v1, p1, v1

    .line 27
    .line 28
    if-gez v1, :cond_0

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    new-instance v3, Ljava/text/DecimalFormat;

    .line 36
    .line 37
    const-string v4, "#0.00"

    .line 38
    .line 39
    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    float-to-double v4, p1

    .line 43
    invoke-virtual {v3, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    float-to-int p1, p1

    .line 64
    div-int/lit8 v3, p1, 0x3c

    .line 65
    .line 66
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v3, "\u5206"

    .line 70
    .line 71
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    rem-int/lit8 p1, p1, 0x3c

    .line 75
    .line 76
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    :goto_0
    iget-object v1, p0, Lcom/papa91/arc/view/MenuView$13;->this$0:Lcom/papa91/arc/view/MenuView;

    .line 87
    .line 88
    iget-object v1, v1, Lcom/papa91/arc/view/MenuView;->tvTimeCost:Landroid/widget/TextView;

    .line 89
    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v3, "\u7528\u65f6\uff1a"

    .line 96
    .line 97
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    .line 109
    .line 110
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView$13;->this$0:Lcom/papa91/arc/view/MenuView;

    .line 111
    .line 112
    iget-object p1, p1, Lcom/papa91/arc/view/MenuView;->tvRewardTips1:Landroid/widget/TextView;

    .line 113
    .line 114
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView$13;->this$0:Lcom/papa91/arc/view/MenuView;

    .line 118
    .line 119
    iget-object p1, p1, Lcom/papa91/arc/view/MenuView;->tvRewardTips2:Landroid/widget/TextView;

    .line 120
    .line 121
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 122
    .line 123
    .line 124
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView$13;->val$bean:Lcom/papa91/arc/bean/EndGameAllowBean;

    .line 125
    .line 126
    invoke-virtual {p1}, Lcom/papa91/arc/bean/EndGameAllowBean;->getRedPacketList()Ljava/util/List;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    if-eqz p1, :cond_1

    .line 131
    .line 132
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-lez v0, :cond_1

    .line 137
    .line 138
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView$13;->this$0:Lcom/papa91/arc/view/MenuView;

    .line 139
    .line 140
    iget-object v0, v0, Lcom/papa91/arc/view/MenuView;->tvRewardTips2:Landroid/widget/TextView;

    .line 141
    .line 142
    new-instance v1, Ljava/util/Random;

    .line 143
    .line 144
    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    check-cast p1, Ljava/lang/CharSequence;

    .line 160
    .line 161
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    .line 163
    .line 164
    :cond_1
    new-instance p1, Landroid/os/Handler;

    .line 165
    .line 166
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 167
    .line 168
    .line 169
    new-instance v0, Lcom/papa91/arc/view/MenuView$13$1;

    .line 170
    .line 171
    invoke-direct {v0, p0}, Lcom/papa91/arc/view/MenuView$13$1;-><init>(Lcom/papa91/arc/view/MenuView$13;)V

    .line 172
    .line 173
    .line 174
    const-wide/16 v1, 0x5dc

    .line 175
    .line 176
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 177
    .line 178
    .line 179
    return-void
.end method
