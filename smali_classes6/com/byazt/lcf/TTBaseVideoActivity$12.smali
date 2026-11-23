.class public Lcom/byazt/lcf/TTBaseVideoActivity$12;
.super Lcom/byazt/sy/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x26,
        0x787
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/lcf/TTBaseVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/lcf/TTBaseVideoActivity;


# direct methods
.method public constructor <init>(Lcom/byazt/lcf/TTBaseVideoActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity$12;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/byazt/sy/c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()J
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$12;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    invoke-virtual {v0}, Lcom/byazt/fcd/c;->lr()Lcom/byazt/ouz/sl;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/ouz/sl;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public c(F)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$12;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    invoke-virtual {v0}, Lcom/byazt/fcd/c;->lr()Lcom/byazt/ouz/sl;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/byazt/ouz/sl;->c(F)V

    return-void
.end method

.method public c(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$12;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    invoke-virtual {v0}, Lcom/byazt/fcd/c;->lr()Lcom/byazt/ouz/sl;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/byazt/ouz/sl;->c(I)V

    return-void
.end method

.method public c(ILjava/lang/String;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$12;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    invoke-virtual {v0}, Lcom/byazt/fcd/c;->lr()Lcom/byazt/ouz/sl;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/byazt/ouz/sl;->c(ILjava/lang/String;)V

    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 3

    .line 6
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity$12;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(I)V

    .line 7
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity$12;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-static {p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->tt(Lcom/byazt/lcf/TTBaseVideoActivity;)Lcom/byazt/ete/ic;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$12;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-static {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->ve(Lcom/byazt/lcf/TTBaseVideoActivity;)Lcom/byazt/ete/ic;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/ete/p;->sp(Lcom/byazt/ete/ic;)Lcom/byazt/ete/p$c;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/byazt/sy/ve;->tt(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;ZLorg/json/JSONObject;)V

    return-void
.end method

.method public c(Landroid/view/View;ILcom/byazt/sr/ve;I)V
    .locals 4

    const/4 p4, 0x2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    if-ne p2, p4, :cond_1

    .line 23
    :cond_0
    instance-of v1, p3, Lcom/byazt/ete/gr;

    if-eqz v1, :cond_1

    .line 24
    check-cast p3, Lcom/byazt/ete/gr;

    .line 25
    new-instance v1, Lcom/byazt/ete/da;

    invoke-direct {v1}, Lcom/byazt/ete/da;-><init>()V

    .line 26
    iget v2, p3, Lcom/byazt/ete/gr;->c:F

    invoke-virtual {v1, v2}, Lcom/byazt/ete/da;->c(F)V

    .line 27
    iget v2, p3, Lcom/byazt/ete/gr;->tt:F

    invoke-virtual {v1, v2}, Lcom/byazt/ete/da;->tt(F)V

    .line 28
    iget v2, p3, Lcom/byazt/ete/gr;->ve:F

    invoke-virtual {v1, v2}, Lcom/byazt/ete/da;->ve(F)V

    .line 29
    iget v2, p3, Lcom/byazt/ete/gr;->uj:F

    invoke-virtual {v1, v2}, Lcom/byazt/ete/da;->uj(F)V

    .line 30
    iget-wide v2, p3, Lcom/byazt/ete/gr;->n:J

    invoke-virtual {v1, v2, v3}, Lcom/byazt/ete/da;->c(J)V

    .line 31
    iget-wide v2, p3, Lcom/byazt/ete/gr;->a:J

    invoke-virtual {v1, v2, v3}, Lcom/byazt/ete/da;->tt(J)V

    .line 32
    iget-boolean p3, p3, Lcom/byazt/ete/gr;->z:Z

    invoke-virtual {v1, p3}, Lcom/byazt/ete/da;->tt(Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ne p2, p4, :cond_2

    .line 33
    iget-object p3, p0, Lcom/byazt/lcf/TTBaseVideoActivity$12;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object p3, p3, Lcom/byazt/lcf/TTBaseVideoActivity;->lo:Lcom/byazt/hkv/n;

    invoke-virtual {p3, p1, v1}, Lcom/byazt/hkv/n;->c(Landroid/view/View;Lcom/byazt/ete/da;)V

    :cond_2
    if-ne p2, v0, :cond_3

    .line 34
    iget-object p2, p0, Lcom/byazt/lcf/TTBaseVideoActivity$12;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object p2, p2, Lcom/byazt/lcf/TTBaseVideoActivity;->lo:Lcom/byazt/hkv/n;

    invoke-virtual {p2, p1, v1}, Lcom/byazt/hkv/n;->c(Landroid/view/View;Lcom/byazt/ete/da;)V

    :cond_3
    return-void
.end method

.method public c(Landroid/view/View;ILcom/byazt/sr/ve;Lcom/byazt/ete/ir;)V
    .locals 4

    .line 9
    iget-object p2, p0, Lcom/byazt/lcf/TTBaseVideoActivity$12;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object p2, p2, Lcom/byazt/lcf/TTBaseVideoActivity;->lo:Lcom/byazt/hkv/n;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 10
    instance-of p2, p3, Lcom/byazt/ete/gr;

    if-eqz p2, :cond_0

    .line 11
    check-cast p3, Lcom/byazt/ete/gr;

    .line 12
    new-instance p2, Lcom/byazt/ete/da;

    invoke-direct {p2}, Lcom/byazt/ete/da;-><init>()V

    .line 13
    iget v2, p3, Lcom/byazt/ete/gr;->c:F

    invoke-virtual {p2, v2}, Lcom/byazt/ete/da;->c(F)V

    .line 14
    iget v2, p3, Lcom/byazt/ete/gr;->tt:F

    invoke-virtual {p2, v2}, Lcom/byazt/ete/da;->tt(F)V

    .line 15
    iget v2, p3, Lcom/byazt/ete/gr;->ve:F

    invoke-virtual {p2, v2}, Lcom/byazt/ete/da;->ve(F)V

    .line 16
    iget v2, p3, Lcom/byazt/ete/gr;->uj:F

    invoke-virtual {p2, v2}, Lcom/byazt/ete/da;->uj(F)V

    .line 17
    iget-wide v2, p3, Lcom/byazt/ete/gr;->n:J

    invoke-virtual {p2, v2, v3}, Lcom/byazt/ete/da;->c(J)V

    .line 18
    iget-wide v2, p3, Lcom/byazt/ete/gr;->a:J

    invoke-virtual {p2, v2, v3}, Lcom/byazt/ete/da;->tt(J)V

    .line 19
    iget-boolean v2, p3, Lcom/byazt/ete/gr;->z:Z

    invoke-virtual {p2, v2}, Lcom/byazt/ete/da;->tt(Z)V

    .line 20
    invoke-virtual {p3}, Lcom/byazt/ete/gr;->c()Lorg/json/JSONObject;

    move-result-object p3

    const-string v2, "isLottieInternalClick"

    invoke-virtual {p3, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p3

    goto :goto_0

    :cond_0
    move-object p2, v0

    const/4 p3, 0x0

    .line 21
    :goto_0
    iget-object v2, p0, Lcom/byazt/lcf/TTBaseVideoActivity$12;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v2, v2, Lcom/byazt/lcf/TTBaseVideoActivity;->lo:Lcom/byazt/hkv/n;

    invoke-virtual {v2, p1, p2}, Lcom/byazt/hkv/n;->c(Landroid/view/View;Lcom/byazt/ete/da;)V

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    .line 22
    :goto_1
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity$12;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-static {p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->uj(Lcom/byazt/lcf/TTBaseVideoActivity;)Lcom/byazt/ete/ic;

    move-result-object p1

    invoke-static {p1, p4, v1, v0, p3}, Lcom/byazt/sy/ve;->c(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;ZLorg/json/JSONObject;Z)V

    return-void
.end method

.method public c(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Lcom/byazt/ete/ic;)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$12;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    invoke-virtual {v0}, Lcom/byazt/fcd/c;->lr()Lcom/byazt/ouz/sl;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/byazt/ouz/sl;->c(Lcom/byazt/ete/ic;)V

    return-void
.end method

.method public n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$12;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/fcd/c;->lr()Lcom/byazt/ouz/sl;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Lcom/byazt/ouz/sl;->n()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setPauseFromExpressView(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$12;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/fcd/c;->lr()Lcom/byazt/ouz/sl;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0, p1}, Lcom/byazt/ouz/sl;->setPauseFromExpressView(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public tt()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$12;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    invoke-virtual {v0}, Lcom/byazt/fcd/c;->lr()Lcom/byazt/ouz/sl;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/ouz/sl;->tt()I

    move-result v0

    return v0
.end method

.method public tt(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$12;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    invoke-virtual {v0}, Lcom/byazt/fcd/c;->lr()Lcom/byazt/ouz/sl;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/byazt/ouz/sl;->tt(I)V

    return-void
.end method

.method public uj()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$12;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    invoke-virtual {v0}, Lcom/byazt/fcd/c;->lr()Lcom/byazt/ouz/sl;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/ouz/sl;->uj()V

    return-void
.end method

.method public uj(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$12;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0, p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->ve(I)V

    return-void
.end method

.method public ve()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$12;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    invoke-virtual {v0}, Lcom/byazt/fcd/c;->lr()Lcom/byazt/ouz/sl;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/ouz/sl;->ve()I

    move-result v0

    return v0
.end method

.method public ve(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$12;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    invoke-virtual {v0}, Lcom/byazt/fcd/c;->lr()Lcom/byazt/ouz/sl;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/byazt/ouz/sl;->ve(I)V

    return-void
.end method
