.class Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/l0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->p(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;

.field final synthetic b:Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$fetchState"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$b;->b:Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$b;->a:Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$b;->b:Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$b;->a:Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;

    .line 4
    .line 5
    const-string v2, "CANCEL"

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->i(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$b;->a:Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;->k:Lcom/facebook/imagepipeline/producers/l0$a;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/l0$a;->a()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public b(Ljava/io/InputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "response",
            "responseLength"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$b;->a:Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;->k:Lcom/facebook/imagepipeline/producers/l0$a;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/l0$a;->b(Ljava/io/InputStream;I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "throwable"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$b;->b:Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->k(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$b;->a:Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;

    .line 11
    .line 12
    iget v0, v0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;->m:I

    .line 13
    .line 14
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$b;->b:Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->k(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-ge v0, v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 26
    :goto_1
    if-eqz v0, :cond_2

    .line 27
    .line 28
    instance-of v0, p1, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$NonrecoverableException;

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$b;->b:Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$b;->a:Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;

    .line 35
    .line 36
    invoke-static {p1, v0}, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->l(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;)V

    .line 37
    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_2
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$b;->b:Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$b;->a:Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;

    .line 43
    .line 44
    const-string v2, "FAIL"

    .line 45
    .line 46
    invoke-static {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->i(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$b;->a:Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;

    .line 50
    .line 51
    iget-object v0, v0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;->k:Lcom/facebook/imagepipeline/producers/l0$a;

    .line 52
    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/producers/l0$a;->onFailure(Ljava/lang/Throwable;)V

    .line 56
    .line 57
    .line 58
    :cond_3
    :goto_2
    return-void
.end method
