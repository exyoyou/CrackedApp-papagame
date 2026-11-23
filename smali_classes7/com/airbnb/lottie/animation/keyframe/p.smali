.class public Lcom/airbnb/lottie/animation/keyframe/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/graphics/Matrix;

.field private final b:Landroid/graphics/Matrix;

.field private final c:Landroid/graphics/Matrix;

.field private final d:Landroid/graphics/Matrix;

.field private final e:[F

.field private f:Lcom/airbnb/lottie/animation/keyframe/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/a<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/airbnb/lottie/animation/keyframe/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/a<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/airbnb/lottie/animation/keyframe/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/a<",
            "Lcom/airbnb/lottie/value/k;",
            "Lcom/airbnb/lottie/value/k;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/airbnb/lottie/animation/keyframe/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/airbnb/lottie/animation/keyframe/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/airbnb/lottie/animation/keyframe/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private l:Lcom/airbnb/lottie/animation/keyframe/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private m:Lcom/airbnb/lottie/animation/keyframe/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/airbnb/lottie/animation/keyframe/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Z


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/model/animatable/l;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Matrix;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->a:Landroid/graphics/Matrix;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/l;->c()Lcom/airbnb/lottie/model/animatable/e;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    move-object v0, v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/l;->c()Lcom/airbnb/lottie/model/animatable/e;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/e;->a()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :goto_0
    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->f:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/l;->f()Lcom/airbnb/lottie/model/animatable/m;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    move-object v0, v1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/l;->f()Lcom/airbnb/lottie/model/animatable/m;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {v0}, Lcom/airbnb/lottie/model/animatable/m;->a()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :goto_1
    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->g:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/l;->h()Lcom/airbnb/lottie/model/animatable/g;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    move-object v0, v1

    .line 55
    goto :goto_2

    .line 56
    :cond_2
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/l;->h()Lcom/airbnb/lottie/model/animatable/g;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/g;->a()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    :goto_2
    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->h:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/l;->g()Lcom/airbnb/lottie/model/animatable/b;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    if-nez v0, :cond_3

    .line 71
    .line 72
    move-object v0, v1

    .line 73
    goto :goto_3

    .line 74
    :cond_3
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/l;->g()Lcom/airbnb/lottie/model/animatable/b;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/b;->a()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    :goto_3
    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->i:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/l;->i()Lcom/airbnb/lottie/model/animatable/b;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    if-nez v0, :cond_4

    .line 89
    .line 90
    move-object v0, v1

    .line 91
    goto :goto_4

    .line 92
    :cond_4
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/l;->i()Lcom/airbnb/lottie/model/animatable/b;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/b;->a()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/d;

    .line 101
    .line 102
    :goto_4
    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->k:Lcom/airbnb/lottie/animation/keyframe/d;

    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/l;->l()Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->o:Z

    .line 109
    .line 110
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->k:Lcom/airbnb/lottie/animation/keyframe/d;

    .line 111
    .line 112
    if-eqz v0, :cond_5

    .line 113
    .line 114
    new-instance v0, Landroid/graphics/Matrix;

    .line 115
    .line 116
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 117
    .line 118
    .line 119
    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->b:Landroid/graphics/Matrix;

    .line 120
    .line 121
    new-instance v0, Landroid/graphics/Matrix;

    .line 122
    .line 123
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 124
    .line 125
    .line 126
    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->c:Landroid/graphics/Matrix;

    .line 127
    .line 128
    new-instance v0, Landroid/graphics/Matrix;

    .line 129
    .line 130
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 131
    .line 132
    .line 133
    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->d:Landroid/graphics/Matrix;

    .line 134
    .line 135
    const/16 v0, 0x9

    .line 136
    .line 137
    new-array v0, v0, [F

    .line 138
    .line 139
    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->e:[F

    .line 140
    .line 141
    goto :goto_5

    .line 142
    :cond_5
    iput-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/p;->b:Landroid/graphics/Matrix;

    .line 143
    .line 144
    iput-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/p;->c:Landroid/graphics/Matrix;

    .line 145
    .line 146
    iput-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/p;->d:Landroid/graphics/Matrix;

    .line 147
    .line 148
    iput-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/p;->e:[F

    .line 149
    .line 150
    :goto_5
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/l;->j()Lcom/airbnb/lottie/model/animatable/b;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    if-nez v0, :cond_6

    .line 155
    .line 156
    move-object v0, v1

    .line 157
    goto :goto_6

    .line 158
    :cond_6
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/l;->j()Lcom/airbnb/lottie/model/animatable/b;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/b;->a()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/d;

    .line 167
    .line 168
    :goto_6
    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->l:Lcom/airbnb/lottie/animation/keyframe/d;

    .line 169
    .line 170
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/l;->e()Lcom/airbnb/lottie/model/animatable/d;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    if-eqz v0, :cond_7

    .line 175
    .line 176
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/l;->e()Lcom/airbnb/lottie/model/animatable/d;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/d;->a()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->j:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 185
    .line 186
    :cond_7
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/l;->k()Lcom/airbnb/lottie/model/animatable/b;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    if-eqz v0, :cond_8

    .line 191
    .line 192
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/l;->k()Lcom/airbnb/lottie/model/animatable/b;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/b;->a()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->m:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 201
    .line 202
    goto :goto_7

    .line 203
    :cond_8
    iput-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/p;->m:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 204
    .line 205
    :goto_7
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/l;->d()Lcom/airbnb/lottie/model/animatable/b;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    if-eqz v0, :cond_9

    .line 210
    .line 211
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/l;->d()Lcom/airbnb/lottie/model/animatable/b;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/b;->a()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/p;->n:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 220
    .line 221
    goto :goto_8

    .line 222
    :cond_9
    iput-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/p;->n:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 223
    .line 224
    :goto_8
    return-void
.end method

.method private d()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/16 v1, 0x9

    .line 3
    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/p;->e:[F

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    aput v2, v1, v0

    .line 10
    .line 11
    add-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/model/layer/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->j:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/b;->i(Lcom/airbnb/lottie/animation/keyframe/a;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->m:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/b;->i(Lcom/airbnb/lottie/animation/keyframe/a;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->n:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/b;->i(Lcom/airbnb/lottie/animation/keyframe/a;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->f:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/b;->i(Lcom/airbnb/lottie/animation/keyframe/a;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->g:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/b;->i(Lcom/airbnb/lottie/animation/keyframe/a;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->h:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/b;->i(Lcom/airbnb/lottie/animation/keyframe/a;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->i:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/b;->i(Lcom/airbnb/lottie/animation/keyframe/a;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->k:Lcom/airbnb/lottie/animation/keyframe/d;

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/b;->i(Lcom/airbnb/lottie/animation/keyframe/a;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->l:Lcom/airbnb/lottie/animation/keyframe/d;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/b;->i(Lcom/airbnb/lottie/animation/keyframe/a;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public b(Lcom/airbnb/lottie/animation/keyframe/a$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->j:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/a;->a(Lcom/airbnb/lottie/animation/keyframe/a$b;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->m:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/a;->a(Lcom/airbnb/lottie/animation/keyframe/a$b;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->n:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/a;->a(Lcom/airbnb/lottie/animation/keyframe/a$b;)V

    .line 20
    .line 21
    .line 22
    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->f:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/a;->a(Lcom/airbnb/lottie/animation/keyframe/a$b;)V

    .line 27
    .line 28
    .line 29
    :cond_3
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->g:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 30
    .line 31
    if-eqz v0, :cond_4

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/a;->a(Lcom/airbnb/lottie/animation/keyframe/a$b;)V

    .line 34
    .line 35
    .line 36
    :cond_4
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->h:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 37
    .line 38
    if-eqz v0, :cond_5

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/a;->a(Lcom/airbnb/lottie/animation/keyframe/a$b;)V

    .line 41
    .line 42
    .line 43
    :cond_5
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->i:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 44
    .line 45
    if-eqz v0, :cond_6

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/a;->a(Lcom/airbnb/lottie/animation/keyframe/a$b;)V

    .line 48
    .line 49
    .line 50
    :cond_6
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->k:Lcom/airbnb/lottie/animation/keyframe/d;

    .line 51
    .line 52
    if-eqz v0, :cond_7

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/a;->a(Lcom/airbnb/lottie/animation/keyframe/a$b;)V

    .line 55
    .line 56
    .line 57
    :cond_7
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->l:Lcom/airbnb/lottie/animation/keyframe/d;

    .line 58
    .line 59
    if-eqz v0, :cond_8

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/a;->a(Lcom/airbnb/lottie/animation/keyframe/a$b;)V

    .line 62
    .line 63
    .line 64
    :cond_8
    return-void
.end method

.method public c(Ljava/lang/Object;Lcom/airbnb/lottie/value/j;)Z
    .locals 3
    .param p2    # Lcom/airbnb/lottie/value/j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/airbnb/lottie/value/j<",
            "TT;>;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/airbnb/lottie/b1;->f:Landroid/graphics/PointF;

    .line 2
    .line 3
    if-ne p1, v0, :cond_1

    .line 4
    .line 5
    iget-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/p;->f:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/q;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/PointF;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-direct {p1, p2, v0}, Lcom/airbnb/lottie/animation/keyframe/q;-><init>(Lcom/airbnb/lottie/value/j;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/p;->f:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 20
    .line 21
    goto/16 :goto_0

    .line 22
    .line 23
    :cond_0
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/a;->n(Lcom/airbnb/lottie/value/j;)V

    .line 24
    .line 25
    .line 26
    goto/16 :goto_0

    .line 27
    .line 28
    :cond_1
    sget-object v0, Lcom/airbnb/lottie/b1;->g:Landroid/graphics/PointF;

    .line 29
    .line 30
    if-ne p1, v0, :cond_3

    .line 31
    .line 32
    iget-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/p;->g:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 33
    .line 34
    if-nez p1, :cond_2

    .line 35
    .line 36
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/q;

    .line 37
    .line 38
    new-instance v0, Landroid/graphics/PointF;

    .line 39
    .line 40
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-direct {p1, p2, v0}, Lcom/airbnb/lottie/animation/keyframe/q;-><init>(Lcom/airbnb/lottie/value/j;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/p;->g:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 47
    .line 48
    goto/16 :goto_0

    .line 49
    .line 50
    :cond_2
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/a;->n(Lcom/airbnb/lottie/value/j;)V

    .line 51
    .line 52
    .line 53
    goto/16 :goto_0

    .line 54
    .line 55
    :cond_3
    sget-object v0, Lcom/airbnb/lottie/b1;->h:Ljava/lang/Float;

    .line 56
    .line 57
    if-ne p1, v0, :cond_4

    .line 58
    .line 59
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->g:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 60
    .line 61
    instance-of v1, v0, Lcom/airbnb/lottie/animation/keyframe/n;

    .line 62
    .line 63
    if-eqz v1, :cond_4

    .line 64
    .line 65
    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/n;

    .line 66
    .line 67
    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/n;->r(Lcom/airbnb/lottie/value/j;)V

    .line 68
    .line 69
    .line 70
    goto/16 :goto_0

    .line 71
    .line 72
    :cond_4
    sget-object v0, Lcom/airbnb/lottie/b1;->i:Ljava/lang/Float;

    .line 73
    .line 74
    if-ne p1, v0, :cond_5

    .line 75
    .line 76
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->g:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 77
    .line 78
    instance-of v1, v0, Lcom/airbnb/lottie/animation/keyframe/n;

    .line 79
    .line 80
    if-eqz v1, :cond_5

    .line 81
    .line 82
    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/n;

    .line 83
    .line 84
    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/n;->s(Lcom/airbnb/lottie/value/j;)V

    .line 85
    .line 86
    .line 87
    goto/16 :goto_0

    .line 88
    .line 89
    :cond_5
    sget-object v0, Lcom/airbnb/lottie/b1;->o:Lcom/airbnb/lottie/value/k;

    .line 90
    .line 91
    if-ne p1, v0, :cond_7

    .line 92
    .line 93
    iget-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/p;->h:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 94
    .line 95
    if-nez p1, :cond_6

    .line 96
    .line 97
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/q;

    .line 98
    .line 99
    new-instance v0, Lcom/airbnb/lottie/value/k;

    .line 100
    .line 101
    invoke-direct {v0}, Lcom/airbnb/lottie/value/k;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-direct {p1, p2, v0}, Lcom/airbnb/lottie/animation/keyframe/q;-><init>(Lcom/airbnb/lottie/value/j;Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/p;->h:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 108
    .line 109
    goto/16 :goto_0

    .line 110
    .line 111
    :cond_6
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/a;->n(Lcom/airbnb/lottie/value/j;)V

    .line 112
    .line 113
    .line 114
    goto/16 :goto_0

    .line 115
    .line 116
    :cond_7
    sget-object v0, Lcom/airbnb/lottie/b1;->p:Ljava/lang/Float;

    .line 117
    .line 118
    const/4 v1, 0x0

    .line 119
    if-ne p1, v0, :cond_9

    .line 120
    .line 121
    iget-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/p;->i:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 122
    .line 123
    if-nez p1, :cond_8

    .line 124
    .line 125
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/q;

    .line 126
    .line 127
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-direct {p1, p2, v0}, Lcom/airbnb/lottie/animation/keyframe/q;-><init>(Lcom/airbnb/lottie/value/j;Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/p;->i:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 135
    .line 136
    goto/16 :goto_0

    .line 137
    .line 138
    :cond_8
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/a;->n(Lcom/airbnb/lottie/value/j;)V

    .line 139
    .line 140
    .line 141
    goto/16 :goto_0

    .line 142
    .line 143
    :cond_9
    sget-object v0, Lcom/airbnb/lottie/b1;->c:Ljava/lang/Integer;

    .line 144
    .line 145
    if-ne p1, v0, :cond_b

    .line 146
    .line 147
    iget-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/p;->j:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 148
    .line 149
    if-nez p1, :cond_a

    .line 150
    .line 151
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/q;

    .line 152
    .line 153
    const/16 v0, 0x64

    .line 154
    .line 155
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-direct {p1, p2, v0}, Lcom/airbnb/lottie/animation/keyframe/q;-><init>(Lcom/airbnb/lottie/value/j;Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/p;->j:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 163
    .line 164
    goto/16 :goto_0

    .line 165
    .line 166
    :cond_a
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/a;->n(Lcom/airbnb/lottie/value/j;)V

    .line 167
    .line 168
    .line 169
    goto/16 :goto_0

    .line 170
    .line 171
    :cond_b
    sget-object v0, Lcom/airbnb/lottie/b1;->C:Ljava/lang/Float;

    .line 172
    .line 173
    const/high16 v2, 0x42c80000    # 100.0f

    .line 174
    .line 175
    if-ne p1, v0, :cond_d

    .line 176
    .line 177
    iget-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/p;->m:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 178
    .line 179
    if-nez p1, :cond_c

    .line 180
    .line 181
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/q;

    .line 182
    .line 183
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-direct {p1, p2, v0}, Lcom/airbnb/lottie/animation/keyframe/q;-><init>(Lcom/airbnb/lottie/value/j;Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/p;->m:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 191
    .line 192
    goto :goto_0

    .line 193
    :cond_c
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/a;->n(Lcom/airbnb/lottie/value/j;)V

    .line 194
    .line 195
    .line 196
    goto :goto_0

    .line 197
    :cond_d
    sget-object v0, Lcom/airbnb/lottie/b1;->D:Ljava/lang/Float;

    .line 198
    .line 199
    if-ne p1, v0, :cond_f

    .line 200
    .line 201
    iget-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/p;->n:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 202
    .line 203
    if-nez p1, :cond_e

    .line 204
    .line 205
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/q;

    .line 206
    .line 207
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-direct {p1, p2, v0}, Lcom/airbnb/lottie/animation/keyframe/q;-><init>(Lcom/airbnb/lottie/value/j;Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/p;->n:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 215
    .line 216
    goto :goto_0

    .line 217
    :cond_e
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/a;->n(Lcom/airbnb/lottie/value/j;)V

    .line 218
    .line 219
    .line 220
    goto :goto_0

    .line 221
    :cond_f
    sget-object v0, Lcom/airbnb/lottie/b1;->q:Ljava/lang/Float;

    .line 222
    .line 223
    if-ne p1, v0, :cond_11

    .line 224
    .line 225
    iget-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/p;->k:Lcom/airbnb/lottie/animation/keyframe/d;

    .line 226
    .line 227
    if-nez p1, :cond_10

    .line 228
    .line 229
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/d;

    .line 230
    .line 231
    new-instance v0, Lcom/airbnb/lottie/value/a;

    .line 232
    .line 233
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/value/a;-><init>(Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-direct {p1, v0}, Lcom/airbnb/lottie/animation/keyframe/d;-><init>(Ljava/util/List;)V

    .line 245
    .line 246
    .line 247
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/p;->k:Lcom/airbnb/lottie/animation/keyframe/d;

    .line 248
    .line 249
    :cond_10
    iget-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/p;->k:Lcom/airbnb/lottie/animation/keyframe/d;

    .line 250
    .line 251
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/a;->n(Lcom/airbnb/lottie/value/j;)V

    .line 252
    .line 253
    .line 254
    goto :goto_0

    .line 255
    :cond_11
    sget-object v0, Lcom/airbnb/lottie/b1;->r:Ljava/lang/Float;

    .line 256
    .line 257
    if-ne p1, v0, :cond_13

    .line 258
    .line 259
    iget-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/p;->l:Lcom/airbnb/lottie/animation/keyframe/d;

    .line 260
    .line 261
    if-nez p1, :cond_12

    .line 262
    .line 263
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/d;

    .line 264
    .line 265
    new-instance v0, Lcom/airbnb/lottie/value/a;

    .line 266
    .line 267
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/value/a;-><init>(Ljava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-direct {p1, v0}, Lcom/airbnb/lottie/animation/keyframe/d;-><init>(Ljava/util/List;)V

    .line 279
    .line 280
    .line 281
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/p;->l:Lcom/airbnb/lottie/animation/keyframe/d;

    .line 282
    .line 283
    :cond_12
    iget-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/p;->l:Lcom/airbnb/lottie/animation/keyframe/d;

    .line 284
    .line 285
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/a;->n(Lcom/airbnb/lottie/value/j;)V

    .line 286
    .line 287
    .line 288
    :goto_0
    const/4 p1, 0x1

    .line 289
    return p1

    .line 290
    :cond_13
    const/4 p1, 0x0

    .line 291
    return p1
.end method

.method public e()Lcom/airbnb/lottie/animation/keyframe/a;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/animation/keyframe/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->n:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Landroid/graphics/Matrix;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->a:Landroid/graphics/Matrix;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->g:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/a;->h()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Landroid/graphics/PointF;

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    iget v3, v2, Landroid/graphics/PointF;->x:F

    .line 20
    .line 21
    cmpl-float v4, v3, v1

    .line 22
    .line 23
    if-nez v4, :cond_0

    .line 24
    .line 25
    iget v4, v2, Landroid/graphics/PointF;->y:F

    .line 26
    .line 27
    cmpl-float v4, v4, v1

    .line 28
    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    :cond_0
    iget-object v4, p0, Lcom/airbnb/lottie/animation/keyframe/p;->a:Landroid/graphics/Matrix;

    .line 32
    .line 33
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 34
    .line 35
    invoke-virtual {v4, v3, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-boolean v2, p0, Lcom/airbnb/lottie/animation/keyframe/p;->o:Z

    .line 39
    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/a;->f()F

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/a;->h()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Landroid/graphics/PointF;

    .line 53
    .line 54
    iget v4, v3, Landroid/graphics/PointF;->x:F

    .line 55
    .line 56
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 57
    .line 58
    const v5, 0x38d1b717    # 1.0E-4f

    .line 59
    .line 60
    .line 61
    add-float/2addr v5, v2

    .line 62
    invoke-virtual {v0, v5}, Lcom/airbnb/lottie/animation/keyframe/a;->m(F)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/a;->h()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    check-cast v5, Landroid/graphics/PointF;

    .line 70
    .line 71
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/animation/keyframe/a;->m(F)V

    .line 72
    .line 73
    .line 74
    iget v0, v5, Landroid/graphics/PointF;->y:F

    .line 75
    .line 76
    sub-float/2addr v0, v3

    .line 77
    float-to-double v2, v0

    .line 78
    iget v0, v5, Landroid/graphics/PointF;->x:F

    .line 79
    .line 80
    sub-float/2addr v0, v4

    .line 81
    float-to-double v4, v0

    .line 82
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    .line 83
    .line 84
    .line 85
    move-result-wide v2

    .line 86
    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    .line 87
    .line 88
    .line 89
    move-result-wide v2

    .line 90
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->a:Landroid/graphics/Matrix;

    .line 91
    .line 92
    double-to-float v2, v2

    .line 93
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->i:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 98
    .line 99
    if-eqz v0, :cond_4

    .line 100
    .line 101
    instance-of v2, v0, Lcom/airbnb/lottie/animation/keyframe/q;

    .line 102
    .line 103
    if-eqz v2, :cond_3

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/a;->h()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Ljava/lang/Float;

    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    goto :goto_0

    .line 116
    :cond_3
    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/d;

    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/d;->p()F

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    :goto_0
    cmpl-float v2, v0, v1

    .line 123
    .line 124
    if-eqz v2, :cond_4

    .line 125
    .line 126
    iget-object v2, p0, Lcom/airbnb/lottie/animation/keyframe/p;->a:Landroid/graphics/Matrix;

    .line 127
    .line 128
    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 129
    .line 130
    .line 131
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->k:Lcom/airbnb/lottie/animation/keyframe/d;

    .line 132
    .line 133
    const/high16 v2, 0x3f800000    # 1.0f

    .line 134
    .line 135
    if-eqz v0, :cond_7

    .line 136
    .line 137
    iget-object v3, p0, Lcom/airbnb/lottie/animation/keyframe/p;->l:Lcom/airbnb/lottie/animation/keyframe/d;

    .line 138
    .line 139
    const/high16 v4, 0x42b40000    # 90.0f

    .line 140
    .line 141
    if-nez v3, :cond_5

    .line 142
    .line 143
    const/4 v3, 0x0

    .line 144
    goto :goto_2

    .line 145
    :cond_5
    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/d;->p()F

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    neg-float v3, v3

    .line 150
    add-float/2addr v3, v4

    .line 151
    float-to-double v5, v3

    .line 152
    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    .line 153
    .line 154
    .line 155
    move-result-wide v5

    .line 156
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    .line 157
    .line 158
    .line 159
    move-result-wide v5

    .line 160
    double-to-float v3, v5

    .line 161
    :goto_2
    iget-object v5, p0, Lcom/airbnb/lottie/animation/keyframe/p;->l:Lcom/airbnb/lottie/animation/keyframe/d;

    .line 162
    .line 163
    if-nez v5, :cond_6

    .line 164
    .line 165
    const/high16 v4, 0x3f800000    # 1.0f

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_6
    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/d;->p()F

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    neg-float v5, v5

    .line 173
    add-float/2addr v5, v4

    .line 174
    float-to-double v4, v5

    .line 175
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    .line 176
    .line 177
    .line 178
    move-result-wide v4

    .line 179
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    .line 180
    .line 181
    .line 182
    move-result-wide v4

    .line 183
    double-to-float v4, v4

    .line 184
    :goto_3
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/d;->p()F

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    float-to-double v5, v0

    .line 189
    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    .line 190
    .line 191
    .line 192
    move-result-wide v5

    .line 193
    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    .line 194
    .line 195
    .line 196
    move-result-wide v5

    .line 197
    double-to-float v0, v5

    .line 198
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/keyframe/p;->d()V

    .line 199
    .line 200
    .line 201
    iget-object v5, p0, Lcom/airbnb/lottie/animation/keyframe/p;->e:[F

    .line 202
    .line 203
    const/4 v6, 0x0

    .line 204
    aput v3, v5, v6

    .line 205
    .line 206
    const/4 v7, 0x1

    .line 207
    aput v4, v5, v7

    .line 208
    .line 209
    neg-float v8, v4

    .line 210
    const/4 v9, 0x3

    .line 211
    aput v8, v5, v9

    .line 212
    .line 213
    const/4 v10, 0x4

    .line 214
    aput v3, v5, v10

    .line 215
    .line 216
    const/16 v11, 0x8

    .line 217
    .line 218
    aput v2, v5, v11

    .line 219
    .line 220
    iget-object v12, p0, Lcom/airbnb/lottie/animation/keyframe/p;->b:Landroid/graphics/Matrix;

    .line 221
    .line 222
    invoke-virtual {v12, v5}, Landroid/graphics/Matrix;->setValues([F)V

    .line 223
    .line 224
    .line 225
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/keyframe/p;->d()V

    .line 226
    .line 227
    .line 228
    iget-object v5, p0, Lcom/airbnb/lottie/animation/keyframe/p;->e:[F

    .line 229
    .line 230
    aput v2, v5, v6

    .line 231
    .line 232
    aput v0, v5, v9

    .line 233
    .line 234
    aput v2, v5, v10

    .line 235
    .line 236
    aput v2, v5, v11

    .line 237
    .line 238
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->c:Landroid/graphics/Matrix;

    .line 239
    .line 240
    invoke-virtual {v0, v5}, Landroid/graphics/Matrix;->setValues([F)V

    .line 241
    .line 242
    .line 243
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/keyframe/p;->d()V

    .line 244
    .line 245
    .line 246
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->e:[F

    .line 247
    .line 248
    aput v3, v0, v6

    .line 249
    .line 250
    aput v8, v0, v7

    .line 251
    .line 252
    aput v4, v0, v9

    .line 253
    .line 254
    aput v3, v0, v10

    .line 255
    .line 256
    aput v2, v0, v11

    .line 257
    .line 258
    iget-object v3, p0, Lcom/airbnb/lottie/animation/keyframe/p;->d:Landroid/graphics/Matrix;

    .line 259
    .line 260
    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->setValues([F)V

    .line 261
    .line 262
    .line 263
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->c:Landroid/graphics/Matrix;

    .line 264
    .line 265
    iget-object v3, p0, Lcom/airbnb/lottie/animation/keyframe/p;->b:Landroid/graphics/Matrix;

    .line 266
    .line 267
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 268
    .line 269
    .line 270
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->d:Landroid/graphics/Matrix;

    .line 271
    .line 272
    iget-object v3, p0, Lcom/airbnb/lottie/animation/keyframe/p;->c:Landroid/graphics/Matrix;

    .line 273
    .line 274
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 275
    .line 276
    .line 277
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->a:Landroid/graphics/Matrix;

    .line 278
    .line 279
    iget-object v3, p0, Lcom/airbnb/lottie/animation/keyframe/p;->d:Landroid/graphics/Matrix;

    .line 280
    .line 281
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 282
    .line 283
    .line 284
    :cond_7
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->h:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 285
    .line 286
    if-eqz v0, :cond_9

    .line 287
    .line 288
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/a;->h()Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    check-cast v0, Lcom/airbnb/lottie/value/k;

    .line 293
    .line 294
    if-eqz v0, :cond_9

    .line 295
    .line 296
    invoke-virtual {v0}, Lcom/airbnb/lottie/value/k;->b()F

    .line 297
    .line 298
    .line 299
    move-result v3

    .line 300
    cmpl-float v3, v3, v2

    .line 301
    .line 302
    if-nez v3, :cond_8

    .line 303
    .line 304
    invoke-virtual {v0}, Lcom/airbnb/lottie/value/k;->c()F

    .line 305
    .line 306
    .line 307
    move-result v3

    .line 308
    cmpl-float v2, v3, v2

    .line 309
    .line 310
    if-eqz v2, :cond_9

    .line 311
    .line 312
    :cond_8
    iget-object v2, p0, Lcom/airbnb/lottie/animation/keyframe/p;->a:Landroid/graphics/Matrix;

    .line 313
    .line 314
    invoke-virtual {v0}, Lcom/airbnb/lottie/value/k;->b()F

    .line 315
    .line 316
    .line 317
    move-result v3

    .line 318
    invoke-virtual {v0}, Lcom/airbnb/lottie/value/k;->c()F

    .line 319
    .line 320
    .line 321
    move-result v0

    .line 322
    invoke-virtual {v2, v3, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 323
    .line 324
    .line 325
    :cond_9
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->f:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 326
    .line 327
    if-eqz v0, :cond_b

    .line 328
    .line 329
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/a;->h()Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    check-cast v0, Landroid/graphics/PointF;

    .line 334
    .line 335
    if-eqz v0, :cond_b

    .line 336
    .line 337
    iget v2, v0, Landroid/graphics/PointF;->x:F

    .line 338
    .line 339
    cmpl-float v3, v2, v1

    .line 340
    .line 341
    if-nez v3, :cond_a

    .line 342
    .line 343
    iget v3, v0, Landroid/graphics/PointF;->y:F

    .line 344
    .line 345
    cmpl-float v1, v3, v1

    .line 346
    .line 347
    if-eqz v1, :cond_b

    .line 348
    .line 349
    :cond_a
    iget-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/p;->a:Landroid/graphics/Matrix;

    .line 350
    .line 351
    neg-float v2, v2

    .line 352
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 353
    .line 354
    neg-float v0, v0

    .line 355
    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 356
    .line 357
    .line 358
    :cond_b
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->a:Landroid/graphics/Matrix;

    .line 359
    .line 360
    return-object v0
.end method

.method public g(F)Landroid/graphics/Matrix;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->g:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move-object v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/a;->h()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/graphics/PointF;

    .line 13
    .line 14
    :goto_0
    iget-object v2, p0, Lcom/airbnb/lottie/animation/keyframe/p;->h:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    move-object v2, v1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/a;->h()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/airbnb/lottie/value/k;

    .line 25
    .line 26
    :goto_1
    iget-object v3, p0, Lcom/airbnb/lottie/animation/keyframe/p;->a:Landroid/graphics/Matrix;

    .line 27
    .line 28
    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 29
    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-object v3, p0, Lcom/airbnb/lottie/animation/keyframe/p;->a:Landroid/graphics/Matrix;

    .line 34
    .line 35
    iget v4, v0, Landroid/graphics/PointF;->x:F

    .line 36
    .line 37
    mul-float v4, v4, p1

    .line 38
    .line 39
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 40
    .line 41
    mul-float v0, v0, p1

    .line 42
    .line 43
    invoke-virtual {v3, v4, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 44
    .line 45
    .line 46
    :cond_2
    if-eqz v2, :cond_3

    .line 47
    .line 48
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->a:Landroid/graphics/Matrix;

    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/airbnb/lottie/value/k;->b()F

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    float-to-double v3, v3

    .line 55
    float-to-double v5, p1

    .line 56
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 57
    .line 58
    .line 59
    move-result-wide v3

    .line 60
    double-to-float v3, v3

    .line 61
    invoke-virtual {v2}, Lcom/airbnb/lottie/value/k;->c()F

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    float-to-double v7, v2

    .line 66
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 67
    .line 68
    .line 69
    move-result-wide v4

    .line 70
    double-to-float v2, v4

    .line 71
    invoke-virtual {v0, v3, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 72
    .line 73
    .line 74
    :cond_3
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->i:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 75
    .line 76
    if-eqz v0, :cond_7

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/a;->h()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Ljava/lang/Float;

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    iget-object v2, p0, Lcom/airbnb/lottie/animation/keyframe/p;->f:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 89
    .line 90
    if-nez v2, :cond_4

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_4
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/a;->h()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    check-cast v1, Landroid/graphics/PointF;

    .line 98
    .line 99
    :goto_2
    iget-object v2, p0, Lcom/airbnb/lottie/animation/keyframe/p;->a:Landroid/graphics/Matrix;

    .line 100
    .line 101
    mul-float v0, v0, p1

    .line 102
    .line 103
    const/4 p1, 0x0

    .line 104
    if-nez v1, :cond_5

    .line 105
    .line 106
    const/4 v3, 0x0

    .line 107
    goto :goto_3

    .line 108
    :cond_5
    iget v3, v1, Landroid/graphics/PointF;->x:F

    .line 109
    .line 110
    :goto_3
    if-nez v1, :cond_6

    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_6
    iget p1, v1, Landroid/graphics/PointF;->y:F

    .line 114
    .line 115
    :goto_4
    invoke-virtual {v2, v0, v3, p1}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 116
    .line 117
    .line 118
    :cond_7
    iget-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/p;->a:Landroid/graphics/Matrix;

    .line 119
    .line 120
    return-object p1
.end method

.method public h()Lcom/airbnb/lottie/animation/keyframe/a;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/animation/keyframe/a<",
            "*",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->j:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Lcom/airbnb/lottie/animation/keyframe/a;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/animation/keyframe/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->m:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public j(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->j:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/a;->m(F)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->m:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/a;->m(F)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->n:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/a;->m(F)V

    .line 20
    .line 21
    .line 22
    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->f:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/a;->m(F)V

    .line 27
    .line 28
    .line 29
    :cond_3
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->g:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 30
    .line 31
    if-eqz v0, :cond_4

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/a;->m(F)V

    .line 34
    .line 35
    .line 36
    :cond_4
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->h:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 37
    .line 38
    if-eqz v0, :cond_5

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/a;->m(F)V

    .line 41
    .line 42
    .line 43
    :cond_5
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->i:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 44
    .line 45
    if-eqz v0, :cond_6

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/a;->m(F)V

    .line 48
    .line 49
    .line 50
    :cond_6
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->k:Lcom/airbnb/lottie/animation/keyframe/d;

    .line 51
    .line 52
    if-eqz v0, :cond_7

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/a;->m(F)V

    .line 55
    .line 56
    .line 57
    :cond_7
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->l:Lcom/airbnb/lottie/animation/keyframe/d;

    .line 58
    .line 59
    if-eqz v0, :cond_8

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/a;->m(F)V

    .line 62
    .line 63
    .line 64
    :cond_8
    return-void
.end method
