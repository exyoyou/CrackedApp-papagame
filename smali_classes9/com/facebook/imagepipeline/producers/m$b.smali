.class Lcom/facebook/imagepipeline/producers/m$b;
.super Lcom/facebook/imagepipeline/producers/m$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private final q:Lcom/facebook/imagepipeline/decoder/e;

.field private final r:Lcom/facebook/imagepipeline/decoder/d;

.field private s:I

.field final synthetic t:Lcom/facebook/imagepipeline/producers/m;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/m;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/decoder/e;Lcom/facebook/imagepipeline/decoder/d;ZI)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "this$0",
            "consumer",
            "producerContext",
            "progressiveJpegParser",
            "progressiveJpegConfig",
            "decodeCancellationEnabled",
            "maxBitmapSize"
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
            "Lcom/facebook/imagepipeline/decoder/e;",
            "Lcom/facebook/imagepipeline/decoder/d;",
            "ZI)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/m$b;->t:Lcom/facebook/imagepipeline/producers/m;

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move v4, p6

    .line 8
    move v5, p7

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/producers/m$c;-><init>(Lcom/facebook/imagepipeline/producers/m;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;ZI)V

    .line 10
    .line 11
    .line 12
    invoke-static {p4}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/facebook/imagepipeline/decoder/e;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/m$b;->q:Lcom/facebook/imagepipeline/decoder/e;

    .line 19
    .line 20
    invoke-static {p5}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/facebook/imagepipeline/decoder/d;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/m$b;->r:Lcom/facebook/imagepipeline/decoder/d;

    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    iput p1, p0, Lcom/facebook/imagepipeline/producers/m$b;->s:I

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method protected declared-synchronized I(Lcom/facebook/imagepipeline/image/e;I)Z
    .locals 3
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
            "encodedImage",
            "status"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/m$c;->I(Lcom/facebook/imagepipeline/image/e;I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/b;->e(I)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    invoke-static {p2, v1}, Lcom/facebook/imagepipeline/producers/b;->m(II)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_4

    .line 19
    .line 20
    :cond_0
    const/4 v1, 0x4

    .line 21
    invoke-static {p2, v1}, Lcom/facebook/imagepipeline/producers/b;->m(II)Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-nez p2, :cond_4

    .line 26
    .line 27
    invoke-static {p1}, Lcom/facebook/imagepipeline/image/e;->P(Lcom/facebook/imagepipeline/image/e;)Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-eqz p2, :cond_4

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/e;->o()Lcom/facebook/imageformat/c;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    sget-object v1, Lcom/facebook/imageformat/b;->a:Lcom/facebook/imageformat/c;

    .line 38
    .line 39
    if-ne p2, v1, :cond_4

    .line 40
    .line 41
    iget-object p2, p0, Lcom/facebook/imagepipeline/producers/m$b;->q:Lcom/facebook/imagepipeline/decoder/e;

    .line 42
    .line 43
    invoke-virtual {p2, p1}, Lcom/facebook/imagepipeline/decoder/e;->h(Lcom/facebook/imagepipeline/image/e;)Z

    .line 44
    .line 45
    .line 46
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    const/4 p2, 0x0

    .line 48
    if-nez p1, :cond_1

    .line 49
    .line 50
    monitor-exit p0

    .line 51
    return p2

    .line 52
    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/m$b;->q:Lcom/facebook/imagepipeline/decoder/e;

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/decoder/e;->d()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    iget v1, p0, Lcom/facebook/imagepipeline/producers/m$b;->s:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    .line 60
    if-gt p1, v1, :cond_2

    .line 61
    .line 62
    monitor-exit p0

    .line 63
    return p2

    .line 64
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/m$b;->r:Lcom/facebook/imagepipeline/decoder/d;

    .line 65
    .line 66
    invoke-interface {v2, v1}, Lcom/facebook/imagepipeline/decoder/d;->a(I)I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-ge p1, v1, :cond_3

    .line 71
    .line 72
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/m$b;->q:Lcom/facebook/imagepipeline/decoder/e;

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/decoder/e;->e()Z

    .line 75
    .line 76
    .line 77
    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    if-nez v1, :cond_3

    .line 79
    .line 80
    monitor-exit p0

    .line 81
    return p2

    .line 82
    :cond_3
    :try_start_3
    iput p1, p0, Lcom/facebook/imagepipeline/producers/m$b;->s:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 83
    .line 84
    :cond_4
    monitor-exit p0

    .line 85
    return v0

    .line 86
    :catchall_0
    move-exception p1

    .line 87
    monitor-exit p0

    .line 88
    throw p1
.end method

.method protected x(Lcom/facebook/imagepipeline/image/e;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encodedImage"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/m$b;->q:Lcom/facebook/imagepipeline/decoder/e;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/decoder/e;->c()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method protected y()Lcom/facebook/imagepipeline/image/j;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/m$b;->r:Lcom/facebook/imagepipeline/decoder/d;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/m$b;->q:Lcom/facebook/imagepipeline/decoder/e;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/decoder/e;->d()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/decoder/d;->b(I)Lcom/facebook/imagepipeline/image/j;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method
