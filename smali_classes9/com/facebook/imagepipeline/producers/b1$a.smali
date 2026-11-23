.class Lcom/facebook/imagepipeline/producers/b1$a;
.super Lcom/facebook/imagepipeline/producers/z0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/b1;->a(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/z0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic l:Lcom/facebook/imagepipeline/producers/t0;

.field final synthetic m:Lcom/facebook/imagepipeline/producers/ProducerContext;

.field final synthetic n:Lcom/facebook/imagepipeline/producers/Consumer;

.field final synthetic o:Lcom/facebook/imagepipeline/producers/b1;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/b1;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/t0;Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/t0;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/producers/Consumer;)V
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
            "val$consumer",
            "val$context",
            "val$producerListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/b1$a;->o:Lcom/facebook/imagepipeline/producers/b1;

    .line 2
    .line 3
    iput-object p6, p0, Lcom/facebook/imagepipeline/producers/b1$a;->l:Lcom/facebook/imagepipeline/producers/t0;

    .line 4
    .line 5
    iput-object p7, p0, Lcom/facebook/imagepipeline/producers/b1$a;->m:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 6
    .line 7
    iput-object p8, p0, Lcom/facebook/imagepipeline/producers/b1$a;->n:Lcom/facebook/imagepipeline/producers/Consumer;

    .line 8
    .line 9
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/facebook/imagepipeline/producers/z0;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/t0;Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method protected b(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ignored"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method protected c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected g(Ljava/lang/Object;)V
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ignored"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/b1$a;->l:Lcom/facebook/imagepipeline/producers/t0;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/b1$a;->m:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 4
    .line 5
    const-string v1, "BackgroundThreadHandoffProducer"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {p1, v0, v1, v2}, Lcom/facebook/imagepipeline/producers/t0;->j(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/util/Map;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/b1$a;->o:Lcom/facebook/imagepipeline/producers/b1;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/b1;->c(Lcom/facebook/imagepipeline/producers/b1;)Lcom/facebook/imagepipeline/producers/q0;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/b1$a;->n:Lcom/facebook/imagepipeline/producers/Consumer;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/b1$a;->m:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 20
    .line 21
    invoke-interface {p1, v0, v1}, Lcom/facebook/imagepipeline/producers/q0;->a(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
