.class public Lcom/byazt/nm/x$c$3;
.super Lcom/byazt/bf/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x249,
        0x934
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/nm/x$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/nm/x$c;


# direct methods
.method public constructor <init>(Lcom/byazt/nm/x$c;Ljava/util/function/Function;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/nm/x$c$3;->c:Lcom/byazt/nm/x$c;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/byazt/bf/c;-><init>(Ljava/util/function/Function;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(II)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/byazt/nm/x$c$3;->c:Lcom/byazt/nm/x$c;

    invoke-static {v0}, Lcom/byazt/nm/x$c;->sl(Lcom/byazt/nm/x$c;)Lcom/byazt/me/x;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/byazt/nm/x$c$3;->c:Lcom/byazt/nm/x$c;

    invoke-static {v0}, Lcom/byazt/nm/x$c;->t(Lcom/byazt/nm/x$c;)Lcom/byazt/me/x;

    move-result-object v0

    new-instance v1, Lcom/byazt/pp/c;

    const-string v2, "Android MediaPlay Error Code :"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/byazt/me/x;->c(Lcom/byazt/pp/c;)V

    :cond_0
    return-void
.end method

.method public c(JJ)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/byazt/nm/x$c$3;->c:Lcom/byazt/nm/x$c;

    invoke-static {v0}, Lcom/byazt/nm/x$c;->my(Lcom/byazt/nm/x$c;)Lcom/byazt/me/x;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/byazt/nm/x$c$3;->c:Lcom/byazt/nm/x$c;

    invoke-static {v0}, Lcom/byazt/nm/x$c;->gt(Lcom/byazt/nm/x$c;)Lcom/byazt/me/x;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/byazt/me/x;->c(JJ)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/nc/da;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/byazt/nm/x$c$3;->c:Lcom/byazt/nm/x$c;

    invoke-static {p1}, Lcom/byazt/nm/x$c;->i(Lcom/byazt/nm/x$c;)Lcom/byazt/me/x;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/byazt/nm/x$c$3;->c:Lcom/byazt/nm/x$c;

    invoke-static {p1}, Lcom/byazt/nm/x$c;->da(Lcom/byazt/nm/x$c;)Lcom/byazt/me/x;

    move-result-object p1

    invoke-interface {p1}, Lcom/byazt/me/x;->c()V

    :cond_0
    return-void
.end method

.method public n(Lcom/byazt/nc/da;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/byazt/nm/x$c$3;->c:Lcom/byazt/nm/x$c;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/byazt/nm/x$c;->rl(Lcom/byazt/nm/x$c;)Lcom/byazt/me/x;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/byazt/nm/x$c$3;->c:Lcom/byazt/nm/x$c;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/byazt/nm/x$c;->qy(Lcom/byazt/nm/x$c;)Lcom/byazt/me/x;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/byazt/me/x;->n()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public tt(Lcom/byazt/nc/da;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/byazt/nm/x$c$3;->c:Lcom/byazt/nm/x$c;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/byazt/nm/x$c;->u(Lcom/byazt/nm/x$c;)Lcom/byazt/me/x;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/byazt/nm/x$c$3;->c:Lcom/byazt/nm/x$c;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/byazt/nm/x$c;->yp(Lcom/byazt/nm/x$c;)Lcom/byazt/me/x;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/byazt/me/x;->tt()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public uj(Lcom/byazt/nc/da;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/byazt/nm/x$c$3;->c:Lcom/byazt/nm/x$c;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/byazt/nm/x$c;->nu(Lcom/byazt/nm/x$c;)Lcom/byazt/me/x;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/byazt/nm/x$c$3;->c:Lcom/byazt/nm/x$c;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/byazt/nm/x$c;->rh(Lcom/byazt/nm/x$c;)Lcom/byazt/me/x;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/byazt/me/x;->uj()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public ve(Lcom/byazt/nc/da;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/byazt/nm/x$c$3;->c:Lcom/byazt/nm/x$c;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/byazt/nm/x$c;->z(Lcom/byazt/nm/x$c;)Lcom/byazt/me/x;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/byazt/nm/x$c$3;->c:Lcom/byazt/nm/x$c;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/byazt/nm/x$c;->m(Lcom/byazt/nm/x$c;)Lcom/byazt/me/x;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/byazt/me/x;->ve()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
