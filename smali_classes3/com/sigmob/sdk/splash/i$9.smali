.class Lcom/sigmob/sdk/splash/i$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/sdk/base/common/al$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/splash/i;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/splash/i;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/splash/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/splash/i$9;->a:Lcom/sigmob/sdk/splash/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public a(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/splash/i$9;->a:Lcom/sigmob/sdk/splash/i;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/i;->h(Lcom/sigmob/sdk/splash/i;)Lcom/sigmob/sdk/base/views/r;

    move-result-object v0

    instance-of v0, v0, Lcom/sigmob/sdk/base/views/ai;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i$9;->a:Lcom/sigmob/sdk/splash/i;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/i;->h(Lcom/sigmob/sdk/splash/i;)Lcom/sigmob/sdk/base/views/r;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/views/ai;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/views/ai;->a(F)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/splash/i$9;->a:Lcom/sigmob/sdk/splash/i;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/sigmob/sdk/splash/i;->a(Lcom/sigmob/sdk/splash/i;Ljava/util/Map;Z)V

    return-void
.end method
