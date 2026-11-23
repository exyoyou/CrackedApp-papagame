.class public Lcom/byazt/pj/n$n;
.super Lcom/byazt/kt/RecyclerView$gu;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/pj/n$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x69d,
        0x477
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/pj/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "n"
.end annotation


# instance fields
.field public final synthetic my:Lcom/byazt/pj/n;

.field public nu:Lcom/byazt/xj/ve;

.field public rh:Lcom/byazt/sz/z;


# direct methods
.method public constructor <init>(Lcom/byazt/pj/n;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/pj/n$n;->my:Lcom/byazt/pj/n;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/byazt/kt/RecyclerView$gu;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public P_()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/pj/n$n;->my:Lcom/byazt/pj/n;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/pj/n;->c(Lcom/byazt/pj/n;)Lcom/byazt/pj/uj;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/pj/n$n;->my:Lcom/byazt/pj/n;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/pj/n;->c(Lcom/byazt/pj/n;)Lcom/byazt/pj/uj;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/byazt/pj/n$n;->nu:Lcom/byazt/xj/ve;

    .line 16
    .line 17
    invoke-interface {v0, v1}, Lcom/byazt/pj/uj;->tt(Lcom/byazt/xj/ve;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public Q_()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/pj/n$n;->my:Lcom/byazt/pj/n;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/pj/n;->c(Lcom/byazt/pj/n;)Lcom/byazt/pj/uj;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/pj/n$n;->my:Lcom/byazt/pj/n;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/pj/n;->c(Lcom/byazt/pj/n;)Lcom/byazt/pj/uj;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/byazt/pj/n$n;->nu:Lcom/byazt/xj/ve;

    .line 16
    .line 17
    invoke-interface {v0, v1}, Lcom/byazt/pj/uj;->c(Lcom/byazt/xj/ve;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/sz/z;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/pj/n$n;->rh:Lcom/byazt/sz/z;

    return-void
.end method

.method public c(Lcom/byazt/xj/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/pj/n$n;->nu:Lcom/byazt/xj/ve;

    return-void
.end method

.method public p()Lcom/byazt/xj/ve;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/pj/n$n;->nu:Lcom/byazt/xj/ve;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/pj/n$n;->nu:Lcom/byazt/xj/ve;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/xj/ve;->i()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
