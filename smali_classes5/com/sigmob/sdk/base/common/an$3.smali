.class Lcom/sigmob/sdk/base/common/an$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/sdk/base/common/ao$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/common/an;->b(Landroid/content/Context;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/common/am;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/sigmob/sdk/base/common/an;

.field final synthetic d:Landroid/net/Uri;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/sigmob/sdk/base/common/an;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/common/an;Lcom/sigmob/sdk/base/common/am;Landroid/content/Context;Lcom/sigmob/sdk/base/common/an;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$followDeepLink",
            "val$context",
            "val$finalUrlHandler",
            "val$deeplinkUri",
            "val$finalHandleUrL"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/an$3;->f:Lcom/sigmob/sdk/base/common/an;

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/an$3;->a:Lcom/sigmob/sdk/base/common/am;

    iput-object p3, p0, Lcom/sigmob/sdk/base/common/an$3;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/sigmob/sdk/base/common/an$3;->c:Lcom/sigmob/sdk/base/common/an;

    iput-object p5, p0, Lcom/sigmob/sdk/base/common/an$3;->d:Landroid/net/Uri;

    iput-object p6, p0, Lcom/sigmob/sdk/base/common/an$3;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/base/common/an$3;Ljava/lang/String;Lcom/sigmob/sdk/base/common/am;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/base/common/an$3;->b(Ljava/lang/String;Lcom/sigmob/sdk/base/common/am;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/String;Lcom/sigmob/sdk/base/common/am;)V
    .locals 1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/an$3;->f:Lcom/sigmob/sdk/base/common/an;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/an;->b(Lcom/sigmob/sdk/base/common/an;)Lcom/sigmob/sdk/base/common/an$b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sigmob/sdk/base/common/an$b;->b(Ljava/lang/String;Lcom/sigmob/sdk/base/common/am;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static synthetic b(Lcom/sigmob/sdk/base/common/an$3;Ljava/lang/String;Lcom/sigmob/sdk/base/common/am;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/base/common/an$3;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/common/am;)V

    return-void
.end method

.method private synthetic b(Ljava/lang/String;Lcom/sigmob/sdk/base/common/am;)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/an$3;->f:Lcom/sigmob/sdk/base/common/an;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/an;->b(Lcom/sigmob/sdk/base/common/an;)Lcom/sigmob/sdk/base/common/an$b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sigmob/sdk/base/common/an$b;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/common/am;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static synthetic c(Lcom/sigmob/sdk/base/common/an$3;Ljava/lang/String;Lcom/sigmob/sdk/base/common/am;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/base/common/an$3;->d(Ljava/lang/String;Lcom/sigmob/sdk/base/common/am;)V

    return-void
.end method

.method private synthetic c(Ljava/lang/String;Lcom/sigmob/sdk/base/common/am;)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/an$3;->f:Lcom/sigmob/sdk/base/common/an;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/an;->b(Lcom/sigmob/sdk/base/common/an;)Lcom/sigmob/sdk/base/common/an$b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sigmob/sdk/base/common/an$b;->b(Ljava/lang/String;Lcom/sigmob/sdk/base/common/am;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static synthetic d(Lcom/sigmob/sdk/base/common/an$3;Ljava/lang/String;Lcom/sigmob/sdk/base/common/am;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/base/common/an$3;->c(Ljava/lang/String;Lcom/sigmob/sdk/base/common/am;)V

    return-void
.end method

.method private synthetic d(Ljava/lang/String;Lcom/sigmob/sdk/base/common/am;)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/an$3;->f:Lcom/sigmob/sdk/base/common/an;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/an;->b(Lcom/sigmob/sdk/base/common/an;)Lcom/sigmob/sdk/base/common/an$b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sigmob/sdk/base/common/an$b;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/common/am;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolvedUrl"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/an$3;->a:Lcom/sigmob/sdk/base/common/am;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lcom/sigmob/sdk/base/common/am;->c:Lcom/sigmob/sdk/base/common/am;

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/sigmob/sdk/base/common/an$3;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/an$3;->c:Lcom/sigmob/sdk/base/common/an;

    iget-object v4, p0, Lcom/sigmob/sdk/base/common/an$3;->f:Lcom/sigmob/sdk/base/common/an;

    invoke-static {v4}, Lcom/sigmob/sdk/base/common/an;->a(Lcom/sigmob/sdk/base/common/an;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v4

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/sigmob/sdk/base/common/am;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/sigmob/sdk/base/common/an;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/windad/WindAds;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/sigmob/sdk/base/common/r0;

    invoke-direct {v2, p0, p1, v0}, Lcom/sigmob/sdk/base/common/r0;-><init>(Lcom/sigmob/sdk/base/common/an$3;Ljava/lang/String;Lcom/sigmob/sdk/base/common/am;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/windad/WindAds;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/sigmob/sdk/base/common/s0;

    invoke-direct {v2, p0, p1, v0}, Lcom/sigmob/sdk/base/common/s0;-><init>(Lcom/sigmob/sdk/base/common/an$3;Ljava/lang/String;Lcom/sigmob/sdk/base/common/am;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "throwable"
        }
    .end annotation

    .line 4
    :try_start_0
    iget-object p1, p0, Lcom/sigmob/sdk/base/common/an$3;->a:Lcom/sigmob/sdk/base/common/am;

    iget-object p2, p0, Lcom/sigmob/sdk/base/common/an$3;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/an$3;->d:Landroid/net/Uri;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/an$3;->c:Lcom/sigmob/sdk/base/common/an;

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/an$3;->f:Lcom/sigmob/sdk/base/common/an;

    invoke-static {v2}, Lcom/sigmob/sdk/base/common/an;->a(Lcom/sigmob/sdk/base/common/an;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v2

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/sigmob/sdk/base/common/am;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/sigmob/sdk/base/common/an;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAds;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/sigmob/sdk/base/common/an$3;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/an$3;->a:Lcom/sigmob/sdk/base/common/am;

    new-instance v1, Lcom/sigmob/sdk/base/common/p0;

    invoke-direct {v1, p0, p2, v0}, Lcom/sigmob/sdk/base/common/p0;-><init>(Lcom/sigmob/sdk/base/common/an$3;Ljava/lang/String;Lcom/sigmob/sdk/base/common/am;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAds;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/sigmob/sdk/base/common/an$3;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/an$3;->a:Lcom/sigmob/sdk/base/common/am;

    new-instance v1, Lcom/sigmob/sdk/base/common/q0;

    invoke-direct {v1, p0, p2, v0}, Lcom/sigmob/sdk/base/common/q0;-><init>(Lcom/sigmob/sdk/base/common/an$3;Ljava/lang/String;Lcom/sigmob/sdk/base/common/am;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
