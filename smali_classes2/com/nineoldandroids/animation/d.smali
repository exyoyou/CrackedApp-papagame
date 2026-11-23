.class public final Lcom/nineoldandroids/animation/d;
.super Lcom/nineoldandroids/animation/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nineoldandroids/animation/d$c;,
        Lcom/nineoldandroids/animation/d$f;,
        Lcom/nineoldandroids/animation/d$d;,
        Lcom/nineoldandroids/animation/d$b;,
        Lcom/nineoldandroids/animation/d$e;
    }
.end annotation


# instance fields
.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/nineoldandroids/animation/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/nineoldandroids/animation/a;",
            "Lcom/nineoldandroids/animation/d$f;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/nineoldandroids/animation/d$f;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/nineoldandroids/animation/d$f;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Lcom/nineoldandroids/animation/d$b;

.field i:Z

.field private j:Z

.field private k:J

.field private l:Lcom/nineoldandroids/animation/q;

.field private m:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/nineoldandroids/animation/a;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/nineoldandroids/animation/d;->c:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/nineoldandroids/animation/d;->d:Ljava/util/HashMap;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/nineoldandroids/animation/d;->e:Ljava/util/ArrayList;

    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/nineoldandroids/animation/d;->f:Ljava/util/ArrayList;

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/nineoldandroids/animation/d;->g:Z

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/nineoldandroids/animation/d;->h:Lcom/nineoldandroids/animation/d$b;

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    iput-boolean v1, p0, Lcom/nineoldandroids/animation/d;->i:Z

    .line 40
    .line 41
    iput-boolean v1, p0, Lcom/nineoldandroids/animation/d;->j:Z

    .line 42
    .line 43
    const-wide/16 v1, 0x0

    .line 44
    .line 45
    iput-wide v1, p0, Lcom/nineoldandroids/animation/d;->k:J

    .line 46
    .line 47
    iput-object v0, p0, Lcom/nineoldandroids/animation/d;->l:Lcom/nineoldandroids/animation/q;

    .line 48
    .line 49
    const-wide/16 v0, -0x1

    .line 50
    .line 51
    iput-wide v0, p0, Lcom/nineoldandroids/animation/d;->m:J

    .line 52
    .line 53
    return-void
.end method

