.class Lcom/facebook/imagepipeline/producers/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/n;->a(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/facebook/imagepipeline/producers/Consumer;

.field final synthetic c:Lcom/facebook/imagepipeline/producers/ProducerContext;

.field final synthetic d:Lcom/facebook/imagepipeline/producers/n;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$context",
            "val$consumer"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/n$a;->d:Lcom/facebook/imagepipeline/producers/n;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/n$a;->b:Lcom/facebook/imagepipeline/producers/Consumer;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/n$a;->c:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/n$a;->d:Lcom/facebook/imagepipeline/producers/n;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/n;->c(Lcom/facebook/imagepipeline/producers/n;)Lcom/facebook/imagepipeline/producers/q0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/n$a;->b:Lcom/facebook/imagepipeline/producers/Consumer;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/n$a;->c:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 10
    .line 11
    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/q0;->a(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
