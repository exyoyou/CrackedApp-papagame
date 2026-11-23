.class Lcom/facebook/imagepipeline/memory/l0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/common/references/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/memory/l0;-><init>(Lcom/facebook/common/memory/c;Lcom/facebook/imagepipeline/memory/j0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/common/references/g<",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/memory/l0;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/memory/l0;)V
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
    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/l0$a;->a:Lcom/facebook/imagepipeline/memory/l0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unused"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/facebook/imagepipeline/memory/l0$a;->a:Lcom/facebook/imagepipeline/memory/l0;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/facebook/imagepipeline/memory/l0;->d:Ljava/util/concurrent/Semaphore;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public bridge synthetic release(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "unused"
        }
    .end annotation

    .line 1
    check-cast p1, [B

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/l0$a;->a([B)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
