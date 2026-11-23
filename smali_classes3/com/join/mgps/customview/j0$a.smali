.class Lcom/join/mgps/customview/j0$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/j0;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/j0;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/j0$a;->a:Lcom/join/mgps/customview/j0;

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
    if-eqz v1, :cond_2

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    if-eq v1, v2, :cond_1

    .line 14
    .line 15
    const/4 v3, 0x3

    .line 16
    if-eq v1, v3, :cond_0

    .line 17
    .line 18
    goto/16 :goto_0

    .line 19
    .line 20
    :cond_0
    new-instance v1, Landroid/view/animation/RotateAnimation;

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    const/high16 v6, 0x42200000    # 40.0f

    .line 24
    .line 25
    const/4 v7, 0x1

    .line 26
    const/high16 v8, 0x3f000000    # 0.5f

    .line 27
    .line 28
    const/4 v9, 0x1

    .line 29
    const/high16 v10, 0x3f000000    # 0.5f

    .line 30
    .line 31
    move-object v4, v1

    .line 32
    invoke-direct/range {v4 .. v10}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 33
    .line 34
    .line 35
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    .line 36
    .line 37
    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 44
    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 48
    .line 49
    .line 50
    const-wide/16 v3, 0xa

    .line 51
    .line 52
    invoke-virtual {v1, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 53
    .line 54
    .line 55
    new-instance v12, Landroid/view/animation/RotateAnimation;

    .line 56
    .line 57
    const/4 v7, 0x0

    .line 58
    const/4 v8, 0x1

    .line 59
    const/high16 v9, 0x3f000000    # 0.5f

    .line 60
    .line 61
    const/4 v10, 0x1

    .line 62
    const/high16 v11, 0x3f000000    # 0.5f

    .line 63
    .line 64
    move-object v5, v12

    .line 65
    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v12, v2}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v12, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v12, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 75
    .line 76
    .line 77
    new-instance v5, Landroid/view/animation/RotateAnimation;

    .line 78
    .line 79
    const/4 v14, 0x0

    .line 80
    const/high16 v15, -0x3de00000    # -40.0f

    .line 81
    .line 82
    const/16 v16, 0x1

    .line 83
    .line 84
    const/high16 v17, 0x3f000000    # 0.5f

    .line 85
    .line 86
    const/16 v18, 0x1

    .line 87
    .line 88
    const/high16 v19, 0x3f000000    # 0.5f

    .line 89
    .line 90
    move-object v13, v5

    .line 91
    invoke-direct/range {v13 .. v19}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5, v2}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 101
    .line 102
    .line 103
    new-instance v6, Landroid/view/animation/RotateAnimation;

    .line 104
    .line 105
    const/high16 v21, -0x3de00000    # -40.0f

    .line 106
    .line 107
    const/16 v22, 0x0

    .line 108
    .line 109
    const/16 v23, 0x1

    .line 110
    .line 111
    const/high16 v24, 0x3f000000    # 0.5f

    .line 112
    .line 113
    const/16 v25, 0x1

    .line 114
    .line 115
    const/high16 v26, 0x3f000000    # 0.5f

    .line 116
    .line 117
    move-object/from16 v20, v6

    .line 118
    .line 119
    invoke-direct/range {v20 .. v26}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v6, v2}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v6, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v6, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 129
    .line 130
    .line 131
    new-instance v2, Lcom/join/mgps/customview/j0$a$b;

    .line 132
    .line 133
    invoke-direct {v2, v0, v12}, Lcom/join/mgps/customview/j0$a$b;-><init>(Lcom/join/mgps/customview/j0$a;Landroid/view/animation/Animation;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 137
    .line 138
    .line 139
    new-instance v2, Lcom/join/mgps/customview/j0$a$c;

    .line 140
    .line 141
    invoke-direct {v2, v0, v5}, Lcom/join/mgps/customview/j0$a$c;-><init>(Lcom/join/mgps/customview/j0$a;Landroid/view/animation/Animation;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v12, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 145
    .line 146
    .line 147
    new-instance v2, Lcom/join/mgps/customview/j0$a$d;

    .line 148
    .line 149
    invoke-direct {v2, v0, v6}, Lcom/join/mgps/customview/j0$a$d;-><init>(Lcom/join/mgps/customview/j0$a;Landroid/view/animation/Animation;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v5, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 153
    .line 154
    .line 155
    new-instance v2, Lcom/join/mgps/customview/j0$a$e;

    .line 156
    .line 157
    invoke-direct {v2, v0, v1}, Lcom/join/mgps/customview/j0$a$e;-><init>(Lcom/join/mgps/customview/j0$a;Landroid/view/animation/Animation;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v6, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 161
    .line 162
    .line 163
    iget-object v2, v0, Lcom/join/mgps/customview/j0$a;->a:Lcom/join/mgps/customview/j0;

    .line 164
    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 166
    .line 167
    .line 168
    move-result-wide v3

    .line 169
    invoke-static {v2, v3, v4}, Lcom/join/mgps/customview/j0;->b(Lcom/join/mgps/customview/j0;J)J

    .line 170
    .line 171
    .line 172
    iget-object v2, v0, Lcom/join/mgps/customview/j0$a;->a:Lcom/join/mgps/customview/j0;

    .line 173
    .line 174
    iget-object v2, v2, Lcom/join/mgps/customview/j0;->d:Landroid/widget/ImageView;

    .line 175
    .line 176
    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 177
    .line 178
    .line 179
    goto :goto_0

    .line 180
    :cond_1
    iget-object v1, v0, Lcom/join/mgps/customview/j0$a;->a:Lcom/join/mgps/customview/j0;

    .line 181
    .line 182
    iget-object v1, v1, Lcom/join/mgps/customview/j0;->a:Landroid/content/Context;

    .line 183
    .line 184
    const v2, 0x7f010093

    .line 185
    .line 186
    .line 187
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    iget-object v2, v0, Lcom/join/mgps/customview/j0$a;->a:Lcom/join/mgps/customview/j0;

    .line 192
    .line 193
    iget-object v2, v2, Lcom/join/mgps/customview/j0;->d:Landroid/widget/ImageView;

    .line 194
    .line 195
    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 196
    .line 197
    .line 198
    new-instance v2, Lcom/join/mgps/customview/j0$a$a;

    .line 199
    .line 200
    invoke-direct {v2, v0}, Lcom/join/mgps/customview/j0$a$a;-><init>(Lcom/join/mgps/customview/j0$a;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 204
    .line 205
    .line 206
    goto :goto_0

    .line 207
    :cond_2
    iget-object v1, v0, Lcom/join/mgps/customview/j0$a;->a:Lcom/join/mgps/customview/j0;

    .line 208
    .line 209
    iget-object v2, v1, Lcom/join/mgps/customview/j0;->c:Landroid/widget/LinearLayout;

    .line 210
    .line 211
    iget-object v1, v1, Lcom/join/mgps/customview/j0;->a:Landroid/content/Context;

    .line 212
    .line 213
    const v3, 0x7f0100a3

    .line 214
    .line 215
    .line 216
    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 221
    .line 222
    .line 223
    :goto_0
    return-void
.end method
