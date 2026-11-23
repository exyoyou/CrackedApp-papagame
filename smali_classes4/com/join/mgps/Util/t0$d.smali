.class Lcom/join/mgps/Util/t0$d;
.super Lcom/facebook/imagepipeline/datasource/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/t0;->h(Ljava/lang/String;Landroid/content/Context;IILcom/facebook/imagepipeline/request/a;Lcom/join/mgps/Util/t0$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/Util/t0$e;


# direct methods
.method constructor <init>(Lcom/join/mgps/Util/t0$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$listener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/t0$d;->a:Lcom/join/mgps/Util/t0$e;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/facebook/imagepipeline/datasource/b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected e(Lcom/facebook/datasource/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataSource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/c<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/Util/t0$d;->a:Lcom/join/mgps/Util/t0$e;

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/join/mgps/Util/t0$e;->onFail()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected g(Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/t0$d;->a:Lcom/join/mgps/Util/t0$e;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/join/mgps/Util/t0$e;->a(Landroid/graphics/Bitmap;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
