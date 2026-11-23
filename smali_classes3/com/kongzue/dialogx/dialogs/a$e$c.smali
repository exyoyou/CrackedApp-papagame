.class Lcom/kongzue/dialogx/dialogs/a$e$c;
.super Lcom/kongzue/dialogx/interfaces/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/a$e;->f()Lcom/kongzue/dialogx/interfaces/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kongzue/dialogx/interfaces/g<",
        "Lcom/kongzue/dialogx/dialogs/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/kongzue/dialogx/dialogs/a$e;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/a$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a$e$c;->a:Lcom/kongzue/dialogx/dialogs/a$e;

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
    check-cast p1, Lcom/kongzue/dialogx/dialogs/a;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/a$e$c;->c(Lcom/kongzue/dialogx/dialogs/a;Landroid/view/ViewGroup;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/kongzue/dialogx/dialogs/a;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/a$e$c;->d(Lcom/kongzue/dialogx/dialogs/a;Landroid/view/ViewGroup;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c(Lcom/kongzue/dialogx/dialogs/a;Landroid/view/ViewGroup;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/a$e$c;->a:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/a$e;->h()J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e$c;->a:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/a$e;->c:Landroid/widget/RelativeLayout;

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    new-array v2, v1, [F

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    aput v4, v2, v3

    .line 20
    .line 21
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/a$e$c;->a:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 22
    .line 23
    iget-object v3, v3, Lcom/kongzue/dialogx/dialogs/a$e;->c:Landroid/widget/RelativeLayout;

    .line 24
    .line 25
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    int-to-float v3, v3

    .line 30
    const/4 v4, 0x1

    .line 31
    aput v3, v2, v4

    .line 32
    .line 33
    const-string v3, "y"

    .line 34
    .line 35
    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 43
    .line 44
    .line 45
    new-array v0, v1, [F

    .line 46
    .line 47
    fill-array-data v0, :array_0

    .line 48
    .line 49
    .line 50
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 55
    .line 56
    .line 57
    new-instance p1, Lcom/kongzue/dialogx/dialogs/a$e$c$b;

    .line 58
    .line 59
    invoke-direct {p1, p0}, Lcom/kongzue/dialogx/dialogs/a$e$c$b;-><init>(Lcom/kongzue/dialogx/dialogs/a$e$c;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public d(Lcom/kongzue/dialogx/dialogs/a;Landroid/view/ViewGroup;)V
    .locals 6

    .line 1
    iget-object p2, p0, Lcom/kongzue/dialogx/dialogs/a$e$c;->a:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/kongzue/dialogx/dialogs/a$e;->g()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/a;->C2()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 p2, 0x0

    .line 12
    const/high16 v2, 0x3f800000    # 1.0f

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/a$e$c;->a:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 18
    .line 19
    iget-object v4, p1, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 20
    .line 21
    iget v4, v4, Lcom/kongzue/dialogx/dialogs/a;->b2:F

    .line 22
    .line 23
    cmpl-float v5, v4, v3

    .line 24
    .line 25
    if-lez v5, :cond_0

    .line 26
    .line 27
    cmpg-float v5, v4, v2

    .line 28
    .line 29
    if-gtz v5, :cond_0

    .line 30
    .line 31
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/a$e;->c:Landroid/widget/RelativeLayout;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    int-to-float p1, p1

    .line 38
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/a$e$c;->a:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 39
    .line 40
    iget-object v3, v2, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 41
    .line 42
    iget v3, v3, Lcom/kongzue/dialogx/dialogs/a;->b2:F

    .line 43
    .line 44
    iget-object v2, v2, Lcom/kongzue/dialogx/dialogs/a$e;->c:Landroid/widget/RelativeLayout;

    .line 45
    .line 46
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    int-to-float v2, v2

    .line 51
    mul-float v3, v3, v2

    .line 52
    .line 53
    sub-float v3, p1, v3

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_0
    cmpl-float v2, v4, v2

    .line 57
    .line 58
    if-lez v2, :cond_4

    .line 59
    .line 60
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/a$e;->c:Landroid/widget/RelativeLayout;

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    int-to-float p1, p1

    .line 67
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/a$e$c;->a:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 68
    .line 69
    iget-object v2, v2, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 70
    .line 71
    iget v2, v2, Lcom/kongzue/dialogx/dialogs/a;->b2:F

    .line 72
    .line 73
    sub-float v3, p1, v2

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/a$e$c;->a:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 77
    .line 78
    iget-object v4, p1, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 79
    .line 80
    iget v4, v4, Lcom/kongzue/dialogx/dialogs/a;->b2:F

    .line 81
    .line 82
    cmpl-float v5, v4, v3

    .line 83
    .line 84
    if-lez v5, :cond_2

    .line 85
    .line 86
    cmpg-float v5, v4, v2

    .line 87
    .line 88
    if-gtz v5, :cond_2

    .line 89
    .line 90
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/a$e;->c:Landroid/widget/RelativeLayout;

    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    int-to-float p1, p1

    .line 97
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/a$e$c;->a:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 98
    .line 99
    iget-object v3, v2, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 100
    .line 101
    iget v3, v3, Lcom/kongzue/dialogx/dialogs/a;->b2:F

    .line 102
    .line 103
    iget-object v2, v2, Lcom/kongzue/dialogx/dialogs/a$e;->c:Landroid/widget/RelativeLayout;

    .line 104
    .line 105
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    int-to-float v2, v2

    .line 110
    mul-float v3, v3, v2

    .line 111
    .line 112
    sub-float v3, p1, v3

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_2
    cmpl-float v2, v4, v2

    .line 116
    .line 117
    if-lez v2, :cond_3

    .line 118
    .line 119
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/a$e;->c:Landroid/widget/RelativeLayout;

    .line 120
    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    int-to-float p1, p1

    .line 126
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/a$e$c;->a:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 127
    .line 128
    iget-object v2, v2, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 129
    .line 130
    iget v2, v2, Lcom/kongzue/dialogx/dialogs/a;->b2:F

    .line 131
    .line 132
    sub-float v3, p1, v2

    .line 133
    .line 134
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/a$e$c;->a:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 135
    .line 136
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/a$e;->c:Landroid/widget/RelativeLayout;

    .line 137
    .line 138
    float-to-int v2, v3

    .line 139
    invoke-virtual {p1, p2, p2, p2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 140
    .line 141
    .line 142
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/a$e$c;->a:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 143
    .line 144
    iget-object v2, p1, Lcom/kongzue/dialogx/dialogs/a$e;->c:Landroid/widget/RelativeLayout;

    .line 145
    .line 146
    const/4 v4, 0x2

    .line 147
    new-array v5, v4, [F

    .line 148
    .line 149
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 150
    .line 151
    invoke-virtual {p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->P()Landroid/widget/FrameLayout;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    if-nez p1, :cond_5

    .line 156
    .line 157
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_5
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/a$e$c;->a:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 169
    .line 170
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 171
    .line 172
    invoke-virtual {p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->P()Landroid/widget/FrameLayout;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    :goto_2
    int-to-float p1, p1

    .line 181
    aput p1, v5, p2

    .line 182
    .line 183
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/a$e$c;->a:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 184
    .line 185
    iget-object p2, p1, Lcom/kongzue/dialogx/dialogs/a$e;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 186
    .line 187
    invoke-virtual {p2}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->getUnsafePlace()Landroid/graphics/Rect;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    iget p2, p2, Landroid/graphics/Rect;->top:I

    .line 192
    .line 193
    int-to-float p2, p2

    .line 194
    add-float/2addr p2, v3

    .line 195
    iput p2, p1, Lcom/kongzue/dialogx/dialogs/a$e;->v:F

    .line 196
    .line 197
    const/4 p1, 0x1

    .line 198
    aput p2, v5, p1

    .line 199
    .line 200
    const-string p2, "y"

    .line 201
    .line 202
    invoke-static {v2, p2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 203
    .line 204
    .line 205
    move-result-object p2

    .line 206
    invoke-virtual {p2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 207
    .line 208
    .line 209
    invoke-virtual {p2, p1}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 210
    .line 211
    .line 212
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    .line 213
    .line 214
    const/high16 v2, 0x40000000    # 2.0f

    .line 215
    .line 216
    invoke-direct {p1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p2, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->start()V

    .line 223
    .line 224
    .line 225
    new-array p1, v4, [F

    .line 226
    .line 227
    fill-array-data p1, :array_0

    .line 228
    .line 229
    .line 230
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 235
    .line 236
    .line 237
    new-instance p2, Lcom/kongzue/dialogx/dialogs/a$e$c$a;

    .line 238
    .line 239
    invoke-direct {p2, p0}, Lcom/kongzue/dialogx/dialogs/a$e$c$a;-><init>(Lcom/kongzue/dialogx/dialogs/a$e$c;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 246
    .line 247
    .line 248
    return-void

    .line 249
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
