.class Lcom/facebook/imagepipeline/producers/j0$b$a;
.super Lcom/facebook/imagepipeline/producers/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/j0$b;->g(Landroid/util/Pair;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/util/Pair;

.field final synthetic b:Lcom/facebook/imagepipeline/producers/j0$b;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/j0$b;Landroid/util/Pair;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$consumerContextPair"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/j0$b$a;->b:Lcom/facebook/imagepipeline/producers/j0$b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/j0$b$a;->a:Landroid/util/Pair;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/e;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/j0$b$a;->b:Lcom/facebook/imagepipeline/producers/j0$b;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/j0$b;->f(Lcom/facebook/imagepipeline/producers/j0$b;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/d;->r(Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public b()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/j0$b$a;->b:Lcom/facebook/imagepipeline/producers/j0$b;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/j0$b$a;->b:Lcom/facebook/imagepipeline/producers/j0$b;

    .line 5
    .line 6
    invoke-static {v1}, Lcom/facebook/imagepipeline/producers/j0$b;->b(Lcom/facebook/imagepipeline/producers/j0$b;)Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/j0$b$a;->a:Landroid/util/Pair;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/j0$b$a;->b:Lcom/facebook/imagepipeline/producers/j0$b;

    .line 20
    .line 21
    invoke-static {v3}, Lcom/facebook/imagepipeline/producers/j0$b;->b(Lcom/facebook/imagepipeline/producers/j0$b;)Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/j0$b$a;->b:Lcom/facebook/imagepipeline/producers/j0$b;

    .line 32
    .line 33
    invoke-static {v3}, Lcom/facebook/imagepipeline/producers/j0$b;->c(Lcom/facebook/imagepipeline/producers/j0$b;)Lcom/facebook/imagepipeline/producers/d;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    move-object v4, v2

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/j0$b$a;->b:Lcom/facebook/imagepipeline/producers/j0$b;

    .line 40
    .line 41
    invoke-static {v3}, Lcom/facebook/imagepipeline/producers/j0$b;->d(Lcom/facebook/imagepipeline/producers/j0$b;)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/j0$b$a;->b:Lcom/facebook/imagepipeline/producers/j0$b;

    .line 46
    .line 47
    invoke-static {v4}, Lcom/facebook/imagepipeline/producers/j0$b;->e(Lcom/facebook/imagepipeline/producers/j0$b;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    iget-object v5, p0, Lcom/facebook/imagepipeline/producers/j0$b$a;->b:Lcom/facebook/imagepipeline/producers/j0$b;

    .line 52
    .line 53
    invoke-static {v5}, Lcom/facebook/imagepipeline/producers/j0$b;->f(Lcom/facebook/imagepipeline/producers/j0$b;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    move-object v6, v3

    .line 58
    move-object v3, v2

    .line 59
    move-object v2, v6

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    move-object v3, v2

    .line 62
    move-object v4, v3

    .line 63
    :goto_0
    move-object v5, v4

    .line 64
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-static {v2}, Lcom/facebook/imagepipeline/producers/d;->s(Ljava/util/List;)V

    .line 66
    .line 67
    .line 68
    invoke-static {v4}, Lcom/facebook/imagepipeline/producers/d;->t(Ljava/util/List;)V

    .line 69
    .line 70
    .line 71
    invoke-static {v5}, Lcom/facebook/imagepipeline/producers/d;->r(Ljava/util/List;)V

    .line 72
    .line 73
    .line 74
    if-eqz v3, :cond_3

    .line 75
    .line 76
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/j0$b$a;->b:Lcom/facebook/imagepipeline/producers/j0$b;

    .line 77
    .line 78
    iget-object v0, v0, Lcom/facebook/imagepipeline/producers/j0$b;->h:Lcom/facebook/imagepipeline/producers/j0;

    .line 79
    .line 80
    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/j0;->d(Lcom/facebook/imagepipeline/producers/j0;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_2

    .line 85
    .line 86
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/producers/d;->o()Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_2

    .line 91
    .line 92
    sget-object v0, Lcom/facebook/imagepipeline/common/Priority;->LOW:Lcom/facebook/imagepipeline/common/Priority;

    .line 93
    .line 94
    invoke-virtual {v3, v0}, Lcom/facebook/imagepipeline/producers/d;->z(Lcom/facebook/imagepipeline/common/Priority;)Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/d;->t(Ljava/util/List;)V

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_2
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/producers/d;->u()V

    .line 103
    .line 104
    .line 105
    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 106
    .line 107
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/j0$b$a;->a:Landroid/util/Pair;

    .line 108
    .line 109
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v0, Lcom/facebook/imagepipeline/producers/Consumer;

    .line 112
    .line 113
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/Consumer;->a()V

    .line 114
    .line 115
    .line 116
    :cond_4
    return-void

    .line 117
    :catchall_0
    move-exception v1

    .line 118
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    throw v1
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/j0$b$a;->b:Lcom/facebook/imagepipeline/producers/j0$b;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/j0$b;->d(Lcom/facebook/imagepipeline/producers/j0$b;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/d;->s(Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/j0$b$a;->b:Lcom/facebook/imagepipeline/producers/j0$b;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/j0$b;->e(Lcom/facebook/imagepipeline/producers/j0$b;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/d;->t(Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