.method private F()V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/nineoldandroids/animation/d;->g:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_8

    .line 5
    .line 6
    iget-object v0, p0, Lcom/nineoldandroids/animation/d;->f:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lcom/nineoldandroids/animation/d;->e:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x0

    .line 23
    :goto_0
    if-ge v3, v2, :cond_2

    .line 24
    .line 25
    iget-object v4, p0, Lcom/nineoldandroids/animation/d;->e:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    check-cast v4, Lcom/nineoldandroids/animation/d$f;

    .line 32
    .line 33
    iget-object v5, v4, Lcom/nineoldandroids/animation/d$f;->c:Ljava/util/ArrayList;

    .line 34
    .line 35
    if-eqz v5, :cond_0

    .line 36
    .line 37
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-nez v5, :cond_1

    .line 42
    .line 43
    :cond_0
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-lez v3, :cond_6

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    const/4 v4, 0x0

    .line 65
    :goto_2
    if-ge v4, v3, :cond_5

    .line 66
    .line 67
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    check-cast v5, Lcom/nineoldandroids/animation/d$f;

    .line 72
    .line 73
    iget-object v6, p0, Lcom/nineoldandroids/animation/d;->f:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    iget-object v6, v5, Lcom/nineoldandroids/animation/d$f;->f:Ljava/util/ArrayList;

    .line 79
    .line 80
    if-eqz v6, :cond_4

    .line 81
    .line 82
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    const/4 v7, 0x0

    .line 87
    :goto_3
    if-ge v7, v6, :cond_4

    .line 88
    .line 89
    iget-object v8, v5, Lcom/nineoldandroids/animation/d$f;->f:Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    check-cast v8, Lcom/nineoldandroids/animation/d$f;

    .line 96
    .line 97
    iget-object v9, v8, Lcom/nineoldandroids/animation/d$f;->e:Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    iget-object v9, v8, Lcom/nineoldandroids/animation/d$f;->e:Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 105
    .line 106
    .line 107
    move-result v9

    .line 108
    if-nez v9, :cond_3

    .line 109
    .line 110
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_6
    iput-boolean v1, p0, Lcom/nineoldandroids/animation/d;->g:Z

    .line 130
    .line 131
    iget-object v0, p0, Lcom/nineoldandroids/animation/d;->f:Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    iget-object v1, p0, Lcom/nineoldandroids/animation/d;->e:Ljava/util/ArrayList;

    .line 138
    .line 139
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-ne v0, v1, :cond_7

    .line 144
    .line 145
    goto :goto_6

    .line 146
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 147
    .line 148
    const-string v1, "Circular dependencies cannot exist in AnimatorSet"

    .line 149
    .line 150
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw v0

    .line 154
    :cond_8
    iget-object v0, p0, Lcom/nineoldandroids/animation/d;->e:Ljava/util/ArrayList;

    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    const/4 v2, 0x0

    .line 161
    :goto_4
    if-ge v2, v0, :cond_c

    .line 162
    .line 163
    iget-object v3, p0, Lcom/nineoldandroids/animation/d;->e:Ljava/util/ArrayList;

    .line 164
    .line 165
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    check-cast v3, Lcom/nineoldandroids/animation/d$f;

    .line 170
    .line 171
    iget-object v4, v3, Lcom/nineoldandroids/animation/d$f;->c:Ljava/util/ArrayList;

    .line 172
    .line 173
    if-eqz v4, :cond_b

    .line 174
    .line 175
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    if-lez v4, :cond_b

    .line 180
    .line 181
    iget-object v4, v3, Lcom/nineoldandroids/animation/d$f;->c:Ljava/util/ArrayList;

    .line 182
    .line 183
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 184
    .line 185
    .line 186
    move-result v4

    .line 187
    const/4 v5, 0x0

    .line 188
    :goto_5
    if-ge v5, v4, :cond_b

    .line 189
    .line 190
    iget-object v6, v3, Lcom/nineoldandroids/animation/d$f;->c:Ljava/util/ArrayList;

    .line 191
    .line 192
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    check-cast v6, Lcom/nineoldandroids/animation/d$d;

    .line 197
    .line 198
    iget-object v7, v3, Lcom/nineoldandroids/animation/d$f;->e:Ljava/util/ArrayList;

    .line 199
    .line 200
    if-nez v7, :cond_9

    .line 201
    .line 202
    new-instance v7, Ljava/util/ArrayList;

    .line 203
    .line 204
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .line 206
    .line 207
    iput-object v7, v3, Lcom/nineoldandroids/animation/d$f;->e:Ljava/util/ArrayList;

    .line 208
    .line 209
    :cond_9
    iget-object v7, v3, Lcom/nineoldandroids/animation/d$f;->e:Ljava/util/ArrayList;

    .line 210
    .line 211
    iget-object v8, v6, Lcom/nineoldandroids/animation/d$d;->a:Lcom/nineoldandroids/animation/d$f;

    .line 212
    .line 213
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v7

    .line 217
    if-nez v7, :cond_a

    .line 218
    .line 219
    iget-object v7, v3, Lcom/nineoldandroids/animation/d$f;->e:Ljava/util/ArrayList;

    .line 220
    .line 221
    iget-object v6, v6, Lcom/nineoldandroids/animation/d$d;->a:Lcom/nineoldandroids/animation/d$f;

    .line 222
    .line 223
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    :cond_a
    add-int/lit8 v5, v5, 0x1

    .line 227
    .line 228
    goto :goto_5

    .line 229
    :cond_b
    iput-boolean v1, v3, Lcom/nineoldandroids/animation/d$f;->g:Z

    .line 230
    .line 231
    add-int/lit8 v2, v2, 0x1

    .line 232
    .line 233
    goto :goto_4

    .line 234
    :cond_c
    :goto_6
    return-void
.end method

