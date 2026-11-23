.class Lcom/facebook/imagepipeline/producers/t$a;
.super Lcom/facebook/imagepipeline/producers/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/o<",
        "Lcom/facebook/imagepipeline/image/e;",
        "Lcom/facebook/imagepipeline/image/e;",
        ">;"
    }
.end annotation


# instance fields
.field private final i:Lcom/facebook/imagepipeline/producers/ProducerContext;

.field private final j:Lcom/facebook/imagepipeline/cache/e;

.field private final k:Lcom/facebook/imagepipeline/cache/e;

.field private final l:Lcom/facebook/imagepipeline/cache/f;

.field private final m:Lcom/facebook/imagepipeline/cache/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/d<",
            "Lcom/facebook/cache/common/c;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Lcom/facebook/imagepipeline/cache/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/d<",
            "Lcom/facebook/cache/common/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/cache/d;Lcom/facebook/imagepipeline/cache/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "Lcom/facebook/imagepipeline/image/e;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
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
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/t$a;->i:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/t$a;->j:Lcom/facebook/imagepipeline/cache/e;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/t$a;->k:Lcom/facebook/imagepipeline/cache/e;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/facebook/imagepipeline/producers/t$a;->l:Lcom/facebook/imagepipeline/cache/f;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/facebook/imagepipeline/producers/t$a;->m:Lcom/facebook/imagepipeline/cache/d;

    .line 13
    .line 14
    iput-object p7, p0, Lcom/facebook/imagepipeline/producers/t$a;->n:Lcom/facebook/imagepipeline/cache/d;

    .line 15
    .line 16
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
    check-cast p1, Lcom/facebook/imagepipeline/image/e;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/t$a;->q(Lcom/facebook/imagepipeline/image/e;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public q(Lcom/facebook/imagepipeline/image/e;I)V
    .locals 5
    .param p1    # Lcom/facebook/imagepipeline/image/e;
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

    .line 1
    const-string v0, "origin"

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string v1, "EncodedProbeProducer#onNewResultImpl"

    .line 10
    .line 11
    invoke-static {v1}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/b;->e(I)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_7

    .line 19
    .line 20
    if-eqz p1, :cond_7

    .line 21
    .line 22
    const/16 v1, 0xa

    .line 23
    .line 24
    invoke-static {p2, v1}, Lcom/facebook/imagepipeline/producers/b;->l(II)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_7

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/e;->o()Lcom/facebook/imageformat/c;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    sget-object v2, Lcom/facebook/imageformat/c;->c:Lcom/facebook/imageformat/c;

    .line 35
    .line 36
    if-ne v1, v2, :cond_1

    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_1
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/t$a;->i:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 40
    .line 41
    invoke-interface {v1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/t$a;->l:Lcom/facebook/imagepipeline/cache/f;

    .line 46
    .line 47
    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/t$a;->i:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 48
    .line 49
    invoke-interface {v3}, Lcom/facebook/imagepipeline/producers/ProducerContext;->b()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-interface {v2, v1, v3}, Lcom/facebook/imagepipeline/cache/f;->b(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/c;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/t$a;->m:Lcom/facebook/imagepipeline/cache/d;

    .line 58
    .line 59
    invoke-virtual {v3, v2}, Lcom/facebook/imagepipeline/cache/d;->a(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    const-string v3, "memory_encoded"

    .line 63
    .line 64
    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/t$a;->i:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 65
    .line 66
    invoke-interface {v4, v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_4

    .line 75
    .line 76
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/t$a;->n:Lcom/facebook/imagepipeline/cache/d;

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Lcom/facebook/imagepipeline/cache/d;->b(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_5

    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/request/ImageRequest;->f()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    sget-object v1, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->SMALL:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 89
    .line 90
    if-ne v0, v1, :cond_2

    .line 91
    .line 92
    const/4 v0, 0x1

    .line 93
    goto :goto_0

    .line 94
    :cond_2
    const/4 v0, 0x0

    .line 95
    :goto_0
    if-eqz v0, :cond_3

    .line 96
    .line 97
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/t$a;->k:Lcom/facebook/imagepipeline/cache/e;

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_3
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/t$a;->j:Lcom/facebook/imagepipeline/cache/e;

    .line 101
    .line 102
    :goto_1
    invoke-virtual {v0, v2}, Lcom/facebook/imagepipeline/cache/e;->i(Lcom/facebook/cache/common/c;)V

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/t$a;->n:Lcom/facebook/imagepipeline/cache/d;

    .line 106
    .line 107
    invoke-virtual {v0, v2}, Lcom/facebook/imagepipeline/cache/d;->a(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_4
    const-string v1, "disk"

    .line 112
    .line 113
    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/t$a;->i:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 114
    .line 115
    invoke-interface {v3, v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_5

    .line 124
    .line 125
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/t$a;->n:Lcom/facebook/imagepipeline/cache/d;

    .line 126
    .line 127
    invoke-virtual {v0, v2}, Lcom/facebook/imagepipeline/cache/d;->a(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/o;->p()Lcom/facebook/imagepipeline/producers/Consumer;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->b(Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    .line 136
    .line 137
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    if-eqz p1, :cond_6

    .line 142
    .line 143
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 144
    .line 145
    .line 146
    :cond_6
    return-void

    .line 147
    :cond_7
    :goto_3
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/o;->p()Lcom/facebook/imagepipeline/producers/Consumer;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->b(Ljava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    .line 153
    .line 154
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    if-eqz p1, :cond_8

    .line 159
    .line 160
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 161
    .line 162
    .line 163
    :cond_8
    return-void

    .line 164
    :catchall_0
    move-exception p1

    .line 165
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 166
    .line 167
    .line 168
    move-result p2

    .line 169
    if-eqz p2, :cond_9

    .line 170
    .line 171
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 172
    .line 173
    .line 174
    :cond_9
    throw p1
.end method
