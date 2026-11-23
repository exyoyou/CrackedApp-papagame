.class Lcom/facebook/imagepipeline/producers/w$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/w;->i(Lcom/facebook/imagepipeline/producers/w$c;Lcom/facebook/imagepipeline/producers/l0$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/facebook/imagepipeline/producers/w$c;

.field final synthetic c:Lcom/facebook/imagepipeline/producers/l0$a;

.field final synthetic d:Lcom/facebook/imagepipeline/producers/w;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/w;Lcom/facebook/imagepipeline/producers/w$c;Lcom/facebook/imagepipeline/producers/l0$a;)V
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
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/w$a;->d:Lcom/facebook/imagepipeline/producers/w;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/w$a;->b:Lcom/facebook/imagepipeline/producers/w$c;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/w$a;->c:Lcom/facebook/imagepipeline/producers/l0$a;

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
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/w$a;->d:Lcom/facebook/imagepipeline/producers/w;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/w$a;->b:Lcom/facebook/imagepipeline/producers/w$c;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/w$a;->c:Lcom/facebook/imagepipeline/producers/l0$a;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/w;->j(Lcom/facebook/imagepipeline/producers/w$c;Lcom/facebook/imagepipeline/producers/l0$a;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
