.class Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:F

.field b:F

.field c:F

.field d:F

.field e:F

.field f:F

.field final synthetic g:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;


# direct methods
.method constructor <init>(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$13;->g:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    if-eq p1, v1, :cond_0

    .line 12
    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iput p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$13;->e:F

    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iput p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$13;->f:F

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$13;->e:F

    .line 29
    .line 30
    iget p2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$13;->a:F

    .line 31
    .line 32
    sub-float/2addr p1, p2

    .line 33
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    const/high16 p2, 0x41700000    # 15.0f

    .line 38
    .line 39
    cmpg-float p1, p1, p2

    .line 40
    .line 41
    if-gtz p1, :cond_3

    .line 42
    .line 43
    iget p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$13;->f:F

    .line 44
    .line 45
    iget v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$13;->b:F

    .line 46
    .line 47
    sub-float/2addr p1, v1

    .line 48
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    cmpg-float p1, p1, p2

    .line 53
    .line 54
    if-gtz p1, :cond_3

    .line 55
    .line 56
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$13;->g:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 57
    .line 58
    const/4 v2, 0x0

    .line 59
    iget p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$13;->a:F

    .line 60
    .line 61
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    iget p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$13;->b:F

    .line 66
    .line 67
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    iget p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$13;->c:F

    .line 72
    .line 73
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    iget p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$13;->d:F

    .line 78
    .line 79
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    iget p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$13;->a:F

    .line 84
    .line 85
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    iget p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$13;->b:F

    .line 90
    .line 91
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    iget p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$13;->c:F

    .line 96
    .line 97
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v9

    .line 101
    iget p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$13;->d:F

    .line 102
    .line 103
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v10

    .line 107
    const/4 v11, 0x0

    .line 108
    invoke-static/range {v1 .. v11}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    iput p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$13;->a:F

    .line 117
    .line 118
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    iput p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$13;->b:F

    .line 123
    .line 124
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    iput p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$13;->c:F

    .line 129
    .line 130
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    iput p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$13;->d:F

    .line 135
    .line 136
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    iput p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$13;->e:F

    .line 141
    .line 142
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    iput p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$13;->f:F

    .line 147
    .line 148
    :cond_3
    :goto_0
    return v0
.end method
