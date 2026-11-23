.class Lcom/facebook/imagepipeline/producers/f1$a;
.super Lcom/facebook/imagepipeline/producers/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/f1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
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

.field private final j:I

.field private final k:Lcom/facebook/imagepipeline/common/e;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final synthetic l:Lcom/facebook/imagepipeline/producers/f1;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/f1;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10,
            0x10,
            0x0
        }
        names = {
            "this$0",
            "consumer",
            "producerContext",
            "producerIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            "I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/f1$a;->l:Lcom/facebook/imagepipeline/producers/f1;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/o;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    .line 4
    .line 5
    .line 6
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/f1$a;->i:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 7
    .line 8
    iput p4, p0, Lcom/facebook/imagepipeline/producers/f1$a;->j:I

    .line 9
    .line 10
    invoke-interface {p3}, Lcom/facebook/imagepipeline/producers/ProducerContext;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->s()Lcom/facebook/imagepipeline/common/e;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/f1$a;->k:Lcom/facebook/imagepipeline/common/e;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method protected g(Ljava/lang/Throwable;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/f1$a;->l:Lcom/facebook/imagepipeline/producers/f1;

    .line 2
    .line 3
    iget v1, p0, Lcom/facebook/imagepipeline/producers/f1$a;->j:I

    .line 4
    .line 5
    add-int/lit8 v1, v1, 0x1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/o;->p()Lcom/facebook/imagepipeline/producers/Consumer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/f1$a;->i:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 12
    .line 13
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/f1;->c(Lcom/facebook/imagepipeline/producers/f1;ILcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/o;->p()Lcom/facebook/imagepipeline/producers/Consumer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/producers/Consumer;->onFailure(Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method protected bridge synthetic h(Ljava/lang/Object;I)V
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
    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/f1$a;->q(Lcom/facebook/imagepipeline/image/e;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected q(Lcom/facebook/imagepipeline/image/e;I)V
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
            "newResult",
            "status"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/b;->e(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/f1$a;->k:Lcom/facebook/imagepipeline/common/e;

    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/facebook/imagepipeline/producers/h1;->c(Lcom/facebook/imagepipeline/image/e;Lcom/facebook/imagepipeline/common/e;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/o;->p()Lcom/facebook/imagepipeline/producers/Consumer;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->b(Ljava/lang/Object;I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/b;->d(I)Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-eqz p2, :cond_2

    .line 30
    .line 31
    invoke-static {p1}, Lcom/facebook/imagepipeline/image/e;->d(Lcom/facebook/imagepipeline/image/e;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/f1$a;->l:Lcom/facebook/imagepipeline/producers/f1;

    .line 35
    .line 36
    iget p2, p0, Lcom/facebook/imagepipeline/producers/f1$a;->j:I

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    add-int/2addr p2, v0

    .line 40
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/o;->p()Lcom/facebook/imagepipeline/producers/Consumer;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/f1$a;->i:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 45
    .line 46
    invoke-static {p1, p2, v1, v2}, Lcom/facebook/imagepipeline/producers/f1;->c(Lcom/facebook/imagepipeline/producers/f1;ILcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-nez p1, :cond_2

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/o;->p()Lcom/facebook/imagepipeline/producers/Consumer;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const/4 p2, 0x0

    .line 57
    invoke-interface {p1, p2, v0}, Lcom/facebook/imagepipeline/producers/Consumer;->b(Ljava/lang/Object;I)V

    .line 58
    .line 59
    .line 60
    :cond_2
    :goto_0
    return-void
.end method
