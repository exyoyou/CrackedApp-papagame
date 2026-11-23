.class final Lcom/airsaid/pickerviewlibrary/widget/wheelview/a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field b:F

.field final c:F

.field final d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;


# direct methods
.method constructor <init>(Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/a;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 5
    .line 6
    iput p2, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/a;->c:F

    .line 7
    .line 8
    const/high16 p1, 0x4f000000

    .line 9
    .line 10
    iput p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/a;->b:F

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/a;->b:F

    .line 2
    .line 3
    const/high16 v1, 0x4f000000

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    cmpl-float v0, v0, v1

    .line 7
    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/a;->c:F

    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/high16 v1, 0x44fa0000    # 2000.0f

    .line 17
    .line 18
    cmpl-float v0, v0, v1

    .line 19
    .line 20
    if-lez v0, :cond_1

    .line 21
    .line 22
    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/a;->c:F

    .line 23
    .line 24
    cmpl-float v0, v0, v2

    .line 25
    .line 26
    if-lez v0, :cond_0

    .line 27
    .line 28
    iput v1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/a;->b:F

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/high16 v0, -0x3b060000    # -2000.0f

    .line 32
    .line 33
    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/a;->b:F

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/a;->c:F

    .line 37
    .line 38
    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/a;->b:F

    .line 39
    .line 40
    :cond_2
    :goto_0
    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/a;->b:F

    .line 41
    .line 42
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    const/high16 v1, 0x41a00000    # 20.0f

    .line 47
    .line 48
    cmpl-float v0, v0, v2

    .line 49
    .line 50
    if-ltz v0, :cond_3

    .line 51
    .line 52
    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/a;->b:F

    .line 53
    .line 54
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    cmpg-float v0, v0, v1

    .line 59
    .line 60
    if-gtz v0, :cond_3

    .line 61
    .line 62
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/a;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->a()V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/a;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 68
    .line 69
    iget-object v0, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->c:Landroid/os/Handler;

    .line 70
    .line 71
    const/16 v1, 0x7d0

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_3
    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/a;->b:F

    .line 78
    .line 79
    const/high16 v3, 0x41200000    # 10.0f

    .line 80
    .line 81
    mul-float v0, v0, v3

    .line 82
    .line 83
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 84
    .line 85
    div-float/2addr v0, v3

    .line 86
    float-to-int v0, v0

    .line 87
    iget-object v3, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/a;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 88
    .line 89
    iget v4, v3, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->x:I

    .line 90
    .line 91
    sub-int/2addr v4, v0

    .line 92
    iput v4, v3, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->x:I

    .line 93
    .line 94
    iget-boolean v4, v3, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->t:Z

    .line 95
    .line 96
    if-nez v4, :cond_7

    .line 97
    .line 98
    iget v4, v3, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->p:F

    .line 99
    .line 100
    iget v5, v3, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->y:I

    .line 101
    .line 102
    neg-int v5, v5

    .line 103
    int-to-float v5, v5

    .line 104
    mul-float v5, v5, v4

    .line 105
    .line 106
    invoke-virtual {v3}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->getItemsCount()I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    add-int/lit8 v3, v3, -0x1

    .line 111
    .line 112
    iget-object v6, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/a;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 113
    .line 114
    iget v7, v6, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->y:I

    .line 115
    .line 116
    sub-int/2addr v3, v7

    .line 117
    int-to-float v3, v3

    .line 118
    mul-float v3, v3, v4

    .line 119
    .line 120
    iget v7, v6, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->x:I

    .line 121
    .line 122
    int-to-double v8, v7

    .line 123
    float-to-double v10, v4

    .line 124
    const-wide v12, 0x3fd3333333333333L    # 0.3

    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    mul-double v10, v10, v12

    .line 130
    .line 131
    sub-double/2addr v8, v10

    .line 132
    float-to-double v12, v5

    .line 133
    cmpg-double v4, v8, v12

    .line 134
    .line 135
    if-gez v4, :cond_4

    .line 136
    .line 137
    add-int/2addr v0, v7

    .line 138
    int-to-float v5, v0

    .line 139
    goto :goto_1

    .line 140
    :cond_4
    int-to-double v8, v7

    .line 141
    add-double/2addr v8, v10

    .line 142
    float-to-double v10, v3

    .line 143
    cmpl-double v4, v8, v10

    .line 144
    .line 145
    if-lez v4, :cond_5

    .line 146
    .line 147
    add-int/2addr v0, v7

    .line 148
    int-to-float v3, v0

    .line 149
    :cond_5
    :goto_1
    int-to-float v0, v7

    .line 150
    cmpg-float v0, v0, v5

    .line 151
    .line 152
    if-gtz v0, :cond_6

    .line 153
    .line 154
    const/high16 v0, 0x42200000    # 40.0f

    .line 155
    .line 156
    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/a;->b:F

    .line 157
    .line 158
    float-to-int v0, v5

    .line 159
    iput v0, v6, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->x:I

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_6
    int-to-float v0, v7

    .line 163
    cmpl-float v0, v0, v3

    .line 164
    .line 165
    if-ltz v0, :cond_7

    .line 166
    .line 167
    float-to-int v0, v3

    .line 168
    iput v0, v6, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->x:I

    .line 169
    .line 170
    const/high16 v0, -0x3de00000    # -40.0f

    .line 171
    .line 172
    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/a;->b:F

    .line 173
    .line 174
    :cond_7
    :goto_2
    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/a;->b:F

    .line 175
    .line 176
    cmpg-float v2, v0, v2

    .line 177
    .line 178
    if-gez v2, :cond_8

    .line 179
    .line 180
    add-float/2addr v0, v1

    .line 181
    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/a;->b:F

    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_8
    sub-float/2addr v0, v1

    .line 185
    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/a;->b:F

    .line 186
    .line 187
    :goto_3
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/a;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 188
    .line 189
    iget-object v0, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->c:Landroid/os/Handler;

    .line 190
    .line 191
    const/16 v1, 0x3e8

    .line 192
    .line 193
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 194
    .line 195
    .line 196
    return-void
.end method
