.class public abstract Lcom/byazt/tm/DynamicBaseWidget;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/nwh/tt;
.implements Lcom/byazt/tm/n;
.implements Lcom/byazt/tm/uj;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x30,
        0x776
    }
.end annotation


# static fields
.field public static final gr:Landroid/view/View$OnClickListener;

.field public static final gu:Landroid/view/View$OnTouchListener;


# instance fields
.field public a:F

.field public c:F

.field public da:I

.field public gt:F

.field public i:I

.field public m:Z

.field public my:F

.field public n:F

.field public nu:Lcom/byazt/oj/tt;

.field public qy:Z

.field public rh:Lcom/byazt/nwh/c;

.field public rl:Lcom/byazt/nr/zm;

.field public sl:Landroid/content/Context;

.field public sp:I

.field public t:Lcom/byazt/aq/sp;

.field public tt:F

.field public u:Lcom/byazt/aq/x;

.field public uj:F

.field public ve:F

.field public x:I

.field public yp:Lcom/byazt/tm/DynamicRootView;

.field public z:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/tm/DynamicBaseWidget$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/tm/DynamicBaseWidget$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/tm/DynamicBaseWidget;->gu:Landroid/view/View$OnTouchListener;

    .line 7
    .line 8
    new-instance v0, Lcom/byazt/tm/DynamicBaseWidget$2;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/byazt/tm/DynamicBaseWidget$2;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/byazt/tm/DynamicBaseWidget;->gr:Landroid/view/View$OnClickListener;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/byazt/tm/DynamicRootView;Lcom/byazt/aq/x;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->qy:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/byazt/tm/DynamicBaseWidget;->sl:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/byazt/tm/DynamicBaseWidget;->yp:Lcom/byazt/tm/DynamicRootView;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/byazt/tm/DynamicBaseWidget;->u:Lcom/byazt/aq/x;

    .line 12
    .line 13
    invoke-virtual {p3}, Lcom/byazt/aq/x;->a()F

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput p1, p0, Lcom/byazt/tm/DynamicBaseWidget;->ve:F

    .line 18
    .line 19
    invoke-virtual {p3}, Lcom/byazt/aq/x;->sp()F

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iput p1, p0, Lcom/byazt/tm/DynamicBaseWidget;->uj:F

    .line 24
    .line 25
    invoke-virtual {p3}, Lcom/byazt/aq/x;->x()F

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iput p1, p0, Lcom/byazt/tm/DynamicBaseWidget;->n:F

    .line 30
    .line 31
    invoke-virtual {p3}, Lcom/byazt/aq/x;->i()F

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    iput p1, p0, Lcom/byazt/tm/DynamicBaseWidget;->a:F

    .line 36
    .line 37
    iget-object p1, p0, Lcom/byazt/tm/DynamicBaseWidget;->sl:Landroid/content/Context;

    .line 38
    .line 39
    iget p2, p0, Lcom/byazt/tm/DynamicBaseWidget;->ve:F

    .line 40
    .line 41
    invoke-static {p1, p2}, Lcom/byazt/or/x;->c(Landroid/content/Context;F)F

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    float-to-int p1, p1

    .line 46
    iput p1, p0, Lcom/byazt/tm/DynamicBaseWidget;->i:I

    .line 47
    .line 48
    iget-object p1, p0, Lcom/byazt/tm/DynamicBaseWidget;->sl:Landroid/content/Context;

    .line 49
    .line 50
    iget p2, p0, Lcom/byazt/tm/DynamicBaseWidget;->uj:F

    .line 51
    .line 52
    invoke-static {p1, p2}, Lcom/byazt/or/x;->c(Landroid/content/Context;F)F

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    float-to-int p1, p1

    .line 57
    iput p1, p0, Lcom/byazt/tm/DynamicBaseWidget;->da:I

    .line 58
    .line 59
    iget-object p1, p0, Lcom/byazt/tm/DynamicBaseWidget;->sl:Landroid/content/Context;

    .line 60
    .line 61
    iget p2, p0, Lcom/byazt/tm/DynamicBaseWidget;->n:F

    .line 62
    .line 63
    invoke-static {p1, p2}, Lcom/byazt/or/x;->c(Landroid/content/Context;F)F

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    float-to-int p1, p1

    .line 68
    iput p1, p0, Lcom/byazt/tm/DynamicBaseWidget;->sp:I

    .line 69
    .line 70
    iget-object p1, p0, Lcom/byazt/tm/DynamicBaseWidget;->sl:Landroid/content/Context;

    .line 71
    .line 72
    iget p2, p0, Lcom/byazt/tm/DynamicBaseWidget;->a:F

    .line 73
    .line 74
    invoke-static {p1, p2}, Lcom/byazt/or/x;->c(Landroid/content/Context;F)F

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    float-to-int p1, p1

    .line 79
    iput p1, p0, Lcom/byazt/tm/DynamicBaseWidget;->x:I

    .line 80
    .line 81
    new-instance p1, Lcom/byazt/aq/sp;

    .line 82
    .line 83
    invoke-virtual {p3}, Lcom/byazt/aq/x;->da()Lcom/byazt/aq/n;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-direct {p1, p2}, Lcom/byazt/aq/sp;-><init>(Lcom/byazt/aq/n;)V

    .line 88
    .line 89
    .line 90
    iput-object p1, p0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/byazt/aq/sp;->rh()I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-lez p1, :cond_0

    .line 97
    .line 98
    iget p1, p0, Lcom/byazt/tm/DynamicBaseWidget;->sp:I

    .line 99
    .line 100
    iget-object p2, p0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    .line 101
    .line 102
    invoke-virtual {p2}, Lcom/byazt/aq/sp;->rh()I

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    mul-int/lit8 p2, p2, 0x2

    .line 107
    .line 108
    add-int/2addr p1, p2

    .line 109
    iput p1, p0, Lcom/byazt/tm/DynamicBaseWidget;->sp:I

    .line 110
    .line 111
    iget p1, p0, Lcom/byazt/tm/DynamicBaseWidget;->x:I

    .line 112
    .line 113
    iget-object p2, p0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    .line 114
    .line 115
    invoke-virtual {p2}, Lcom/byazt/aq/sp;->rh()I

    .line 116
    .line 117
    .line 118
    move-result p2

    .line 119
    mul-int/lit8 p2, p2, 0x2

    .line 120
    .line 121
    add-int/2addr p1, p2

    .line 122
    iput p1, p0, Lcom/byazt/tm/DynamicBaseWidget;->x:I

    .line 123
    .line 124
    iget p1, p0, Lcom/byazt/tm/DynamicBaseWidget;->i:I

    .line 125
    .line 126
    iget-object p2, p0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    .line 127
    .line 128
    invoke-virtual {p2}, Lcom/byazt/aq/sp;->rh()I

    .line 129
    .line 130
    .line 131
    move-result p2

    .line 132
    sub-int/2addr p1, p2

    .line 133
    iput p1, p0, Lcom/byazt/tm/DynamicBaseWidget;->i:I

    .line 134
    .line 135
    iget p1, p0, Lcom/byazt/tm/DynamicBaseWidget;->da:I

    .line 136
    .line 137
    iget-object p2, p0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    .line 138
    .line 139
    invoke-virtual {p2}, Lcom/byazt/aq/sp;->rh()I

    .line 140
    .line 141
    .line 142
    move-result p2

    .line 143
    sub-int/2addr p1, p2

    .line 144
    iput p1, p0, Lcom/byazt/tm/DynamicBaseWidget;->da:I

    .line 145
    .line 146
    invoke-virtual {p3}, Lcom/byazt/aq/x;->sl()Ljava/util/List;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    if-eqz p1, :cond_0

    .line 151
    .line 152
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 157
    .line 158
    .line 159
    move-result p2

    .line 160
    if-eqz p2, :cond_0

    .line 161
    .line 162
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    check-cast p2, Lcom/byazt/aq/x;

    .line 167
    .line 168
    invoke-virtual {p2}, Lcom/byazt/aq/x;->a()F

    .line 169
    .line 170
    .line 171
    move-result p3

    .line 172
    iget-object v1, p0, Lcom/byazt/tm/DynamicBaseWidget;->sl:Landroid/content/Context;

    .line 173
    .line 174
    iget-object v2, p0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    .line 175
    .line 176
    invoke-virtual {v2}, Lcom/byazt/aq/sp;->rh()I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    int-to-float v2, v2

    .line 181
    invoke-static {v1, v2}, Lcom/byazt/or/x;->tt(Landroid/content/Context;F)I

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    int-to-float v1, v1

    .line 186
    add-float/2addr p3, v1

    .line 187
    invoke-virtual {p2, p3}, Lcom/byazt/aq/x;->ve(F)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p2}, Lcom/byazt/aq/x;->sp()F

    .line 191
    .line 192
    .line 193
    move-result p3

    .line 194
    iget-object v1, p0, Lcom/byazt/tm/DynamicBaseWidget;->sl:Landroid/content/Context;

    .line 195
    .line 196
    iget-object v2, p0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    .line 197
    .line 198
    invoke-virtual {v2}, Lcom/byazt/aq/sp;->rh()I

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    int-to-float v2, v2

    .line 203
    invoke-static {v1, v2}, Lcom/byazt/or/x;->tt(Landroid/content/Context;F)I

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    int-to-float v1, v1

    .line 208
    add-float/2addr p3, v1

    .line 209
    invoke-virtual {p2, p3}, Lcom/byazt/aq/x;->uj(F)V

    .line 210
    .line 211
    .line 212
    iget-object p3, p0, Lcom/byazt/tm/DynamicBaseWidget;->sl:Landroid/content/Context;

    .line 213
    .line 214
    iget-object v1, p0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    .line 215
    .line 216
    invoke-virtual {v1}, Lcom/byazt/aq/sp;->rh()I

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    int-to-float v1, v1

    .line 221
    invoke-static {p3, v1}, Lcom/byazt/or/x;->tt(Landroid/content/Context;F)I

    .line 222
    .line 223
    .line 224
    move-result p3

    .line 225
    int-to-float p3, p3

    .line 226
    invoke-virtual {p2, p3}, Lcom/byazt/aq/x;->c(F)V

    .line 227
    .line 228
    .line 229
    iget-object p3, p0, Lcom/byazt/tm/DynamicBaseWidget;->sl:Landroid/content/Context;

    .line 230
    .line 231
    iget-object v1, p0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    .line 232
    .line 233
    invoke-virtual {v1}, Lcom/byazt/aq/sp;->rh()I

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    int-to-float v1, v1

    .line 238
    invoke-static {p3, v1}, Lcom/byazt/or/x;->tt(Landroid/content/Context;F)I

    .line 239
    .line 240
    .line 241
    move-result p3

    .line 242
    int-to-float p3, p3

    .line 243
    invoke-virtual {p2, p3}, Lcom/byazt/aq/x;->tt(F)V

    .line 244
    .line 245
    .line 246
    goto :goto_0

    .line 247
    :cond_0
    iget-object p1, p0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    .line 248
    .line 249
    invoke-virtual {p1}, Lcom/byazt/aq/sp;->yp()D

    .line 250
    .line 251
    .line 252
    move-result-wide p1

    .line 253
    const-wide/16 v1, 0x0

    .line 254
    .line 255
    cmpl-double p3, p1, v1

    .line 256
    .line 257
    if-lez p3, :cond_1

    .line 258
    .line 259
    goto :goto_1

    .line 260
    :cond_1
    const/4 v0, 0x0

    .line 261
    :goto_1
    iput-boolean v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->m:Z

    .line 262
    .line 263
    new-instance p1, Lcom/byazt/nwh/c;

    .line 264
    .line 265
    invoke-direct {p1}, Lcom/byazt/nwh/c;-><init>()V

    .line 266
    .line 267
    .line 268
    iput-object p1, p0, Lcom/byazt/tm/DynamicBaseWidget;->rh:Lcom/byazt/nwh/c;

    .line 269
    .line 270
    return-void
