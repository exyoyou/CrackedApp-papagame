.class Lcom/beizi/fusion/work/a/a$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/work/a/a;->a(Landroid/content/Context;Lcom/beizi/fusion/widget/BeiZiAdContainer;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/beizi/fusion/work/a/a;


# direct methods
.method constructor <init>(Lcom/beizi/fusion/work/a/a;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/work/a/a$8;->b:Lcom/beizi/fusion/work/a/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/beizi/fusion/work/a/a$8;->a:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$8;->b:Lcom/beizi/fusion/work/a/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/work/a/a;->s(Lcom/beizi/fusion/work/a/a;)Landroid/widget/FrameLayout;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$8;->b:Lcom/beizi/fusion/work/a/a;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/beizi/fusion/work/a/a;->t(Lcom/beizi/fusion/work/a/a;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$8;->b:Lcom/beizi/fusion/work/a/a;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/beizi/fusion/work/a/a;->u(Lcom/beizi/fusion/work/a/a;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$8;->b:Lcom/beizi/fusion/work/a/a;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/beizi/fusion/work/a/a;->s(Lcom/beizi/fusion/work/a/a;)Landroid/widget/FrameLayout;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-static {v0, v1}, Lcom/beizi/fusion/work/a/a;->b(Lcom/beizi/fusion/work/a/a;I)I

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$8;->b:Lcom/beizi/fusion/work/a/a;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/beizi/fusion/work/a/a;->s(Lcom/beizi/fusion/work/a/a;)Landroid/widget/FrameLayout;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-static {v0, v1}, Lcom/beizi/fusion/work/a/a;->c(Lcom/beizi/fusion/work/a/a;I)I

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$8;->b:Lcom/beizi/fusion/work/a/a;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/beizi/fusion/work/a/a;->v(Lcom/beizi/fusion/work/a/a;)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    iget-object v2, p0, Lcom/beizi/fusion/work/a/a$8;->b:Lcom/beizi/fusion/work/a/a;

    .line 52
    .line 53
    invoke-static {v2}, Lcom/beizi/fusion/work/a/a;->w(Lcom/beizi/fusion/work/a/a;)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    iget-object v3, p0, Lcom/beizi/fusion/work/a/a$8;->b:Lcom/beizi/fusion/work/a/a;

    .line 58
    .line 59
    invoke-static {v3}, Lcom/beizi/fusion/work/a/a;->w(Lcom/beizi/fusion/work/a/a;)I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    invoke-static {v0, v1, v2, v3}, Lcom/beizi/fusion/work/a/a;->a(Lcom/beizi/fusion/work/a/a;III)V

    .line 64
    .line 65
    .line 66
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$8;->b:Lcom/beizi/fusion/work/a/a;

    .line 67
    .line 68
    invoke-static {v0}, Lcom/beizi/fusion/work/a/a;->x(Lcom/beizi/fusion/work/a/a;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_3

    .line 73
    .line 74
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$8;->b:Lcom/beizi/fusion/work/a/a;

    .line 75
    .line 76
    invoke-static {v0}, Lcom/beizi/fusion/work/a/a;->y(Lcom/beizi/fusion/work/a/a;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$8;->a:Ljava/util/List;

    .line 84
    .line 85
    if-eqz v0, :cond_2

    .line 86
    .line 87
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-lez v0, :cond_2

    .line 92
    .line 93
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$8;->b:Lcom/beizi/fusion/work/a/a;

    .line 94
    .line 95
    invoke-static {v0}, Lcom/beizi/fusion/work/a/a;->h(Lcom/beizi/fusion/work/a/a;)Lcom/beizi/ad/e;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a$8;->b:Lcom/beizi/fusion/work/a/a;

    .line 100
    .line 101
    invoke-static {v1}, Lcom/beizi/fusion/work/a/a;->s(Lcom/beizi/fusion/work/a/a;)Landroid/widget/FrameLayout;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    iget-object v2, p0, Lcom/beizi/fusion/work/a/a$8;->a:Ljava/util/List;

    .line 106
    .line 107
    new-instance v3, Lcom/beizi/fusion/work/a/a$8$1;

    .line 108
    .line 109
    invoke-direct {v3, p0}, Lcom/beizi/fusion/work/a/a$8$1;-><init>(Lcom/beizi/fusion/work/a/a$8;)V

    .line 110
    .line 111
    .line 112
    invoke-static {v0, v1, v2, v3}, Lcom/beizi/ad/internal/c/d;->a(Lcom/beizi/ad/e;Landroid/view/View;Ljava/util/List;Lcom/beizi/ad/internal/c/b;)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$8;->b:Lcom/beizi/fusion/work/a/a;

    .line 117
    .line 118
    invoke-static {v0}, Lcom/beizi/fusion/work/a/a;->h(Lcom/beizi/fusion/work/a/a;)Lcom/beizi/ad/e;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a$8;->b:Lcom/beizi/fusion/work/a/a;

    .line 123
    .line 124
    invoke-static {v1}, Lcom/beizi/fusion/work/a/a;->s(Lcom/beizi/fusion/work/a/a;)Landroid/widget/FrameLayout;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    new-instance v2, Lcom/beizi/fusion/work/a/a$8$2;

    .line 129
    .line 130
    invoke-direct {v2, p0}, Lcom/beizi/fusion/work/a/a$8$2;-><init>(Lcom/beizi/fusion/work/a/a$8;)V

    .line 131
    .line 132
    .line 133
    invoke-static {v0, v1, v2}, Lcom/beizi/ad/internal/c/d;->a(Lcom/beizi/ad/e;Landroid/view/View;Lcom/beizi/ad/internal/c/b;)V

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$8;->b:Lcom/beizi/fusion/work/a/a;

    .line 138
    .line 139
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a$8;->a:Ljava/util/List;

    .line 140
    .line 141
    invoke-static {v0, v1}, Lcom/beizi/fusion/work/a/a;->a(Lcom/beizi/fusion/work/a/a;Ljava/util/List;)V

    .line 142
    .line 143
    .line 144
    :goto_1
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$8;->b:Lcom/beizi/fusion/work/a/a;

    .line 145
    .line 146
    invoke-static {v0}, Lcom/beizi/fusion/work/a/a;->A(Lcom/beizi/fusion/work/a/a;)Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-nez v0, :cond_6

    .line 151
    .line 152
    const-string v0, "1"

    .line 153
    .line 154
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a$8;->b:Lcom/beizi/fusion/work/a/a;

    .line 155
    .line 156
    invoke-static {v1}, Lcom/beizi/fusion/work/a/a;->i(Lcom/beizi/fusion/work/a/a;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-nez v0, :cond_4

    .line 165
    .line 166
    const-string v0, "2"

    .line 167
    .line 168
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a$8;->b:Lcom/beizi/fusion/work/a/a;

    .line 169
    .line 170
    invoke-static {v1}, Lcom/beizi/fusion/work/a/a;->i(Lcom/beizi/fusion/work/a/a;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-eqz v0, :cond_6

    .line 179
    .line 180
    :cond_4
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$8;->b:Lcom/beizi/fusion/work/a/a;

    .line 181
    .line 182
    invoke-static {v0}, Lcom/beizi/fusion/work/a/a;->B(Lcom/beizi/fusion/work/a/a;)Landroid/content/Context;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a$8;->b:Lcom/beizi/fusion/work/a/a;

    .line 187
    .line 188
    invoke-static {v1}, Lcom/beizi/fusion/work/a/a;->C(Lcom/beizi/fusion/work/a/a;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-static {v0, v1}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-eqz v0, :cond_5

    .line 197
    .line 198
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$8;->b:Lcom/beizi/fusion/work/a/a;

    .line 199
    .line 200
    const/4 v1, 0x1

    .line 201
    invoke-static {v0, v1}, Lcom/beizi/fusion/work/a/a;->d(Lcom/beizi/fusion/work/a/a;I)I

    .line 202
    .line 203
    .line 204
    :cond_5
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$8;->b:Lcom/beizi/fusion/work/a/a;

    .line 205
    .line 206
    invoke-static {v0}, Lcom/beizi/fusion/work/a/a;->D(Lcom/beizi/fusion/work/a/a;)Lcom/beizi/fusion/bzunified/BeiZiUnifiedAdEventListener;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    if-eqz v0, :cond_6

    .line 211
    .line 212
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$8;->b:Lcom/beizi/fusion/work/a/a;

    .line 213
    .line 214
    invoke-static {v0}, Lcom/beizi/fusion/work/a/a;->D(Lcom/beizi/fusion/work/a/a;)Lcom/beizi/fusion/bzunified/BeiZiUnifiedAdEventListener;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-interface {v0}, Lcom/beizi/fusion/bzunified/BeiZiUnifiedAdEventListener;->onADStatusChanged()V

    .line 219
    .line 220
    .line 221
    :cond_6
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$8;->b:Lcom/beizi/fusion/work/a/a;

    .line 222
    .line 223
    const/4 v1, 0x0

    .line 224
    invoke-static {v0, v1}, Lcom/beizi/fusion/work/a/a;->b(Lcom/beizi/fusion/work/a/a;Z)Z

    .line 225
    .line 226
    .line 227
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$8;->b:Lcom/beizi/fusion/work/a/a;

    .line 228
    .line 229
    invoke-static {v0}, Lcom/beizi/fusion/work/a/a;->E(Lcom/beizi/fusion/work/a/a;)Z

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    if-eqz v0, :cond_7

    .line 234
    .line 235
    return-void

    .line 236
    :cond_7
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$8;->b:Lcom/beizi/fusion/work/a/a;

    .line 237
    .line 238
    invoke-static {v0}, Lcom/beizi/fusion/work/a/a;->a(Lcom/beizi/fusion/work/a/a;)Lcom/beizi/ad/v2/d/c;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    if-eqz v0, :cond_8

    .line 243
    .line 244
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$8;->b:Lcom/beizi/fusion/work/a/a;

    .line 245
    .line 246
    invoke-static {v0}, Lcom/beizi/fusion/work/a/a;->a(Lcom/beizi/fusion/work/a/a;)Lcom/beizi/ad/v2/d/c;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a$8;->b:Lcom/beizi/fusion/work/a/a;

    .line 251
    .line 252
    invoke-static {v1}, Lcom/beizi/fusion/work/a/a;->s(Lcom/beizi/fusion/work/a/a;)Landroid/widget/FrameLayout;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    new-instance v2, Lcom/beizi/fusion/work/a/a$8$3;

    .line 257
    .line 258
    invoke-direct {v2, p0}, Lcom/beizi/fusion/work/a/a$8$3;-><init>(Lcom/beizi/fusion/work/a/a$8;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0, v1, v2}, Lcom/beizi/ad/v2/d/c;->a(Landroid/view/View;Lcom/beizi/ad/internal/c/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    .line 263
    .line 264
    goto :goto_2

    .line 265
    :catchall_0
    move-exception v0

    .line 266
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 267
    .line 268
    .line 269
    :cond_8
    :goto_2
    return-void
.end method
