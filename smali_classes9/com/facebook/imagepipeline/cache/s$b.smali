.class Lcom/facebook/imagepipeline/cache/s$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/common/references/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/cache/s;->F(Lcom/facebook/imagepipeline/cache/i$a;)Lcom/facebook/common/references/CloseableReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/common/references/g<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/cache/i$a;

.field final synthetic b:Lcom/facebook/imagepipeline/cache/s;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/cache/s;Lcom/facebook/imagepipeline/cache/i$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$entry"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/s$b;->b:Lcom/facebook/imagepipeline/cache/s;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/cache/s$b;->a:Lcom/facebook/imagepipeline/cache/i$a;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public release(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unused"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/facebook/imagepipeline/cache/s$b;->b:Lcom/facebook/imagepipeline/cache/s;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/s$b;->a:Lcom/facebook/imagepipeline/cache/i$a;

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/facebook/imagepipeline/cache/s;->s(Lcom/facebook/imagepipeline/cache/s;Lcom/facebook/imagepipeline/cache/i$a;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
