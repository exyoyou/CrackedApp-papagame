.class Lcom/kongzue/dialogx/dialogs/i$h$h;
.super Lcom/kongzue/dialogx/interfaces/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/i$h;->e()Lcom/kongzue/dialogx/interfaces/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kongzue/dialogx/interfaces/g<",
        "Lcom/kongzue/dialogx/dialogs/i;",
        ">;"
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/kongzue/dialogx/dialogs/i$h;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/i$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/g;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/i$h$h;->a:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/kongzue/dialogx/dialogs/i;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/i$h$h;->c(Lcom/kongzue/dialogx/dialogs/i;Landroid/view/ViewGroup;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/kongzue/dialogx/dialogs/i;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/i$h$h;->d(Lcom/kongzue/dialogx/dialogs/i;Landroid/view/ViewGroup;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c(Lcom/kongzue/dialogx/dialogs/i;Landroid/view/ViewGroup;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N()Landroid/app/Activity;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/i$h;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N()Landroid/app/Activity;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    :goto_0
    sget p2, Lcom/kongzue/dialogx/R$anim;->anim_dialogx_default_exit:I

    .line 29
    .line 30
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object p2, p0, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 35
    .line 36
    invoke-virtual {p2, p1}, Lcom/kongzue/dialogx/dialogs/i$h;->g(Landroid/view/animation/Animation;)J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 41
    .line 42
    .line 43
    iget-object p2, p0, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 44
    .line 45
    iget-object p2, p2, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 46
    .line 47
    invoke-virtual {p2, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 51
    .line 52
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/i$h;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const/4 p2, 0x0

    .line 59
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    new-instance p2, Landroid/view/animation/AccelerateInterpolator;

    .line 64
    .line 65
    invoke-direct {p2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 73
    .line 74
    .line 75
    const/4 p1, 0x2

    .line 76
    new-array p1, p1, [F

    .line 77
    .line 78
    fill-array-data p1, :array_0

    .line 79
    .line 80
    .line 81
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 86
    .line 87
    .line 88
    new-instance p2, Lcom/kongzue/dialogx/dialogs/i$h$h$c;

    .line 89
    .line 90
    invoke-direct {p2, p0}, Lcom/kongzue/dialogx/dialogs/i$h$h$c;-><init>(Lcom/kongzue/dialogx/dialogs/i$h$h;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    nop

    .line 101
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public d(Lcom/kongzue/dialogx/dialogs/i;Landroid/view/ViewGroup;)V
    .locals 9

    .line 1
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p2}, Lcom/kongzue/dialogx/dialogs/i$h;->f(Landroid/view/animation/Animation;)J

    .line 5
    .line 6
    .line 7
    move-result-wide p1

    .line 8
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/i;->W1()Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x2

    .line 17
    const/4 v2, -0x1

    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/i;->H1(Lcom/kongzue/dialogx/dialogs/i;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 29
    .line 30
    iget-object v3, v3, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 31
    .line 32
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    const/4 v4, 0x1

    .line 37
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 38
    .line 39
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 40
    .line 41
    iget-object v5, v3, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 42
    .line 43
    iget-boolean v5, v5, Lcom/kongzue/dialogx/dialogs/i;->W:Z

    .line 44
    .line 45
    const/high16 v6, 0x40000000    # 2.0f

    .line 46
    .line 47
    if-eqz v5, :cond_2

    .line 48
    .line 49
    iget-object v3, v3, Lcom/kongzue/dialogx/dialogs/i$h;->e:Lcom/kongzue/dialogx/util/views/PopMenuListView;

    .line 50
    .line 51
    invoke-virtual {v3}, Lcom/kongzue/dialogx/util/views/PopMenuListView;->a()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-nez v3, :cond_2

    .line 56
    .line 57
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 58
    .line 59
    iget-object v3, v3, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 60
    .line 61
    invoke-virtual {v3}, Lcom/kongzue/dialogx/dialogs/i;->W1()Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    instance-of v3, v3, Landroid/widget/TextView;

    .line 66
    .line 67
    if-eqz v3, :cond_1

    .line 68
    .line 69
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 70
    .line 71
    iget-object v3, v3, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 72
    .line 73
    invoke-virtual {v3}, Lcom/kongzue/dialogx/dialogs/i;->W1()Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Landroid/widget/TextView;

    .line 78
    .line 79
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    iget-object v5, p0, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 88
    .line 89
    iget-object v5, v5, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 90
    .line 91
    iget-object v5, v5, Lcom/kongzue/dialogx/dialogs/i;->R:Ljava/util/List;

    .line 92
    .line 93
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    if-eqz v7, :cond_1

    .line 102
    .line 103
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    check-cast v7, Ljava/lang/CharSequence;

    .line 108
    .line 109
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    invoke-static {v8, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 114
    .line 115
    .line 116
    move-result v8

    .line 117
    if-eqz v8, :cond_0

    .line 118
    .line 119
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 120
    .line 121
    iget-object v3, v3, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 122
    .line 123
    iget-object v3, v3, Lcom/kongzue/dialogx/dialogs/i;->R:Ljava/util/List;

    .line 124
    .line 125
    invoke-interface {v3, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    iput v3, p0, Lcom/kongzue/dialogx/dialogs/i$h$h;->a:I

    .line 130
    .line 131
    :cond_1
    iget v3, p0, Lcom/kongzue/dialogx/dialogs/i$h$h;->a:I

    .line 132
    .line 133
    if-eq v3, v2, :cond_2

    .line 134
    .line 135
    new-array v2, v1, [I

    .line 136
    .line 137
    iget-object v5, p0, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 138
    .line 139
    iget-object v5, v5, Lcom/kongzue/dialogx/dialogs/i$h;->e:Lcom/kongzue/dialogx/util/views/PopMenuListView;

    .line 140
    .line 141
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    if-eqz v3, :cond_2

    .line 146
    .line 147
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 148
    .line 149
    iget-object v3, v3, Lcom/kongzue/dialogx/dialogs/i$h;->e:Lcom/kongzue/dialogx/util/views/PopMenuListView;

    .line 150
    .line 151
    iget v5, p0, Lcom/kongzue/dialogx/dialogs/i$h$h;->a:I

    .line 152
    .line 153
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    iget-object v5, p0, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 162
    .line 163
    iget-object v5, v5, Lcom/kongzue/dialogx/dialogs/i$h;->e:Lcom/kongzue/dialogx/util/views/PopMenuListView;

    .line 164
    .line 165
    iget v7, p0, Lcom/kongzue/dialogx/dialogs/i$h$h;->a:I

    .line 166
    .line 167
    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    invoke-virtual {v5, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 172
    .line 173
    .line 174
    iget-object v5, p0, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 175
    .line 176
    iget-object v5, v5, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 177
    .line 178
    invoke-virtual {v5}, Lcom/kongzue/dialogx/dialogs/i;->W1()Landroid/view/View;

    .line 179
    .line 180
    .line 181
    move-result-object v7

    .line 182
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    .line 183
    .line 184
    .line 185
    move-result v7

    .line 186
    int-to-float v7, v7

    .line 187
    div-float/2addr v7, v6

    .line 188
    aget v2, v2, v4

    .line 189
    .line 190
    int-to-float v2, v2

    .line 191
    iget-object v4, p0, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 192
    .line 193
    iget-object v4, v4, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 194
    .line 195
    invoke-virtual {v4}, Landroid/view/View;->getY()F

    .line 196
    .line 197
    .line 198
    move-result v4

    .line 199
    sub-float/2addr v2, v4

    .line 200
    sub-float/2addr v7, v2

    .line 201
    int-to-float v2, v3

    .line 202
    div-float/2addr v2, v6

    .line 203
    sub-float/2addr v7, v2

    .line 204
    float-to-int v2, v7

    .line 205
    iput v2, v5, Lcom/kongzue/dialogx/dialogs/i;->g2:I

    .line 206
    .line 207
    :cond_2
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 208
    .line 209
    iget-object v2, v2, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 210
    .line 211
    invoke-static {v2}, Lcom/kongzue/dialogx/dialogs/i;->T0(Lcom/kongzue/dialogx/dialogs/i;)V

    .line 212
    .line 213
    .line 214
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 215
    .line 216
    iget-object v2, v2, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 217
    .line 218
    invoke-virtual {v2}, Lcom/kongzue/dialogx/dialogs/i;->A2()Lcom/kongzue/dialogx/util/g;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    invoke-virtual {v3}, Lcom/kongzue/dialogx/util/g;->d()F

    .line 223
    .line 224
    .line 225
    move-result v3

    .line 226
    iget-object v4, p0, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 227
    .line 228
    iget-object v4, v4, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 229
    .line 230
    iget-object v4, v4, Lcom/kongzue/dialogx/dialogs/i;->V1:Lcom/kongzue/dialogx/util/g;

    .line 231
    .line 232
    invoke-virtual {v4}, Lcom/kongzue/dialogx/util/g;->d()F

    .line 233
    .line 234
    .line 235
    move-result v4

    .line 236
    sub-float/2addr v3, v4

    .line 237
    float-to-int v3, v3

    .line 238
    iput v3, v2, Lcom/kongzue/dialogx/dialogs/i;->g2:I

    .line 239
    .line 240
    new-array v1, v1, [F

    .line 241
    .line 242
    fill-array-data v1, :array_0

    .line 243
    .line 244
    .line 245
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    .line 250
    .line 251
    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 255
    .line 256
    .line 257
    new-instance v2, Lcom/kongzue/dialogx/dialogs/i$h$h$a;

    .line 258
    .line 259
    invoke-direct {v2, p0, v0}, Lcom/kongzue/dialogx/dialogs/i$h$h$a;-><init>(Lcom/kongzue/dialogx/dialogs/i$h$h;I)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 263
    .line 264
    .line 265
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 266
    .line 267
    invoke-direct {v0, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v1, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 277
    .line 278
    .line 279
    goto/16 :goto_1

    .line 280
    .line 281
    :cond_3
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 282
    .line 283
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 284
    .line 285
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 290
    .line 291
    const/16 v3, 0xd

    .line 292
    .line 293
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 294
    .line 295
    .line 296
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 297
    .line 298
    iget-object v3, v3, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 299
    .line 300
    invoke-virtual {v3}, Lcom/kongzue/dialogx/dialogs/i;->M2()I

    .line 301
    .line 302
    .line 303
    move-result v3

    .line 304
    if-ne v3, v2, :cond_4

    .line 305
    .line 306
    goto :goto_0

    .line 307
    :cond_4
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 308
    .line 309
    iget-object v2, v2, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 310
    .line 311
    invoke-virtual {v2}, Lcom/kongzue/dialogx/dialogs/i;->M2()I

    .line 312
    .line 313
    .line 314
    move-result v2

    .line 315
    :goto_0
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 316
    .line 317
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 318
    .line 319
    iget-object v2, v2, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 320
    .line 321
    const/high16 v3, 0x42480000    # 50.0f

    .line 322
    .line 323
    invoke-virtual {v2, v3}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->o(F)I

    .line 324
    .line 325
    .line 326
    move-result v2

    .line 327
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 328
    .line 329
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 330
    .line 331
    iget-object v2, v2, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 332
    .line 333
    invoke-virtual {v2, v3}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->o(F)I

    .line 334
    .line 335
    .line 336
    move-result v2

    .line 337
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 338
    .line 339
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 340
    .line 341
    iget-object v2, v2, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 342
    .line 343
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    .line 345
    .line 346
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 347
    .line 348
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 349
    .line 350
    const/4 v2, 0x0

    .line 351
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 352
    .line 353
    .line 354
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 355
    .line 356
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/i$h;->d(Lcom/kongzue/dialogx/dialogs/i$h;)Z

    .line 357
    .line 358
    .line 359
    move-result v0

    .line 360
    if-nez v0, :cond_5

    .line 361
    .line 362
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 363
    .line 364
    iget-object v2, v0, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 365
    .line 366
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 367
    .line 368
    const/high16 v3, 0x41a00000    # 20.0f

    .line 369
    .line 370
    invoke-virtual {v0, v3}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->o(F)I

    .line 371
    .line 372
    .line 373
    move-result v0

    .line 374
    int-to-float v0, v0

    .line 375
    invoke-virtual {v2, v0}, Landroid/view/View;->setElevation(F)V

    .line 376
    .line 377
    .line 378
    :cond_5
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 379
    .line 380
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 381
    .line 382
    const/4 v2, 0x0

    .line 383
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 384
    .line 385
    .line 386
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 387
    .line 388
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 389
    .line 390
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    const/high16 v2, 0x3f800000    # 1.0f

    .line 395
    .line 396
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 401
    .line 402
    .line 403
    new-array v0, v1, [F

    .line 404
    .line 405
    fill-array-data v0, :array_1

    .line 406
    .line 407
    .line 408
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 413
    .line 414
    .line 415
    new-instance p1, Lcom/kongzue/dialogx/dialogs/i$h$h$b;

    .line 416
    .line 417
    invoke-direct {p1, p0}, Lcom/kongzue/dialogx/dialogs/i$h$h$b;-><init>(Lcom/kongzue/dialogx/dialogs/i$h$h;)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 424
    .line 425
    .line 426
    :goto_1
    return-void

    .line 427
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
