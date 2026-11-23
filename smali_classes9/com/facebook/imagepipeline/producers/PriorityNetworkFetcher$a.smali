.class Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$a;
.super Lcom/facebook/imagepipeline/producers/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->r(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;Lcom/facebook/imagepipeline/producers/l0$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;

.field final synthetic b:Lcom/facebook/imagepipeline/producers/l0$a;

.field final synthetic c:Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;Lcom/facebook/imagepipeline/producers/l0$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$callback",
            "val$fetchState"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$a;->c:Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$a;->a:Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$a;->b:Lcom/facebook/imagepipeline/producers/l0$a;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/e;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$a;->c:Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->f(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$a;->c:Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->g(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$a;->c:Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->h(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;)Ljava/util/HashSet;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$a;->a:Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$a;->c:Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$a;->a:Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;

    .line 36
    .line 37
    const-string v2, "CANCEL"

    .line 38
    .line 39
    invoke-static {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->i(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$a;->b:Lcom/facebook/imagepipeline/producers/l0$a;

    .line 43
    .line 44
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/l0$a;->a()V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$a;->c:Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$a;->a:Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/producers/v;->getContext()Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-interface {v2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getPriority()Lcom/facebook/imagepipeline/common/Priority;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    sget-object v3, Lcom/facebook/imagepipeline/common/Priority;->HIGH:Lcom/facebook/imagepipeline/common/Priority;

    .line 14
    .line 15
    if-ne v2, v3, :cond_0

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v2, 0x0

    .line 20
    :goto_0
    invoke-static {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->j(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;Z)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
