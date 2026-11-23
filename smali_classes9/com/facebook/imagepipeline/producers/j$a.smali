.class Lcom/facebook/imagepipeline/producers/j$a;
.super Lcom/facebook/imagepipeline/producers/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
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
.field private final i:Lcom/facebook/imagepipeline/producers/ProducerContext;

.field private final j:Lcom/facebook/imagepipeline/cache/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/t<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/facebook/imagepipeline/cache/e;

.field private final l:Lcom/facebook/imagepipeline/cache/e;

.field private final m:Lcom/facebook/imagepipeline/cache/f;

.field private final n:Lcom/facebook/imagepipeline/cache/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/d<",
            "Lcom/facebook/cache/common/c;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Lcom/facebook/imagepipeline/cache/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/d<",
            "Lcom/facebook/cache/common/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/cache/t;Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/cache/d;Lcom/facebook/imagepipeline/cache/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "consumer",
            "producerContext",
            "encodedMemoryCache",
            "defaultBufferedDiskCache",
            "smallImageBufferedDiskCache",
            "cacheKeyFactory",
            "encodedMemoryCacheHistory",
            "diskCacheHistory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            "Lcom/facebook/imagepipeline/cache/t<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/e;",
            "Lcom/facebook/imagepipeline/cache/e;",
            "Lcom/facebook/imagepipeline/cache/f;",
            "Lcom/facebook/imagepipeline/cache/d<",
            "Lcom/facebook/cache/common/c;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/d<",
            "Lcom/facebook/cache/common/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/o;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/j$a;->i:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/j$a;->j:Lcom/facebook/imagepipeline/cache/t;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/j$a;->k:Lcom/facebook/imagepipeline/cache/e;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/facebook/imagepipeline/producers/j$a;->l:Lcom/facebook/imagepipeline/cache/e;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/facebook/imagepipeline/producers/j$a;->m:Lcom/facebook/imagepipeline/cache/f;

    .line 13
    .line 14
    iput-object p7, p0, Lcom/facebook/imagepipeline/producers/j$a;->n:Lcom/facebook/imagepipeline/cache/d;

    .line 15
    .line 16
    iput-object p8, p0, Lcom/facebook/imagepipeline/producers/j$a;->o:Lcom/facebook/imagepipeline/cache/d;

    .line 17
    .line 18
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
    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/j$a;->q(Lcom/facebook/common/references/CloseableReference;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public q(Lcom/facebook/common/references/CloseableReference;I)V
    .locals 4
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
    const-string v0, "BitmapProbeProducer#onNewResultImpl"

    .line 8
    .line 9
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/b;->e(I)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_7

    .line 17
    .line 18
    if-eqz p1, :cond_7

    .line 19
    .line 20
    const/16 v0, 0x8

    .line 21
    .line 22
    invoke-static {p2, v0}, Lcom/facebook/imagepipeline/producers/b;->l(II)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    goto/16 :goto_2

    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/j$a;->i:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 31
    .line 32
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/j$a;->m:Lcom/facebook/imagepipeline/cache/f;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/j$a;->i:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 39
    .line 40
    invoke-interface {v2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->b()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-interface {v1, v0, v2}, Lcom/facebook/imagepipeline/cache/f;->b(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/c;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/j$a;->i:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 49
    .line 50
    const-string v3, "origin"

    .line 51
    .line 52
    invoke-interface {v2, v3}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Ljava/lang/String;

    .line 57
    .line 58
    if-eqz v2, :cond_5

    .line 59
    .line 60
    const-string v3, "memory_bitmap"

    .line 61
    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_5

    .line 67
    .line 68
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/j$a;->i:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 69
    .line 70
    invoke-interface {v2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->c()Lcom/facebook/imagepipeline/core/i;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-interface {v2}, Lcom/facebook/imagepipeline/core/i;->getExperiments()Lcom/facebook/imagepipeline/core/j;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/core/j;->s()Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_2

    .line 83
    .line 84
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/j$a;->n:Lcom/facebook/imagepipeline/cache/d;

    .line 85
    .line 86
    invoke-virtual {v2, v1}, Lcom/facebook/imagepipeline/cache/d;->b(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-nez v2, :cond_2

    .line 91
    .line 92
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/j$a;->j:Lcom/facebook/imagepipeline/cache/t;

    .line 93
    .line 94
    invoke-interface {v2, v1}, Lcom/facebook/imagepipeline/cache/t;->b(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/j$a;->n:Lcom/facebook/imagepipeline/cache/d;

    .line 98
    .line 99
    invoke-virtual {v2, v1}, Lcom/facebook/imagepipeline/cache/d;->a(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    :cond_2
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/j$a;->i:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 103
    .line 104
    invoke-interface {v2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->c()Lcom/facebook/imagepipeline/core/i;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-interface {v2}, Lcom/facebook/imagepipeline/core/i;->getExperiments()Lcom/facebook/imagepipeline/core/j;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/core/j;->q()Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-eqz v2, :cond_5

    .line 117
    .line 118
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/j$a;->o:Lcom/facebook/imagepipeline/cache/d;

    .line 119
    .line 120
    invoke-virtual {v2, v1}, Lcom/facebook/imagepipeline/cache/d;->b(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-nez v2, :cond_5

    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->f()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    sget-object v2, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->SMALL:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 131
    .line 132
    if-ne v0, v2, :cond_3

    .line 133
    .line 134
    const/4 v0, 0x1

    .line 135
    goto :goto_0

    .line 136
    :cond_3
    const/4 v0, 0x0

    .line 137
    :goto_0
    if-eqz v0, :cond_4

    .line 138
    .line 139
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/j$a;->l:Lcom/facebook/imagepipeline/cache/e;

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_4
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/j$a;->k:Lcom/facebook/imagepipeline/cache/e;

    .line 143
    .line 144
    :goto_1
    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/cache/e;->i(Lcom/facebook/cache/common/c;)V

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/j$a;->o:Lcom/facebook/imagepipeline/cache/d;

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/cache/d;->a(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    :cond_5
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/o;->p()Lcom/facebook/imagepipeline/producers/Consumer;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->b(Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    .line 158
    .line 159
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    if-eqz p1, :cond_6

    .line 164
    .line 165
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 166
    .line 167
    .line 168
    :cond_6
    return-void

    .line 169
    :cond_7
    :goto_2
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/o;->p()Lcom/facebook/imagepipeline/producers/Consumer;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->b(Ljava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    .line 175
    .line 176
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    if-eqz p1, :cond_8

    .line 181
    .line 182
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 183
    .line 184
    .line 185
    :cond_8
    return-void

    .line 186
    :catchall_0
    move-exception p1

    .line 187
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 188
    .line 189
    .line 190
    move-result p2

    .line 191
    if-eqz p2, :cond_9

    .line 192
    .line 193
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 194
    .line 195
    .line 196
    :cond_9
    throw p1
.end method
