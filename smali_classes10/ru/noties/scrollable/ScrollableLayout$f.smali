.class Lru/noties/scrollable/ScrollableLayout$f;
.super Lru/noties/scrollable/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/noties/scrollable/ScrollableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# static fields
.field private static final e:I = 0xc


# instance fields
.field private final b:I

.field private final c:F

.field final synthetic d:Lru/noties/scrollable/ScrollableLayout;


# direct methods
.method constructor <init>(Lru/noties/scrollable/ScrollableLayout;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "context"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lru/noties/scrollable/ScrollableLayout$f;->d:Lru/noties/scrollable/ScrollableLayout;

    .line 2
    .line 3
    invoke-direct {p0}, Lru/noties/scrollable/h;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 p1, 0xc

    .line 7
    .line 8
    invoke-static {p2, p1}, Lru/noties/scrollable/g;->a(Landroid/content/Context;I)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iput p1, p0, Lru/noties/scrollable/ScrollableLayout$f;->b:I

    .line 13
    .line 14
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    int-to-float p1, p1

    .line 23
    iput p1, p0, Lru/noties/scrollable/ScrollableLayout$f;->c:F

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "e1",
            "e2",
            "velocityX",
            "velocityY"
        }
    .end annotation

    .line 1
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget p2, p0, Lru/noties/scrollable/ScrollableLayout$f;->c:F

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    cmpg-float p1, p1, p2

    .line 9
    .line 10
    if-gez p1, :cond_0

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    cmpl-float p1, p1, p2

    .line 22
    .line 23
    if-lez p1, :cond_1

    .line 24
    .line 25
    return v0

    .line 26
    :cond_1
    iget-object p1, p0, Lru/noties/scrollable/ScrollableLayout$f;->d:Lru/noties/scrollable/ScrollableLayout;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-ltz p1, :cond_8

    .line 33
    .line 34
    iget-object p2, p0, Lru/noties/scrollable/ScrollableLayout$f;->d:Lru/noties/scrollable/ScrollableLayout;

    .line 35
    .line 36
    invoke-static {p2}, Lru/noties/scrollable/ScrollableLayout;->l(Lru/noties/scrollable/ScrollableLayout;)I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-le p1, p2, :cond_2

    .line 41
    .line 42
    goto/16 :goto_2

    .line 43
    .line 44
    :cond_2
    const/high16 p2, 0x3f000000    # 0.5f

    .line 45
    .line 46
    add-float/2addr p2, p4

    .line 47
    float-to-int p2, p2

    .line 48
    neg-int p2, p2

    .line 49
    iget-object p3, p0, Lru/noties/scrollable/ScrollableLayout$f;->d:Lru/noties/scrollable/ScrollableLayout;

    .line 50
    .line 51
    invoke-static {p3}, Lru/noties/scrollable/ScrollableLayout;->i(Lru/noties/scrollable/ScrollableLayout;)Z

    .line 52
    .line 53
    .line 54
    move-result p3

    .line 55
    const/4 v10, 0x1

    .line 56
    if-nez p3, :cond_3

    .line 57
    .line 58
    iget-object p3, p0, Lru/noties/scrollable/ScrollableLayout$f;->d:Lru/noties/scrollable/ScrollableLayout;

    .line 59
    .line 60
    invoke-static {p3}, Lru/noties/scrollable/ScrollableLayout;->j(Lru/noties/scrollable/ScrollableLayout;)Lru/noties/scrollable/j;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    if-eqz p3, :cond_3

    .line 65
    .line 66
    iget-object p3, p0, Lru/noties/scrollable/ScrollableLayout$f;->d:Lru/noties/scrollable/ScrollableLayout;

    .line 67
    .line 68
    invoke-static {p3}, Lru/noties/scrollable/ScrollableLayout;->l(Lru/noties/scrollable/ScrollableLayout;)I

    .line 69
    .line 70
    .line 71
    move-result p3

    .line 72
    iget-object v1, p0, Lru/noties/scrollable/ScrollableLayout$f;->d:Lru/noties/scrollable/ScrollableLayout;

    .line 73
    .line 74
    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eq p3, v1, :cond_3

    .line 79
    .line 80
    if-lez p2, :cond_3

    .line 81
    .line 82
    iget-object p3, p0, Lru/noties/scrollable/ScrollableLayout$f;->d:Lru/noties/scrollable/ScrollableLayout;

    .line 83
    .line 84
    invoke-static {p3}, Lru/noties/scrollable/ScrollableLayout;->k(Lru/noties/scrollable/ScrollableLayout;)Lru/noties/scrollable/b;

    .line 85
    .line 86
    .line 87
    move-result-object p3

    .line 88
    if-eqz p3, :cond_3

    .line 89
    .line 90
    iget-object p3, p0, Lru/noties/scrollable/ScrollableLayout$f;->d:Lru/noties/scrollable/ScrollableLayout;

    .line 91
    .line 92
    invoke-static {p3}, Lru/noties/scrollable/ScrollableLayout;->k(Lru/noties/scrollable/ScrollableLayout;)Lru/noties/scrollable/b;

    .line 93
    .line 94
    .line 95
    move-result-object p3

    .line 96
    invoke-interface {p3, v10}, Lru/noties/scrollable/b;->i(I)Z

    .line 97
    .line 98
    .line 99
    move-result p3

    .line 100
    if-eqz p3, :cond_3

    .line 101
    .line 102
    iget-object p3, p0, Lru/noties/scrollable/ScrollableLayout$f;->d:Lru/noties/scrollable/ScrollableLayout;

    .line 103
    .line 104
    invoke-static {p3}, Lru/noties/scrollable/ScrollableLayout;->n(Lru/noties/scrollable/ScrollableLayout;)Lru/noties/scrollable/n;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    const/4 v2, 0x0

    .line 109
    const/4 v4, 0x0

    .line 110
    const/4 v6, 0x0

    .line 111
    const/4 v7, 0x0

    .line 112
    const/4 v8, 0x0

    .line 113
    const v9, 0x7fffffff

    .line 114
    .line 115
    .line 116
    move v3, p1

    .line 117
    move v5, p2

    .line 118
    invoke-virtual/range {v1 .. v9}, Lru/noties/scrollable/n;->d(IIIIIIII)V

    .line 119
    .line 120
    .line 121
    iget-object p3, p0, Lru/noties/scrollable/ScrollableLayout$f;->d:Lru/noties/scrollable/ScrollableLayout;

    .line 122
    .line 123
    invoke-static {p3}, Lru/noties/scrollable/ScrollableLayout;->n(Lru/noties/scrollable/ScrollableLayout;)Lru/noties/scrollable/n;

    .line 124
    .line 125
    .line 126
    move-result-object p3

    .line 127
    invoke-virtual {p3}, Lru/noties/scrollable/n;->h()I

    .line 128
    .line 129
    .line 130
    move-result p3

    .line 131
    iget-object v1, p0, Lru/noties/scrollable/ScrollableLayout$f;->d:Lru/noties/scrollable/ScrollableLayout;

    .line 132
    .line 133
    invoke-static {v1}, Lru/noties/scrollable/ScrollableLayout;->n(Lru/noties/scrollable/ScrollableLayout;)Lru/noties/scrollable/n;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v1, p4}, Lru/noties/scrollable/n;->k(F)I

    .line 138
    .line 139
    .line 140
    move-result p4

    .line 141
    iget-object v1, p0, Lru/noties/scrollable/ScrollableLayout$f;->d:Lru/noties/scrollable/ScrollableLayout;

    .line 142
    .line 143
    invoke-static {v1}, Lru/noties/scrollable/ScrollableLayout;->j(Lru/noties/scrollable/ScrollableLayout;)Lru/noties/scrollable/j;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    iget-object v2, p0, Lru/noties/scrollable/ScrollableLayout$f;->d:Lru/noties/scrollable/ScrollableLayout;

    .line 148
    .line 149
    invoke-static {v2}, Lru/noties/scrollable/ScrollableLayout;->l(Lru/noties/scrollable/ScrollableLayout;)I

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    sub-int/2addr p3, v2

    .line 154
    int-to-long v2, p4

    .line 155
    invoke-interface {v1, p3, v2, v3}, Lru/noties/scrollable/j;->C(IJ)V

    .line 156
    .line 157
    .line 158
    iget-object p3, p0, Lru/noties/scrollable/ScrollableLayout$f;->d:Lru/noties/scrollable/ScrollableLayout;

    .line 159
    .line 160
    invoke-static {p3}, Lru/noties/scrollable/ScrollableLayout;->n(Lru/noties/scrollable/ScrollableLayout;)Lru/noties/scrollable/n;

    .line 161
    .line 162
    .line 163
    move-result-object p3

    .line 164
    invoke-virtual {p3}, Lru/noties/scrollable/n;->a()V

    .line 165
    .line 166
    .line 167
    :cond_3
    iget-object p3, p0, Lru/noties/scrollable/ScrollableLayout$f;->d:Lru/noties/scrollable/ScrollableLayout;

    .line 168
    .line 169
    invoke-static {p3}, Lru/noties/scrollable/ScrollableLayout;->n(Lru/noties/scrollable/ScrollableLayout;)Lru/noties/scrollable/n;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    const/4 v2, 0x0

    .line 174
    const/4 v4, 0x0

    .line 175
    const/4 v6, 0x0

    .line 176
    const/4 v7, 0x0

    .line 177
    const/4 v8, 0x0

    .line 178
    iget-object p3, p0, Lru/noties/scrollable/ScrollableLayout$f;->d:Lru/noties/scrollable/ScrollableLayout;

    .line 179
    .line 180
    invoke-static {p3}, Lru/noties/scrollable/ScrollableLayout;->l(Lru/noties/scrollable/ScrollableLayout;)I

    .line 181
    .line 182
    .line 183
    move-result v9

    .line 184
    move v3, p1

    .line 185
    move v5, p2

    .line 186
    invoke-virtual/range {v1 .. v9}, Lru/noties/scrollable/n;->d(IIIIIIII)V

    .line 187
    .line 188
    .line 189
    iget-object p2, p0, Lru/noties/scrollable/ScrollableLayout$f;->d:Lru/noties/scrollable/ScrollableLayout;

    .line 190
    .line 191
    invoke-static {p2}, Lru/noties/scrollable/ScrollableLayout;->n(Lru/noties/scrollable/ScrollableLayout;)Lru/noties/scrollable/n;

    .line 192
    .line 193
    .line 194
    move-result-object p2

    .line 195
    invoke-virtual {p2}, Lru/noties/scrollable/n;->c()Z

    .line 196
    .line 197
    .line 198
    move-result p2

    .line 199
    if-eqz p2, :cond_8

    .line 200
    .line 201
    iget-object p2, p0, Lru/noties/scrollable/ScrollableLayout$f;->d:Lru/noties/scrollable/ScrollableLayout;

    .line 202
    .line 203
    invoke-static {p2}, Lru/noties/scrollable/ScrollableLayout;->n(Lru/noties/scrollable/ScrollableLayout;)Lru/noties/scrollable/n;

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    invoke-virtual {p2}, Lru/noties/scrollable/n;->h()I

    .line 208
    .line 209
    .line 210
    move-result v5

    .line 211
    sub-int p2, p1, v5

    .line 212
    .line 213
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 214
    .line 215
    .line 216
    move-result p2

    .line 217
    iget p3, p0, Lru/noties/scrollable/ScrollableLayout$f;->b:I

    .line 218
    .line 219
    if-ge p2, p3, :cond_4

    .line 220
    .line 221
    iget-object p1, p0, Lru/noties/scrollable/ScrollableLayout$f;->d:Lru/noties/scrollable/ScrollableLayout;

    .line 222
    .line 223
    invoke-static {p1}, Lru/noties/scrollable/ScrollableLayout;->n(Lru/noties/scrollable/ScrollableLayout;)Lru/noties/scrollable/n;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    invoke-virtual {p1}, Lru/noties/scrollable/n;->a()V

    .line 228
    .line 229
    .line 230
    return v0

    .line 231
    :cond_4
    if-eq v5, p1, :cond_7

    .line 232
    .line 233
    iget-object p2, p0, Lru/noties/scrollable/ScrollableLayout$f;->d:Lru/noties/scrollable/ScrollableLayout;

    .line 234
    .line 235
    invoke-static {p2}, Lru/noties/scrollable/ScrollableLayout;->t(Lru/noties/scrollable/ScrollableLayout;)Lru/noties/scrollable/c;

    .line 236
    .line 237
    .line 238
    move-result-object p2

    .line 239
    if-nez p2, :cond_5

    .line 240
    .line 241
    goto :goto_1

    .line 242
    :cond_5
    iget-object p2, p0, Lru/noties/scrollable/ScrollableLayout$f;->d:Lru/noties/scrollable/ScrollableLayout;

    .line 243
    .line 244
    invoke-static {p2}, Lru/noties/scrollable/ScrollableLayout;->t(Lru/noties/scrollable/ScrollableLayout;)Lru/noties/scrollable/c;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    iget-object v2, p0, Lru/noties/scrollable/ScrollableLayout$f;->d:Lru/noties/scrollable/ScrollableLayout;

    .line 249
    .line 250
    sub-int p2, v5, p1

    .line 251
    .line 252
    if-gez p2, :cond_6

    .line 253
    .line 254
    const/4 v3, 0x1

    .line 255
    goto :goto_0

    .line 256
    :cond_6
    const/4 v3, 0x0

    .line 257
    :goto_0
    invoke-static {v2}, Lru/noties/scrollable/ScrollableLayout;->l(Lru/noties/scrollable/ScrollableLayout;)I

    .line 258
    .line 259
    .line 260
    move-result v6

    .line 261
    move v4, p1

    .line 262
    invoke-interface/range {v1 .. v6}, Lru/noties/scrollable/c;->a(Lru/noties/scrollable/ScrollableLayout;ZIII)I

    .line 263
    .line 264
    .line 265
    move-result v5

    .line 266
    iget-object p2, p0, Lru/noties/scrollable/ScrollableLayout$f;->d:Lru/noties/scrollable/ScrollableLayout;

    .line 267
    .line 268
    invoke-static {p2}, Lru/noties/scrollable/ScrollableLayout;->n(Lru/noties/scrollable/ScrollableLayout;)Lru/noties/scrollable/n;

    .line 269
    .line 270
    .line 271
    move-result-object p2

    .line 272
    invoke-virtual {p2, v5}, Lru/noties/scrollable/n;->l(I)V

    .line 273
    .line 274
    .line 275
    :cond_7
    :goto_1
    iget-object p2, p0, Lru/noties/scrollable/ScrollableLayout$f;->d:Lru/noties/scrollable/ScrollableLayout;

    .line 276
    .line 277
    invoke-virtual {p2, v5}, Lru/noties/scrollable/ScrollableLayout;->B(I)I

    .line 278
    .line 279
    .line 280
    move-result p2

    .line 281
    if-eq v5, p1, :cond_8

    .line 282
    .line 283
    if-ltz p2, :cond_8

    .line 284
    .line 285
    const/4 v0, 0x1

    .line 286
    :cond_8
    :goto_2
    return v0
.end method
