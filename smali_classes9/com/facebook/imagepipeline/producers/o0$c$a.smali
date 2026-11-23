.class Lcom/facebook/imagepipeline/producers/o0$c$a;
.super Lcom/facebook/imagepipeline/producers/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/o0$c;-><init>(Lcom/facebook/imagepipeline/producers/o0;Lcom/facebook/imagepipeline/producers/o0$b;Lcom/facebook/imagepipeline/request/e;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/producers/o0;

.field final synthetic b:Lcom/facebook/imagepipeline/producers/o0$c;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/o0$c;Lcom/facebook/imagepipeline/producers/o0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/o0$c$a;->b:Lcom/facebook/imagepipeline/producers/o0$c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/o0$c$a;->a:Lcom/facebook/imagepipeline/producers/o0;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/o0$c$a;->b:Lcom/facebook/imagepipeline/producers/o0$c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/o0$c;->q(Lcom/facebook/imagepipeline/producers/o0$c;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/o0$c$a;->b:Lcom/facebook/imagepipeline/producers/o0$c;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/o;->p()Lcom/facebook/imagepipeline/producers/Consumer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/Consumer;->a()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
