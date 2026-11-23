.class Lcom/facebook/imagepipeline/datasource/a$a;
.super Lcom/facebook/imagepipeline/producers/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/datasource/a;->y()Lcom/facebook/imagepipeline/producers/Consumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic h:Lcom/facebook/imagepipeline/datasource/a;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/datasource/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/datasource/a$a;->h:Lcom/facebook/imagepipeline/datasource/a;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/a$a;->h:Lcom/facebook/imagepipeline/datasource/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/facebook/imagepipeline/datasource/a;->w(Lcom/facebook/imagepipeline/datasource/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected g(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "throwable"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/a$a;->h:Lcom/facebook/imagepipeline/datasource/a;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/facebook/imagepipeline/datasource/a;->v(Lcom/facebook/imagepipeline/datasource/a;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected h(Ljava/lang/Object;I)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "newResult",
            "status"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/a$a;->h:Lcom/facebook/imagepipeline/datasource/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/facebook/imagepipeline/datasource/a;->u(Lcom/facebook/imagepipeline/datasource/a;)Lcom/facebook/imagepipeline/producers/y0;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, p1, p2, v1}, Lcom/facebook/imagepipeline/datasource/a;->C(Ljava/lang/Object;ILcom/facebook/imagepipeline/producers/ProducerContext;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method protected i(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/a$a;->h:Lcom/facebook/imagepipeline/datasource/a;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/facebook/imagepipeline/datasource/a;->x(Lcom/facebook/imagepipeline/datasource/a;F)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method
