.class public Lcom/byazt/nm/uj$c$2;
.super Lcom/byazt/ft/ve;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x249,
        0x31d
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/nm/uj$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/nm/uj$c;


# direct methods
.method public constructor <init>(Lcom/byazt/nm/uj$c;Ljava/util/function/Function;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/nm/uj$c$2;->c:Lcom/byazt/nm/uj$c;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/byazt/ft/ve;-><init>(Ljava/util/function/Function;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/uj$c$2;->c:Lcom/byazt/nm/uj$c;

    invoke-static {v0}, Lcom/byazt/nm/uj$c;->i(Lcom/byazt/nm/uj$c;)Lcom/byazt/me/x;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/byazt/nm/uj$c$2;->c:Lcom/byazt/nm/uj$c;

    invoke-static {v0}, Lcom/byazt/nm/uj$c;->da(Lcom/byazt/nm/uj$c;)Lcom/byazt/me/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/me/x;->c()V

    :cond_0
    return-void
.end method

.method public c(II)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/byazt/nm/uj$c$2;->c:Lcom/byazt/nm/uj$c;

    invoke-static {v0}, Lcom/byazt/nm/uj$c;->sl(Lcom/byazt/nm/uj$c;)Lcom/byazt/me/x;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/byazt/nm/uj$c$2;->c:Lcom/byazt/nm/uj$c;

    invoke-static {v0}, Lcom/byazt/nm/uj$c;->t(Lcom/byazt/nm/uj$c;)Lcom/byazt/me/x;

    move-result-object v0

    new-instance v1, Lcom/byazt/pp/c;

    const-string v2, "MediaPlayer inter error code:"

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
    iget-object v0, p0, Lcom/byazt/nm/uj$c$2;->c:Lcom/byazt/nm/uj$c;

    invoke-static {v0}, Lcom/byazt/nm/uj$c;->my(Lcom/byazt/nm/uj$c;)Lcom/byazt/me/x;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/byazt/nm/uj$c$2;->c:Lcom/byazt/nm/uj$c;

    invoke-static {v0}, Lcom/byazt/nm/uj$c;->gt(Lcom/byazt/nm/uj$c;)Lcom/byazt/me/x;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/byazt/me/x;->c(JJ)V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/uj$c$2;->c:Lcom/byazt/nm/uj$c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/nm/uj$c;->rl(Lcom/byazt/nm/uj$c;)Lcom/byazt/me/x;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/nm/uj$c$2;->c:Lcom/byazt/nm/uj$c;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/nm/uj$c;->qy(Lcom/byazt/nm/uj$c;)Lcom/byazt/me/x;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/byazt/me/x;->n()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public tt()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/uj$c$2;->c:Lcom/byazt/nm/uj$c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/nm/uj$c;->u(Lcom/byazt/nm/uj$c;)Lcom/byazt/me/x;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/nm/uj$c$2;->c:Lcom/byazt/nm/uj$c;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/nm/uj$c;->yp(Lcom/byazt/nm/uj$c;)Lcom/byazt/me/x;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/byazt/me/x;->tt()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public uj()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/uj$c$2;->c:Lcom/byazt/nm/uj$c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/nm/uj$c;->nu(Lcom/byazt/nm/uj$c;)Lcom/byazt/me/x;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/nm/uj$c$2;->c:Lcom/byazt/nm/uj$c;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/nm/uj$c;->rh(Lcom/byazt/nm/uj$c;)Lcom/byazt/me/x;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/byazt/me/x;->uj()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public ve()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/uj$c$2;->c:Lcom/byazt/nm/uj$c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/nm/uj$c;->z(Lcom/byazt/nm/uj$c;)Lcom/byazt/me/x;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/nm/uj$c$2;->c:Lcom/byazt/nm/uj$c;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/nm/uj$c;->m(Lcom/byazt/nm/uj$c;)Lcom/byazt/me/x;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/byazt/me/x;->ve()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
