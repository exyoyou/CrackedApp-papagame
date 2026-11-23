.class public Lcom/byazt/hz/ve;
.super Lcom/byazt/hz/tt;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ix/tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2bd,
        0x36
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/hz/tt;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/byazt/iz/tt;->h()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c(Landroid/content/Context;Lcom/byazt/ll/tt;Lcom/byazt/ix/uj$ve;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p2}, Lcom/byazt/hz/tt;->c(Lcom/byazt/ll/tt;)V

    .line 2
    iget-object p1, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/byazt/iz/tt;->ve(Z)V

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide p1

    .line 4
    iget-object v0, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    invoke-virtual {v0, p1, p2}, Lcom/byazt/iz/tt;->c(J)V

    .line 5
    iget-object v0, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    invoke-virtual {v0, p3}, Lcom/byazt/iz/tt;->c(Lcom/byazt/ix/uj$ve;)V

    .line 6
    invoke-static {}, Lcom/byazt/ix/uj;->c()Lcom/byazt/ix/uj;

    move-result-object p3

    iget-object v0, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    invoke-virtual {p3, v0, p1, p2}, Lcom/byazt/ix/uj;->c(Ljava/lang/String;J)V

    .line 7
    invoke-virtual {p0}, Lcom/byazt/hz/tt;->i()Lcom/byazt/om/sp;

    return-void
.end method

.method public e_()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/byazt/pp/tt;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/iz/tt;->p()Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public uj()Lcom/byazt/iz/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    .line 2
    .line 3
    return-object v0
.end method
