.class public final Lorg/hmwebrtc/MeasureHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AR_16_9_FIT_PARENT:I = 0x4

.field private static final AR_4_3_FIT_PARENT:I = 0x5

.field private static final AR_ASPECT_FILL_PARENT:I = 0x1

.field private static final AR_ASPECT_FIT_PARENT:I = 0x0

.field private static final AR_ASPECT_WRAP_CONTENT:I = 0x2

.field private static final AR_MATCH_PARENT:I = 0x3


# instance fields
.field private mCurrentAspectRatio:I

.field private mMeasuredHeight:I

.field private mMeasuredWidth:I

.field private mVideoHeight:I

.field private mVideoRotationDegree:I

.field private mVideoSarDen:I

.field private mVideoSarNum:I

.field private mVideoWidth:I

.field private mWeakView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lorg/hmwebrtc/MeasureHelper;->mCurrentAspectRatio:I

    .line 6
    .line 7
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lorg/hmwebrtc/MeasureHelper;->mWeakView:Ljava/lang/ref/WeakReference;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public doMeasure(II)V
    .locals 10

    .line 1
    iget v0, p0, Lorg/hmwebrtc/MeasureHelper;->mVideoRotationDegree:I

    .line 2
    .line 3
    const/16 v1, 0x10e

    .line 4
    .line 5
    const/16 v2, 0x5a

    .line 6
    .line 7
    if-eq v0, v2, :cond_0

    .line 8
    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    :cond_0
    move v9, p2

    .line 12
    move p2, p1

    .line 13
    move p1, v9

    .line 14
    :cond_1
    iget v0, p0, Lorg/hmwebrtc/MeasureHelper;->mVideoWidth:I

    .line 15
    .line 16
    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget v3, p0, Lorg/hmwebrtc/MeasureHelper;->mVideoHeight:I

    .line 21
    .line 22
    invoke-static {v3, p2}, Landroid/view/View;->getDefaultSize(II)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    iget v4, p0, Lorg/hmwebrtc/MeasureHelper;->mCurrentAspectRatio:I

    .line 27
    .line 28
    const/4 v5, 0x3

    .line 29
    if-ne v4, v5, :cond_2

    .line 30
    .line 31
    goto/16 :goto_8

    .line 32
    .line 33
    :cond_2
    iget v4, p0, Lorg/hmwebrtc/MeasureHelper;->mVideoWidth:I

    .line 34
    .line 35
    if-lez v4, :cond_1b

    .line 36
    .line 37
    iget v4, p0, Lorg/hmwebrtc/MeasureHelper;->mVideoHeight:I

    .line 38
    .line 39
    if-lez v4, :cond_1b

    .line 40
    .line 41
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    const/high16 v4, -0x80000000

    .line 58
    .line 59
    if-ne v0, v4, :cond_10

    .line 60
    .line 61
    if-ne v3, v4, :cond_10

    .line 62
    .line 63
    int-to-float v0, p1

    .line 64
    int-to-float v3, p2

    .line 65
    div-float v4, v0, v3

    .line 66
    .line 67
    iget v5, p0, Lorg/hmwebrtc/MeasureHelper;->mCurrentAspectRatio:I

    .line 68
    .line 69
    const/4 v6, 0x5

    .line 70
    const/4 v7, 0x4

    .line 71
    if-eq v5, v7, :cond_6

    .line 72
    .line 73
    if-eq v5, v6, :cond_3

    .line 74
    .line 75
    iget v1, p0, Lorg/hmwebrtc/MeasureHelper;->mVideoWidth:I

    .line 76
    .line 77
    int-to-float v1, v1

    .line 78
    iget v2, p0, Lorg/hmwebrtc/MeasureHelper;->mVideoHeight:I

    .line 79
    .line 80
    int-to-float v2, v2

    .line 81
    div-float/2addr v1, v2

    .line 82
    iget v2, p0, Lorg/hmwebrtc/MeasureHelper;->mVideoSarNum:I

    .line 83
    .line 84
    if-lez v2, :cond_9

    .line 85
    .line 86
    iget v8, p0, Lorg/hmwebrtc/MeasureHelper;->mVideoSarDen:I

    .line 87
    .line 88
    if-lez v8, :cond_9

    .line 89
    .line 90
    int-to-float v2, v2

    .line 91
    mul-float v1, v1, v2

    .line 92
    .line 93
    int-to-float v2, v8

    .line 94
    div-float/2addr v1, v2

    .line 95
    goto :goto_2

    .line 96
    :cond_3
    iget v8, p0, Lorg/hmwebrtc/MeasureHelper;->mVideoRotationDegree:I

    .line 97
    .line 98
    if-eq v8, v2, :cond_5

    .line 99
    .line 100
    if-ne v8, v1, :cond_4

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_4
    const v1, 0x3faaaaab

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_5
    :goto_0
    const/high16 v1, 0x3f400000    # 0.75f

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_6
    iget v8, p0, Lorg/hmwebrtc/MeasureHelper;->mVideoRotationDegree:I

    .line 111
    .line 112
    if-eq v8, v2, :cond_8

    .line 113
    .line 114
    if-ne v8, v1, :cond_7

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_7
    const v1, 0x3fe38e39

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_8
    :goto_1
    const/high16 v1, 0x3f100000    # 0.5625f

    .line 122
    .line 123
    :cond_9
    :goto_2
    const/4 v2, 0x1

    .line 124
    cmpl-float v4, v1, v4

    .line 125
    .line 126
    if-lez v4, :cond_a

    .line 127
    .line 128
    const/4 v4, 0x1

    .line 129
    goto :goto_3

    .line 130
    :cond_a
    const/4 v4, 0x0

    .line 131
    :goto_3
    if-eqz v5, :cond_d

    .line 132
    .line 133
    if-eq v5, v2, :cond_c

    .line 134
    .line 135
    if-eq v5, v7, :cond_d

    .line 136
    .line 137
    if-eq v5, v6, :cond_d

    .line 138
    .line 139
    if-eqz v4, :cond_b

    .line 140
    .line 141
    iget p2, p0, Lorg/hmwebrtc/MeasureHelper;->mVideoWidth:I

    .line 142
    .line 143
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    int-to-float p2, p1

    .line 148
    div-float/2addr p2, v1

    .line 149
    float-to-int p2, p2

    .line 150
    goto/16 :goto_7

    .line 151
    .line 152
    :cond_b
    iget p1, p0, Lorg/hmwebrtc/MeasureHelper;->mVideoHeight:I

    .line 153
    .line 154
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 155
    .line 156
    .line 157
    move-result p2

    .line 158
    int-to-float p1, p2

    .line 159
    mul-float p1, p1, v1

    .line 160
    .line 161
    float-to-int p1, p1

    .line 162
    goto/16 :goto_7

    .line 163
    .line 164
    :cond_c
    if-eqz v4, :cond_e

    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_d
    if-eqz v4, :cond_f

    .line 168
    .line 169
    :cond_e
    div-float/2addr v0, v1

    .line 170
    float-to-int p2, v0

    .line 171
    goto/16 :goto_7

    .line 172
    .line 173
    :cond_f
    :goto_4
    mul-float v3, v3, v1

    .line 174
    .line 175
    float-to-int p1, v3

    .line 176
    goto/16 :goto_7

    .line 177
    .line 178
    :cond_10
    const/high16 v1, 0x40000000    # 2.0f

    .line 179
    .line 180
    if-ne v0, v1, :cond_12

    .line 181
    .line 182
    if-ne v3, v1, :cond_12

    .line 183
    .line 184
    iget v0, p0, Lorg/hmwebrtc/MeasureHelper;->mVideoWidth:I

    .line 185
    .line 186
    mul-int v1, v0, p2

    .line 187
    .line 188
    iget v2, p0, Lorg/hmwebrtc/MeasureHelper;->mVideoHeight:I

    .line 189
    .line 190
    mul-int v3, p1, v2

    .line 191
    .line 192
    if-ge v1, v3, :cond_11

    .line 193
    .line 194
    mul-int v0, v0, p2

    .line 195
    .line 196
    div-int/2addr v0, v2

    .line 197
    move p1, v0

    .line 198
    goto :goto_7

    .line 199
    :cond_11
    mul-int v1, v0, p2

    .line 200
    .line 201
    mul-int v3, p1, v2

    .line 202
    .line 203
    if-le v1, v3, :cond_19

    .line 204
    .line 205
    mul-int v2, v2, p1

    .line 206
    .line 207
    div-int/2addr v2, v0

    .line 208
    :goto_5
    move p2, v2

    .line 209
    goto :goto_7

    .line 210
    :cond_12
    if-ne v0, v1, :cond_14

    .line 211
    .line 212
    iget v0, p0, Lorg/hmwebrtc/MeasureHelper;->mVideoHeight:I

    .line 213
    .line 214
    mul-int v0, v0, p1

    .line 215
    .line 216
    iget v1, p0, Lorg/hmwebrtc/MeasureHelper;->mVideoWidth:I

    .line 217
    .line 218
    div-int/2addr v0, v1

    .line 219
    if-ne v3, v4, :cond_13

    .line 220
    .line 221
    if-le v0, p2, :cond_13

    .line 222
    .line 223
    goto :goto_7

    .line 224
    :cond_13
    move p2, v0

    .line 225
    goto :goto_7

    .line 226
    :cond_14
    if-ne v3, v1, :cond_16

    .line 227
    .line 228
    iget v1, p0, Lorg/hmwebrtc/MeasureHelper;->mVideoWidth:I

    .line 229
    .line 230
    mul-int v1, v1, p2

    .line 231
    .line 232
    iget v2, p0, Lorg/hmwebrtc/MeasureHelper;->mVideoHeight:I

    .line 233
    .line 234
    div-int/2addr v1, v2

    .line 235
    if-ne v0, v4, :cond_15

    .line 236
    .line 237
    if-le v1, p1, :cond_15

    .line 238
    .line 239
    goto :goto_7

    .line 240
    :cond_15
    move p1, v1

    .line 241
    goto :goto_7

    .line 242
    :cond_16
    iget v1, p0, Lorg/hmwebrtc/MeasureHelper;->mVideoWidth:I

    .line 243
    .line 244
    iget v2, p0, Lorg/hmwebrtc/MeasureHelper;->mVideoHeight:I

    .line 245
    .line 246
    if-ne v3, v4, :cond_17

    .line 247
    .line 248
    if-le v2, p2, :cond_17

    .line 249
    .line 250
    mul-int v3, p2, v1

    .line 251
    .line 252
    div-int/2addr v3, v2

    .line 253
    goto :goto_6

    .line 254
    :cond_17
    move v3, v1

    .line 255
    move p2, v2

    .line 256
    :goto_6
    if-ne v0, v4, :cond_18

    .line 257
    .line 258
    if-le v3, p1, :cond_18

    .line 259
    .line 260
    mul-int v2, v2, p1

    .line 261
    .line 262
    div-int/2addr v2, v1

    .line 263
    goto :goto_5

    .line 264
    :cond_18
    move p1, v3

    .line 265
    :cond_19
    :goto_7
    iget v0, p0, Lorg/hmwebrtc/MeasureHelper;->mVideoWidth:I

    .line 266
    .line 267
    if-gt p1, v0, :cond_1a

    .line 268
    .line 269
    iget v1, p0, Lorg/hmwebrtc/MeasureHelper;->mVideoHeight:I

    .line 270
    .line 271
    if-le p2, v1, :cond_1c

    .line 272
    .line 273
    :cond_1a
    iget p2, p0, Lorg/hmwebrtc/MeasureHelper;->mVideoHeight:I

    .line 274
    .line 275
    move p1, v0

    .line 276
    goto :goto_8

    .line 277
    :cond_1b
    move p1, v0

    .line 278
    move p2, v3

    .line 279
    :cond_1c
    :goto_8
    iput p1, p0, Lorg/hmwebrtc/MeasureHelper;->mMeasuredWidth:I

    .line 280
    .line 281
    iput p2, p0, Lorg/hmwebrtc/MeasureHelper;->mMeasuredHeight:I

    .line 282
    .line 283
    return-void
