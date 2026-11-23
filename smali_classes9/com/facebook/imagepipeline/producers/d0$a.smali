.class Lcom/facebook/imagepipeline/producers/d0$a;
.super Lcom/facebook/imagepipeline/producers/z0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/d0;->a(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/z0<",
        "Lcom/facebook/imagepipeline/image/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic l:Lcom/facebook/imagepipeline/request/ImageRequest;

.field final synthetic m:Lcom/facebook/imagepipeline/producers/t0;

.field final synthetic n:Lcom/facebook/imagepipeline/producers/ProducerContext;

.field final synthetic o:Lcom/facebook/imagepipeline/producers/d0;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/d0;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/t0;Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/producers/t0;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "consumer",
            "producerListener",
            "producerContext",
            "producerName",
            "val$producerContext",
            "val$listener",
            "val$imageRequest"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/d0$a;->o:Lcom/facebook/imagepipeline/producers/d0;

    .line 2
    .line 3
    iput-object p6, p0, Lcom/facebook/imagepipeline/producers/d0$a;->l:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 4
    .line 5
    iput-object p7, p0, Lcom/facebook/imagepipeline/producers/d0$a;->m:Lcom/facebook/imagepipeline/producers/t0;

    .line 6
    .line 7
    iput-object p8, p0, Lcom/facebook/imagepipeline/producers/d0$a;->n:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 8
    .line 9
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/facebook/imagepipeline/producers/z0;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/t0;Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method protected bridge synthetic b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "result"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/facebook/imagepipeline/image/e;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/d0$a;->k(Lcom/facebook/imagepipeline/image/e;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected bridge synthetic c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/d0$a;->l()Lcom/facebook/imagepipeline/image/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected k(Lcom/facebook/imagepipeline/image/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/imagepipeline/image/e;->d(Lcom/facebook/imagepipeline/image/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected l()Lcom/facebook/imagepipeline/image/e;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/d0$a;->o:Lcom/facebook/imagepipeline/producers/d0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/d0$a;->l:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/producers/d0;->d(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/image/e;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "local"

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/d0$a;->m:Lcom/facebook/imagepipeline/producers/t0;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/d0$a;->n:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/d0$a;->o:Lcom/facebook/imagepipeline/producers/d0;

    .line 18
    .line 19
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/producers/d0;->f()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-interface {v0, v2, v3, v4}, Lcom/facebook/imagepipeline/producers/t0;->a(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/d0$a;->n:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 28
    .line 29
    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->l(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    return-object v0

    .line 34
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/image/e;->Q()V

    .line 35
    .line 36
    .line 37
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/d0$a;->m:Lcom/facebook/imagepipeline/producers/t0;

    .line 38
    .line 39
    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/d0$a;->n:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 40
    .line 41
    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/d0$a;->o:Lcom/facebook/imagepipeline/producers/d0;

    .line 42
    .line 43
    invoke-virtual {v4}, Lcom/facebook/imagepipeline/producers/d0;->f()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    const/4 v5, 0x1

    .line 48
    invoke-interface {v2, v3, v4, v5}, Lcom/facebook/imagepipeline/producers/t0;->a(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Z)V

    .line 49
    .line 50
    .line 51
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/d0$a;->n:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 52
    .line 53
    invoke-interface {v2, v1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->l(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-object v0
.end method
