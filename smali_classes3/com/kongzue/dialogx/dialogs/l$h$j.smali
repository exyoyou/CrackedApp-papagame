.class Lcom/kongzue/dialogx/dialogs/l$h$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/l$h;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field b:Z

.field c:F

.field final synthetic d:Lcom/kongzue/dialogx/dialogs/l$h;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/l$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/l$h$j;->d:Lcom/kongzue/dialogx/dialogs/l$h;

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
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_5

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    if-eq v0, v1, :cond_2

    .line 10
    .line 11
    if-eq v0, v2, :cond_0

    .line 12
    .line 13
    const/4 v3, 0x3

    .line 14
    if-eq v0, v3, :cond_2

    .line 15
    .line 16
    goto/16 :goto_1

    .line 17
    .line 18
    :cond_0
    iget-boolean p1, p0, Lcom/kongzue/dialogx/dialogs/l$h$j;->b:Z

    .line 19
    .line 20
    if-eqz p1, :cond_6

    .line 21
    .line 22
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iget p2, p0, Lcom/kongzue/dialogx/dialogs/l$h$j;->c:F

    .line 27
    .line 28
    sub-float/2addr p1, p2

    .line 29
    iget-object p2, p0, Lcom/kongzue/dialogx/dialogs/l$h$j;->d:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 30
    .line 31
    iget-object p2, p2, Lcom/kongzue/dialogx/dialogs/l$h;->b:Landroid/view/ViewGroup;

    .line 32
    .line 33
    invoke-virtual {p2}, Landroid/view/View;->getY()F

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    add-float/2addr p2, p1

    .line 38
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h$j;->d:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/l;->V0(Lcom/kongzue/dialogx/dialogs/l;)F

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    cmpg-float p2, p2, v0

    .line 47
    .line 48
    if-gez p2, :cond_1

    .line 49
    .line 50
    iget-object p2, p0, Lcom/kongzue/dialogx/dialogs/l$h$j;->d:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 51
    .line 52
    iget-object p2, p2, Lcom/kongzue/dialogx/dialogs/l$h;->b:Landroid/view/ViewGroup;

    .line 53
    .line 54
    invoke-virtual {p2}, Landroid/view/View;->getY()F

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    add-float/2addr v0, p1

    .line 59
    invoke-virtual {p2, v0}, Landroid/view/View;->setY(F)V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_1

    .line 63
    .line 64
    :cond_1
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/l$h$j;->d:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 65
    .line 66
    iget-object p2, p1, Lcom/kongzue/dialogx/dialogs/l$h;->b:Landroid/view/ViewGroup;

    .line 67
    .line 68
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 69
    .line 70
    invoke-static {p1}, Lcom/kongzue/dialogx/dialogs/l;->V0(Lcom/kongzue/dialogx/dialogs/l;)F

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    invoke-virtual {p2, p1}, Landroid/view/View;->setY(F)V

    .line 75
    .line 76
    .line 77
    goto/16 :goto_1

    .line 78
    .line 79
    :cond_2
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h$j;->d:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 80
    .line 81
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/l$h;->b:Landroid/view/ViewGroup;

    .line 82
    .line 83
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/l$h$j;->d:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 88
    .line 89
    iget-object v3, v3, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 90
    .line 91
    invoke-static {v3}, Lcom/kongzue/dialogx/dialogs/l;->V0(Lcom/kongzue/dialogx/dialogs/l;)F

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    sget v4, Lcom/kongzue/dialogx/DialogX;->J:I

    .line 96
    .line 97
    int-to-float v4, v4

    .line 98
    sub-float/2addr v3, v4

    .line 99
    cmpg-float v0, v0, v3

    .line 100
    .line 101
    if-gez v0, :cond_3

    .line 102
    .line 103
    iget-object p2, p0, Lcom/kongzue/dialogx/dialogs/l$h$j;->d:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 104
    .line 105
    invoke-virtual {p2, p1}, Lcom/kongzue/dialogx/dialogs/l$h;->a(Landroid/view/View;)V

    .line 106
    .line 107
    .line 108
    goto/16 :goto_1

    .line 109
    .line 110
    :cond_3
    new-array p1, v2, [F

    .line 111
    .line 112
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h$j;->d:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 113
    .line 114
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/l$h;->b:Landroid/view/ViewGroup;

    .line 115
    .line 116
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    const/4 v2, 0x0

    .line 121
    aput v0, p1, v2

    .line 122
    .line 123
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h$j;->d:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 124
    .line 125
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 126
    .line 127
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/l;->V0(Lcom/kongzue/dialogx/dialogs/l;)F

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    aput v0, p1, v1

    .line 132
    .line 133
    invoke-static {p1}, Lcom/kongzue/dialogx/util/o;->c([F)Lcom/kongzue/dialogx/util/o;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h$j;->d:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 138
    .line 139
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/l$h;->b:Landroid/view/ViewGroup;

    .line 140
    .line 141
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    new-instance v0, Lcom/kongzue/dialogx/dialogs/l$h$j$a;

    .line 145
    .line 146
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/l$h$j$a;-><init>(Lcom/kongzue/dialogx/dialogs/l$h$j;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 150
    .line 151
    .line 152
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h$j;->d:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 153
    .line 154
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 155
    .line 156
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/l;->z1(Lcom/kongzue/dialogx/dialogs/l;)J

    .line 157
    .line 158
    .line 159
    move-result-wide v2

    .line 160
    const-wide/16 v4, -0x1

    .line 161
    .line 162
    cmp-long v0, v2, v4

    .line 163
    .line 164
    if-nez v0, :cond_4

    .line 165
    .line 166
    const-wide/16 v2, 0x12c

    .line 167
    .line 168
    goto :goto_0

    .line 169
    :cond_4
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h$j;->d:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 170
    .line 171
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 172
    .line 173
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/l;->A1(Lcom/kongzue/dialogx/dialogs/l;)J

    .line 174
    .line 175
    .line 176
    move-result-wide v2

    .line 177
    :goto_0
    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    .line 182
    .line 183
    const/high16 v3, 0x40000000    # 2.0f

    .line 184
    .line 185
    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 192
    .line 193
    .line 194
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/l$h$j;->d:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 195
    .line 196
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/l$h;->b:Landroid/view/ViewGroup;

    .line 197
    .line 198
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h$j;->d:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 203
    .line 204
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 205
    .line 206
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/l;->V0(Lcom/kongzue/dialogx/dialogs/l;)F

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    sub-float/2addr p1, v0

    .line 211
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    const/high16 v0, 0x3f800000    # 1.0f

    .line 216
    .line 217
    cmpg-float p1, p1, v0

    .line 218
    .line 219
    if-gtz p1, :cond_6

    .line 220
    .line 221
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 222
    .line 223
    .line 224
    move-result p1

    .line 225
    iget p2, p0, Lcom/kongzue/dialogx/dialogs/l$h$j;->c:F

    .line 226
    .line 227
    cmpg-float p1, p1, p2

    .line 228
    .line 229
    if-gtz p1, :cond_6

    .line 230
    .line 231
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/l$h$j;->d:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 232
    .line 233
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/l$h;->b:Landroid/view/ViewGroup;

    .line 234
    .line 235
    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    .line 236
    .line 237
    .line 238
    goto :goto_1

    .line 239
    :cond_5
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/l$h$j;->b:Z

    .line 240
    .line 241
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 242
    .line 243
    .line 244
    move-result p1

    .line 245
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/l$h$j;->c:F

    .line 246
    .line 247
    :cond_6
    :goto_1
    return v1
.end method
