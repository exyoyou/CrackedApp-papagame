.class public final Lcom/byazt/bu/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x44,
        0x14
    }
.end annotation


# instance fields
.field public volatile c:Lcom/byazt/bu/uj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/bu/uj<",
            "Lcom/byazt/bu/tt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    invoke-static {v0}, Lcom/byazt/bu/uj;->c(I)Lcom/byazt/bu/uj;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/byazt/bu/c;->c:Lcom/byazt/bu/uj;

    .line 10
    .line 11
    return-void
.end method

.method private c(I)V
    .locals 1

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/byazt/bu/c;->c:Lcom/byazt/bu/uj;

    invoke-virtual {v0}, Lcom/byazt/bu/uj;->tt()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 16
    iget-object v0, p0, Lcom/byazt/bu/c;->c:Lcom/byazt/bu/uj;

    invoke-virtual {v0}, Lcom/byazt/bu/uj;->c()Lcom/byazt/bu/ve;

    move-result-object v0

    check-cast v0, Lcom/byazt/bu/tt;

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {v0}, Lcom/byazt/bu/tt;->tt()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private tt(Lcom/byazt/dna/qp$c;Ljava/lang/String;)Lcom/byazt/bu/tt;
    .locals 1

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 7
    .line 8
    .line 9
    new-instance p2, Lcom/byazt/bu/tt;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-direct {p2, v0, p1}, Lcom/byazt/bu/tt;-><init>(Landroid/os/Looper;Lcom/byazt/dna/qp$c;)V

    .line 16
    .line 17
    .line 18
    return-object p2
.end method


# virtual methods
.method public c(Ljava/lang/String;)Landroid/os/Handler;
    .locals 1

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "csj-handler"

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/byazt/bu/c;->c(Lcom/byazt/dna/qp$c;Ljava/lang/String;)Lcom/byazt/bu/tt;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/byazt/dna/qp$c;Ljava/lang/String;)Lcom/byazt/bu/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/bu/c;->c:Lcom/byazt/bu/uj;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/byazt/bu/c;->c:Lcom/byazt/bu/uj;

    invoke-virtual {v0}, Lcom/byazt/bu/uj;->c()Lcom/byazt/bu/ve;

    move-result-object v0

    check-cast v0, Lcom/byazt/bu/tt;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/bu/tt;->c(Lcom/byazt/dna/qp$c;)V

    .line 4
    new-instance p1, Lcom/byazt/bu/c$1;

    invoke-direct {p1, p0, p2}, Lcom/byazt/bu/c$1;-><init>(Lcom/byazt/bu/c;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 5
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/byazt/bu/c;->tt(Lcom/byazt/dna/qp$c;Ljava/lang/String;)Lcom/byazt/bu/tt;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, v0}, Lcom/byazt/bu/c;->c(I)V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/byazt/bu/c;->c:Lcom/byazt/bu/uj;

    return-void
.end method

.method public c(Landroid/os/Handler;)Z
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/byazt/bu/c;->c:Lcom/byazt/bu/uj;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    :cond_0
    return v1

    .line 9
    :cond_1
    instance-of v0, p1, Lcom/byazt/bu/tt;

    if-eqz v0, :cond_3

    .line 10
    check-cast p1, Lcom/byazt/bu/tt;

    .line 11
    iget-object v0, p0, Lcom/byazt/bu/c;->c:Lcom/byazt/bu/uj;

    invoke-virtual {v0, p1}, Lcom/byazt/bu/uj;->c(Lcom/byazt/bu/ve;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 12
    invoke-virtual {p1}, Lcom/byazt/bu/tt;->tt()V

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method