.method static synthetic s(Lcom/nineoldandroids/animation/d;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nineoldandroids/animation/d;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic t(Lcom/nineoldandroids/animation/d;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nineoldandroids/animation/d;->d:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic u(Lcom/nineoldandroids/animation/d;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nineoldandroids/animation/d;->f:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic v(Lcom/nineoldandroids/animation/d;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/nineoldandroids/animation/d;->j:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic w(Lcom/nineoldandroids/animation/d;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nineoldandroids/animation/d;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public A(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nineoldandroids/animation/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/nineoldandroids/animation/d;->g:Z

    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-ne v1, v0, :cond_0

    .line 18
    .line 19
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lcom/nineoldandroids/animation/a;

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/nineoldandroids/animation/d;->z(Lcom/nineoldandroids/animation/a;)Lcom/nineoldandroids/animation/d$c;

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    sub-int/2addr v1, v0

    .line 34
    if-ge v2, v1, :cond_1

    .line 35
    .line 36
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lcom/nineoldandroids/animation/a;

    .line 41
    .line 42
    invoke-virtual {p0, v1}, Lcom/nineoldandroids/animation/d;->z(Lcom/nineoldandroids/animation/a;)Lcom/nineoldandroids/animation/d$c;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Lcom/nineoldandroids/animation/a;

    .line 53
    .line 54
    invoke-virtual {v1, v3}, Lcom/nineoldandroids/animation/d$c;->c(Lcom/nineoldandroids/animation/a;)Lcom/nineoldandroids/animation/d$c;

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    :goto_1
    return-void
.end method

.method public varargs B([Lcom/nineoldandroids/animation/a;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/nineoldandroids/animation/d;->g:Z

    .line 5
    .line 6
    array-length v1, p1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-ne v1, v0, :cond_0

    .line 9
    .line 10
    aget-object p1, p1, v2

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/nineoldandroids/animation/d;->z(Lcom/nineoldandroids/animation/a;)Lcom/nineoldandroids/animation/d$c;

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    array-length v1, p1

    .line 17
    sub-int/2addr v1, v0

    .line 18
    if-ge v2, v1, :cond_1

    .line 19
    .line 20
    aget-object v1, p1, v2

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Lcom/nineoldandroids/animation/d;->z(Lcom/nineoldandroids/animation/a;)Lcom/nineoldandroids/animation/d$c;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    aget-object v3, p1, v2

    .line 29
    .line 30
    invoke-virtual {v1, v3}, Lcom/nineoldandroids/animation/d$c;->c(Lcom/nineoldandroids/animation/a;)Lcom/nineoldandroids/animation/d$c;

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    :goto_1
    return-void
.end method

.method public C(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/nineoldandroids/animation/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/nineoldandroids/animation/d;->g:Z

    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/4 v0, 0x0

    .line 17
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/nineoldandroids/animation/a;

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0, v1}, Lcom/nineoldandroids/animation/d;->z(Lcom/nineoldandroids/animation/a;)Lcom/nineoldandroids/animation/d$c;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/d$c;->d(Lcom/nineoldandroids/animation/a;)Lcom/nineoldandroids/animation/d$c;

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    return-void
.end method

.method public varargs D([Lcom/nineoldandroids/animation/a;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/nineoldandroids/animation/d;->g:Z

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    aget-object v1, p1, v1

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Lcom/nineoldandroids/animation/d;->z(Lcom/nineoldandroids/animation/a;)Lcom/nineoldandroids/animation/d$c;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    :goto_0
    array-length v2, p1

    .line 14
    if-ge v0, v2, :cond_0

    .line 15
    .line 16
    aget-object v2, p1, v0

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Lcom/nineoldandroids/animation/d$c;->d(Lcom/nineoldandroids/animation/a;)Lcom/nineoldandroids/animation/d$c;

    .line 19
    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method public E(J)Lcom/nineoldandroids/animation/d;
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-ltz v2, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/nineoldandroids/animation/d;->e:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/nineoldandroids/animation/d$f;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/nineoldandroids/animation/d$f;->b:Lcom/nineoldandroids/animation/a;

    .line 26
    .line 27
    invoke-virtual {v1, p1, p2}, Lcom/nineoldandroids/animation/a;->l(J)Lcom/nineoldandroids/animation/a;

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iput-wide p1, p0, Lcom/nineoldandroids/animation/d;->m:J

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 35
    .line 36
    const-string p2, "duration must be a value of zero or greater"

    .line 37
    .line 38
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1
.end method

.method public bridge synthetic b()Lcom/nineoldandroids/animation/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/d;->x()Lcom/nineoldandroids/animation/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public cancel()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/nineoldandroids/animation/d;->i:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/d;->i()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_5

    .line 9
    .line 10
    iget-object v0, p0, Lcom/nineoldandroids/animation/a;->b:Ljava/util/ArrayList;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lcom/nineoldandroids/animation/a$a;

    .line 35
    .line 36
    invoke-interface {v2, p0}, Lcom/nineoldandroids/animation/a$a;->onAnimationCancel(Lcom/nineoldandroids/animation/a;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 41
    :cond_1
    iget-object v1, p0, Lcom/nineoldandroids/animation/d;->l:Lcom/nineoldandroids/animation/q;

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/nineoldandroids/animation/q;->h()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    iget-object v1, p0, Lcom/nineoldandroids/animation/d;->l:Lcom/nineoldandroids/animation/q;

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/nineoldandroids/animation/q;->cancel()V

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    iget-object v1, p0, Lcom/nineoldandroids/animation/d;->f:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-lez v1, :cond_3

    .line 64
    .line 65
    iget-object v1, p0, Lcom/nineoldandroids/animation/d;->f:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_3

    .line 76
    .line 77
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    check-cast v2, Lcom/nineoldandroids/animation/d$f;

    .line 82
    .line 83
    iget-object v2, v2, Lcom/nineoldandroids/animation/d$f;->b:Lcom/nineoldandroids/animation/a;

    .line 84
    .line 85
    invoke-virtual {v2}, Lcom/nineoldandroids/animation/a;->cancel()V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_4

    .line 100
    .line 101
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    check-cast v1, Lcom/nineoldandroids/animation/a$a;

    .line 106
    .line 107
    invoke-interface {v1, p0}, Lcom/nineoldandroids/animation/a$a;->onAnimationEnd(Lcom/nineoldandroids/animation/a;)V

    .line 108
    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_4
    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lcom/nineoldandroids/animation/d;->j:Z

    .line 113
    .line 114
    :cond_5
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/d;->x()Lcom/nineoldandroids/animation/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public d()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/nineoldandroids/animation/d;->i:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/d;->i()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_5

    .line 9
    .line 10
    iget-object v0, p0, Lcom/nineoldandroids/animation/d;->f:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v1, p0, Lcom/nineoldandroids/animation/d;->e:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eq v0, v1, :cond_1

    .line 23
    .line 24
    invoke-direct {p0}, Lcom/nineoldandroids/animation/d;->F()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/nineoldandroids/animation/d;->f:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lcom/nineoldandroids/animation/d$f;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/nineoldandroids/animation/d;->h:Lcom/nineoldandroids/animation/d$b;

    .line 46
    .line 47
    if-nez v2, :cond_0

    .line 48
    .line 49
    new-instance v2, Lcom/nineoldandroids/animation/d$b;

    .line 50
    .line 51
    invoke-direct {v2, p0, p0}, Lcom/nineoldandroids/animation/d$b;-><init>(Lcom/nineoldandroids/animation/d;Lcom/nineoldandroids/animation/d;)V

    .line 52
    .line 53
    .line 54
    iput-object v2, p0, Lcom/nineoldandroids/animation/d;->h:Lcom/nineoldandroids/animation/d$b;

    .line 55
    .line 56
    :cond_0
    iget-object v1, v1, Lcom/nineoldandroids/animation/d$f;->b:Lcom/nineoldandroids/animation/a;

    .line 57
    .line 58
    iget-object v2, p0, Lcom/nineoldandroids/animation/d;->h:Lcom/nineoldandroids/animation/d$b;

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Lcom/nineoldandroids/animation/a;->a(Lcom/nineoldandroids/animation/a$a;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/nineoldandroids/animation/d;->l:Lcom/nineoldandroids/animation/q;

    .line 65
    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/q;->cancel()V

    .line 69
    .line 70
    .line 71
    :cond_2
    iget-object v0, p0, Lcom/nineoldandroids/animation/d;->f:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-lez v0, :cond_3

    .line 78
    .line 79
    iget-object v0, p0, Lcom/nineoldandroids/animation/d;->f:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_3

    .line 90
    .line 91
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    check-cast v1, Lcom/nineoldandroids/animation/d$f;

    .line 96
    .line 97
    iget-object v1, v1, Lcom/nineoldandroids/animation/d$f;->b:Lcom/nineoldandroids/animation/a;

    .line 98
    .line 99
    invoke-virtual {v1}, Lcom/nineoldandroids/animation/a;->d()V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_3
    iget-object v0, p0, Lcom/nineoldandroids/animation/a;->b:Ljava/util/ArrayList;

    .line 104
    .line 105
    if-eqz v0, :cond_4

    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-eqz v1, :cond_4

    .line 122
    .line 123
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    check-cast v1, Lcom/nineoldandroids/animation/a$a;

    .line 128
    .line 129
    invoke-interface {v1, p0}, Lcom/nineoldandroids/animation/a$a;->onAnimationEnd(Lcom/nineoldandroids/animation/a;)V

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_4
    const/4 v0, 0x0

    .line 134
    iput-boolean v0, p0, Lcom/nineoldandroids/animation/d;->j:Z

    .line 135
    .line 136
    :cond_5
    return-void
.end method

.method public e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/nineoldandroids/animation/d;->m:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/nineoldandroids/animation/d;->k:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public h()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/animation/d;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/nineoldandroids/animation/d$f;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/nineoldandroids/animation/d$f;->b:Lcom/nineoldandroids/animation/a;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/nineoldandroids/animation/a;->h()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    return v0

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    return v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/nineoldandroids/animation/d;->j:Z

    .line 2
    .line 3
    return v0
.end method

.method public bridge synthetic l(J)Lcom/nineoldandroids/animation/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/nineoldandroids/animation/d;->E(J)Lcom/nineoldandroids/animation/d;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public m(Landroid/view/animation/Interpolator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/animation/d;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/nineoldandroids/animation/d$f;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/nineoldandroids/animation/d$f;->b:Lcom/nineoldandroids/animation/a;

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Lcom/nineoldandroids/animation/a;->m(Landroid/view/animation/Interpolator;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public n(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/nineoldandroids/animation/d;->k:J

    .line 2
    .line 3
    return-void
.end method

.method public o(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/animation/d;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/nineoldandroids/animation/d$f;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/nineoldandroids/animation/d$f;->b:Lcom/nineoldandroids/animation/a;

    .line 20
    .line 21
    instance-of v2, v1, Lcom/nineoldandroids/animation/d;

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    check-cast v1, Lcom/nineoldandroids/animation/d;

    .line 26
    .line 27
    invoke-virtual {v1, p1}, Lcom/nineoldandroids/animation/d;->o(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    instance-of v2, v1, Lcom/nineoldandroids/animation/l;

    .line 32
    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    check-cast v1, Lcom/nineoldandroids/animation/l;

    .line 36
    .line 37
    invoke-virtual {v1, p1}, Lcom/nineoldandroids/animation/l;->o(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    return-void
.end method

.method public p()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/animation/d;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/nineoldandroids/animation/d$f;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/nineoldandroids/animation/d$f;->b:Lcom/nineoldandroids/animation/a;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/nineoldandroids/animation/a;->p()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/animation/d;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/nineoldandroids/animation/d$f;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/nineoldandroids/animation/d$f;->b:Lcom/nineoldandroids/animation/a;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/nineoldandroids/animation/a;->q()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public r()V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/nineoldandroids/animation/d;->i:Z

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/nineoldandroids/animation/d;->j:Z

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/nineoldandroids/animation/d;->F()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/nineoldandroids/animation/d;->f:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    if-ge v2, v1, :cond_3

    .line 18
    .line 19
    iget-object v3, p0, Lcom/nineoldandroids/animation/d;->f:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lcom/nineoldandroids/animation/d$f;

    .line 26
    .line 27
    iget-object v4, v3, Lcom/nineoldandroids/animation/d$f;->b:Lcom/nineoldandroids/animation/a;

    .line 28
    .line 29
    invoke-virtual {v4}, Lcom/nineoldandroids/animation/a;->f()Ljava/util/ArrayList;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    if-eqz v4, :cond_2

    .line 34
    .line 35
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-lez v5, :cond_2

    .line 40
    .line 41
    new-instance v5, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-eqz v5, :cond_2

    .line 55
    .line 56
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    check-cast v5, Lcom/nineoldandroids/animation/a$a;

    .line 61
    .line 62
    instance-of v6, v5, Lcom/nineoldandroids/animation/d$e;

    .line 63
    .line 64
    if-nez v6, :cond_1

    .line 65
    .line 66
    instance-of v6, v5, Lcom/nineoldandroids/animation/d$b;

    .line 67
    .line 68
    if-eqz v6, :cond_0

    .line 69
    .line 70
    :cond_1
    iget-object v6, v3, Lcom/nineoldandroids/animation/d$f;->b:Lcom/nineoldandroids/animation/a;

    .line 71
    .line 72
    invoke-virtual {v6, v5}, Lcom/nineoldandroids/animation/a;->k(Lcom/nineoldandroids/animation/a$a;)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .line 83
    .line 84
    const/4 v3, 0x0

    .line 85
    :goto_2
    if-ge v3, v1, :cond_8

    .line 86
    .line 87
    iget-object v4, p0, Lcom/nineoldandroids/animation/d;->f:Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    check-cast v4, Lcom/nineoldandroids/animation/d$f;

    .line 94
    .line 95
    iget-object v5, p0, Lcom/nineoldandroids/animation/d;->h:Lcom/nineoldandroids/animation/d$b;

    .line 96
    .line 97
    if-nez v5, :cond_4

    .line 98
    .line 99
    new-instance v5, Lcom/nineoldandroids/animation/d$b;

    .line 100
    .line 101
    invoke-direct {v5, p0, p0}, Lcom/nineoldandroids/animation/d$b;-><init>(Lcom/nineoldandroids/animation/d;Lcom/nineoldandroids/animation/d;)V

    .line 102
    .line 103
    .line 104
    iput-object v5, p0, Lcom/nineoldandroids/animation/d;->h:Lcom/nineoldandroids/animation/d$b;

    .line 105
    .line 106
    :cond_4
    iget-object v5, v4, Lcom/nineoldandroids/animation/d$f;->c:Ljava/util/ArrayList;

    .line 107
    .line 108
    if-eqz v5, :cond_7

    .line 109
    .line 110
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    if-nez v5, :cond_5

    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_5
    iget-object v5, v4, Lcom/nineoldandroids/animation/d$f;->c:Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    const/4 v6, 0x0

    .line 124
    :goto_3
    if-ge v6, v5, :cond_6

    .line 125
    .line 126
    iget-object v7, v4, Lcom/nineoldandroids/animation/d$f;->c:Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    check-cast v7, Lcom/nineoldandroids/animation/d$d;

    .line 133
    .line 134
    iget-object v8, v7, Lcom/nineoldandroids/animation/d$d;->a:Lcom/nineoldandroids/animation/d$f;

    .line 135
    .line 136
    iget-object v8, v8, Lcom/nineoldandroids/animation/d$f;->b:Lcom/nineoldandroids/animation/a;

    .line 137
    .line 138
    new-instance v9, Lcom/nineoldandroids/animation/d$e;

    .line 139
    .line 140
    iget v7, v7, Lcom/nineoldandroids/animation/d$d;->b:I

    .line 141
    .line 142
    invoke-direct {v9, p0, v4, v7}, Lcom/nineoldandroids/animation/d$e;-><init>(Lcom/nineoldandroids/animation/d;Lcom/nineoldandroids/animation/d$f;I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v8, v9}, Lcom/nineoldandroids/animation/a;->a(Lcom/nineoldandroids/animation/a$a;)V

    .line 146
    .line 147
    .line 148
    add-int/lit8 v6, v6, 0x1

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_6
    iget-object v5, v4, Lcom/nineoldandroids/animation/d$f;->c:Ljava/util/ArrayList;

    .line 152
    .line 153
    invoke-virtual {v5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    check-cast v5, Ljava/util/ArrayList;

    .line 158
    .line 159
    iput-object v5, v4, Lcom/nineoldandroids/animation/d$f;->d:Ljava/util/ArrayList;

    .line 160
    .line 161
    goto :goto_5

    .line 162
    :cond_7
    :goto_4
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    :goto_5
    iget-object v4, v4, Lcom/nineoldandroids/animation/d$f;->b:Lcom/nineoldandroids/animation/a;

    .line 166
    .line 167
    iget-object v5, p0, Lcom/nineoldandroids/animation/d;->h:Lcom/nineoldandroids/animation/d$b;

    .line 168
    .line 169
    invoke-virtual {v4, v5}, Lcom/nineoldandroids/animation/a;->a(Lcom/nineoldandroids/animation/a$a;)V

    .line 170
    .line 171
    .line 172
    add-int/lit8 v3, v3, 0x1

    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_8
    iget-wide v3, p0, Lcom/nineoldandroids/animation/d;->k:J

    .line 176
    .line 177
    const-wide/16 v5, 0x0

    .line 178
    .line 179
    cmp-long v1, v3, v5

    .line 180
    .line 181
    if-gtz v1, :cond_9

    .line 182
    .line 183
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    if-eqz v2, :cond_a

    .line 192
    .line 193
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    check-cast v2, Lcom/nineoldandroids/animation/d$f;

    .line 198
    .line 199
    iget-object v3, v2, Lcom/nineoldandroids/animation/d$f;->b:Lcom/nineoldandroids/animation/a;

    .line 200
    .line 201
    invoke-virtual {v3}, Lcom/nineoldandroids/animation/a;->r()V

    .line 202
    .line 203
    .line 204
    iget-object v3, p0, Lcom/nineoldandroids/animation/d;->c:Ljava/util/ArrayList;

    .line 205
    .line 206
    iget-object v2, v2, Lcom/nineoldandroids/animation/d$f;->b:Lcom/nineoldandroids/animation/a;

    .line 207
    .line 208
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    goto :goto_6

    .line 212
    :cond_9
    const/4 v1, 0x2

    .line 213
    new-array v1, v1, [F

    .line 214
    .line 215
    fill-array-data v1, :array_0

    .line 216
    .line 217
    .line 218
    invoke-static {v1}, Lcom/nineoldandroids/animation/q;->V([F)Lcom/nineoldandroids/animation/q;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    iput-object v1, p0, Lcom/nineoldandroids/animation/d;->l:Lcom/nineoldandroids/animation/q;

    .line 223
    .line 224
    iget-wide v3, p0, Lcom/nineoldandroids/animation/d;->k:J

    .line 225
    .line 226
    invoke-virtual {v1, v3, v4}, Lcom/nineoldandroids/animation/q;->d0(J)Lcom/nineoldandroids/animation/q;

    .line 227
    .line 228
    .line 229
    iget-object v1, p0, Lcom/nineoldandroids/animation/d;->l:Lcom/nineoldandroids/animation/q;

    .line 230
    .line 231
    new-instance v3, Lcom/nineoldandroids/animation/d$a;

    .line 232
    .line 233
    invoke-direct {v3, p0, v2}, Lcom/nineoldandroids/animation/d$a;-><init>(Lcom/nineoldandroids/animation/d;Ljava/util/ArrayList;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v1, v3}, Lcom/nineoldandroids/animation/a;->a(Lcom/nineoldandroids/animation/a$a;)V

    .line 237
    .line 238
    .line 239
    iget-object v1, p0, Lcom/nineoldandroids/animation/d;->l:Lcom/nineoldandroids/animation/q;

    .line 240
    .line 241
    invoke-virtual {v1}, Lcom/nineoldandroids/animation/q;->r()V

    .line 242
    .line 243
    .line 244
    :cond_a
    iget-object v1, p0, Lcom/nineoldandroids/animation/a;->b:Ljava/util/ArrayList;

    .line 245
    .line 246
    if-eqz v1, :cond_b

    .line 247
    .line 248
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    check-cast v1, Ljava/util/ArrayList;

    .line 253
    .line 254
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    const/4 v3, 0x0

    .line 259
    :goto_7
    if-ge v3, v2, :cond_b

    .line 260
    .line 261
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v4

    .line 265
    check-cast v4, Lcom/nineoldandroids/animation/a$a;

    .line 266
    .line 267
    invoke-interface {v4, p0}, Lcom/nineoldandroids/animation/a$a;->onAnimationStart(Lcom/nineoldandroids/animation/a;)V

    .line 268
    .line 269
    .line 270
    add-int/lit8 v3, v3, 0x1

    .line 271
    .line 272
    goto :goto_7

    .line 273
    :cond_b
    iget-object v1, p0, Lcom/nineoldandroids/animation/d;->e:Ljava/util/ArrayList;

    .line 274
    .line 275
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    if-nez v1, :cond_c

    .line 280
    .line 281
    iget-wide v1, p0, Lcom/nineoldandroids/animation/d;->k:J

    .line 282
    .line 283
    cmp-long v3, v1, v5

    .line 284
    .line 285
    if-nez v3, :cond_c

    .line 286
    .line 287
    iput-boolean v0, p0, Lcom/nineoldandroids/animation/d;->j:Z

    .line 288
    .line 289
    iget-object v1, p0, Lcom/nineoldandroids/animation/a;->b:Ljava/util/ArrayList;

    .line 290
    .line 291
    if-eqz v1, :cond_c

    .line 292
    .line 293
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    check-cast v1, Ljava/util/ArrayList;

    .line 298
    .line 299
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 300
    .line 301
    .line 302
    move-result v2

    .line 303
    :goto_8
    if-ge v0, v2, :cond_c

    .line 304
    .line 305
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v3

    .line 309
    check-cast v3, Lcom/nineoldandroids/animation/a$a;

    .line 310
    .line 311
    invoke-interface {v3, p0}, Lcom/nineoldandroids/animation/a$a;->onAnimationEnd(Lcom/nineoldandroids/animation/a;)V

    .line 312
    .line 313
    .line 314
    add-int/lit8 v0, v0, 0x1

    .line 315
    .line 316
    goto :goto_8

    .line 317
    :cond_c
    return-void

    .line 318
    nop

    .line 319
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public x()Lcom/nineoldandroids/animation/d;
    .locals 8

    .line 1
    invoke-super {p0}, Lcom/nineoldandroids/animation/a;->b()Lcom/nineoldandroids/animation/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/nineoldandroids/animation/d;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, v0, Lcom/nineoldandroids/animation/d;->g:Z

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, v0, Lcom/nineoldandroids/animation/d;->i:Z

    .line 12
    .line 13
    iput-boolean v1, v0, Lcom/nineoldandroids/animation/d;->j:Z

    .line 14
    .line 15
    new-instance v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v1, v0, Lcom/nineoldandroids/animation/d;->c:Ljava/util/ArrayList;

    .line 21
    .line 22
    new-instance v1, Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v1, v0, Lcom/nineoldandroids/animation/d;->d:Ljava/util/HashMap;

    .line 28
    .line 29
    new-instance v1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v1, v0, Lcom/nineoldandroids/animation/d;->e:Ljava/util/ArrayList;

    .line 35
    .line 36
    new-instance v1, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v1, v0, Lcom/nineoldandroids/animation/d;->f:Ljava/util/ArrayList;

    .line 42
    .line 43
    new-instance v1, Ljava/util/HashMap;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Lcom/nineoldandroids/animation/d;->e:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_4

    .line 59
    .line 60
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    check-cast v3, Lcom/nineoldandroids/animation/d$f;

    .line 65
    .line 66
    invoke-virtual {v3}, Lcom/nineoldandroids/animation/d$f;->b()Lcom/nineoldandroids/animation/d$f;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    iget-object v3, v0, Lcom/nineoldandroids/animation/d;->e:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    iget-object v3, v0, Lcom/nineoldandroids/animation/d;->d:Ljava/util/HashMap;

    .line 79
    .line 80
    iget-object v5, v4, Lcom/nineoldandroids/animation/d$f;->b:Lcom/nineoldandroids/animation/a;

    .line 81
    .line 82
    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    const/4 v3, 0x0

    .line 86
    iput-object v3, v4, Lcom/nineoldandroids/animation/d$f;->c:Ljava/util/ArrayList;

    .line 87
    .line 88
    iput-object v3, v4, Lcom/nineoldandroids/animation/d$f;->d:Ljava/util/ArrayList;

    .line 89
    .line 90
    iput-object v3, v4, Lcom/nineoldandroids/animation/d$f;->f:Ljava/util/ArrayList;

    .line 91
    .line 92
    iput-object v3, v4, Lcom/nineoldandroids/animation/d$f;->e:Ljava/util/ArrayList;

    .line 93
    .line 94
    iget-object v4, v4, Lcom/nineoldandroids/animation/d$f;->b:Lcom/nineoldandroids/animation/a;

    .line 95
    .line 96
    invoke-virtual {v4}, Lcom/nineoldandroids/animation/a;->f()Ljava/util/ArrayList;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    if-eqz v4, :cond_0

    .line 101
    .line 102
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    if-eqz v6, :cond_3

    .line 111
    .line 112
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    check-cast v6, Lcom/nineoldandroids/animation/a$a;

    .line 117
    .line 118
    instance-of v7, v6, Lcom/nineoldandroids/animation/d$b;

    .line 119
    .line 120
    if-eqz v7, :cond_1

    .line 121
    .line 122
    if-nez v3, :cond_2

    .line 123
    .line 124
    new-instance v3, Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .line 128
    .line 129
    :cond_2
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_3
    if-eqz v3, :cond_0

    .line 134
    .line 135
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    if-eqz v5, :cond_0

    .line 144
    .line 145
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    check-cast v5, Lcom/nineoldandroids/animation/a$a;

    .line 150
    .line 151
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_4
    iget-object v2, p0, Lcom/nineoldandroids/animation/d;->e:Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    if-eqz v3, :cond_6

    .line 166
    .line 167
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    check-cast v3, Lcom/nineoldandroids/animation/d$f;

    .line 172
    .line 173
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    check-cast v4, Lcom/nineoldandroids/animation/d$f;

    .line 178
    .line 179
    iget-object v3, v3, Lcom/nineoldandroids/animation/d$f;->c:Ljava/util/ArrayList;

    .line 180
    .line 181
    if-eqz v3, :cond_5

    .line 182
    .line 183
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 188
    .line 189
    .line 190
    move-result v5

    .line 191
    if-eqz v5, :cond_5

    .line 192
    .line 193
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    check-cast v5, Lcom/nineoldandroids/animation/d$d;

    .line 198
    .line 199
    iget-object v6, v5, Lcom/nineoldandroids/animation/d$d;->a:Lcom/nineoldandroids/animation/d$f;

    .line 200
    .line 201
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v6

    .line 205
    check-cast v6, Lcom/nineoldandroids/animation/d$f;

    .line 206
    .line 207
    new-instance v7, Lcom/nineoldandroids/animation/d$d;

    .line 208
    .line 209
    iget v5, v5, Lcom/nineoldandroids/animation/d$d;->b:I

    .line 210
    .line 211
    invoke-direct {v7, v6, v5}, Lcom/nineoldandroids/animation/d$d;-><init>(Lcom/nineoldandroids/animation/d$f;I)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v4, v7}, Lcom/nineoldandroids/animation/d$f;->a(Lcom/nineoldandroids/animation/d$d;)V

    .line 215
    .line 216
    .line 217
    goto :goto_2

    .line 218
    :cond_6
    return-object v0
.end method

.method public y()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/nineoldandroids/animation/a;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/nineoldandroids/animation/d;->e:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/nineoldandroids/animation/d$f;

    .line 23
    .line 24
    iget-object v2, v2, Lcom/nineoldandroids/animation/d$f;->b:Lcom/nineoldandroids/animation/a;

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-object v0
.end method

.method public z(Lcom/nineoldandroids/animation/a;)Lcom/nineoldandroids/animation/d$c;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/nineoldandroids/animation/d;->g:Z

    .line 5
    .line 6
    new-instance v0, Lcom/nineoldandroids/animation/d$c;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/animation/d$c;-><init>(Lcom/nineoldandroids/animation/d;Lcom/nineoldandroids/animation/a;)V

    .line 9
    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return-object p1
.end method
