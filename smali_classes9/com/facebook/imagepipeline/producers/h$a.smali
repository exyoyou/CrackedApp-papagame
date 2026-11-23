.class Lcom/facebook/imagepipeline/producers/h$a;
.super Lcom/facebook/imagepipeline/producers/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/h;->g(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/cache/common/c;Z)Lcom/facebook/imagepipeline/producers/Consumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/o<",
        "Lcom/facebook/common/references/CloseableReference<",
        "Lcom/facebook/imagepipeline/image/c;",
        ">;",
        "Lcom/facebook/common/references/CloseableReference<",
        "Lcom/facebook/imagepipeline/image/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic i:Lcom/facebook/cache/common/c;

.field final synthetic j:Z

.field final synthetic k:Lcom/facebook/imagepipeline/producers/h;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/h;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/cache/common/c;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "consumer",
            "val$isBitmapCacheEnabledForWrite",
            "val$cacheKey"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/h$a;->k:Lcom/facebook/imagepipeline/producers/h;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/h$a;->i:Lcom/facebook/cache/common/c;

    .line 4
    .line 5
    iput-boolean p4, p0, Lcom/facebook/imagepipeline/producers/h$a;->j:Z

    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/o;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public bridge synthetic h(Ljava/lang/Object;I)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "newResult",
            "status"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/facebook/common/references/CloseableReference;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/h$a;->q(Lcom/facebook/common/references/CloseableReference;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public q(Lcom/facebook/common/references/CloseableReference;I)V
    .locals 6
    .param p1    # Lcom/facebook/common/references/CloseableReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "newResult",
            "status"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;I)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "BitmapMemoryCacheProducer#onNewResultImpl"

    .line 8
    .line 9
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/b;->d(I)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    if-nez p1, :cond_3

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/o;->p()Lcom/facebook/imagepipeline/producers/Consumer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {p1, v1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->b(Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 35
    .line 36
    .line 37
    :cond_2
    return-void

    .line 38
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->j()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Lcom/facebook/imagepipeline/image/c;

    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/image/c;->e()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_d

    .line 49
    .line 50
    const/16 v2, 0x8

    .line 51
    .line 52
    invoke-static {p2, v2}, Lcom/facebook/imagepipeline/producers/b;->m(II)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_4

    .line 57
    .line 58
    goto/16 :goto_2

    .line 59
    .line 60
    :cond_4
    if-nez v0, :cond_8

    .line 61
    .line 62
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/h$a;->k:Lcom/facebook/imagepipeline/producers/h;

    .line 63
    .line 64
    invoke-static {v2}, Lcom/facebook/imagepipeline/producers/h;->c(Lcom/facebook/imagepipeline/producers/h;)Lcom/facebook/imagepipeline/cache/t;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/h$a;->i:Lcom/facebook/cache/common/c;

    .line 69
    .line 70
    invoke-interface {v2, v3}, Lcom/facebook/imagepipeline/cache/t;->get(Ljava/lang/Object;)Lcom/facebook/common/references/CloseableReference;

    .line 71
    .line 72
    .line 73
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 74
    if-eqz v2, :cond_8

    .line 75
    .line 76
    :try_start_2
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->j()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    check-cast v3, Lcom/facebook/imagepipeline/image/c;

    .line 81
    .line 82
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/image/c;->b()Lcom/facebook/imagepipeline/image/j;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-virtual {v2}, Lcom/facebook/common/references/CloseableReference;->j()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    check-cast v4, Lcom/facebook/imagepipeline/image/c;

    .line 91
    .line 92
    invoke-virtual {v4}, Lcom/facebook/imagepipeline/image/c;->b()Lcom/facebook/imagepipeline/image/j;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-interface {v4}, Lcom/facebook/imagepipeline/image/j;->a()Z

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    if-nez v5, :cond_6

    .line 101
    .line 102
    invoke-interface {v4}, Lcom/facebook/imagepipeline/image/j;->c()I

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    invoke-interface {v3}, Lcom/facebook/imagepipeline/image/j;->c()I

    .line 107
    .line 108
    .line 109
    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    if-lt v4, v3, :cond_5

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_5
    :try_start_3
    invoke-static {v2}, Lcom/facebook/common/references/CloseableReference;->h(Lcom/facebook/common/references/CloseableReference;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_6
    :goto_0
    :try_start_4
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/o;->p()Lcom/facebook/imagepipeline/producers/Consumer;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-interface {p1, v2, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->b(Ljava/lang/Object;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 122
    .line 123
    .line 124
    :try_start_5
    invoke-static {v2}, Lcom/facebook/common/references/CloseableReference;->h(Lcom/facebook/common/references/CloseableReference;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 125
    .line 126
    .line 127
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    if-eqz p1, :cond_7

    .line 132
    .line 133
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 134
    .line 135
    .line 136
    :cond_7
    return-void

    .line 137
    :catchall_0
    move-exception p1

    .line 138
    :try_start_6
    invoke-static {v2}, Lcom/facebook/common/references/CloseableReference;->h(Lcom/facebook/common/references/CloseableReference;)V

    .line 139
    .line 140
    .line 141
    throw p1

    .line 142
    :cond_8
    :goto_1
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/producers/h$a;->j:Z

    .line 143
    .line 144
    if-eqz v2, :cond_9

    .line 145
    .line 146
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/h$a;->k:Lcom/facebook/imagepipeline/producers/h;

    .line 147
    .line 148
    invoke-static {v1}, Lcom/facebook/imagepipeline/producers/h;->c(Lcom/facebook/imagepipeline/producers/h;)Lcom/facebook/imagepipeline/cache/t;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/h$a;->i:Lcom/facebook/cache/common/c;

    .line 153
    .line 154
    invoke-interface {v1, v2, p1}, Lcom/facebook/imagepipeline/cache/t;->c(Ljava/lang/Object;Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;

    .line 155
    .line 156
    .line 157
    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 158
    :cond_9
    if-eqz v0, :cond_a

    .line 159
    .line 160
    :try_start_7
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/o;->p()Lcom/facebook/imagepipeline/producers/Consumer;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    const/high16 v2, 0x3f800000    # 1.0f

    .line 165
    .line 166
    invoke-interface {v0, v2}, Lcom/facebook/imagepipeline/producers/Consumer;->c(F)V

    .line 167
    .line 168
    .line 169
    :cond_a
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/o;->p()Lcom/facebook/imagepipeline/producers/Consumer;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    if-eqz v1, :cond_b

    .line 174
    .line 175
    move-object p1, v1

    .line 176
    :cond_b
    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->b(Ljava/lang/Object;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 177
    .line 178
    .line 179
    :try_start_8
    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->h(Lcom/facebook/common/references/CloseableReference;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 180
    .line 181
    .line 182
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    if-eqz p1, :cond_c

    .line 187
    .line 188
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 189
    .line 190
    .line 191
    :cond_c
    return-void

    .line 192
    :catchall_1
    move-exception p1

    .line 193
    :try_start_9
    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->h(Lcom/facebook/common/references/CloseableReference;)V

    .line 194
    .line 195
    .line 196
    throw p1

    .line 197
    :cond_d
    :goto_2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/o;->p()Lcom/facebook/imagepipeline/producers/Consumer;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->b(Ljava/lang/Object;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 202
    .line 203
    .line 204
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 205
    .line 206
    .line 207
    move-result p1

    .line 208
    if-eqz p1, :cond_e

    .line 209
    .line 210
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 211
    .line 212
    .line 213
    :cond_e
    return-void

    .line 214
    :catchall_2
    move-exception p1

    .line 215
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 216
    .line 217
    .line 218
    move-result p2

    .line 219
    if-eqz p2, :cond_f

    .line 220
    .line 221
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 222
    .line 223
    .line 224
    :cond_f
    throw p1
.end method
