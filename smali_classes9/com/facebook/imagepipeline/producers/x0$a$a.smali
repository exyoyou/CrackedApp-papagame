.class Lcom/facebook/imagepipeline/producers/x0$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/JobScheduler$d;


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

.field final synthetic b:Lcom/facebook/imagepipeline/producers/x0$a;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/x0$a;Lcom/facebook/imagepipeline/producers/x0;)V
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
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/x0$a$a;->b:Lcom/facebook/imagepipeline/producers/x0$a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/x0$a$a;->a:Lcom/facebook/imagepipeline/producers/x0;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/image/e;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "encodedImage",
            "status"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/x0$a$a;->b:Lcom/facebook/imagepipeline/producers/x0$a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/x0$a;->r(Lcom/facebook/imagepipeline/producers/x0$a;)Ll4/d;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/e;->o()Lcom/facebook/imageformat/c;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/x0$a$a;->b:Lcom/facebook/imagepipeline/producers/x0$a;

    .line 12
    .line 13
    invoke-static {v3}, Lcom/facebook/imagepipeline/producers/x0$a;->q(Lcom/facebook/imagepipeline/producers/x0$a;)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-interface {v1, v2, v3}, Ll4/d;->createImageTranscoder(Lcom/facebook/imageformat/c;Z)Ll4/c;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Ll4/c;

    .line 26
    .line 27
    invoke-static {v0, p1, p2, v1}, Lcom/facebook/imagepipeline/producers/x0$a;->s(Lcom/facebook/imagepipeline/producers/x0$a;Lcom/facebook/imagepipeline/image/e;ILl4/c;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