.end method

.method public static synthetic c(Lcom/byazt/tm/DynamicBaseWidget;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/tm/DynamicBaseWidget;->da()V

    return-void
.end method

.method private c(Ljava/util/List;)[Landroid/graphics/drawable/Drawable;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .line 74
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 75
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 76
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "linear-gradient"

    .line 77
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "("

    .line 78
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, ", "

    .line 79
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 80
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    new-array v5, v4, [I

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_0

    add-int/lit8 v7, v6, 0x1

    .line 81
    aget-object v8, v3, v7

    const/4 v9, 0x7

    invoke-virtual {v8, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/byazt/aq/sp;->c(Ljava/lang/String;)I

    move-result v8

    aput v8, v5, v6

    move v6, v7

    goto :goto_1

    .line 82
    :cond_0
    aget-object v3, v3, v1

    invoke-virtual {p0, v3}, Lcom/byazt/tm/DynamicBaseWidget;->c(Ljava/lang/String;)Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v3

    invoke-virtual {p0, v3, v5}, Lcom/byazt/tm/DynamicBaseWidget;->c(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    .line 83
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 84
    iget-object v4, p0, Lcom/byazt/tm/DynamicBaseWidget;->sl:Landroid/content/Context;

    iget-object v5, p0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    invoke-virtual {v5}, Lcom/byazt/aq/sp;->z()F

    move-result v5

    invoke-static {v4, v5}, Lcom/byazt/or/x;->c(Landroid/content/Context;F)F

    move-result v4

    .line 85
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 86
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v2

    aput-object v3, v0, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private da()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/tm/DynamicBaseWidget;->getDynamicClickListener()Lcom/byazt/wl/c;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Landroid/view/View$OnClickListener;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 16
    .line 17
    .line 18
    sget-object v1, Lcom/byazt/tm/DynamicBaseWidget;->gr:Landroid/view/View$OnClickListener;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    :catch_0
    return-void
.end method

.method private i()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/byazt/gd/c;->c(Lcom/byazt/aq/sp;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x2

    .line 15
    if-ne v0, v1, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->rl:Lcom/byazt/nr/zm;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    new-instance v0, Lcom/byazt/nr/zm;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const/4 v2, 0x1

    .line 32
    iget-boolean v3, p0, Lcom/byazt/tm/DynamicBaseWidget;->qy:Z

    .line 33
    .line 34
    invoke-direct {v0, v1, v2, v3}, Lcom/byazt/nr/zm;-><init>(Landroid/content/Context;IZ)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->rl:Lcom/byazt/nr/zm;

    .line 38
    .line 39
    :cond_1
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->rl:Lcom/byazt/nr/zm;

    .line 40
    .line 41
    new-instance v1, Lcom/byazt/tm/DynamicBaseWidget$3;

    .line 42
    .line 43
    invoke-direct {v1, p0}, Lcom/byazt/tm/DynamicBaseWidget$3;-><init>(Lcom/byazt/tm/DynamicBaseWidget;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/byazt/nr/zm;->c(Lcom/byazt/nr/zm$c;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->yp:Lcom/byazt/tm/DynamicRootView;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/byazt/tm/DynamicRootView;->getRenderRequest()Lcom/byazt/xl/u;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_4

    .line 56
    .line 57
    iget-object v1, p0, Lcom/byazt/tm/DynamicBaseWidget;->rl:Lcom/byazt/nr/zm;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/byazt/xl/u;->nu()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    int-to-float v2, v2

    .line 64
    invoke-virtual {v1, v2}, Lcom/byazt/nr/zm;->c(F)V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lcom/byazt/tm/DynamicBaseWidget;->rl:Lcom/byazt/nr/zm;

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/byazt/xl/u;->gu()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    invoke-virtual {v1, v2}, Lcom/byazt/nr/zm;->n(I)V

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lcom/byazt/tm/DynamicBaseWidget;->rl:Lcom/byazt/nr/zm;

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/byazt/xl/u;->rl()Lorg/json/JSONObject;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v1, v2}, Lcom/byazt/nr/zm;->ve(Lorg/json/JSONObject;)V

    .line 83
    .line 84
    .line 85
    iget-object v1, p0, Lcom/byazt/tm/DynamicBaseWidget;->rl:Lcom/byazt/nr/zm;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/byazt/xl/u;->my()I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    int-to-float v2, v2

    .line 92
    invoke-virtual {v1, v2}, Lcom/byazt/nr/zm;->tt(F)V

    .line 93
    .line 94
    .line 95
    iget-object v1, p0, Lcom/byazt/tm/DynamicBaseWidget;->rl:Lcom/byazt/nr/zm;

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/byazt/xl/u;->gr()I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    invoke-virtual {v1, v2}, Lcom/byazt/nr/zm;->a(I)V

    .line 102
    .line 103
    .line 104
    iget-object v1, p0, Lcom/byazt/tm/DynamicBaseWidget;->rl:Lcom/byazt/nr/zm;

    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/byazt/xl/u;->gt()Lorg/json/JSONObject;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v1, v2}, Lcom/byazt/nr/zm;->c(Lorg/json/JSONObject;)V

    .line 111
    .line 112
    .line 113
    iget-object v1, p0, Lcom/byazt/tm/DynamicBaseWidget;->rl:Lcom/byazt/nr/zm;

    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/byazt/xl/u;->qy()Lorg/json/JSONObject;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v1, v0}, Lcom/byazt/nr/zm;->tt(Lorg/json/JSONObject;)V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_2
    const/4 v2, 0x3

    .line 124
    if-ne v0, v2, :cond_4

    .line 125
    .line 126
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->rl:Lcom/byazt/nr/zm;

    .line 127
    .line 128
    if-nez v0, :cond_3

    .line 129
    .line 130
    new-instance v0, Lcom/byazt/nr/zm;

    .line 131
    .line 132
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    iget-boolean v3, p0, Lcom/byazt/tm/DynamicBaseWidget;->qy:Z

    .line 141
    .line 142
    invoke-direct {v0, v2, v1, v3}, Lcom/byazt/nr/zm;-><init>(Landroid/content/Context;IZ)V

    .line 143
    .line 144
    .line 145
    iput-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->rl:Lcom/byazt/nr/zm;

    .line 146
    .line 147
    :cond_3
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->rl:Lcom/byazt/nr/zm;

    .line 148
    .line 149
    new-instance v1, Lcom/byazt/tm/DynamicBaseWidget$4;

    .line 150
    .line 151
    invoke-direct {v1, p0}, Lcom/byazt/tm/DynamicBaseWidget$4;-><init>(Lcom/byazt/tm/DynamicBaseWidget;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v1}, Lcom/byazt/nr/zm;->c(Lcom/byazt/nr/zm$c;)V

    .line 155
    .line 156
    .line 157
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->yp:Lcom/byazt/tm/DynamicRootView;

    .line 158
    .line 159
    invoke-virtual {v0}, Lcom/byazt/tm/DynamicRootView;->getRenderRequest()Lcom/byazt/xl/u;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    if-eqz v0, :cond_4

    .line 164
    .line 165
    iget-object v1, p0, Lcom/byazt/tm/DynamicBaseWidget;->rl:Lcom/byazt/nr/zm;

    .line 166
    .line 167
    invoke-virtual {v0}, Lcom/byazt/xl/u;->my()I

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    int-to-float v2, v2

    .line 172
    invoke-virtual {v1, v2}, Lcom/byazt/nr/zm;->tt(F)V

    .line 173
    .line 174
    .line 175
    iget-object v1, p0, Lcom/byazt/tm/DynamicBaseWidget;->rl:Lcom/byazt/nr/zm;

    .line 176
    .line 177
    invoke-virtual {v0}, Lcom/byazt/xl/u;->gr()I

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    invoke-virtual {v1, v2}, Lcom/byazt/nr/zm;->a(I)V

    .line 182
    .line 183
    .line 184
    iget-object v1, p0, Lcom/byazt/tm/DynamicBaseWidget;->rl:Lcom/byazt/nr/zm;

    .line 185
    .line 186
    invoke-virtual {v0}, Lcom/byazt/xl/u;->gt()Lorg/json/JSONObject;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    invoke-virtual {v1, v2}, Lcom/byazt/nr/zm;->c(Lorg/json/JSONObject;)V

    .line 191
    .line 192
    .line 193
    iget-object v1, p0, Lcom/byazt/tm/DynamicBaseWidget;->rl:Lcom/byazt/nr/zm;

    .line 194
    .line 195
    invoke-virtual {v0}, Lcom/byazt/xl/u;->qy()Lorg/json/JSONObject;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-virtual {v1, v0}, Lcom/byazt/nr/zm;->tt(Lorg/json/JSONObject;)V

    .line 200
    .line 201
    .line 202
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->rl:Lcom/byazt/nr/zm;

    .line 203
    .line 204
    if-eqz v0, :cond_7

    .line 205
    .line 206
    iget-object v1, p0, Lcom/byazt/tm/DynamicBaseWidget;->yp:Lcom/byazt/tm/DynamicRootView;

    .line 207
    .line 208
    if-eqz v1, :cond_6

    .line 209
    .line 210
    invoke-virtual {v1}, Lcom/byazt/tm/DynamicRootView;->getRenderRequest()Lcom/byazt/xl/u;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    if-eqz v0, :cond_5

    .line 215
    .line 216
    iget-object v1, p0, Lcom/byazt/tm/DynamicBaseWidget;->rl:Lcom/byazt/nr/zm;

    .line 217
    .line 218
    invoke-virtual {v0}, Lcom/byazt/xl/u;->md()I

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    invoke-virtual {v1, v0}, Lcom/byazt/nr/zm;->c(I)Z

    .line 223
    .line 224
    .line 225
    :cond_5
    return-void

    .line 226
    :cond_6
    const/4 v1, 0x0

    .line 227
    invoke-virtual {v0, v1}, Lcom/byazt/nr/zm;->c(I)Z

    .line 228
    .line 229
    .line 230
    :cond_7
    return-void
.end method

.method private tt(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 5
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 6
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x28

    if-ne v6, v7, :cond_0

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x29

    if-ne v6, v7, :cond_1

    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_1

    if-eqz v4, :cond_1

    add-int/lit8 v4, v2, 0x1

    .line 8
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v4

    const/4 v4, 0x0

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/byazt/tm/DynamicBaseWidget;->sp()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    move-object v0, p0

    .line 13
    :cond_1
    new-instance v1, Lcom/byazt/oj/tt;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/byazt/tm/DynamicBaseWidget;->u:Lcom/byazt/aq/x;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/byazt/aq/x;->da()Lcom/byazt/aq/n;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Lcom/byazt/aq/n;->n()Lcom/byazt/aq/a;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Lcom/byazt/aq/a;->vi()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-direct {v1, v0, v2}, Lcom/byazt/oj/tt;-><init>(Landroid/view/View;Ljava/util/List;)V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lcom/byazt/tm/DynamicBaseWidget;->nu:Lcom/byazt/oj/tt;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/byazt/oj/tt;->c()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public c(ZLjava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 15

    move-object v0, p0

    const-string v1, ","

    const-string v2, "%"

    .line 29
    iget-object v3, v0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    invoke-virtual {v3}, Lcom/byazt/aq/sp;->qp()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x7

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v3, :cond_2

    .line 30
    :try_start_0
    iget-object v3, v0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    invoke-virtual {v3}, Lcom/byazt/aq/sp;->qp()Ljava/lang/String;

    move-result-object v3

    const-string v9, "("

    .line 31
    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v9, v8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v8

    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v9, "rgba"

    .line 32
    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    new-array v9, v4, [Ljava/lang/String;

    .line 33
    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v3, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v7

    .line 34
    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v8

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/2addr v10, v8

    invoke-virtual {v3, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v8

    .line 35
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v6

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v6

    new-array v1, v6, [I

    aget-object v2, v9, v8

    .line 36
    invoke-static {v2}, Lcom/byazt/aq/sp;->c(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v7

    aget-object v2, v9, v6

    .line 37
    invoke-static {v2}, Lcom/byazt/aq/sp;->c(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v8

    goto :goto_0

    :cond_0
    const-string v1, ", "

    .line 38
    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    new-array v1, v6, [I

    .line 39
    aget-object v2, v9, v8

    invoke-virtual {v2, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/byazt/aq/sp;->c(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v7

    aget-object v2, v9, v6

    .line 40
    invoke-virtual {v2, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/byazt/aq/sp;->c(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    const-string v2, "linear-gradient("

    .line 41
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v8

    const-string v10, "deg"

    invoke-virtual {v3, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v3, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide v10, 0x406c200000000000L    # 225.0

    cmpl-double v12, v2, v10

    if-lez v12, :cond_1

    const-wide v10, 0x4073b00000000000L    # 315.0

    cmpg-double v12, v2, v10

    if-gez v12, :cond_1

    .line 43
    aget v2, v1, v8

    .line 44
    aget v3, v1, v7

    aput v3, v1, v8

    .line 45
    aput v2, v1, v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 46
    :catch_0
    :cond_1
    :try_start_2
    aget-object v2, v9, v7

    invoke-virtual {p0, v2}, Lcom/byazt/tm/DynamicBaseWidget;->c(Ljava/lang/String;)Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/byazt/tm/DynamicBaseWidget;->c(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    .line 47
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 48
    iget-object v2, v0, Lcom/byazt/tm/DynamicBaseWidget;->sl:Landroid/content/Context;

    iget-object v3, v0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    invoke-virtual {v3}, Lcom/byazt/aq/sp;->z()F

    move-result v3

    invoke-static {v2, v3}, Lcom/byazt/or/x;->c(Landroid/content/Context;F)F

    move-result v2

    .line 49
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v1

    :catch_1
    nop

    .line 50
    invoke-virtual {p0}, Lcom/byazt/tm/DynamicBaseWidget;->getMutilBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    .line 51
    :cond_2
    invoke-virtual {p0}, Lcom/byazt/tm/DynamicBaseWidget;->getDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    .line 52
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 53
    iget-object v2, v0, Lcom/byazt/tm/DynamicBaseWidget;->sl:Landroid/content/Context;

    iget-object v3, v0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    invoke-virtual {v3}, Lcom/byazt/aq/sp;->z()F

    move-result v3

    invoke-static {v2, v3}, Lcom/byazt/or/x;->c(Landroid/content/Context;F)F

    move-result v2

    .line 54
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    cmpg-float v3, v2, v3

    if-gez v3, :cond_7

    .line 55
    iget-object v3, v0, Lcom/byazt/tm/DynamicBaseWidget;->sl:Landroid/content/Context;

    iget-object v10, v0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    invoke-virtual {v10}, Lcom/byazt/aq/sp;->d()I

    move-result v10

    int-to-float v10, v10

    invoke-static {v3, v10}, Lcom/byazt/or/x;->c(Landroid/content/Context;F)F

    move-result v3

    .line 56
    iget-object v10, v0, Lcom/byazt/tm/DynamicBaseWidget;->sl:Landroid/content/Context;

    iget-object v11, v0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    invoke-virtual {v11}, Lcom/byazt/aq/sp;->eo()I

    move-result v11

    int-to-float v11, v11

    invoke-static {v10, v11}, Lcom/byazt/or/x;->c(Landroid/content/Context;F)F

    move-result v10

    .line 57
    iget-object v11, v0, Lcom/byazt/tm/DynamicBaseWidget;->sl:Landroid/content/Context;

    iget-object v12, v0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    invoke-virtual {v12}, Lcom/byazt/aq/sp;->zb()I

    move-result v12

    int-to-float v12, v12

    invoke-static {v11, v12}, Lcom/byazt/or/x;->c(Landroid/content/Context;F)F

    move-result v11

    .line 58
    iget-object v12, v0, Lcom/byazt/tm/DynamicBaseWidget;->sl:Landroid/content/Context;

    iget-object v13, v0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    invoke-virtual {v13}, Lcom/byazt/aq/sp;->or()I

    move-result v13

    int-to-float v13, v13

    invoke-static {v12, v13}, Lcom/byazt/or/x;->c(Landroid/content/Context;F)F

    move-result v12

    const/16 v13, 0x8

    new-array v13, v13, [F

    cmpl-float v14, v3, v9

    if-lez v14, :cond_3

    aput v3, v13, v7

    aput v3, v13, v8

    :cond_3
    cmpl-float v3, v10, v9

    if-lez v3, :cond_4

    aput v10, v13, v6

    aput v10, v13, v4

    :cond_4
    cmpl-float v3, v11, v9

    if-lez v3, :cond_5

    const/4 v3, 0x4

    aput v11, v13, v3

    const/4 v3, 0x5

    aput v11, v13, v3

    :cond_5
    cmpl-float v3, v12, v9

    if-lez v3, :cond_6

    const/4 v3, 0x6

    aput v12, v13, v3

    aput v12, v13, v5

    .line 59
    :cond_6
    invoke-virtual {v1, v13}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    :cond_7
    if-eqz p1, :cond_8

    .line 60
    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    .line 61
    :cond_8
    iget-object v3, v0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    invoke-virtual {v3}, Lcom/byazt/aq/sp;->md()I

    move-result v3

    .line 62
    :goto_1
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 63
    iget-object v3, v0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    invoke-virtual {v3}, Lcom/byazt/aq/sp;->nu()F

    move-result v3

    cmpl-float v3, v3, v9

    if-lez v3, :cond_9

    .line 64
    iget-object v2, v0, Lcom/byazt/tm/DynamicBaseWidget;->sl:Landroid/content/Context;

    iget-object v3, v0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    invoke-virtual {v3}, Lcom/byazt/aq/sp;->nu()F

    move-result v3

    invoke-static {v2, v3}, Lcom/byazt/or/x;->c(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    .line 65
    iget-object v3, v0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    invoke-virtual {v3}, Lcom/byazt/aq/sp;->m()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_2

    .line 66
    :cond_9
    iget-object v3, v0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    invoke-virtual {v3}, Lcom/byazt/aq/sp;->rh()I

    move-result v3

    if-lez v3, :cond_a

    .line 67
    iget-object v3, v0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    invoke-virtual {v3}, Lcom/byazt/aq/sp;->rh()I

    move-result v3

    .line 68
    iget-object v4, v0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    invoke-virtual {v4}, Lcom/byazt/aq/sp;->m()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const/16 v3, 0x32

    .line 69
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 70
    iget-object v3, v0, Lcom/byazt/tm/DynamicBaseWidget;->u:Lcom/byazt/aq/x;

    invoke-virtual {v3}, Lcom/byazt/aq/x;->da()Lcom/byazt/aq/n;

    move-result-object v3

    invoke-virtual {v3}, Lcom/byazt/aq/n;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "video-vd"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v1, 0x0

    .line 71
    invoke-virtual {p0, v8, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 72
    new-instance v1, Lcom/byazt/tm/ve;

    float-to-int v2, v2

    iget-object v3, v0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    invoke-virtual {v3}, Lcom/byazt/aq/sp;->rh()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/byazt/tm/ve;-><init>(II)V

    :cond_a
    :goto_2
    return-object v1
.end method

.method public c(Ljava/lang/String;)Landroid/graphics/drawable/GradientDrawable$Orientation;
    .locals 2

    .line 93
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_0

    .line 94
    sget-object p1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object p1

    :cond_0
    const/16 v0, 0xb4

    if-gt p1, v0, :cond_1

    .line 95
    sget-object p1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object p1

    :cond_1
    const/16 v0, 0x10e

    if-gt p1, v0, :cond_2

    .line 96
    sget-object p1, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object p1

    .line 97
    :cond_2
    sget-object p1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 98
    :catch_0
    sget-object p1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object p1
.end method

.method public c(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)Landroid/graphics/drawable/GradientDrawable;
    .locals 2
    .param p2    # [I
        .annotation build Lcom/bytedance/component/sdk/annotation/ColorInt;
        .end annotation
    .end param

    if-eqz p2, :cond_2

    .line 87
    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    array-length v0, p2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 89
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v0, 0x0

    .line 90
    aget p2, p2, v0

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object p1

    .line 91
    :cond_1
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    return-object v0

    .line 92
    :cond_2
    :goto_0
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    return-object p1
.end method

.method public c(Landroid/graphics/Bitmap;)Lcom/byazt/tm/tt;
    .locals 2

    .line 73
    new-instance v0, Lcom/byazt/tm/c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/byazt/tm/c;-><init>(Landroid/graphics/Bitmap;Lcom/byazt/tm/tt;)V

    return-object v0
.end method

.method public c(I)V
    .locals 4

    .line 5
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/byazt/aq/sp;->c(I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 7
    :cond_1
    invoke-interface {p0}, Lcom/byazt/tm/uj;->x()Z

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 9
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 10
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/byazt/tm/DynamicBaseWidget;

    if-eqz v3, :cond_2

    .line 11
    check-cast v2, Lcom/byazt/tm/DynamicBaseWidget;

    invoke-virtual {v2, p1}, Lcom/byazt/tm/DynamicBaseWidget;->c(I)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 5

    .line 12
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "width"

    .line 13
    iget-object v2, p0, Lcom/byazt/tm/DynamicBaseWidget;->u:Lcom/byazt/aq/x;

    invoke-virtual {v2}, Lcom/byazt/aq/x;->x()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "height"

    .line 14
    iget-object v2, p0, Lcom/byazt/tm/DynamicBaseWidget;->u:Lcom/byazt/aq/x;

    invoke-virtual {v2}, Lcom/byazt/aq/x;->i()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 15
    invoke-static {}, Lcom/byazt/sr/uj;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16
    sget v1, Lcom/byazt/kn/c;->gt:I

    iget-object v2, p0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    invoke-virtual {v2}, Lcom/byazt/aq/sp;->nb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 17
    sget v1, Lcom/byazt/kn/c;->rl:I

    iget-object v2, p0, Lcom/byazt/tm/DynamicBaseWidget;->u:Lcom/byazt/aq/x;

    invoke-virtual {v2}, Lcom/byazt/aq/x;->da()Lcom/byazt/aq/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/aq/n;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 18
    sget v1, Lcom/byazt/kn/c;->qy:I

    iget-object v2, p0, Lcom/byazt/tm/DynamicBaseWidget;->u:Lcom/byazt/aq/x;

    invoke-virtual {v2}, Lcom/byazt/aq/x;->ve()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 19
    sget v1, Lcom/byazt/kn/c;->gu:I

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    invoke-virtual {v1}, Lcom/byazt/aq/sp;->nb()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7d06ffdd

    invoke-virtual {p1, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 21
    iget-object v1, p0, Lcom/byazt/tm/DynamicBaseWidget;->u:Lcom/byazt/aq/x;

    invoke-virtual {v1}, Lcom/byazt/aq/x;->da()Lcom/byazt/aq/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/aq/n;->getType()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7d06ffdb

    invoke-virtual {p1, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 22
    iget-object v1, p0, Lcom/byazt/tm/DynamicBaseWidget;->u:Lcom/byazt/aq/x;

    invoke-virtual {v1}, Lcom/byazt/aq/x;->ve()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7d06ffda

    invoke-virtual {p1, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 23
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7d06ffd9

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 24
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    invoke-static {v0}, Lcom/byazt/gd/c;->c(Lcom/byazt/aq/sp;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 25
    new-instance v1, Landroid/util/Pair;

    iget-object v2, p0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    invoke-virtual {v2}, Lcom/byazt/aq/sp;->zm()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    invoke-virtual {v3}, Lcom/byazt/aq/sp;->yv()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x7d06ffd3

    .line 26
    invoke-virtual {p1, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7d06ffd4

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 28
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 2
    invoke-interface {p0}, Lcom/byazt/tm/uj;->x()Z

    .line 3
    invoke-virtual {p0}, Lcom/byazt/tm/DynamicBaseWidget;->n()V

    .line 4
    invoke-virtual {p0}, Lcom/byazt/tm/DynamicBaseWidget;->ve()Z

    const/4 v0, 0x1

    return v0
.end method

.method public getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, ""

    .line 3
    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/byazt/tm/DynamicBaseWidget;->c(ZLjava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public getBeginInvisibleAndShow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->m:Z

    .line 2
    .line 3
    return v0
.end method

.method public getClickArea()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/aq/sp;->p()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getDrawable()Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getDynamicClickListener()Lcom/byazt/wl/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->yp:Lcom/byazt/tm/DynamicRootView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/tm/DynamicRootView;->getDynamicClickListener()Lcom/byazt/wl/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getDynamicHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->x:I

    .line 2
    .line 3
    return v0
.end method

.method public getDynamicLayoutBrickValue()Lcom/byazt/aq/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->u:Lcom/byazt/aq/x;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/aq/x;->da()Lcom/byazt/aq/n;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/byazt/aq/n;->n()Lcom/byazt/aq/a;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public getDynamicWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->sp:I

    .line 2
    .line 3
    return v0
.end method

.method public getImageObjectFit()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/aq/sp;->to()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getMarqueeValue()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->my:F

    .line 2
    .line 3
    return v0
.end method

.method public getMutilBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/aq/sp;->qp()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "/\\*.*\\*/"

    .line 8
    .line 9
    const-string v2, ""

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-direct {p0, v0}, Lcom/byazt/tm/DynamicBaseWidget;->tt(Ljava/lang/String;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-direct {p0, v0}, Lcom/byazt/tm/DynamicBaseWidget;->c(Ljava/util/List;)[Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    return-object v1

    .line 29
    :catch_0
    const/4 v0, 0x0

    .line 30
    return-object v0
.end method

.method public getRippleValue()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->c:F

    .line 2
    .line 3
    return v0
.end method

.method public getShineValue()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->tt:F

    .line 2
    .line 3
    return v0
.end method

.method public getStretchValue()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->gt:F

    .line 2
    .line 3
    return v0
.end method

.method public n()V
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2
    .line 3
    iget v1, p0, Lcom/byazt/tm/DynamicBaseWidget;->sp:I

    .line 4
    .line 5
    iget v2, p0, Lcom/byazt/tm/DynamicBaseWidget;->x:I

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 8
    .line 9
    .line 10
    iget v1, p0, Lcom/byazt/tm/DynamicBaseWidget;->da:I

    .line 11
    .line 12
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 13
    .line 14
    iget v1, p0, Lcom/byazt/tm/DynamicBaseWidget;->i:I

    .line 15
    .line 16
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 19
    .line 20
    .line 21
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/byazt/tm/DynamicBaseWidget;->a()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/byazt/tm/DynamicBaseWidget;->i()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/byazt/tm/DynamicBaseWidget;->tt()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->rl:Lcom/byazt/nr/zm;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->yp:Lcom/byazt/tm/DynamicRootView;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/byazt/tm/DynamicRootView;->getRenderRequest()Lcom/byazt/xl/u;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->rl:Lcom/byazt/nr/zm;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/byazt/tm/DynamicBaseWidget;->yp:Lcom/byazt/tm/DynamicRootView;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/byazt/tm/DynamicRootView;->getRenderRequest()Lcom/byazt/xl/u;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lcom/byazt/xl/u;->md()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {v0, v1}, Lcom/byazt/nr/zm;->tt(I)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->rl:Lcom/byazt/nr/zm;

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-virtual {v0, v1}, Lcom/byazt/nr/zm;->tt(I)V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->rh:Lcom/byazt/nwh/c;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p0, p0}, Lcom/byazt/nwh/c;->c(Landroid/graphics/Canvas;Lcom/byazt/nwh/tt;Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iget-object p3, p0, Lcom/byazt/tm/DynamicBaseWidget;->rh:Lcom/byazt/nwh/c;

    .line 5
    .line 6
    iget-object p4, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 7
    .line 8
    if-nez p4, :cond_0

    .line 9
    .line 10
    move-object p4, p0

    .line 11
    :cond_0
    invoke-virtual {p3, p4, p1, p2}, Lcom/byazt/nwh/c;->c(Landroid/view/View;II)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->rl:Lcom/byazt/nr/zm;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->yp:Lcom/byazt/tm/DynamicRootView;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/byazt/tm/DynamicRootView;->getRenderRequest()Lcom/byazt/xl/u;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/byazt/tm/DynamicBaseWidget;->rl:Lcom/byazt/nr/zm;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->yp:Lcom/byazt/tm/DynamicRootView;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/byazt/tm/DynamicRootView;->getRenderRequest()Lcom/byazt/xl/u;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/byazt/xl/u;->md()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-virtual {p1, v0}, Lcom/byazt/nr/zm;->c(I)Z

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    iget-object p1, p0, Lcom/byazt/tm/DynamicBaseWidget;->rl:Lcom/byazt/nr/zm;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->yp:Lcom/byazt/tm/DynamicRootView;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/byazt/tm/DynamicRootView;->getRenderRequest()Lcom/byazt/xl/u;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/byazt/xl/u;->md()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-virtual {p1, v0}, Lcom/byazt/nr/zm;->tt(I)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    const/4 v0, 0x0

    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    iget-object p1, p0, Lcom/byazt/tm/DynamicBaseWidget;->rl:Lcom/byazt/nr/zm;

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Lcom/byazt/nr/zm;->c(I)Z

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_2
    iget-object p1, p0, Lcom/byazt/tm/DynamicBaseWidget;->rl:Lcom/byazt/nr/zm;

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Lcom/byazt/nr/zm;->tt(I)V

    .line 61
    .line 62
    .line 63
    :cond_3
    return-void
.end method

.method public setCanUseSensor(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/tm/DynamicBaseWidget;->qy:Z

    .line 2
    .line 3
    return-void
.end method

.method public setMarqueeValue(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/tm/DynamicBaseWidget;->my:F

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setRippleValue(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/tm/DynamicBaseWidget;->c:F

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setShineValue(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/tm/DynamicBaseWidget;->tt:F

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setShouldInvisible(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/tm/DynamicBaseWidget;->m:Z

    .line 2
    .line 3
    return-void
.end method

.method public setStretchValue(F)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/byazt/tm/DynamicBaseWidget;->gt:F

    .line 2
    .line 3
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->rh:Lcom/byazt/nwh/c;

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/byazt/nwh/c;->c(Landroid/view/View;F)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public sp()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->u:Lcom/byazt/aq/x;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/aq/x;->da()Lcom/byazt/aq/n;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->u:Lcom/byazt/aq/x;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/byazt/aq/x;->da()Lcom/byazt/aq/n;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/byazt/aq/n;->n()Lcom/byazt/aq/a;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->u:Lcom/byazt/aq/x;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/byazt/aq/x;->da()Lcom/byazt/aq/n;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/byazt/aq/n;->n()Lcom/byazt/aq/a;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/byazt/aq/a;->vi()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 41
    return v0

    .line 42
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 43
    return v0
.end method

.method public tt()V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->nu:Lcom/byazt/oj/tt;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Lcom/byazt/oj/tt;->tt()V

    :cond_0
    return-void
.end method

.method public tt(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->u:Lcom/byazt/aq/x;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/aq/x;->da()Lcom/byazt/aq/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/aq/n;->n()Lcom/byazt/aq/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/byazt/aq/a;->di()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const v1, 0x7d06ffdc

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public uj()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/aq/sp;->p()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x1

    .line 13
    return v0

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public ve()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/tm/DynamicBaseWidget;->uj()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/byazt/tm/DynamicBaseWidget;->getDynamicClickListener()Lcom/byazt/wl/c;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroid/view/View$OnTouchListener;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/byazt/tm/DynamicBaseWidget;->getDynamicClickListener()Lcom/byazt/wl/c;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Landroid/view/View$OnClickListener;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    sget-object v1, Lcom/byazt/tm/DynamicBaseWidget;->gu:Landroid/view/View$OnTouchListener;

    .line 26
    .line 27
    sget-object v2, Lcom/byazt/tm/DynamicBaseWidget;->gr:Landroid/view/View$OnClickListener;

    .line 28
    .line 29
    :goto_0
    if-eqz v1, :cond_4

    .line 30
    .line 31
    if-eqz v2, :cond_4

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    .line 40
    .line 41
    invoke-static {v1}, Lcom/byazt/gd/c;->c(Lcom/byazt/aq/sp;)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    const/4 v3, 0x2

    .line 46
    if-eq v1, v3, :cond_3

    .line 47
    .line 48
    const/4 v3, 0x3

    .line 49
    if-ne v1, v3, :cond_2

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_3
    :goto_1
    sget-object v1, Lcom/byazt/tm/DynamicBaseWidget;->gr:Landroid/view/View$OnClickListener;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    .line 60
    .line 61
    :cond_4
    :goto_2
    invoke-virtual {p0, v0}, Lcom/byazt/tm/DynamicBaseWidget;->c(Landroid/view/View;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0}, Lcom/byazt/tm/DynamicBaseWidget;->tt(Landroid/view/View;)V

    .line 65
    .line 66
    .line 67
    const/4 v0, 0x1

    .line 68
    return v0
.end method
