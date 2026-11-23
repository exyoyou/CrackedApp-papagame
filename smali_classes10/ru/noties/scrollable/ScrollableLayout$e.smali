.class Lru/noties/scrollable/ScrollableLayout$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/noties/scrollable/ScrollableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lru/noties/scrollable/ScrollableLayout;


# direct methods
.method constructor <init>(Lru/noties/scrollable/ScrollableLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lru/noties/scrollable/ScrollableLayout$e;->b:Lru/noties/scrollable/ScrollableLayout;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout$e;->b:Lru/noties/scrollable/ScrollableLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lru/noties/scrollable/ScrollableLayout;->q(Lru/noties/scrollable/ScrollableLayout;Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout$e;->b:Lru/noties/scrollable/ScrollableLayout;

    .line 8
    .line 9
    invoke-static {v0}, Lru/noties/scrollable/ScrollableLayout;->r(Lru/noties/scrollable/ScrollableLayout;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_8

    .line 14
    .line 15
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout$e;->b:Lru/noties/scrollable/ScrollableLayout;

    .line 16
    .line 17
    invoke-static {v0}, Lru/noties/scrollable/ScrollableLayout;->o(Lru/noties/scrollable/ScrollableLayout;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto/16 :goto_2

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout$e;->b:Lru/noties/scrollable/ScrollableLayout;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_8

    .line 32
    .line 33
    iget-object v1, p0, Lru/noties/scrollable/ScrollableLayout$e;->b:Lru/noties/scrollable/ScrollableLayout;

    .line 34
    .line 35
    invoke-static {v1}, Lru/noties/scrollable/ScrollableLayout;->l(Lru/noties/scrollable/ScrollableLayout;)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-ne v0, v1, :cond_1

    .line 40
    .line 41
    goto/16 :goto_2

    .line 42
    .line 43
    :cond_1
    iget-object v1, p0, Lru/noties/scrollable/ScrollableLayout$e;->b:Lru/noties/scrollable/ScrollableLayout;

    .line 44
    .line 45
    invoke-static {v1}, Lru/noties/scrollable/ScrollableLayout;->t(Lru/noties/scrollable/ScrollableLayout;)Lru/noties/scrollable/c;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget-object v2, p0, Lru/noties/scrollable/ScrollableLayout$e;->b:Lru/noties/scrollable/ScrollableLayout;

    .line 50
    .line 51
    invoke-static {v2}, Lru/noties/scrollable/ScrollableLayout;->l(Lru/noties/scrollable/ScrollableLayout;)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    invoke-interface {v1, v2, v0, v3}, Lru/noties/scrollable/c;->b(Lru/noties/scrollable/ScrollableLayout;II)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-ne v0, v1, :cond_2

    .line 60
    .line 61
    return-void

    .line 62
    :cond_2
    iget-object v2, p0, Lru/noties/scrollable/ScrollableLayout$e;->b:Lru/noties/scrollable/ScrollableLayout;

    .line 63
    .line 64
    invoke-static {v2}, Lru/noties/scrollable/ScrollableLayout;->u(Lru/noties/scrollable/ScrollableLayout;)Landroid/animation/ValueAnimator;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    if-nez v2, :cond_3

    .line 69
    .line 70
    iget-object v2, p0, Lru/noties/scrollable/ScrollableLayout$e;->b:Lru/noties/scrollable/ScrollableLayout;

    .line 71
    .line 72
    const/4 v3, 0x2

    .line 73
    new-array v3, v3, [F

    .line 74
    .line 75
    fill-array-data v3, :array_0

    .line 76
    .line 77
    .line 78
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-static {v2, v3}, Lru/noties/scrollable/ScrollableLayout;->v(Lru/noties/scrollable/ScrollableLayout;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 83
    .line 84
    .line 85
    iget-object v2, p0, Lru/noties/scrollable/ScrollableLayout$e;->b:Lru/noties/scrollable/ScrollableLayout;

    .line 86
    .line 87
    invoke-static {v2}, Lru/noties/scrollable/ScrollableLayout;->u(Lru/noties/scrollable/ScrollableLayout;)Landroid/animation/ValueAnimator;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    new-instance v3, Landroid/animation/FloatEvaluator;

    .line 92
    .line 93
    invoke-direct {v3}, Landroid/animation/FloatEvaluator;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 97
    .line 98
    .line 99
    iget-object v2, p0, Lru/noties/scrollable/ScrollableLayout$e;->b:Lru/noties/scrollable/ScrollableLayout;

    .line 100
    .line 101
    invoke-static {v2}, Lru/noties/scrollable/ScrollableLayout;->u(Lru/noties/scrollable/ScrollableLayout;)Landroid/animation/ValueAnimator;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    new-instance v3, Lru/noties/scrollable/ScrollableLayout$j;

    .line 106
    .line 107
    iget-object v4, p0, Lru/noties/scrollable/ScrollableLayout$e;->b:Lru/noties/scrollable/ScrollableLayout;

    .line 108
    .line 109
    const/4 v5, 0x0

    .line 110
    invoke-direct {v3, v4, v5}, Lru/noties/scrollable/ScrollableLayout$j;-><init>(Lru/noties/scrollable/ScrollableLayout;Lru/noties/scrollable/ScrollableLayout$a;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_3
    iget-object v2, p0, Lru/noties/scrollable/ScrollableLayout$e;->b:Lru/noties/scrollable/ScrollableLayout;

    .line 118
    .line 119
    invoke-static {v2}, Lru/noties/scrollable/ScrollableLayout;->a(Lru/noties/scrollable/ScrollableLayout;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    if-eqz v2, :cond_4

    .line 124
    .line 125
    iget-object v2, p0, Lru/noties/scrollable/ScrollableLayout$e;->b:Lru/noties/scrollable/ScrollableLayout;

    .line 126
    .line 127
    invoke-static {v2}, Lru/noties/scrollable/ScrollableLayout;->u(Lru/noties/scrollable/ScrollableLayout;)Landroid/animation/ValueAnimator;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    iget-object v3, p0, Lru/noties/scrollable/ScrollableLayout$e;->b:Lru/noties/scrollable/ScrollableLayout;

    .line 132
    .line 133
    invoke-static {v3}, Lru/noties/scrollable/ScrollableLayout;->a(Lru/noties/scrollable/ScrollableLayout;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 138
    .line 139
    .line 140
    :cond_4
    iget-object v2, p0, Lru/noties/scrollable/ScrollableLayout$e;->b:Lru/noties/scrollable/ScrollableLayout;

    .line 141
    .line 142
    invoke-static {v2}, Lru/noties/scrollable/ScrollableLayout;->u(Lru/noties/scrollable/ScrollableLayout;)Landroid/animation/ValueAnimator;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    if-eqz v2, :cond_5

    .line 151
    .line 152
    iget-object v2, p0, Lru/noties/scrollable/ScrollableLayout$e;->b:Lru/noties/scrollable/ScrollableLayout;

    .line 153
    .line 154
    invoke-static {v2}, Lru/noties/scrollable/ScrollableLayout;->u(Lru/noties/scrollable/ScrollableLayout;)Landroid/animation/ValueAnimator;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->end()V

    .line 159
    .line 160
    .line 161
    :cond_5
    :goto_0
    sub-int v2, v1, v0

    .line 162
    .line 163
    iget-object v3, p0, Lru/noties/scrollable/ScrollableLayout$e;->b:Lru/noties/scrollable/ScrollableLayout;

    .line 164
    .line 165
    new-instance v4, Lru/noties/scrollable/ScrollableLayout$e$a;

    .line 166
    .line 167
    invoke-direct {v4, p0, v0, v2}, Lru/noties/scrollable/ScrollableLayout$e$a;-><init>(Lru/noties/scrollable/ScrollableLayout$e;II)V

    .line 168
    .line 169
    .line 170
    invoke-static {v3, v4}, Lru/noties/scrollable/ScrollableLayout;->b(Lru/noties/scrollable/ScrollableLayout;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 171
    .line 172
    .line 173
    iget-object v2, p0, Lru/noties/scrollable/ScrollableLayout$e;->b:Lru/noties/scrollable/ScrollableLayout;

    .line 174
    .line 175
    invoke-static {v2}, Lru/noties/scrollable/ScrollableLayout;->u(Lru/noties/scrollable/ScrollableLayout;)Landroid/animation/ValueAnimator;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    iget-object v3, p0, Lru/noties/scrollable/ScrollableLayout$e;->b:Lru/noties/scrollable/ScrollableLayout;

    .line 180
    .line 181
    invoke-static {v3}, Lru/noties/scrollable/ScrollableLayout;->a(Lru/noties/scrollable/ScrollableLayout;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 186
    .line 187
    .line 188
    iget-object v2, p0, Lru/noties/scrollable/ScrollableLayout$e;->b:Lru/noties/scrollable/ScrollableLayout;

    .line 189
    .line 190
    invoke-static {v2}, Lru/noties/scrollable/ScrollableLayout;->d(Lru/noties/scrollable/ScrollableLayout;)Lru/noties/scrollable/e;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    if-eqz v2, :cond_6

    .line 195
    .line 196
    iget-object v2, p0, Lru/noties/scrollable/ScrollableLayout$e;->b:Lru/noties/scrollable/ScrollableLayout;

    .line 197
    .line 198
    invoke-static {v2}, Lru/noties/scrollable/ScrollableLayout;->d(Lru/noties/scrollable/ScrollableLayout;)Lru/noties/scrollable/e;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    iget-object v3, p0, Lru/noties/scrollable/ScrollableLayout$e;->b:Lru/noties/scrollable/ScrollableLayout;

    .line 203
    .line 204
    invoke-static {v3}, Lru/noties/scrollable/ScrollableLayout;->l(Lru/noties/scrollable/ScrollableLayout;)I

    .line 205
    .line 206
    .line 207
    move-result v4

    .line 208
    invoke-interface {v2, v3, v0, v1, v4}, Lru/noties/scrollable/e;->a(Lru/noties/scrollable/ScrollableLayout;III)J

    .line 209
    .line 210
    .line 211
    move-result-wide v0

    .line 212
    goto :goto_1

    .line 213
    :cond_6
    const-wide/16 v0, 0xc8

    .line 214
    .line 215
    :goto_1
    iget-object v2, p0, Lru/noties/scrollable/ScrollableLayout$e;->b:Lru/noties/scrollable/ScrollableLayout;

    .line 216
    .line 217
    invoke-static {v2}, Lru/noties/scrollable/ScrollableLayout;->u(Lru/noties/scrollable/ScrollableLayout;)Landroid/animation/ValueAnimator;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 222
    .line 223
    .line 224
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout$e;->b:Lru/noties/scrollable/ScrollableLayout;

    .line 225
    .line 226
    invoke-static {v0}, Lru/noties/scrollable/ScrollableLayout;->e(Lru/noties/scrollable/ScrollableLayout;)Lru/noties/scrollable/d;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    if-eqz v0, :cond_7

    .line 231
    .line 232
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout$e;->b:Lru/noties/scrollable/ScrollableLayout;

    .line 233
    .line 234
    invoke-static {v0}, Lru/noties/scrollable/ScrollableLayout;->e(Lru/noties/scrollable/ScrollableLayout;)Lru/noties/scrollable/d;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    iget-object v1, p0, Lru/noties/scrollable/ScrollableLayout$e;->b:Lru/noties/scrollable/ScrollableLayout;

    .line 239
    .line 240
    invoke-static {v1}, Lru/noties/scrollable/ScrollableLayout;->u(Lru/noties/scrollable/ScrollableLayout;)Landroid/animation/ValueAnimator;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    invoke-interface {v0, v1}, Lru/noties/scrollable/d;->a(Landroid/animation/ValueAnimator;)V

    .line 245
    .line 246
    .line 247
    :cond_7
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout$e;->b:Lru/noties/scrollable/ScrollableLayout;

    .line 248
    .line 249
    invoke-static {v0}, Lru/noties/scrollable/ScrollableLayout;->u(Lru/noties/scrollable/ScrollableLayout;)Landroid/animation/ValueAnimator;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 254
    .line 255
    .line 256
    :cond_8
    :goto_2
    return-void

    .line 257
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
