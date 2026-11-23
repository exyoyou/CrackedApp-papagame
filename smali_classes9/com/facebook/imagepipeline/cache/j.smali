.class public Lcom/facebook/imagepipeline/cache/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/cache/j$a;,
        Lcom/facebook/imagepipeline/cache/j$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/cache/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/i<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/cache/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "countingBitmapCache"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/i<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/j;->a:Lcom/facebook/imagepipeline/cache/i;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/imagepipeline/cache/j$a;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/j;->a:Lcom/facebook/imagepipeline/cache/i;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Lcom/facebook/imagepipeline/cache/j$a;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/j;->a:Lcom/facebook/imagepipeline/cache/i;

    .line 7
    .line 8
    invoke-interface {v2}, Lcom/facebook/imagepipeline/cache/t;->a()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/j;->a:Lcom/facebook/imagepipeline/cache/i;

    .line 13
    .line 14
    invoke-interface {v3}, Lcom/facebook/imagepipeline/cache/i;->e()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    iget-object v4, p0, Lcom/facebook/imagepipeline/cache/j;->a:Lcom/facebook/imagepipeline/cache/i;

    .line 19
    .line 20
    invoke-interface {v4}, Lcom/facebook/imagepipeline/cache/i;->f()Lcom/facebook/imagepipeline/cache/u;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/imagepipeline/cache/j$a;-><init>(IILcom/facebook/imagepipeline/cache/u;)V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/j;->a:Lcom/facebook/imagepipeline/cache/i;

    .line 28
    .line 29
    invoke-interface {v2}, Lcom/facebook/imagepipeline/cache/i;->d()Lcom/facebook/imagepipeline/cache/h;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-virtual {v2, v3}, Lcom/facebook/imagepipeline/cache/h;->g(Lcom/facebook/common/internal/j;)Ljava/util/ArrayList;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Ljava/util/Map$Entry;

    .line 53
    .line 54
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Lcom/facebook/imagepipeline/cache/i$a;

    .line 59
    .line 60
    new-instance v4, Lcom/facebook/imagepipeline/cache/j$b;

    .line 61
    .line 62
    iget-object v5, v3, Lcom/facebook/imagepipeline/cache/i$a;->a:Ljava/lang/Object;

    .line 63
    .line 64
    iget-object v6, v3, Lcom/facebook/imagepipeline/cache/i$a;->b:Lcom/facebook/common/references/CloseableReference;

    .line 65
    .line 66
    invoke-direct {v4, v5, v6}, Lcom/facebook/imagepipeline/cache/j$b;-><init>(Ljava/lang/Object;Lcom/facebook/common/references/CloseableReference;)V

    .line 67
    .line 68
    .line 69
    iget v3, v3, Lcom/facebook/imagepipeline/cache/i$a;->c:I

    .line 70
    .line 71
    if-lez v3, :cond_0

    .line 72
    .line 73
    iget-object v3, v1, Lcom/facebook/imagepipeline/cache/j$a;->g:Ljava/util/List;

    .line 74
    .line 75
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    iget-object v3, v1, Lcom/facebook/imagepipeline/cache/j$a;->f:Ljava/util/List;

    .line 80
    .line 81
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/j;->a:Lcom/facebook/imagepipeline/cache/i;

    .line 86
    .line 87
    invoke-interface {v2}, Lcom/facebook/imagepipeline/cache/i;->o()Ljava/util/Map;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-eqz v3, :cond_3

    .line 104
    .line 105
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    check-cast v3, Ljava/util/Map$Entry;

    .line 110
    .line 111
    if-eqz v3, :cond_2

    .line 112
    .line 113
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    check-cast v4, Landroid/graphics/Bitmap;

    .line 118
    .line 119
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    if-nez v4, :cond_2

    .line 124
    .line 125
    iget-object v4, v1, Lcom/facebook/imagepipeline/cache/j$a;->h:Ljava/util/Map;

    .line 126
    .line 127
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_3
    monitor-exit v0

    .line 140
    return-object v1

    .line 141
    :catchall_0
    move-exception v1

    .line 142
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    throw v1
.end method
