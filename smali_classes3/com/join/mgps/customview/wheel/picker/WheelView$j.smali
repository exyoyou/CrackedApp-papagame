.class Lcom/join/mgps/customview/wheel/picker/WheelView$j;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/wheel/picker/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "j"
.end annotation


# instance fields
.field b:I

.field c:I

.field d:I

.field final e:Lcom/join/mgps/customview/wheel/picker/WheelView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/wheel/picker/WheelView;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "offset"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7fffffff

    .line 5
    .line 6
    .line 7
    iput v0, p0, Lcom/join/mgps/customview/wheel/picker/WheelView$j;->b:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/join/mgps/customview/wheel/picker/WheelView$j;->c:I

    .line 11
    .line 12
    iput-object p1, p0, Lcom/join/mgps/customview/wheel/picker/WheelView$j;->e:Lcom/join/mgps/customview/wheel/picker/WheelView;

    .line 13
    .line 14
    iput p2, p0, Lcom/join/mgps/customview/wheel/picker/WheelView$j;->d:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/wheel/picker/WheelView$j;->b:I

    .line 2
    .line 3
    const v1, 0x7fffffff

    .line 4
    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget v0, p0, Lcom/join/mgps/customview/wheel/picker/WheelView$j;->d:I

    .line 9
    .line 10
    iput v0, p0, Lcom/join/mgps/customview/wheel/picker/WheelView$j;->b:I

    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/join/mgps/customview/wheel/picker/WheelView$j;->b:I

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
    iput v1, p0, Lcom/join/mgps/customview/wheel/picker/WheelView$j;->c:I

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
    iput v1, p0, Lcom/join/mgps/customview/wheel/picker/WheelView$j;->c:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iput v2, p0, Lcom/join/mgps/customview/wheel/picker/WheelView$j;->c:I

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
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/WheelView$j;->e:Lcom/join/mgps/customview/wheel/picker/WheelView;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/join/mgps/customview/wheel/picker/WheelView;->m(Lcom/join/mgps/customview/wheel/picker/WheelView;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/WheelView$j;->e:Lcom/join/mgps/customview/wheel/picker/WheelView;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/join/mgps/customview/wheel/picker/WheelView;->n(Lcom/join/mgps/customview/wheel/picker/WheelView;)Lcom/join/mgps/customview/wheel/picker/WheelView$f;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/WheelView$j;->e:Lcom/join/mgps/customview/wheel/picker/WheelView;

    .line 58
    .line 59
    invoke-static {v0}, Lcom/join/mgps/customview/wheel/picker/WheelView;->b(Lcom/join/mgps/customview/wheel/picker/WheelView;)F

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    iget v4, p0, Lcom/join/mgps/customview/wheel/picker/WheelView$j;->c:I

    .line 64
    .line 65
    int-to-float v4, v4

    .line 66
    add-float/2addr v3, v4

    .line 67
    invoke-static {v0, v3}, Lcom/join/mgps/customview/wheel/picker/WheelView;->c(Lcom/join/mgps/customview/wheel/picker/WheelView;F)F

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/WheelView$j;->e:Lcom/join/mgps/customview/wheel/picker/WheelView;

    .line 71
    .line 72
    invoke-static {v0}, Lcom/join/mgps/customview/wheel/picker/WheelView;->d(Lcom/join/mgps/customview/wheel/picker/WheelView;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_5

    .line 77
    .line 78
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/WheelView$j;->e:Lcom/join/mgps/customview/wheel/picker/WheelView;

    .line 79
    .line 80
    invoke-static {v0}, Lcom/join/mgps/customview/wheel/picker/WheelView;->e(Lcom/join/mgps/customview/wheel/picker/WheelView;)F

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    iget-object v3, p0, Lcom/join/mgps/customview/wheel/picker/WheelView$j;->e:Lcom/join/mgps/customview/wheel/picker/WheelView;

    .line 85
    .line 86
    invoke-static {v3}, Lcom/join/mgps/customview/wheel/picker/WheelView;->f(Lcom/join/mgps/customview/wheel/picker/WheelView;)I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    neg-int v3, v3

    .line 91
    int-to-float v3, v3

    .line 92
    mul-float v3, v3, v0

    .line 93
    .line 94
    iget-object v4, p0, Lcom/join/mgps/customview/wheel/picker/WheelView$j;->e:Lcom/join/mgps/customview/wheel/picker/WheelView;

    .line 95
    .line 96
    invoke-virtual {v4}, Lcom/join/mgps/customview/wheel/picker/WheelView;->getItemCount()I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    sub-int/2addr v4, v2

    .line 101
    iget-object v2, p0, Lcom/join/mgps/customview/wheel/picker/WheelView$j;->e:Lcom/join/mgps/customview/wheel/picker/WheelView;

    .line 102
    .line 103
    invoke-static {v2}, Lcom/join/mgps/customview/wheel/picker/WheelView;->f(Lcom/join/mgps/customview/wheel/picker/WheelView;)I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    sub-int/2addr v4, v2

    .line 108
    int-to-float v2, v4

    .line 109
    mul-float v2, v2, v0

    .line 110
    .line 111
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/WheelView$j;->e:Lcom/join/mgps/customview/wheel/picker/WheelView;

    .line 112
    .line 113
    invoke-static {v0}, Lcom/join/mgps/customview/wheel/picker/WheelView;->b(Lcom/join/mgps/customview/wheel/picker/WheelView;)F

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    cmpg-float v0, v0, v3

    .line 118
    .line 119
    if-lez v0, :cond_4

    .line 120
    .line 121
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/WheelView$j;->e:Lcom/join/mgps/customview/wheel/picker/WheelView;

    .line 122
    .line 123
    invoke-static {v0}, Lcom/join/mgps/customview/wheel/picker/WheelView;->b(Lcom/join/mgps/customview/wheel/picker/WheelView;)F

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    cmpl-float v0, v0, v2

    .line 128
    .line 129
    if-ltz v0, :cond_5

    .line 130
    .line 131
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/WheelView$j;->e:Lcom/join/mgps/customview/wheel/picker/WheelView;

    .line 132
    .line 133
    invoke-static {v0}, Lcom/join/mgps/customview/wheel/picker/WheelView;->b(Lcom/join/mgps/customview/wheel/picker/WheelView;)F

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    iget v3, p0, Lcom/join/mgps/customview/wheel/picker/WheelView$j;->c:I

    .line 138
    .line 139
    int-to-float v3, v3

    .line 140
    sub-float/2addr v2, v3

    .line 141
    invoke-static {v0, v2}, Lcom/join/mgps/customview/wheel/picker/WheelView;->c(Lcom/join/mgps/customview/wheel/picker/WheelView;F)F

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/WheelView$j;->e:Lcom/join/mgps/customview/wheel/picker/WheelView;

    .line 145
    .line 146
    invoke-static {v0}, Lcom/join/mgps/customview/wheel/picker/WheelView;->m(Lcom/join/mgps/customview/wheel/picker/WheelView;)V

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/WheelView$j;->e:Lcom/join/mgps/customview/wheel/picker/WheelView;

    .line 150
    .line 151
    invoke-static {v0}, Lcom/join/mgps/customview/wheel/picker/WheelView;->n(Lcom/join/mgps/customview/wheel/picker/WheelView;)Lcom/join/mgps/customview/wheel/picker/WheelView$f;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/WheelView$j;->e:Lcom/join/mgps/customview/wheel/picker/WheelView;

    .line 160
    .line 161
    invoke-static {v0}, Lcom/join/mgps/customview/wheel/picker/WheelView;->n(Lcom/join/mgps/customview/wheel/picker/WheelView;)Lcom/join/mgps/customview/wheel/picker/WheelView$f;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    const/16 v1, 0x3e8

    .line 166
    .line 167
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 168
    .line 169
    .line 170
    iget v0, p0, Lcom/join/mgps/customview/wheel/picker/WheelView$j;->b:I

    .line 171
    .line 172
    iget v1, p0, Lcom/join/mgps/customview/wheel/picker/WheelView$j;->c:I

    .line 173
    .line 174
    sub-int/2addr v0, v1

    .line 175
    iput v0, p0, Lcom/join/mgps/customview/wheel/picker/WheelView$j;->b:I

    .line 176
    .line 177
    :goto_1
    return-void
.end method
