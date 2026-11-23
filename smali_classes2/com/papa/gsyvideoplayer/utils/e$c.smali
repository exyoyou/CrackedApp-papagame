.class Lcom/papa/gsyvideoplayer/utils/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/gsyvideoplayer/utils/e;->L()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/papa/gsyvideoplayer/utils/e;


# direct methods
.method constructor <init>(Lcom/papa/gsyvideoplayer/utils/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->b:Lcom/papa/gsyvideoplayer/utils/e;

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
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->b:Lcom/papa/gsyvideoplayer/utils/e;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/papa/gsyvideoplayer/utils/e;->o(Lcom/papa/gsyvideoplayer/utils/e;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->b:Lcom/papa/gsyvideoplayer/utils/e;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/e;->p(Lcom/papa/gsyvideoplayer/utils/e;)Z

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->b:Lcom/papa/gsyvideoplayer/utils/e;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/e;->k(Lcom/papa/gsyvideoplayer/utils/e;)Landroid/view/ViewGroup;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->b:Lcom/papa/gsyvideoplayer/utils/e;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/e;->k(Lcom/papa/gsyvideoplayer/utils/e;)Landroid/view/ViewGroup;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->b:Lcom/papa/gsyvideoplayer/utils/e;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/e;->a(Lcom/papa/gsyvideoplayer/utils/e;)Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->b:Lcom/papa/gsyvideoplayer/utils/e;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/e;->a(Lcom/papa/gsyvideoplayer/utils/e;)Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroid/view/ViewGroup;

    .line 52
    .line 53
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->b:Lcom/papa/gsyvideoplayer/utils/e;

    .line 54
    .line 55
    invoke-static {v2}, Lcom/papa/gsyvideoplayer/utils/e;->a(Lcom/papa/gsyvideoplayer/utils/e;)Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->b:Lcom/papa/gsyvideoplayer/utils/e;

    .line 63
    .line 64
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/e;->q(Lcom/papa/gsyvideoplayer/utils/e;)Lcom/papa/gsyvideoplayer/utils/n;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/utils/n;->I(Z)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->b:Lcom/papa/gsyvideoplayer/utils/e;

    .line 72
    .line 73
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/e;->a(Lcom/papa/gsyvideoplayer/utils/e;)Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setIfCurrentIsFullscreen(Z)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->b:Lcom/papa/gsyvideoplayer/utils/e;

    .line 81
    .line 82
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/e;->k(Lcom/papa/gsyvideoplayer/utils/e;)Landroid/view/ViewGroup;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    if-eqz v0, :cond_2

    .line 87
    .line 88
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->b:Lcom/papa/gsyvideoplayer/utils/e;

    .line 89
    .line 90
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/e;->k(Lcom/papa/gsyvideoplayer/utils/e;)Landroid/view/ViewGroup;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 95
    .line 96
    .line 97
    :cond_2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->b:Lcom/papa/gsyvideoplayer/utils/e;

    .line 98
    .line 99
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/e;->c(Lcom/papa/gsyvideoplayer/utils/e;)Landroid/view/ViewGroup;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->b:Lcom/papa/gsyvideoplayer/utils/e;

    .line 104
    .line 105
    invoke-static {v2}, Lcom/papa/gsyvideoplayer/utils/e;->a(Lcom/papa/gsyvideoplayer/utils/e;)Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    iget-object v3, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->b:Lcom/papa/gsyvideoplayer/utils/e;

    .line 110
    .line 111
    invoke-static {v3}, Lcom/papa/gsyvideoplayer/utils/e;->r(Lcom/papa/gsyvideoplayer/utils/e;)Landroid/view/ViewGroup$LayoutParams;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->b:Lcom/papa/gsyvideoplayer/utils/e;

    .line 119
    .line 120
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/e;->a(Lcom/papa/gsyvideoplayer/utils/e;)Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->b:Lcom/papa/gsyvideoplayer/utils/e;

    .line 129
    .line 130
    invoke-static {v2}, Lcom/papa/gsyvideoplayer/utils/e;->a(Lcom/papa/gsyvideoplayer/utils/e;)Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-virtual {v2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getEnlargeImageRes()I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->b:Lcom/papa/gsyvideoplayer/utils/e;

    .line 142
    .line 143
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/e;->a(Lcom/papa/gsyvideoplayer/utils/e;)Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getBackButton()Landroid/widget/ImageView;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    const/16 v2, 0x8

    .line 152
    .line 153
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    .line 155
    .line 156
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->b:Lcom/papa/gsyvideoplayer/utils/e;

    .line 157
    .line 158
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/e;->a(Lcom/papa/gsyvideoplayer/utils/e;)Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setIfCurrentIsFullscreen(Z)V

    .line 163
    .line 164
    .line 165
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->b:Lcom/papa/gsyvideoplayer/utils/e;

    .line 166
    .line 167
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/e;->a(Lcom/papa/gsyvideoplayer/utils/e;)Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->restartTimerTask()V

    .line 172
    .line 173
    .line 174
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->b:Lcom/papa/gsyvideoplayer/utils/e;

    .line 175
    .line 176
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/e;->d(Lcom/papa/gsyvideoplayer/utils/e;)Lcom/papa/gsyvideoplayer/utils/e$g;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/e$g;->q0()Lv7/h;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    if-eqz v0, :cond_3

    .line 185
    .line 186
    const-string v0, "onQuitFullscreen"

    .line 187
    .line 188
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->b:Lcom/papa/gsyvideoplayer/utils/e;

    .line 192
    .line 193
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/e;->d(Lcom/papa/gsyvideoplayer/utils/e;)Lcom/papa/gsyvideoplayer/utils/e$g;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/e$g;->q0()Lv7/h;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->b:Lcom/papa/gsyvideoplayer/utils/e;

    .line 202
    .line 203
    invoke-static {v2}, Lcom/papa/gsyvideoplayer/utils/e;->d(Lcom/papa/gsyvideoplayer/utils/e;)Lcom/papa/gsyvideoplayer/utils/e$g;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-virtual {v2}, Lcom/papa/gsyvideoplayer/utils/e$g;->p0()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    const/4 v3, 0x2

    .line 212
    new-array v3, v3, [Ljava/lang/Object;

    .line 213
    .line 214
    iget-object v4, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->b:Lcom/papa/gsyvideoplayer/utils/e;

    .line 215
    .line 216
    invoke-static {v4}, Lcom/papa/gsyvideoplayer/utils/e;->d(Lcom/papa/gsyvideoplayer/utils/e;)Lcom/papa/gsyvideoplayer/utils/e$g;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    invoke-virtual {v4}, Lcom/papa/gsyvideoplayer/utils/e$g;->r0()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    aput-object v4, v3, v1

    .line 225
    .line 226
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->b:Lcom/papa/gsyvideoplayer/utils/e;

    .line 227
    .line 228
    invoke-static {v1}, Lcom/papa/gsyvideoplayer/utils/e;->a(Lcom/papa/gsyvideoplayer/utils/e;)Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    const/4 v4, 0x1

    .line 233
    aput-object v1, v3, v4

    .line 234
    .line 235
    invoke-interface {v0, v2, v3}, Lv7/h;->onQuitFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    :cond_3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->b:Lcom/papa/gsyvideoplayer/utils/e;

    .line 239
    .line 240
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/e;->d(Lcom/papa/gsyvideoplayer/utils/e;)Lcom/papa/gsyvideoplayer/utils/e$g;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/e$g;->v0()Z

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    if-eqz v0, :cond_4

    .line 249
    .line 250
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->b:Lcom/papa/gsyvideoplayer/utils/e;

    .line 251
    .line 252
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/e;->e(Lcom/papa/gsyvideoplayer/utils/e;)Landroid/content/Context;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->b:Lcom/papa/gsyvideoplayer/utils/e;

    .line 257
    .line 258
    invoke-static {v1}, Lcom/papa/gsyvideoplayer/utils/e;->f(Lcom/papa/gsyvideoplayer/utils/e;)I

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    invoke-static {v0, v1}, Lcom/papa/gsyvideoplayer/utils/b;->p(Landroid/content/Context;I)V

    .line 263
    .line 264
    .line 265
    :cond_4
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->b:Lcom/papa/gsyvideoplayer/utils/e;

    .line 266
    .line 267
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/e;->e(Lcom/papa/gsyvideoplayer/utils/e;)Landroid/content/Context;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->b:Lcom/papa/gsyvideoplayer/utils/e;

    .line 272
    .line 273
    invoke-static {v1}, Lcom/papa/gsyvideoplayer/utils/e;->d(Lcom/papa/gsyvideoplayer/utils/e;)Lcom/papa/gsyvideoplayer/utils/e$g;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    invoke-virtual {v1}, Lcom/papa/gsyvideoplayer/utils/e$g;->u0()Z

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->b:Lcom/papa/gsyvideoplayer/utils/e;

    .line 282
    .line 283
    invoke-static {v2}, Lcom/papa/gsyvideoplayer/utils/e;->d(Lcom/papa/gsyvideoplayer/utils/e;)Lcom/papa/gsyvideoplayer/utils/e$g;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    invoke-virtual {v2}, Lcom/papa/gsyvideoplayer/utils/e$g;->w0()Z

    .line 288
    .line 289
    .line 290
    move-result v2

    .line 291
    invoke-static {v0, v1, v2}, Lcom/papa/gsyvideoplayer/utils/b;->q(Landroid/content/Context;ZZ)V

    .line 292
    .line 293
    .line 294
    return-void
.end method
