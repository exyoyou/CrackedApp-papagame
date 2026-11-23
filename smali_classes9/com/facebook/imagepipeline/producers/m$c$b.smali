.class Lcom/facebook/imagepipeline/producers/m$c$b;
.super Lcom/facebook/imagepipeline/producers/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/m$c;-><init>(Lcom/facebook/imagepipeline/producers/m;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/producers/m;

.field final synthetic b:Z

.field final synthetic c:Lcom/facebook/imagepipeline/producers/m$c;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/m$c;Lcom/facebook/imagepipeline/producers/m;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$decodeCancellationEnabled",
            "val$this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/m$c$b;->c:Lcom/facebook/imagepipeline/producers/m$c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/m$c$b;->a:Lcom/facebook/imagepipeline/producers/m;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/facebook/imagepipeline/producers/m$c$b;->b:Z

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/e;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/m$c$b;->c:Lcom/facebook/imagepipeline/producers/m$c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/m$c;->q(Lcom/facebook/imagepipeline/producers/m$c;)Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->m()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/m$c$b;->c:Lcom/facebook/imagepipeline/producers/m$c;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/m$c;->t(Lcom/facebook/imagepipeline/producers/m$c;)Lcom/facebook/imagepipeline/producers/JobScheduler;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/JobScheduler;->h()Z

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/m$c$b;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/m$c$b;->c:Lcom/facebook/imagepipeline/producers/m$c;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/m$c;->u(Lcom/facebook/imagepipeline/producers/m$c;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
