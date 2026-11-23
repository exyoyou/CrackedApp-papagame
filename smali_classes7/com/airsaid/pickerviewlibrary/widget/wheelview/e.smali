.class final Lcom/airsaid/pickerviewlibrary/widget/wheelview/e;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field b:I

.field c:I

.field d:I

.field final e:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;


# direct methods
.method constructor <init>(Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/e;->e:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 5
    .line 6
    iput p2, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/e;->d:I

    .line 7
    .line 8
    const p1, 0x7fffffff

    .line 9
    .line 10
    .line 11
    iput p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/e;->b:I

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/e;->c:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/e;->b:I

    .line 2
    .line 3
    const v1, 0x7fffffff

    .line 4
    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/e;->d:I

    .line 9
    .line 10
    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/e;->b:I

    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/e;->b:I

    .line 13
    .line 14
    int-to-float v1, v0

    .line 15
    const v2, 0x3dcccccd    # 0.1f

    .line 16
    .line 17
    .line 18
    mul-float v1, v1, v2

    .line 19
    .line 20
    float-to-int v1, v1

    .line 21
    iput v1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/e;->c:I

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    if-gez v0, :cond_1

    .line 27
    .line 28
    const/4 v1, -0x1

    .line 29
    iput v1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/e;->c:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iput v2, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/e;->c:I

    .line 33
    .line 34
    :cond_2
    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const/16 v1, 0xbb8

    .line 39
    .line 40
    if-gt v0, v2, :cond_3

    .line 41
    .line 42
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/e;->e:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->a()V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/e;->e:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->c:Landroid/os/Handler;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/e;->e:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 56
    .line 57
    iget v3, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->x:I

    .line 58
    .line 59
    iget v4, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/e;->c:I

    .line 60
    .line 61
    add-int/2addr v3, v4

    .line 62
    iput v3, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->x:I

    .line 63
    .line 64
    iget-boolean v3, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->t:Z

    .line 65
    .line 66
    if-nez v3, :cond_5

    .line 67
    .line 68
    iget v3, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->p:F

    .line 69
    .line 70
    iget v4, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->y:I

    .line 71
    .line 72
    neg-int v4, v4

    .line 73
    int-to-float v4, v4

    .line 74
    mul-float v4, v4, v3

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->getItemsCount()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    sub-int/2addr v0, v2

    .line 81
    iget-object v2, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/e;->e:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 82
    .line 83
    iget v5, v2, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->y:I

    .line 84
    .line 85
    sub-int/2addr v0, v5

    .line 86
    int-to-float v0, v0

    .line 87
    mul-float v0, v0, v3

    .line 88
    .line 89
    iget v3, v2, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->x:I

    .line 90
    .line 91
    int-to-float v5, v3

    .line 92
    cmpg-float v4, v5, v4

    .line 93
    .line 94
    if-lez v4, :cond_4

    .line 95
    .line 96
    int-to-float v4, v3

    .line 97
    cmpl-float v0, v4, v0

    .line 98
    .line 99
    if-ltz v0, :cond_5

    .line 100
    .line 101
    :cond_4
    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/e;->c:I

    .line 102
    .line 103
    sub-int/2addr v3, v0

    .line 104
    iput v3, v2, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->x:I

    .line 105
    .line 106
    invoke-virtual {v2}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->a()V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/e;->e:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 110
    .line 111
    iget-object v0, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->c:Landroid/os/Handler;

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :cond_5
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/e;->e:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 118
    .line 119
    iget-object v0, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->c:Landroid/os/Handler;

    .line 120
    .line 121
    const/16 v1, 0x3e8

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 124
    .line 125
    .line 126
    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/e;->b:I

    .line 127
    .line 128
    iget v1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/e;->c:I

    .line 129
    .line 130
    sub-int/2addr v0, v1

    .line 131
    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/e;->b:I

    .line 132
    .line 133
    :goto_1
    return-void
.end method
