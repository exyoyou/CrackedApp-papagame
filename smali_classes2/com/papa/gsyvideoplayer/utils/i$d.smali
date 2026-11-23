.class Lcom/papa/gsyvideoplayer/utils/i$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/gsyvideoplayer/utils/i;->b0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/papa/gsyvideoplayer/utils/i;


# direct methods
.method constructor <init>(Lcom/papa/gsyvideoplayer/utils/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/utils/i$d;->b:Lcom/papa/gsyvideoplayer/utils/i;

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
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i$d;->b:Lcom/papa/gsyvideoplayer/utils/i;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/papa/gsyvideoplayer/utils/i;->q(Lcom/papa/gsyvideoplayer/utils/i;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i$d;->b:Lcom/papa/gsyvideoplayer/utils/i;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/i;->m(Lcom/papa/gsyvideoplayer/utils/i;)Landroid/view/ViewGroup;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i$d;->b:Lcom/papa/gsyvideoplayer/utils/i;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/i;->a(Lcom/papa/gsyvideoplayer/utils/i;)Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i$d;->b:Lcom/papa/gsyvideoplayer/utils/i;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/i;->a(Lcom/papa/gsyvideoplayer/utils/i;)Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/view/ViewGroup;

    .line 39
    .line 40
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/i$d;->b:Lcom/papa/gsyvideoplayer/utils/i;

    .line 41
    .line 42
    invoke-static {v2}, Lcom/papa/gsyvideoplayer/utils/i;->a(Lcom/papa/gsyvideoplayer/utils/i;)Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i$d;->b:Lcom/papa/gsyvideoplayer/utils/i;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/i;->r(Lcom/papa/gsyvideoplayer/utils/i;)Lcom/papa/gsyvideoplayer/utils/n;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/utils/n;->I(Z)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i$d;->b:Lcom/papa/gsyvideoplayer/utils/i;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/i;->a(Lcom/papa/gsyvideoplayer/utils/i;)Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setIfCurrentIsFullscreen(Z)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i$d;->b:Lcom/papa/gsyvideoplayer/utils/i;

    .line 68
    .line 69
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/i;->m(Lcom/papa/gsyvideoplayer/utils/i;)Landroid/view/ViewGroup;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i$d;->b:Lcom/papa/gsyvideoplayer/utils/i;

    .line 77
    .line 78
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/i;->t(Lcom/papa/gsyvideoplayer/utils/i;)Landroid/view/ViewGroup;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/i$d;->b:Lcom/papa/gsyvideoplayer/utils/i;

    .line 83
    .line 84
    invoke-static {v2}, Lcom/papa/gsyvideoplayer/utils/i;->a(Lcom/papa/gsyvideoplayer/utils/i;)Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    iget-object v3, p0, Lcom/papa/gsyvideoplayer/utils/i$d;->b:Lcom/papa/gsyvideoplayer/utils/i;

    .line 89
    .line 90
    invoke-static {v3}, Lcom/papa/gsyvideoplayer/utils/i;->s(Lcom/papa/gsyvideoplayer/utils/i;)Landroid/view/ViewGroup$LayoutParams;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i$d;->b:Lcom/papa/gsyvideoplayer/utils/i;

    .line 98
    .line 99
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/i;->a(Lcom/papa/gsyvideoplayer/utils/i;)Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/i$d;->b:Lcom/papa/gsyvideoplayer/utils/i;

    .line 108
    .line 109
    invoke-static {v2}, Lcom/papa/gsyvideoplayer/utils/i;->a(Lcom/papa/gsyvideoplayer/utils/i;)Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getEnlargeImageRes()I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i$d;->b:Lcom/papa/gsyvideoplayer/utils/i;

    .line 121
    .line 122
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/i;->a(Lcom/papa/gsyvideoplayer/utils/i;)Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getBackButton()Landroid/widget/ImageView;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    const/16 v2, 0x8

    .line 131
    .line 132
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i$d;->b:Lcom/papa/gsyvideoplayer/utils/i;

    .line 136
    .line 137
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/i;->a(Lcom/papa/gsyvideoplayer/utils/i;)Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setIfCurrentIsFullscreen(Z)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i$d;->b:Lcom/papa/gsyvideoplayer/utils/i;

    .line 145
    .line 146
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/i;->u(Lcom/papa/gsyvideoplayer/utils/i;)Lv7/h;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    if-eqz v0, :cond_1

    .line 151
    .line 152
    const-string v0, "onQuitFullscreen"

    .line 153
    .line 154
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i$d;->b:Lcom/papa/gsyvideoplayer/utils/i;

    .line 158
    .line 159
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/i;->u(Lcom/papa/gsyvideoplayer/utils/i;)Lv7/h;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/i$d;->b:Lcom/papa/gsyvideoplayer/utils/i;

    .line 164
    .line 165
    invoke-static {v2}, Lcom/papa/gsyvideoplayer/utils/i;->c(Lcom/papa/gsyvideoplayer/utils/i;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    const/4 v3, 0x2

    .line 170
    new-array v3, v3, [Ljava/lang/Object;

    .line 171
    .line 172
    iget-object v4, p0, Lcom/papa/gsyvideoplayer/utils/i$d;->b:Lcom/papa/gsyvideoplayer/utils/i;

    .line 173
    .line 174
    invoke-static {v4}, Lcom/papa/gsyvideoplayer/utils/i;->d(Lcom/papa/gsyvideoplayer/utils/i;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    aput-object v4, v3, v1

    .line 179
    .line 180
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/i$d;->b:Lcom/papa/gsyvideoplayer/utils/i;

    .line 181
    .line 182
    invoke-static {v1}, Lcom/papa/gsyvideoplayer/utils/i;->a(Lcom/papa/gsyvideoplayer/utils/i;)Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    const/4 v4, 0x1

    .line 187
    aput-object v1, v3, v4

    .line 188
    .line 189
    invoke-interface {v0, v2, v3}, Lv7/h;->onQuitFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    :cond_1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i$d;->b:Lcom/papa/gsyvideoplayer/utils/i;

    .line 193
    .line 194
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/i;->e(Lcom/papa/gsyvideoplayer/utils/i;)Z

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    if-eqz v0, :cond_2

    .line 199
    .line 200
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i$d;->b:Lcom/papa/gsyvideoplayer/utils/i;

    .line 201
    .line 202
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/i;->f(Lcom/papa/gsyvideoplayer/utils/i;)Landroid/content/Context;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/i$d;->b:Lcom/papa/gsyvideoplayer/utils/i;

    .line 207
    .line 208
    invoke-static {v1}, Lcom/papa/gsyvideoplayer/utils/i;->g(Lcom/papa/gsyvideoplayer/utils/i;)I

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    invoke-static {v0, v1}, Lcom/papa/gsyvideoplayer/utils/b;->p(Landroid/content/Context;I)V

    .line 213
    .line 214
    .line 215
    :cond_2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i$d;->b:Lcom/papa/gsyvideoplayer/utils/i;

    .line 216
    .line 217
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/i;->f(Lcom/papa/gsyvideoplayer/utils/i;)Landroid/content/Context;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/i$d;->b:Lcom/papa/gsyvideoplayer/utils/i;

    .line 222
    .line 223
    invoke-static {v1}, Lcom/papa/gsyvideoplayer/utils/i;->h(Lcom/papa/gsyvideoplayer/utils/i;)Z

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/i$d;->b:Lcom/papa/gsyvideoplayer/utils/i;

    .line 228
    .line 229
    invoke-static {v2}, Lcom/papa/gsyvideoplayer/utils/i;->i(Lcom/papa/gsyvideoplayer/utils/i;)Z

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    invoke-static {v0, v1, v2}, Lcom/papa/gsyvideoplayer/utils/b;->q(Landroid/content/Context;ZZ)V

    .line 234
    .line 235
    .line 236
    return-void
.end method
