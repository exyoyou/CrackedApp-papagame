.class public Lcom/facebook/drawee/backends/pipeline/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/drawee/backends/pipeline/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg4/a;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private b:Lcom/facebook/common/internal/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/l<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private c:Lcom/facebook/drawee/backends/pipeline/g;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private d:Lq3/g;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic a(Lcom/facebook/drawee/backends/pipeline/c$b;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/drawee/backends/pipeline/c$b;->a:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/facebook/drawee/backends/pipeline/c$b;)Lcom/facebook/common/internal/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/drawee/backends/pipeline/c$b;->b:Lcom/facebook/common/internal/l;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/facebook/drawee/backends/pipeline/c$b;)Lcom/facebook/drawee/backends/pipeline/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/drawee/backends/pipeline/c$b;->c:Lcom/facebook/drawee/backends/pipeline/g;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/facebook/drawee/backends/pipeline/c$b;)Lq3/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/drawee/backends/pipeline/c$b;->d:Lq3/g;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public e(Lg4/a;)Lcom/facebook/drawee/backends/pipeline/c$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "factory"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/c$b;->a:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/c$b;->a:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/c$b;->a:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public f()Lcom/facebook/drawee/backends/pipeline/c;
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/drawee/backends/pipeline/c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/facebook/drawee/backends/pipeline/c;-><init>(Lcom/facebook/drawee/backends/pipeline/c$b;Lcom/facebook/drawee/backends/pipeline/c$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public g(Lcom/facebook/common/internal/l;)Lcom/facebook/drawee/backends/pipeline/c$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "debugOverlayEnabledSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/l<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/facebook/drawee/backends/pipeline/c$b;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/c$b;->b:Lcom/facebook/common/internal/l;

    .line 5
    .line 6
    return-object p0
.end method

.method public h(Z)Lcom/facebook/drawee/backends/pipeline/c$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawDebugOverlay"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/facebook/common/internal/m;->a(Ljava/lang/Object;)Lcom/facebook/common/internal/l;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/backends/pipeline/c$b;->g(Lcom/facebook/common/internal/l;)Lcom/facebook/drawee/backends/pipeline/c$b;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public i(Lq3/g;)Lcom/facebook/drawee/backends/pipeline/c$b;
    .locals 0
    .param p1    # Lq3/g;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imagePerfDataListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/c$b;->d:Lq3/g;

    .line 2
    .line 3
    return-object p0
.end method

.method public j(Lcom/facebook/drawee/backends/pipeline/g;)Lcom/facebook/drawee/backends/pipeline/c$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "factory"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/c$b;->c:Lcom/facebook/drawee/backends/pipeline/g;

    .line 2
    .line 3
    return-object p0
.end method
