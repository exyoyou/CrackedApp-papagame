.class public Lcom/mob/tools/gui/PullToRequestView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# static fields
.field private static final FAULT_TOLERANCE_RANGE:I = 0xa

.field private static final MIN_REF_TIME:J = 0x3e8L


# instance fields
.field private adapter:Lcom/mob/tools/gui/PullToRequestAdatper;

.field private bodyView:Landroid/view/View;

.field private downY:F

.field private footerHeight:I

.field private footerView:Landroid/view/View;

.field private headerHeight:I

.field private headerView:Landroid/view/View;

.field private pullTime:J

.field private pullingDownLock:Z

.field private pullingUpLock:Z

.field private state:I

.field private stopAct:Ljava/lang/Runnable;

.field private top:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lcom/mob/tools/gui/PullToRequestView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0}, Lcom/mob/tools/gui/PullToRequestView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0}, Lcom/mob/tools/gui/PullToRequestView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/mob/tools/gui/PullToRequestView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mob/tools/gui/PullToRequestView;->reversePulling()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private canPullDown()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mob/tools/gui/PullToRequestView;->pullingDownLock:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestView;->adapter:Lcom/mob/tools/gui/PullToRequestAdatper;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/mob/tools/gui/PullToRequestAdatper;->isPullDownReady()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget v0, p0, Lcom/mob/tools/gui/PullToRequestView;->state:I

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method private canPullUp()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mob/tools/gui/PullToRequestView;->pullingUpLock:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestView;->adapter:Lcom/mob/tools/gui/PullToRequestAdatper;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/mob/tools/gui/PullToRequestAdatper;->isPullUpReady()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget v0, p0, Lcom/mob/tools/gui/PullToRequestView;->state:I

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method private getCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    const/4 v4, 0x3

    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 11
    .line 12
    .line 13
    move-result v5

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 15
    .line 16
    .line 17
    move-result v6

    .line 18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    .line 19
    .line 20
    .line 21
    move-result v7

    .line 22
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method private init()V
    .locals 1

    .line 1
    new-instance v0, Lcom/mob/tools/gui/PullToRequestView$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/mob/tools/gui/PullToRequestView$1;-><init>(Lcom/mob/tools/gui/PullToRequestView;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/mob/tools/gui/PullToRequestView;->stopAct:Ljava/lang/Runnable;

    .line 7
    .line 8
    return-void
.end method

.method private performRequestNext()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/mob/tools/gui/PullToRequestView;->pullTime:J

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/mob/tools/gui/PullToRequestView;->state:I

    .line 9
    .line 10
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestView;->adapter:Lcom/mob/tools/gui/PullToRequestAdatper;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/mob/tools/gui/PullToRequestAdatper;->onRequestNext()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private reversePulling()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    .line 3
    .line 4
    invoke-virtual {p0, v0, v0}, Landroid/view/View;->scrollTo(II)V

    .line 5
    .line 6
    .line 7
    iput v0, p0, Lcom/mob/tools/gui/PullToRequestView;->state:I

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestView;->adapter:Lcom/mob/tools/gui/PullToRequestAdatper;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/mob/tools/gui/PullToRequestAdatper;->onReversed()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_19

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    const/4 v2, 0x1

    .line 9
    const/16 v3, 0x64

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    if-eq v0, v2, :cond_f

    .line 13
    .line 14
    const/4 v5, 0x2

    .line 15
    if-eq v0, v5, :cond_0

    .line 16
    .line 17
    const/4 v5, 0x3

    .line 18
    if-eq v0, v5, :cond_f

    .line 19
    .line 20
    goto/16 :goto_2

    .line 21
    .line 22
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget v5, p0, Lcom/mob/tools/gui/PullToRequestView;->state:I

    .line 27
    .line 28
    const/high16 v6, 0x40000000    # 2.0f

    .line 29
    .line 30
    if-eq v5, v1, :cond_c

    .line 31
    .line 32
    if-eq v5, v2, :cond_a

    .line 33
    .line 34
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    .line 35
    .line 36
    if-lez v1, :cond_3

    .line 37
    .line 38
    int-to-float v1, v1

    .line 39
    iget v2, p0, Lcom/mob/tools/gui/PullToRequestView;->downY:F

    .line 40
    .line 41
    sub-float v2, v0, v2

    .line 42
    .line 43
    div-float/2addr v2, v6

    .line 44
    add-float/2addr v1, v2

    .line 45
    float-to-int v1, v1

    .line 46
    iput v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    .line 47
    .line 48
    if-gez v1, :cond_1

    .line 49
    .line 50
    iput v4, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    .line 51
    .line 52
    :cond_1
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    .line 53
    .line 54
    neg-int v1, v1

    .line 55
    invoke-virtual {p0, v4, v1}, Landroid/view/View;->scrollTo(II)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/mob/tools/gui/PullToRequestView;->adapter:Lcom/mob/tools/gui/PullToRequestAdatper;

    .line 59
    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    iget v2, p0, Lcom/mob/tools/gui/PullToRequestView;->headerHeight:I

    .line 63
    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    iget v4, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    .line 67
    .line 68
    mul-int/lit8 v4, v4, 0x64

    .line 69
    .line 70
    div-int/2addr v4, v2

    .line 71
    invoke-virtual {v1, v4}, Lcom/mob/tools/gui/PullToRequestAdatper;->onPullDown(I)V

    .line 72
    .line 73
    .line 74
    :cond_2
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/PullToRequestView;->getCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    goto/16 :goto_0

    .line 79
    .line 80
    :cond_3
    if-gez v1, :cond_6

    .line 81
    .line 82
    int-to-float v1, v1

    .line 83
    iget v2, p0, Lcom/mob/tools/gui/PullToRequestView;->downY:F

    .line 84
    .line 85
    sub-float v2, v0, v2

    .line 86
    .line 87
    div-float/2addr v2, v6

    .line 88
    add-float/2addr v1, v2

    .line 89
    float-to-int v1, v1

    .line 90
    iput v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    .line 91
    .line 92
    if-lez v1, :cond_4

    .line 93
    .line 94
    iput v4, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    .line 95
    .line 96
    :cond_4
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    .line 97
    .line 98
    neg-int v1, v1

    .line 99
    invoke-virtual {p0, v4, v1}, Landroid/view/View;->scrollTo(II)V

    .line 100
    .line 101
    .line 102
    iget-object v1, p0, Lcom/mob/tools/gui/PullToRequestView;->adapter:Lcom/mob/tools/gui/PullToRequestAdatper;

    .line 103
    .line 104
    if-eqz v1, :cond_5

    .line 105
    .line 106
    iget v2, p0, Lcom/mob/tools/gui/PullToRequestView;->footerHeight:I

    .line 107
    .line 108
    if-eqz v2, :cond_5

    .line 109
    .line 110
    iget v4, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    .line 111
    .line 112
    neg-int v4, v4

    .line 113
    mul-int/lit8 v4, v4, 0x64

    .line 114
    .line 115
    div-int/2addr v4, v2

    .line 116
    invoke-virtual {v1, v4}, Lcom/mob/tools/gui/PullToRequestAdatper;->onPullUp(I)V

    .line 117
    .line 118
    .line 119
    :cond_5
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/PullToRequestView;->getCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    goto/16 :goto_0

    .line 124
    .line 125
    :cond_6
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->downY:F

    .line 126
    .line 127
    sub-float v2, v0, v1

    .line 128
    .line 129
    const/high16 v5, 0x41200000    # 10.0f

    .line 130
    .line 131
    cmpl-float v2, v2, v5

    .line 132
    .line 133
    if-lez v2, :cond_8

    .line 134
    .line 135
    invoke-direct {p0}, Lcom/mob/tools/gui/PullToRequestView;->canPullDown()Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-eqz v1, :cond_e

    .line 140
    .line 141
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    .line 142
    .line 143
    int-to-float v1, v1

    .line 144
    iget v2, p0, Lcom/mob/tools/gui/PullToRequestView;->downY:F

    .line 145
    .line 146
    sub-float v2, v0, v2

    .line 147
    .line 148
    div-float/2addr v2, v6

    .line 149
    add-float/2addr v1, v2

    .line 150
    float-to-int v1, v1

    .line 151
    iput v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    .line 152
    .line 153
    neg-int v1, v1

    .line 154
    invoke-virtual {p0, v4, v1}, Landroid/view/View;->scrollTo(II)V

    .line 155
    .line 156
    .line 157
    iget-object v1, p0, Lcom/mob/tools/gui/PullToRequestView;->adapter:Lcom/mob/tools/gui/PullToRequestAdatper;

    .line 158
    .line 159
    if-eqz v1, :cond_7

    .line 160
    .line 161
    iget v2, p0, Lcom/mob/tools/gui/PullToRequestView;->headerHeight:I

    .line 162
    .line 163
    if-eqz v2, :cond_7

    .line 164
    .line 165
    iget v4, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    .line 166
    .line 167
    neg-int v4, v4

    .line 168
    mul-int/lit8 v4, v4, 0x64

    .line 169
    .line 170
    div-int/2addr v4, v2

    .line 171
    invoke-virtual {v1, v4}, Lcom/mob/tools/gui/PullToRequestAdatper;->onPullUp(I)V

    .line 172
    .line 173
    .line 174
    :cond_7
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/PullToRequestView;->getCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    goto :goto_0

    .line 179
    :cond_8
    sub-float/2addr v1, v0

    .line 180
    cmpl-float v1, v1, v5

    .line 181
    .line 182
    if-lez v1, :cond_e

    .line 183
    .line 184
    invoke-direct {p0}, Lcom/mob/tools/gui/PullToRequestView;->canPullUp()Z

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    if-eqz v1, :cond_e

    .line 189
    .line 190
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    .line 191
    .line 192
    int-to-float v1, v1

    .line 193
    iget v2, p0, Lcom/mob/tools/gui/PullToRequestView;->downY:F

    .line 194
    .line 195
    sub-float v2, v0, v2

    .line 196
    .line 197
    div-float/2addr v2, v6

    .line 198
    add-float/2addr v1, v2

    .line 199
    float-to-int v1, v1

    .line 200
    iput v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    .line 201
    .line 202
    neg-int v1, v1

    .line 203
    invoke-virtual {p0, v4, v1}, Landroid/view/View;->scrollTo(II)V

    .line 204
    .line 205
    .line 206
    iget-object v1, p0, Lcom/mob/tools/gui/PullToRequestView;->adapter:Lcom/mob/tools/gui/PullToRequestAdatper;

    .line 207
    .line 208
    if-eqz v1, :cond_9

    .line 209
    .line 210
    iget v2, p0, Lcom/mob/tools/gui/PullToRequestView;->footerHeight:I

    .line 211
    .line 212
    if-eqz v2, :cond_9

    .line 213
    .line 214
    iget v4, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    .line 215
    .line 216
    neg-int v4, v4

    .line 217
    mul-int/lit8 v4, v4, 0x64

    .line 218
    .line 219
    div-int/2addr v4, v2

    .line 220
    invoke-virtual {v1, v4}, Lcom/mob/tools/gui/PullToRequestAdatper;->onPullUp(I)V

    .line 221
    .line 222
    .line 223
    :cond_9
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/PullToRequestView;->getCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    goto :goto_0

    .line 228
    :cond_a
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    .line 229
    .line 230
    int-to-float v1, v1

    .line 231
    iget v2, p0, Lcom/mob/tools/gui/PullToRequestView;->downY:F

    .line 232
    .line 233
    sub-float v2, v0, v2

    .line 234
    .line 235
    div-float/2addr v2, v6

    .line 236
    add-float/2addr v1, v2

    .line 237
    float-to-int v1, v1

    .line 238
    iput v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    .line 239
    .line 240
    if-gez v1, :cond_b

    .line 241
    .line 242
    iput v4, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    .line 243
    .line 244
    :cond_b
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    .line 245
    .line 246
    neg-int v1, v1

    .line 247
    invoke-virtual {p0, v4, v1}, Landroid/view/View;->scrollTo(II)V

    .line 248
    .line 249
    .line 250
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/PullToRequestView;->getCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    goto :goto_0

    .line 255
    :cond_c
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    .line 256
    .line 257
    int-to-float v1, v1

    .line 258
    iget v2, p0, Lcom/mob/tools/gui/PullToRequestView;->downY:F

    .line 259
    .line 260
    sub-float v2, v0, v2

    .line 261
    .line 262
    div-float/2addr v2, v6

    .line 263
    add-float/2addr v1, v2

    .line 264
    float-to-int v1, v1

    .line 265
    iput v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    .line 266
    .line 267
    if-lez v1, :cond_d

    .line 268
    .line 269
    iput v4, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    .line 270
    .line 271
    :cond_d
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    .line 272
    .line 273
    neg-int v1, v1

    .line 274
    invoke-virtual {p0, v4, v1}, Landroid/view/View;->scrollTo(II)V

    .line 275
    .line 276
    .line 277
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/PullToRequestView;->getCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    :cond_e
    :goto_0
    iput v0, p0, Lcom/mob/tools/gui/PullToRequestView;->downY:F

    .line 282
    .line 283
    goto/16 :goto_2

    .line 284
    .line 285
    :cond_f
    iget v0, p0, Lcom/mob/tools/gui/PullToRequestView;->state:I

    .line 286
    .line 287
    if-eq v0, v1, :cond_18

    .line 288
    .line 289
    if-eqz v0, :cond_11

    .line 290
    .line 291
    if-eq v0, v2, :cond_10

    .line 292
    .line 293
    goto :goto_2

    .line 294
    :cond_10
    iget v0, p0, Lcom/mob/tools/gui/PullToRequestView;->headerHeight:I

    .line 295
    .line 296
    iput v0, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    .line 297
    .line 298
    neg-int v0, v0

    .line 299
    invoke-virtual {p0, v4, v0}, Landroid/view/View;->scrollTo(II)V

    .line 300
    .line 301
    .line 302
    goto :goto_2

    .line 303
    :cond_11
    iget v0, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    .line 304
    .line 305
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->headerHeight:I

    .line 306
    .line 307
    if-le v0, v1, :cond_13

    .line 308
    .line 309
    iput v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    .line 310
    .line 311
    neg-int v0, v1

    .line 312
    invoke-virtual {p0, v4, v0}, Landroid/view/View;->scrollTo(II)V

    .line 313
    .line 314
    .line 315
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestView;->adapter:Lcom/mob/tools/gui/PullToRequestAdatper;

    .line 316
    .line 317
    if-eqz v0, :cond_12

    .line 318
    .line 319
    invoke-virtual {v0, v3}, Lcom/mob/tools/gui/PullToRequestAdatper;->onPullDown(I)V

    .line 320
    .line 321
    .line 322
    :cond_12
    invoke-virtual {p0}, Lcom/mob/tools/gui/PullToRequestView;->performFresh()V

    .line 323
    .line 324
    .line 325
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/PullToRequestView;->getCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    goto :goto_2

    .line 330
    :cond_13
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->footerHeight:I

    .line 331
    .line 332
    neg-int v2, v1

    .line 333
    if-ge v0, v2, :cond_15

    .line 334
    .line 335
    neg-int v0, v1

    .line 336
    iput v0, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    .line 337
    .line 338
    neg-int v0, v0

    .line 339
    invoke-virtual {p0, v4, v0}, Landroid/view/View;->scrollTo(II)V

    .line 340
    .line 341
    .line 342
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestView;->adapter:Lcom/mob/tools/gui/PullToRequestAdatper;

    .line 343
    .line 344
    if-eqz v0, :cond_14

    .line 345
    .line 346
    invoke-virtual {v0, v3}, Lcom/mob/tools/gui/PullToRequestAdatper;->onPullUp(I)V

    .line 347
    .line 348
    .line 349
    :cond_14
    invoke-direct {p0}, Lcom/mob/tools/gui/PullToRequestView;->performRequestNext()V

    .line 350
    .line 351
    .line 352
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/PullToRequestView;->getCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 353
    .line 354
    .line 355
    move-result-object p1

    .line 356
    goto :goto_2

    .line 357
    :cond_15
    if-eqz v0, :cond_1a

    .line 358
    .line 359
    invoke-virtual {p0, v4, v4}, Landroid/view/View;->scrollTo(II)V

    .line 360
    .line 361
    .line 362
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestView;->adapter:Lcom/mob/tools/gui/PullToRequestAdatper;

    .line 363
    .line 364
    if-eqz v0, :cond_17

    .line 365
    .line 366
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    .line 367
    .line 368
    if-lez v1, :cond_16

    .line 369
    .line 370
    invoke-virtual {v0, v4}, Lcom/mob/tools/gui/PullToRequestAdatper;->onPullDown(I)V

    .line 371
    .line 372
    .line 373
    goto :goto_1

    .line 374
    :cond_16
    invoke-virtual {v0, v4}, Lcom/mob/tools/gui/PullToRequestAdatper;->onPullUp(I)V

    .line 375
    .line 376
    .line 377
    :cond_17
    :goto_1
    iput v4, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    .line 378
    .line 379
    goto :goto_2

    .line 380
    :cond_18
    iget v0, p0, Lcom/mob/tools/gui/PullToRequestView;->footerHeight:I

    .line 381
    .line 382
    neg-int v0, v0

    .line 383
    iput v0, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    .line 384
    .line 385
    neg-int v0, v0

    .line 386
    invoke-virtual {p0, v4, v0}, Landroid/view/View;->scrollTo(II)V

    .line 387
    .line 388
    .line 389
    goto :goto_2

    .line 390
    :cond_19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 391
    .line 392
    .line 393
    move-result v0

    .line 394
    iput v0, p0, Lcom/mob/tools/gui/PullToRequestView;->downY:F

    .line 395
    .line 396
    :cond_1a
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 397
    .line 398
    .line 399
    move-result p1

    .line 400
    return p1
.end method

.method public lockPullingDown()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mob/tools/gui/PullToRequestView;->pullingDownLock:Z

    .line 3
    .line 4
    return-void
.end method

.method public lockPullingUp()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mob/tools/gui/PullToRequestView;->pullingUpLock:Z

    .line 3
    .line 4
    return-void
.end method

.method protected performFresh()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/mob/tools/gui/PullToRequestView;->pullTime:J

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/mob/tools/gui/PullToRequestView;->state:I

    .line 9
    .line 10
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestView;->adapter:Lcom/mob/tools/gui/PullToRequestAdatper;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/mob/tools/gui/PullToRequestAdatper;->onRefresh()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public performPullingDown(Z)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/mob/tools/gui/PullToRequestView;->headerHeight:I

    .line 2
    .line 3
    iput v0, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    neg-int v0, v0

    .line 7
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->scrollTo(II)V

    .line 8
    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/mob/tools/gui/PullToRequestView;->performFresh()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public performPullingUp(Z)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/mob/tools/gui/PullToRequestView;->footerHeight:I

    .line 2
    .line 3
    neg-int v0, v0

    .line 4
    iput v0, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    neg-int v0, v0

    .line 8
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->scrollTo(II)V

    .line 9
    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/mob/tools/gui/PullToRequestView;->performRequestNext()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public releasePullingDownLock()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mob/tools/gui/PullToRequestView;->pullingDownLock:Z

    .line 3
    .line 4
    return-void
.end method

.method public releasePullingUpLock()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mob/tools/gui/PullToRequestView;->pullingUpLock:Z

    .line 3
    .line 4
    return-void
.end method

.method public setAdapter(Lcom/mob/tools/gui/PullToRequestAdatper;)V
    .locals 7

    .line 1
    iput-object p1, p0, Lcom/mob/tools/gui/PullToRequestView;->adapter:Lcom/mob/tools/gui/PullToRequestAdatper;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/mob/tools/gui/PullToRequestAdatper;->getBodyView()Lcom/mob/tools/gui/Scrollable;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/view/View;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/mob/tools/gui/PullToRequestView;->bodyView:Landroid/view/View;

    .line 13
    .line 14
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 15
    .line 16
    const/4 v1, -0x1

    .line 17
    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 18
    .line 19
    .line 20
    const/16 v1, 0x9

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 23
    .line 24
    .line 25
    const/16 v2, 0xb

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 28
    .line 29
    .line 30
    const/16 v3, 0xa

    .line 31
    .line 32
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 33
    .line 34
    .line 35
    iget-object v4, p0, Lcom/mob/tools/gui/PullToRequestView;->bodyView:Landroid/view/View;

    .line 36
    .line 37
    invoke-virtual {p0, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/mob/tools/gui/PullToRequestAdatper;->getHeaderView()Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/mob/tools/gui/PullToRequestView;->headerView:Landroid/view/View;

    .line 45
    .line 46
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 47
    .line 48
    const/4 v5, -0x2

    .line 49
    invoke-direct {v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestView;->headerView:Landroid/view/View;

    .line 56
    .line 57
    const/4 v4, 0x0

    .line 58
    invoke-virtual {v0, v4, v4}, Landroid/view/View;->measure(II)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestView;->headerView:Landroid/view/View;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    iput v0, p0, Lcom/mob/tools/gui/PullToRequestView;->headerHeight:I

    .line 68
    .line 69
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 70
    .line 71
    iget v6, p0, Lcom/mob/tools/gui/PullToRequestView;->headerHeight:I

    .line 72
    .line 73
    invoke-direct {v0, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 83
    .line 84
    .line 85
    iget v3, p0, Lcom/mob/tools/gui/PullToRequestView;->headerHeight:I

    .line 86
    .line 87
    neg-int v3, v3

    .line 88
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 89
    .line 90
    iget-object v3, p0, Lcom/mob/tools/gui/PullToRequestView;->headerView:Landroid/view/View;

    .line 91
    .line 92
    invoke-virtual {p0, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/mob/tools/gui/PullToRequestAdatper;->getFooterView()Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    iput-object p1, p0, Lcom/mob/tools/gui/PullToRequestView;->footerView:Landroid/view/View;

    .line 100
    .line 101
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 102
    .line 103
    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lcom/mob/tools/gui/PullToRequestView;->footerView:Landroid/view/View;

    .line 110
    .line 111
    invoke-virtual {p1, v4, v4}, Landroid/view/View;->measure(II)V

    .line 112
    .line 113
    .line 114
    iget-object p1, p0, Lcom/mob/tools/gui/PullToRequestView;->footerView:Landroid/view/View;

    .line 115
    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    iput p1, p0, Lcom/mob/tools/gui/PullToRequestView;->footerHeight:I

    .line 121
    .line 122
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 123
    .line 124
    iget v0, p0, Lcom/mob/tools/gui/PullToRequestView;->headerHeight:I

    .line 125
    .line 126
    invoke-direct {p1, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 133
    .line 134
    .line 135
    const/16 v0, 0xc

    .line 136
    .line 137
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 138
    .line 139
    .line 140
    iget v0, p0, Lcom/mob/tools/gui/PullToRequestView;->headerHeight:I

    .line 141
    .line 142
    neg-int v0, v0

    .line 143
    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 144
    .line 145
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestView;->footerView:Landroid/view/View;

    .line 146
    .line 147
    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    .line 149
    .line 150
    return-void
.end method

.method public stopPulling()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/mob/tools/gui/PullToRequestView;->pullTime:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    const-wide/16 v2, 0x3e8

    .line 9
    .line 10
    cmp-long v4, v0, v2

    .line 11
    .line 12
    if-gez v4, :cond_0

    .line 13
    .line 14
    iget-object v4, p0, Lcom/mob/tools/gui/PullToRequestView;->stopAct:Ljava/lang/Runnable;

    .line 15
    .line 16
    sub-long/2addr v2, v0

    .line 17
    invoke-virtual {p0, v4, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestView;->stopAct:Ljava/lang/Runnable;

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method
