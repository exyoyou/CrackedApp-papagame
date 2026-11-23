.class Lcom/sigmob/sdk/base/views/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/sdk/base/views/aa$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/views/f;->setAdUnit(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/views/f;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/views/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/f$1;->a:Lcom/sigmob/sdk/base/views/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/base/views/f$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/f$1;->c()V

    return-void
.end method

.method public static synthetic b(Lcom/sigmob/sdk/base/views/f$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/f$1;->d()V

    return-void
.end method

.method private synthetic c()V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/f$1;->a:Lcom/sigmob/sdk/base/views/f;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/x;->c(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/sigmob/sdk/videoplayer/c;->h(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic d()V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/f$1;->a:Lcom/sigmob/sdk/base/views/f;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/x;->c(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/sigmob/sdk/videoplayer/c;->i(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 2
    new-instance v0, Lcom/sigmob/sdk/base/views/j0;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/base/views/j0;-><init>(Lcom/sigmob/sdk/base/views/f$1;)V

    invoke-static {v0}, Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory;->MainThreadRun(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 2
    new-instance v0, Lcom/sigmob/sdk/base/views/k0;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/base/views/k0;-><init>(Lcom/sigmob/sdk/base/views/f$1;)V

    invoke-static {v0}, Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory;->MainThreadRun(Ljava/lang/Runnable;)V

    return-void
.end method
