.class Lcom/join/mgps/customview/k0$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/k0;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/k0;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/k0$a;->a:Lcom/join/mgps/customview/k0;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 27
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 4
    .line 5
    .line 6
    move-object/from16 v1, p1

    .line 7
    .line 8
    iget v1, v1, Landroid/os/Message;->what:I

    .line 9
    .line 10
    if-eqz v1, :cond_4

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    if-eq v1, v2, :cond_3

    .line 14
    .line 15
    const/4 v3, 0x3

    .line 16
    if-eq v1, v3, :cond_2

    .line 17
    .line 18
    const/4 v2, 0x4

    .line 19
    if-eq v1, v2, :cond_1

    .line 20
    .line 21
    const/4 v2, 0x5

    .line 22
    if-eq v1, v2, :cond_0

    .line 23
    .line 24
    goto/16 :goto_0

    .line 25
    .line 26
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    invoke-static {v1, v2}, Lcom/join/mgps/customview/k0;->g(J)J

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/join/mgps/customview/k0;->f()Landroid/widget/Toast;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 38
    .line 39
    .line 40
    new-instance v1, Ljava/util/Timer;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 43
    .line 44
    .line 45
    new-instance v2, Lcom/join/mgps/customview/k0$a$f;

    .line 46
    .line 47
    invoke-direct {v2, v0}, Lcom/join/mgps/customview/k0$a$f;-><init>(Lcom/join/mgps/customview/k0$a;)V

    .line 48
    .line 49
    .line 50
    const-wide/16 v4, 0xdac

    .line 51
    .line 52
    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 53
    .line 54
    .line 55
    iget-object v1, v0, Lcom/join/mgps/customview/k0$a;->a:Lcom/join/mgps/customview/k0;

    .line 56
    .line 57
    iget-object v1, v1, Lcom/join/mgps/customview/k0;->b:Landroid/os/Handler;

    .line 58
    .line 59
    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 60
    .line 61
    .line 62
    goto/16 :goto_0

    .line 63
    .line 64
    :cond_1
    invoke-static {}, Lcom/join/mgps/customview/k0;->f()Landroid/widget/Toast;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 69
    .line 70
    .line 71
    goto/16 :goto_0

    .line 72
    .line 73
    :cond_2
    new-instance v1, Landroid/view/animation/RotateAnimation;

    .line 74
    .line 75
    const/4 v4, 0x0

    .line 76
    const/high16 v5, 0x42200000    # 40.0f

    .line 77
    .line 78
    const/4 v6, 0x1

    .line 79
    const/high16 v7, 0x3f000000    # 0.5f

    .line 80
    .line 81
    const/4 v8, 0x1

    .line 82
    const/high16 v9, 0x3f000000    # 0.5f

    .line 83
    .line 84
    move-object v3, v1

    .line 85
    invoke-direct/range {v3 .. v9}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 86
    .line 87
    .line 88
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    .line 89
    .line 90
    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 97
    .line 98
    .line 99
    const/4 v3, 0x0

    .line 100
    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 101
    .line 102
    .line 103
    const-wide/16 v3, 0xa

    .line 104
    .line 105
    invoke-virtual {v1, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 106
    .line 107
    .line 108
    new-instance v12, Landroid/view/animation/RotateAnimation;

    .line 109
    .line 110
    const/high16 v6, 0x42200000    # 40.0f

    .line 111
    .line 112
    const/4 v7, 0x0

    .line 113
    const/4 v10, 0x1

    .line 114
    const/high16 v11, 0x3f000000    # 0.5f

    .line 115
    .line 116
    move-object v5, v12

    .line 117
    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v12, v2}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v12, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v12, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 127
    .line 128
    .line 129
    new-instance v5, Landroid/view/animation/RotateAnimation;

    .line 130
    .line 131
    const/4 v14, 0x0

    .line 132
    const/high16 v15, -0x3de00000    # -40.0f

    .line 133
    .line 134
    const/16 v16, 0x1

    .line 135
    .line 136
    const/high16 v17, 0x3f000000    # 0.5f

    .line 137
    .line 138
    const/16 v18, 0x1

    .line 139
    .line 140
    const/high16 v19, 0x3f000000    # 0.5f

    .line 141
    .line 142
    move-object v13, v5

    .line 143
    invoke-direct/range {v13 .. v19}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v5, v2}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v5, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v5, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 153
    .line 154
    .line 155
    new-instance v6, Landroid/view/animation/RotateAnimation;

    .line 156
    .line 157
    const/high16 v21, -0x3de00000    # -40.0f

    .line 158
    .line 159
    const/16 v22, 0x0

    .line 160
    .line 161
    const/16 v23, 0x1

    .line 162
    .line 163
    const/high16 v24, 0x3f000000    # 0.5f

    .line 164
    .line 165
    const/16 v25, 0x1

    .line 166
    .line 167
    const/high16 v26, 0x3f000000    # 0.5f

    .line 168
    .line 169
    move-object/from16 v20, v6

    .line 170
    .line 171
    invoke-direct/range {v20 .. v26}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v6, v2}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v6, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v6, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 181
    .line 182
    .line 183
    new-instance v2, Lcom/join/mgps/customview/k0$a$b;

    .line 184
    .line 185
    invoke-direct {v2, v0, v12}, Lcom/join/mgps/customview/k0$a$b;-><init>(Lcom/join/mgps/customview/k0$a;Landroid/view/animation/Animation;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 189
    .line 190
    .line 191
    new-instance v2, Lcom/join/mgps/customview/k0$a$c;

    .line 192
    .line 193
    invoke-direct {v2, v0, v5}, Lcom/join/mgps/customview/k0$a$c;-><init>(Lcom/join/mgps/customview/k0$a;Landroid/view/animation/Animation;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v12, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 197
    .line 198
    .line 199
    new-instance v2, Lcom/join/mgps/customview/k0$a$d;

    .line 200
    .line 201
    invoke-direct {v2, v0, v6}, Lcom/join/mgps/customview/k0$a$d;-><init>(Lcom/join/mgps/customview/k0$a;Landroid/view/animation/Animation;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v5, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 205
    .line 206
    .line 207
    new-instance v2, Lcom/join/mgps/customview/k0$a$e;

    .line 208
    .line 209
    invoke-direct {v2, v0, v1}, Lcom/join/mgps/customview/k0$a$e;-><init>(Lcom/join/mgps/customview/k0$a;Landroid/view/animation/Animation;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v6, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 213
    .line 214
    .line 215
    iget-object v2, v0, Lcom/join/mgps/customview/k0$a;->a:Lcom/join/mgps/customview/k0;

    .line 216
    .line 217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 218
    .line 219
    .line 220
    move-result-wide v3

    .line 221
    invoke-static {v2, v3, v4}, Lcom/join/mgps/customview/k0;->e(Lcom/join/mgps/customview/k0;J)J

    .line 222
    .line 223
    .line 224
    invoke-static {}, Lcom/join/mgps/customview/k0;->c()Landroid/widget/ImageView;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 229
    .line 230
    .line 231
    goto :goto_0

    .line 232
    :cond_3
    invoke-static {}, Lcom/join/mgps/customview/k0;->a()Landroid/content/Context;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    const v2, 0x7f01008a

    .line 237
    .line 238
    .line 239
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    invoke-static {}, Lcom/join/mgps/customview/k0;->c()Landroid/widget/ImageView;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 248
    .line 249
    .line 250
    new-instance v2, Lcom/join/mgps/customview/k0$a$a;

    .line 251
    .line 252
    invoke-direct {v2, v0}, Lcom/join/mgps/customview/k0$a$a;-><init>(Lcom/join/mgps/customview/k0$a;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 256
    .line 257
    .line 258
    goto :goto_0

    .line 259
    :cond_4
    invoke-static {}, Lcom/join/mgps/customview/k0;->b()Landroid/widget/LinearLayout;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    invoke-static {}, Lcom/join/mgps/customview/k0;->a()Landroid/content/Context;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    const v3, 0x7f01008b

    .line 268
    .line 269
    .line 270
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 271
    .line 272
    .line 273
    move-result-object v2

    .line 274
    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 275
    .line 276
    .line 277
    :goto_0
    return-void
.end method
