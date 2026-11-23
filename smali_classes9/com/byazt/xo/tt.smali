.class public Lcom/byazt/xo/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x417,
        0xd
    }
.end annotation


# instance fields
.field public c:I

.field public tt:I

.field public uj:Ljava/lang/Runnable;

.field public ve:J


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x2710

    .line 5
    .line 6
    iput v0, p0, Lcom/byazt/xo/tt;->c:I

    .line 7
    .line 8
    iput p1, p0, Lcom/byazt/xo/tt;->tt:I

    .line 9
    .line 10
    return-void
.end method

.method private c()V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/byazt/xo/tt;->uj:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 15
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/byazt/xo/tt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/xo/tt;->c()V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/xo/tt;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/xo/tt;->tt(I)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/xo/tt;Ljava/lang/Runnable;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/byazt/xo/tt;->tt(Ljava/lang/Runnable;)V

    return-void
.end method

.method private tt(I)V
    .locals 6

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">> tk: "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/byazt/xo/tt;->tt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string v2, " run"

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    const-string v2, " cancel"

    goto :goto_0

    :cond_1
    const-string v2, " runed"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isBst: true, tmgap: "

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/byazt/xo/tt;->ve:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "bstsdk"

    if-ne p1, v1, :cond_2

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 12
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private tt(Ljava/lang/Runnable;)V
    .locals 4

    const-string v0, "m_s"

    .line 1
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/dna/zm;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 2
    iget v3, p0, Lcom/byazt/xo/tt;->tt:I

    invoke-interface {v0, v2, v3, v1}, Lcom/byazt/dna/zm;->assertAndSetState(IIZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x3

    .line 3
    invoke-direct {p0, p1}, Lcom/byazt/xo/tt;->tt(I)V

    .line 4
    invoke-direct {p0}, Lcom/byazt/xo/tt;->c()V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 5
    invoke-direct {p0, v1}, Lcom/byazt/xo/tt;->tt(I)V

    .line 6
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method


# virtual methods
.method public c(I)Lcom/byazt/xo/tt;
    .locals 0

    if-gtz p1, :cond_0

    const/16 p1, 0x2710

    goto :goto_0

    :cond_0
    mul-int/lit16 p1, p1, 0x3e8

    .line 4
    :goto_0
    iput p1, p0, Lcom/byazt/xo/tt;->c:I

    return-object p0
.end method

.method public c(Ljava/lang/Runnable;)V
    .locals 4

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/xo/tt;->ve:J

    .line 6
    invoke-static {}, Lcom/byazt/xo/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    invoke-direct {p0, p1}, Lcom/byazt/xo/tt;->tt(Ljava/lang/Runnable;)V

    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    .line 9
    invoke-direct {p0, p1}, Lcom/byazt/xo/tt;->tt(I)V

    .line 10
    invoke-direct {p0}, Lcom/byazt/xo/tt;->c()V

    return-void

    .line 11
    :cond_1
    invoke-static {}, Lcom/byazt/xo/c;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 12
    invoke-direct {p0, p1}, Lcom/byazt/xo/tt;->tt(Ljava/lang/Runnable;)V

    return-void

    .line 13
    :cond_2
    invoke-static {}, Lcom/byazt/nr/da;->c()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/byazt/xo/tt$1;

    invoke-direct {v1, p0, p1}, Lcom/byazt/xo/tt$1;-><init>(Lcom/byazt/xo/tt;Ljava/lang/Runnable;)V

    iget p1, p0, Lcom/byazt/xo/tt;->c:I

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
