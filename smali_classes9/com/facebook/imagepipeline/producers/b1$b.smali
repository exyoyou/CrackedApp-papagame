.class Lcom/facebook/imagepipeline/producers/b1$b;
.super Lcom/facebook/imagepipeline/producers/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/b1;->a(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/producers/z0;

.field final synthetic b:Lcom/facebook/imagepipeline/producers/b1;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/b1;Lcom/facebook/imagepipeline/producers/z0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$statefulRunnable"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/b1$b;->b:Lcom/facebook/imagepipeline/producers/b1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/b1$b;->a:Lcom/facebook/imagepipeline/producers/z0;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/e;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/b1$b;->a:Lcom/facebook/imagepipeline/producers/z0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/facebook/common/executors/h;->a()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/b1$b;->b:Lcom/facebook/imagepipeline/producers/b1;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/b1;->d(Lcom/facebook/imagepipeline/producers/b1;)Lcom/facebook/imagepipeline/producers/c1;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/b1$b;->a:Lcom/facebook/imagepipeline/producers/z0;

    .line 13
    .line 14
    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/producers/c1;->remove(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