.end method

.method public getMeasuredHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/hmwebrtc/MeasureHelper;->mMeasuredHeight:I

    .line 2
    .line 3
    return v0
.end method

.method public getMeasuredWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/hmwebrtc/MeasureHelper;->mMeasuredWidth:I

    .line 2
    .line 3
    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/MeasureHelper;->mWeakView:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/View;

    .line 12
    .line 13
    return-object v0
.end method

.method public setAspectRatio(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/hmwebrtc/MeasureHelper;->mCurrentAspectRatio:I

    .line 2
    .line 3
    return-void
.end method

.method public setVideoRotation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/hmwebrtc/MeasureHelper;->mVideoRotationDegree:I

    .line 2
    .line 3
    return-void
.end method

.method public setVideoSampleAspectRatio(II)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/hmwebrtc/MeasureHelper;->mVideoSarNum:I

    .line 2
    .line 3
    iput p2, p0, Lorg/hmwebrtc/MeasureHelper;->mVideoSarDen:I

    .line 4
    .line 5
    return-void
.end method

.method public setVideoSize(II)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/hmwebrtc/MeasureHelper;->mVideoWidth:I

    .line 2
    .line 3
    iput p2, p0, Lorg/hmwebrtc/MeasureHelper;->mVideoHeight:I

    .line 4
    .line 5
    return-void
.end method
