.class Lcom/facebook/imagepipeline/producers/x0$a$b;
.super Lcom/facebook/imagepipeline/producers/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/x0$a;-><init>(Lcom/facebook/imagepipeline/producers/x0;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;ZLl4/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/producers/x0;

.field final synthetic b:Lcom/facebook/imagepipeline/producers/Consumer;

.field final synthetic c:Lcom/facebook/imagepipeline/producers/x0$a;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/x0$a;Lcom/facebook/imagepipeline/producers/x0;Lcom/facebook/imagepipeline/producers/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$consumer",
            "val$this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/x0$a$b;->c:Lcom/facebook/imagepipeline/producers/x0$a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/x0$a$b;->a:Lcom/facebook/imagepipeline/producers/x0;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/x0$a$b;->b:Lcom/facebook/imagepipeline/producers/Consumer;

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
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/x0$a$b;->c:Lcom/facebook/imagepipeline/producers/x0$a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/x0$a;->t(Lcom/facebook/imagepipeline/producers/x0$a;)Lcom/facebook/imagepipeline/producers/ProducerContext;

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
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/x0$a$b;->c:Lcom/facebook/imagepipeline/producers/x0$a;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/x0$a;->u(Lcom/facebook/imagepipeline/producers/x0$a;)Lcom/facebook/imagepipeline/producers/JobScheduler;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/x0$a$b;->c:Lcom/facebook/imagepipeline/producers/x0$a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/x0$a;->u(Lcom/facebook/imagepipeline/producers/x0$a;)Lcom/facebook/imagepipeline/producers/JobScheduler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/JobScheduler;->c()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/x0$a$b;->c:Lcom/facebook/imagepipeline/producers/x0$a;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/producers/x0$a;->v(Lcom/facebook/imagepipeline/producers/x0$a;Z)Z

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/x0$a$b;->b:Lcom/facebook/imagepipeline/producers/Consumer;

    .line 17
    .line 18
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/Consumer;->a()V

    .line 19
    .line 20
    .line 21
    return-void
.end method
