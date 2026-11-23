.class public Lcom/byazt/tm/DynamicTimeOuter;
.super Lcom/byazt/tm/DynamicButton;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/kn/ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x30,
        0x97a
    }
.end annotation


# instance fields
.field public c:Z

.field public gt:Z

.field public tt:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/tm/DynamicRootView;Lcom/byazt/aq/x;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/tm/DynamicButton;-><init>(Landroid/content/Context;Lcom/byazt/tm/DynamicRootView;Lcom/byazt/aq/x;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, p0}, Lcom/byazt/tm/DynamicRootView;->setTimeOutListener(Lcom/byazt/kn/ve;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Lcom/byazt/aq/x;->da()Lcom/byazt/aq/n;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/byazt/aq/n;->getType()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string p3, "timedown"

    .line 16
    .line 17
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget p1, p0, Lcom/byazt/tm/DynamicBaseWidget;->x:I

    .line 24
    .line 25
    invoke-virtual {p2, p1}, Lcom/byazt/tm/DynamicRootView;->setTimedown(I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/CharSequence;ZIZ)V
    .locals 4

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-nez p4, :cond_7

    .line 6
    .line 7
    iget-boolean p4, p0, Lcom/byazt/tm/DynamicTimeOuter;->gt:Z

    .line 8
    .line 9
    if-eqz p4, :cond_0

    .line 10
    .line 11
    goto/16 :goto_0

    .line 12
    .line 13
    :cond_0
    :try_start_0
    move-object p4, p1

    .line 14
    check-cast p4, Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result p4

    .line 20
    if-gtz p4, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catch_0
    nop

    .line 27
    :cond_1
    const/4 p4, 0x0

    .line 28
    invoke-virtual {p0, p4}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    const-string v2, "s"

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-nez p2, :cond_2

    .line 35
    .line 36
    iget-object p2, p0, Lcom/byazt/tm/DynamicBaseWidget;->yp:Lcom/byazt/tm/DynamicRootView;

    .line 37
    .line 38
    invoke-virtual {p2}, Lcom/byazt/tm/DynamicRootView;->getRenderRequest()Lcom/byazt/xl/u;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p2}, Lcom/byazt/xl/u;->ve()Z

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-eqz p2, :cond_2

    .line 47
    .line 48
    iget-object p2, p0, Lcom/byazt/tm/DynamicBaseWidget;->yp:Lcom/byazt/tm/DynamicRootView;

    .line 49
    .line 50
    invoke-virtual {p2}, Lcom/byazt/tm/DynamicRootView;->getRenderRequest()Lcom/byazt/xl/u;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {p2}, Lcom/byazt/xl/u;->a()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-static {p2}, Lcom/byazt/or/sp;->tt(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-eqz p2, :cond_2

    .line 63
    .line 64
    iget-object p1, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 65
    .line 66
    check-cast p1, Landroid/widget/TextView;

    .line 67
    .line 68
    new-instance p2, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    iput-boolean v3, p0, Lcom/byazt/tm/DynamicTimeOuter;->c:Z

    .line 87
    .line 88
    return-void

    .line 89
    :cond_2
    invoke-static {}, Lcom/byazt/sr/uj;->c()Z

    .line 90
    .line 91
    .line 92
    move-result p2

    .line 93
    if-eqz p2, :cond_3

    .line 94
    .line 95
    iget-object p2, p0, Lcom/byazt/tm/DynamicBaseWidget;->yp:Lcom/byazt/tm/DynamicRootView;

    .line 96
    .line 97
    invoke-virtual {p2}, Lcom/byazt/tm/DynamicRootView;->getRenderRequest()Lcom/byazt/xl/u;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-virtual {p2}, Lcom/byazt/xl/u;->a()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    const-string p3, "open_ad"

    .line 106
    .line 107
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    if-nez p2, :cond_3

    .line 112
    .line 113
    iget-object p2, p0, Lcom/byazt/tm/DynamicBaseWidget;->yp:Lcom/byazt/tm/DynamicRootView;

    .line 114
    .line 115
    invoke-virtual {p2}, Lcom/byazt/tm/DynamicRootView;->getRenderRequest()Lcom/byazt/xl/u;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    invoke-virtual {p2}, Lcom/byazt/xl/u;->ve()Z

    .line 120
    .line 121
    .line 122
    move-result p2

    .line 123
    if-eqz p2, :cond_3

    .line 124
    .line 125
    iput-boolean v3, p0, Lcom/byazt/tm/DynamicTimeOuter;->gt:Z

    .line 126
    .line 127
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :cond_3
    iget-object p2, p0, Lcom/byazt/tm/DynamicBaseWidget;->u:Lcom/byazt/aq/x;

    .line 132
    .line 133
    invoke-virtual {p2}, Lcom/byazt/aq/x;->da()Lcom/byazt/aq/n;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    invoke-virtual {p2}, Lcom/byazt/aq/n;->getType()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    const-string p3, "timedown"

    .line 142
    .line 143
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result p2

    .line 147
    if-eqz p2, :cond_4

    .line 148
    .line 149
    iget-object p2, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 150
    .line 151
    check-cast p2, Landroid/widget/TextView;

    .line 152
    .line 153
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :cond_4
    iget-object p2, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 158
    .line 159
    check-cast p2, Landroid/widget/TextView;

    .line 160
    .line 161
    new-instance p3, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    .line 178
    .line 179
    iput-boolean v3, p0, Lcom/byazt/tm/DynamicTimeOuter;->tt:Z

    .line 180
    .line 181
    iget-boolean p1, p0, Lcom/byazt/tm/DynamicTimeOuter;->c:Z

    .line 182
    .line 183
    if-eqz p1, :cond_6

    .line 184
    .line 185
    iget-object p1, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 186
    .line 187
    check-cast p1, Landroid/widget/TextView;

    .line 188
    .line 189
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    if-eqz p1, :cond_5

    .line 194
    .line 195
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    :cond_5
    iget-object p1, p0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    .line 200
    .line 201
    invoke-virtual {p1}, Lcom/byazt/aq/sp;->n()F

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    invoke-static {v0, p1, v3}, Lcom/byazt/du/sl;->tt(Ljava/lang/String;FZ)[I

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    aget p1, p1, p4

    .line 210
    .line 211
    int-to-float p1, p1

    .line 212
    invoke-static {}, Lcom/byazt/sr/uj;->getContext()Landroid/content/Context;

    .line 213
    .line 214
    .line 215
    move-result-object p2

    .line 216
    iget-object p3, p0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    .line 217
    .line 218
    invoke-virtual {p3}, Lcom/byazt/aq/sp;->ve()I

    .line 219
    .line 220
    .line 221
    move-result p3

    .line 222
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    .line 223
    .line 224
    invoke-virtual {v0}, Lcom/byazt/aq/sp;->uj()I

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    add-int/2addr p3, v0

    .line 229
    int-to-float p3, p3

    .line 230
    invoke-static {p2, p3}, Lcom/byazt/or/x;->c(Landroid/content/Context;F)F

    .line 231
    .line 232
    .line 233
    move-result p2

    .line 234
    add-float/2addr p1, p2

    .line 235
    float-to-int p1, p1

    .line 236
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 237
    .line 238
    iget p3, p0, Lcom/byazt/tm/DynamicBaseWidget;->x:I

    .line 239
    .line 240
    invoke-direct {p2, p1, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 241
    .line 242
    .line 243
    const p1, 0x800015

    .line 244
    .line 245
    .line 246
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 247
    .line 248
    iget-object p1, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 249
    .line 250
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    .line 252
    .line 253
    iput-boolean p4, p0, Lcom/byazt/tm/DynamicTimeOuter;->c:Z

    .line 254
    .line 255
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 256
    .line 257
    .line 258
    :cond_6
    return-void

    .line 259
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 260
    .line 261
    check-cast p1, Landroid/widget/TextView;

    .line 262
    .line 263
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 267
    .line 268
    .line 269
    return-void
.end method

.method public n()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->u:Lcom/byazt/aq/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/aq/x;->da()Lcom/byazt/aq/n;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/byazt/aq/n;->getType()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "skip-with-countdowns-video-countdown"

    .line 12
    .line 13
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->u:Lcom/byazt/aq/x;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/byazt/aq/x;->da()Lcom/byazt/aq/n;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/byazt/aq/n;->getType()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "skip-with-time-countdown"

    .line 30
    .line 31
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-super {p0}, Lcom/byazt/tm/DynamicBaseWidget;->n()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    :goto_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 43
    .line 44
    iget v1, p0, Lcom/byazt/tm/DynamicBaseWidget;->sp:I

    .line 45
    .line 46
    iget v2, p0, Lcom/byazt/tm/DynamicBaseWidget;->x:I

    .line 47
    .line 48
    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 49
    .line 50
    .line 51
    const v1, 0x800013

    .line 52
    .line 53
    .line 54
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 55
    .line 56
    invoke-static {}, Lcom/byazt/sr/uj;->c()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    iget v1, p0, Lcom/byazt/tm/DynamicBaseWidget;->i:I

    .line 63
    .line 64
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 65
    .line 66
    :cond_2
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 69
    .line 70
    .line 71
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 5
    .line 6
    check-cast p1, Landroid/widget/TextView;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iget p2, p0, Lcom/byazt/tm/DynamicBaseWidget;->x:I

    .line 20
    .line 21
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public x()Z
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/byazt/tm/DynamicButton;->x()Z

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->yp:Lcom/byazt/tm/DynamicRootView;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/byazt/tm/DynamicRootView;->getRenderRequest()Lcom/byazt/xl/u;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/byazt/xl/u;->a()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Lcom/byazt/or/sp;->tt(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/16 v0, 0x8

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->u:Lcom/byazt/aq/x;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/byazt/aq/x;->da()Lcom/byazt/aq/n;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/byazt/aq/n;->getType()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "timedown"

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/4 v1, 0x1

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 45
    .line 46
    check-cast v0, Landroid/widget/TextView;

    .line 47
    .line 48
    iget-object v2, p0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/byazt/aq/sp;->da()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 55
    .line 56
    .line 57
    move-result-wide v2

    .line 58
    double-to-int v2, v2

    .line 59
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    return v1

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 68
    .line 69
    check-cast v0, Landroid/widget/TextView;

    .line 70
    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    iget-object v3, p0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    .line 77
    .line 78
    invoke-virtual {v3}, Lcom/byazt/aq/sp;->da()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 83
    .line 84
    .line 85
    move-result-wide v3

    .line 86
    double-to-int v3, v3

    .line 87
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v3, "s"

    .line 91
    .line 92
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    .line 101
    .line 102
    return v1
.end method
