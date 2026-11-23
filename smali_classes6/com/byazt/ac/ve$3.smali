.class public Lcom/byazt/ac/ve$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/at/n;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x59,
        0x15b
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/ac/ve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ac/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/ac/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ac/ve$3;->c:Lcom/byazt/ac/ve;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/byazt/ac/ve$3;->c:Lcom/byazt/ac/ve;

    iget-object v0, v0, Lcom/byazt/ac/c;->tt:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/kp;->sl(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/byazt/ac/ve$3;->c:Lcom/byazt/ac/ve;

    iget-object v0, v0, Lcom/byazt/ac/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/byazt/lcf/TTBaseVideoActivity;->uj(I)V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ac/ve$3;->c:Lcom/byazt/ac/ve;

    iget-object v0, v0, Lcom/byazt/ac/c;->x:Lcom/byazt/omf/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->i(Z)V

    .line 2
    iget-object v0, p0, Lcom/byazt/ac/ve$3;->c:Lcom/byazt/ac/ve;

    iget-object v0, v0, Lcom/byazt/ac/c;->tt:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/my;->u(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/byazt/ac/ve$3;->c:Lcom/byazt/ac/ve;

    invoke-static {v0}, Lcom/byazt/ac/ve;->ve(Lcom/byazt/ac/ve;)Lcom/byazt/kcl/tt$tt;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/kcl/tt$tt;->tt()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/byazt/ac/ve$3;->c:Lcom/byazt/ac/ve;

    iget-object v0, v0, Lcom/byazt/ac/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0, p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->ve(I)V

    return-void
.end method

.method public tt()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ac/ve$3;->c:Lcom/byazt/ac/ve;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/ac/c;->tt:Lcom/byazt/ete/ic;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/byazt/ete/my;->c(Lcom/byazt/ete/ic;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/ac/ve$3;->c:Lcom/byazt/ac/ve;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/byazt/ac/c;->tt:Lcom/byazt/ete/ic;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/byazt/ete/my;->u(Lcom/byazt/ete/ic;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/byazt/ac/ve$3;->c:Lcom/byazt/ac/ve;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/byazt/ac/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-virtual {v0, v1}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(I)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method
