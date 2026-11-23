.class Lcom/aggmoread/sdk/z/a/r/d$k$a;
.super Lcom/aggmoread/sdk/z/a/m/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/a/r/d$k;->a(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:J

.field final synthetic g:Lcom/aggmoread/sdk/z/a/r/d$k;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/a/r/d$k;JJJ)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/r/d$k$a;->g:Lcom/aggmoread/sdk/z/a/r/d$k;

    iput-wide p6, p0, Lcom/aggmoread/sdk/z/a/r/d$k$a;->f:J

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/aggmoread/sdk/z/a/m/m;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTimerTick millisUntilFinished "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", duration "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", videoCountDownTimer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/r/d$k$a;->g:Lcom/aggmoread/sdk/z/a/r/d$k;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/a/r/d$k;->a:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-static {v1}, Lcom/aggmoread/sdk/z/a/r/d;->d(Lcom/aggmoread/sdk/z/a/r/d;)Lcom/aggmoread/sdk/z/a/m/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApiRewardVideoViewTAG"

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x7d0

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmp-long v4, p3, v0

    if-ltz v4, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d$k$a;->g:Lcom/aggmoread/sdk/z/a/r/d$k;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/a/r/d$k;->a:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/r/d;->t(Lcom/aggmoread/sdk/z/a/r/d;)Lcom/aggmoread/sdk/z/a/t/c$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d$k$a;->g:Lcom/aggmoread/sdk/z/a/r/d$k;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/a/r/d$k;->a:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/r/d;->e(Lcom/aggmoread/sdk/z/a/r/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d$k$a;->g:Lcom/aggmoread/sdk/z/a/r/d$k;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/a/r/d$k;->a:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/r/d;->t(Lcom/aggmoread/sdk/z/a/r/d;)Lcom/aggmoread/sdk/z/a/t/c$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/a/t/c$b;->d()V

    :cond_0
    const-wide/16 v0, 0x3e8

    cmp-long v4, p1, v0

    if-gtz v4, :cond_1

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/r/d$k$a;->g:Lcom/aggmoread/sdk/z/a/r/d$k;

    iget-object v2, v2, Lcom/aggmoread/sdk/z/a/r/d$k;->a:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-static {v2}, Lcom/aggmoread/sdk/z/a/r/d;->f(Lcom/aggmoread/sdk/z/a/r/d;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/aggmoread/sdk/z/a/r/d$k$a;->g:Lcom/aggmoread/sdk/z/a/r/d$k;

    iget-object v4, v4, Lcom/aggmoread/sdk/z/a/r/d$k;->a:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-static {v4}, Lcom/aggmoread/sdk/z/a/r/d;->f(Lcom/aggmoread/sdk/z/a/r/d;)Landroid/widget/TextView;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    div-long v5, p1, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v2

    const-string v2, "%ss"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/r/d$k$a;->g:Lcom/aggmoread/sdk/z/a/r/d$k;

    iget-object v2, v2, Lcom/aggmoread/sdk/z/a/r/d$k;->a:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-static {v2, p3, p4}, Lcom/aggmoread/sdk/z/a/r/d;->a(Lcom/aggmoread/sdk/z/a/r/d;J)V

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/r/d$k$a;->g:Lcom/aggmoread/sdk/z/a/r/d$k;

    iget-object v2, v2, Lcom/aggmoread/sdk/z/a/r/d$k;->a:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-static {v2}, Lcom/aggmoread/sdk/z/a/r/d;->g(Lcom/aggmoread/sdk/z/a/r/d;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/r/d$k$a;->g:Lcom/aggmoread/sdk/z/a/r/d$k;

    iget-object v2, v2, Lcom/aggmoread/sdk/z/a/r/d$k;->a:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-static {v2}, Lcom/aggmoread/sdk/z/a/r/d;->h(Lcom/aggmoread/sdk/z/a/r/d;)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/aggmoread/sdk/z/a/r/d$k$a;->f:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_3

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_2

    goto :goto_1

    :cond_2
    sub-long p1, v2, p3

    :cond_3
    :goto_1
    cmp-long p3, p1, v0

    if-ltz p3, :cond_4

    iget-object p3, p0, Lcom/aggmoread/sdk/z/a/r/d$k$a;->g:Lcom/aggmoread/sdk/z/a/r/d$k;

    iget-object p3, p3, Lcom/aggmoread/sdk/z/a/r/d$k;->a:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-static {p3, p1, p2}, Lcom/aggmoread/sdk/z/a/r/d;->b(Lcom/aggmoread/sdk/z/a/r/d;J)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/d$k$a;->g:Lcom/aggmoread/sdk/z/a/r/d$k;

    iget-object p1, p1, Lcom/aggmoread/sdk/z/a/r/d$k;->a:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/r/d;->i(Lcom/aggmoread/sdk/z/a/r/d;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public c()V
    .locals 2

    const-string v0, "ApiRewardVideoViewTAG"

    const-string v1, "onTimerFinish "

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d$k$a;->g:Lcom/aggmoread/sdk/z/a/r/d$k;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/a/r/d$k;->a:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/r/d;->j(Lcom/aggmoread/sdk/z/a/r/d;)V

    return-void
.end method
