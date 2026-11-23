.class Lcom/aggmoread/sdk/z/a/r/d$f;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/a/r/d;->F()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/a/r/d;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/a/r/d;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/r/d$f;->a:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    const-string v0, "ApiRewardVideoViewTAG"

    const-string v1, "startTimeOutCountDown onTimerFinish"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d$f;->a:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/r/d;->u(Lcom/aggmoread/sdk/z/a/r/d;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d$f;->a:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/r/d;->t(Lcom/aggmoread/sdk/z/a/r/d;)Lcom/aggmoread/sdk/z/a/t/c$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d$f;->a:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/r/d;->t(Lcom/aggmoread/sdk/z/a/r/d;)Lcom/aggmoread/sdk/z/a/t/c$b;

    move-result-object v0

    const-string v1, "\u89c6\u9891\u8d44\u6e90\u52a0\u8f7d\u8d85\u65f6\uff0c\u5e7f\u544a\u64ad\u653e\u5931\u8d25!"

    invoke-interface {v0, v1}, Lcom/aggmoread/sdk/z/a/t/c$b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
