.class Lcom/windmill/sdk/strategy/l$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/strategy/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/sdk/strategy/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/strategy/l;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/strategy/l;)V
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
    iput-object p1, p0, Lcom/windmill/sdk/strategy/l$2;->a:Lcom/windmill/sdk/strategy/l;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/windmill/sdk/strategy/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adStrategy"
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WMPreloadManager onCancelTimer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/windmill/sdk/strategy/l$2;->a:Lcom/windmill/sdk/strategy/l;

    invoke-static {v0}, Lcom/windmill/sdk/strategy/l;->c(Lcom/windmill/sdk/strategy/l;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "adStrategy",
            "error",
            "event_type"
        }
    .end annotation

    .line 4
    iget-object p3, p0, Lcom/windmill/sdk/strategy/l$2;->a:Lcom/windmill/sdk/strategy/l;

    invoke-static {p3}, Lcom/windmill/sdk/strategy/l;->c(Lcom/windmill/sdk/strategy/l;)Landroid/os/Handler;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, v0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 5
    invoke-virtual {p1, v0, p2}, Lcom/windmill/sdk/strategy/a;->a(ZLcom/windmill/sdk/base/WMAdapterError;)V

    .line 6
    iget-object p3, p0, Lcom/windmill/sdk/strategy/l$2;->a:Lcom/windmill/sdk/strategy/l;

    invoke-static {p3, p1, p2}, Lcom/windmill/sdk/strategy/l;->a(Lcom/windmill/sdk/strategy/l;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V

    .line 7
    iget-object p3, p0, Lcom/windmill/sdk/strategy/l$2;->a:Lcom/windmill/sdk/strategy/l;

    invoke-virtual {p3, p1}, Lcom/windmill/sdk/strategy/l;->a(Lcom/windmill/sdk/strategy/a;)V

    .line 8
    invoke-virtual {p2}, Lcom/windmill/sdk/base/WMAdapterError;->getErrorCode()I

    move-result p3

    sget-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_CHANNEL_LOAD_AD_TIME_OUT:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v0

    if-ne p3, v0, :cond_0

    .line 9
    iget-object p3, p0, Lcom/windmill/sdk/strategy/l$2;->a:Lcom/windmill/sdk/strategy/l;

    invoke-static {p3}, Lcom/windmill/sdk/strategy/l;->d(Lcom/windmill/sdk/strategy/l;)Lcom/windmill/sdk/common/l;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/windmill/sdk/strategy/l$2;->a:Lcom/windmill/sdk/strategy/l;

    invoke-static {p3}, Lcom/windmill/sdk/strategy/l;->d(Lcom/windmill/sdk/strategy/l;)Lcom/windmill/sdk/common/l;

    move-result-object p3

    iget-boolean p3, p3, Lcom/windmill/sdk/common/l;->f:Z

    if-eqz p3, :cond_0

    .line 10
    iget-object p3, p0, Lcom/windmill/sdk/strategy/l$2;->a:Lcom/windmill/sdk/strategy/l;

    invoke-static {p3}, Lcom/windmill/sdk/strategy/l;->d(Lcom/windmill/sdk/strategy/l;)Lcom/windmill/sdk/common/l;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adStrategy",
            "adapter"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/windmill/sdk/strategy/l$2;->a:Lcom/windmill/sdk/strategy/l;

    invoke-static {p2}, Lcom/windmill/sdk/strategy/l;->c(Lcom/windmill/sdk/strategy/l;)Landroid/os/Handler;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 2
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/strategy/a;->g(Z)V

    .line 3
    iget-object p1, p0, Lcom/windmill/sdk/strategy/l$2;->a:Lcom/windmill/sdk/strategy/l;

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/l;->b()V

    return-void
.end method
