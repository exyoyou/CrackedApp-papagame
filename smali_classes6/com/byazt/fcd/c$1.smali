.class public Lcom/byazt/fcd/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ouz/sl;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x184,
        0x1a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/fcd/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/fcd/c;


# direct methods
.method public constructor <init>(Lcom/byazt/fcd/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/fcd/c$1;->c:Lcom/byazt/fcd/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/byazt/fcd/c$1;->c:Lcom/byazt/fcd/c;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 8
    .line 9
    const-string v2, "stats_reward_full_click_express_close"

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/byazt/ukr/yp;->uj(Lcom/byazt/ete/ic;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/fcd/c$1;->c:Lcom/byazt/fcd/c;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/byazt/kcl/n;->c()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public c()J
    .locals 4

    .line 10
    iget-object v0, p0, Lcom/byazt/fcd/c$1;->c:Lcom/byazt/fcd/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/byazt/fcd/tt;->x(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 12
    iget-object v0, p0, Lcom/byazt/fcd/c$1;->c:Lcom/byazt/fcd/c;

    invoke-virtual {v0}, Lcom/byazt/fcd/c;->yv()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/byazt/fcd/c$1;->c:Lcom/byazt/fcd/c;

    invoke-virtual {v0, v1}, Lcom/byazt/fcd/c;->a(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/fcd/c;->tt(I)V

    .line 14
    iget-object v0, p0, Lcom/byazt/fcd/c$1;->c:Lcom/byazt/fcd/c;

    iget-object v0, v0, Lcom/byazt/fcd/c;->h:Lcom/byazt/biq/ve;

    invoke-virtual {v0}, Lcom/byazt/biq/ve;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public c(F)V
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/byazt/fcd/c$1;->c:Lcom/byazt/fcd/c;

    iget-object v0, v0, Lcom/byazt/fcd/c;->h:Lcom/byazt/biq/ve;

    if-eqz v0, :cond_0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v1, p1

    float-to-int v1, v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/byazt/biq/ve;->ve(I)V

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/byazt/fcd/c$1;->c:Lcom/byazt/fcd/c;

    iget-object v0, v0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->pu()Lcom/byazt/kcl/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/kcl/a;->c(F)V

    return-void
.end method

.method public c(FFFFI)V
    .locals 7

    .line 15
    iget-object v0, p0, Lcom/byazt/fcd/c$1;->c:Lcom/byazt/fcd/c;

    iget-object v1, v0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(FFFFI)V

    return-void
.end method

.method public c(I)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/byazt/fcd/c$1;->c:Lcom/byazt/fcd/c;

    iget-object p1, p1, Lcom/byazt/fcd/c;->my:Lcom/byazt/kcl/a;

    invoke-virtual {p1}, Lcom/byazt/kcl/a;->sp()V

    :goto_0
    return-void

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/byazt/fcd/c$1;->c:Lcom/byazt/fcd/c;

    iget-object p1, p1, Lcom/byazt/fcd/c;->my:Lcom/byazt/kcl/a;

    invoke-virtual {p1}, Lcom/byazt/kcl/a;->yv()V

    return-void

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/byazt/fcd/c$1;->c:Lcom/byazt/fcd/c;

    iget-object p1, p1, Lcom/byazt/fcd/c;->my:Lcom/byazt/kcl/a;

    invoke-virtual {p1}, Lcom/byazt/kcl/a;->zm()V

    return-void

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/byazt/fcd/c$1;->c:Lcom/byazt/fcd/c;

    iget-object p1, p1, Lcom/byazt/fcd/c;->my:Lcom/byazt/kcl/a;

    invoke-virtual {p1}, Lcom/byazt/kcl/a;->tt()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/byazt/fcd/c$1;->c:Lcom/byazt/fcd/c;

    iget-object p1, p1, Lcom/byazt/fcd/c;->my:Lcom/byazt/kcl/a;

    invoke-virtual {p1}, Lcom/byazt/kcl/a;->ve()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/byazt/fcd/c$1;->c:Lcom/byazt/fcd/c;

    iget-object p1, p1, Lcom/byazt/fcd/c;->my:Lcom/byazt/kcl/a;

    invoke-virtual {p1}, Lcom/byazt/kcl/a;->nb()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    .line 9
    :cond_4
    iget-object p1, p0, Lcom/byazt/fcd/c$1;->c:Lcom/byazt/fcd/c;

    iget-object p1, p1, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/byazt/lcf/TTBaseVideoActivity;->tt(JZ)Z

    :cond_5
    :goto_1
    return-void
.end method

.method public c(ILjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Lcom/byazt/ete/ic;)V
    .locals 4

    .line 19
    iget-object v0, p0, Lcom/byazt/fcd/c$1;->c:Lcom/byazt/fcd/c;

    iget-object v1, v0, Lcom/byazt/fcd/c;->gt:Lcom/byazt/kcl/tt;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    if-eqz v0, :cond_0

    .line 20
    new-instance v0, Lcom/byazt/hkv/c;

    iget-object v1, p0, Lcom/byazt/fcd/c$1;->c:Lcom/byazt/fcd/c;

    iget-object v2, v1, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v1, v1, Lcom/byazt/fcd/c;->t:Ljava/lang/String;

    const/4 v3, 0x7

    invoke-direct {v0, v2, p1, v1, v3}, Lcom/byazt/hkv/c;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;I)V

    .line 21
    iget-object v1, p0, Lcom/byazt/fcd/c$1;->c:Lcom/byazt/fcd/c;

    iget-object v1, v1, Lcom/byazt/fcd/c;->gt:Lcom/byazt/kcl/tt;

    invoke-virtual {v1, p1, v0}, Lcom/byazt/kcl/tt;->c(Lcom/byazt/ete/ic;Lcom/byazt/hkv/tt;)V

    .line 22
    const-class v1, Lcom/byazt/vis/c;

    invoke-virtual {v0, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object v0

    check-cast v0, Lcom/byazt/vis/c;

    iget-object v1, p0, Lcom/byazt/fcd/c$1;->c:Lcom/byazt/fcd/c;

    iget-object v1, v1, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v1, p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(Lcom/byazt/ete/ic;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/byazt/vis/c;->c(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/fcd/c$1;->c:Lcom/byazt/fcd/c;

    iget-boolean v1, v0, Lcom/byazt/fcd/c;->u:Z

    if-eq v1, p1, :cond_0

    .line 3
    iput-boolean p1, v0, Lcom/byazt/fcd/c;->u:Z

    .line 4
    iget-object p1, v0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    invoke-virtual {p1}, Lcom/byazt/kcl/n;->tt()V

    :cond_0
    return-void
.end method

.method public da()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c$1;->c:Lcom/byazt/fcd/c;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    invoke-virtual {v0, v1}, Lcom/byazt/lcf/TTBaseVideoActivity;->x(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c$1;->c:Lcom/byazt/fcd/c;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/kcl/n;->ve()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public n()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/fcd/c$1;->c:Lcom/byazt/fcd/c;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/byazt/fcd/c;->yv:Z

    return-void
.end method

.method public n(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c$1;->c:Lcom/byazt/fcd/c;

    iget-object v0, v0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0, p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->i(I)V

    return-void
.end method

.method public setPauseFromExpressView(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/byazt/fcd/c$1;->c:Lcom/byazt/fcd/c;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->m(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public sp()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/byazt/fcd/c$1;->c:Lcom/byazt/fcd/c;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 8
    .line 9
    const-string v2, "stats_reward_full_click_express_close"

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/byazt/ukr/yp;->uj(Lcom/byazt/ete/ic;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/fcd/c$1;->c:Lcom/byazt/fcd/c;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->finish()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public tt()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c$1;->c:Lcom/byazt/fcd/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/byazt/fcd/tt;->x(Z)Z

    move-result v0

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/byazt/fcd/c$1;->c:Lcom/byazt/fcd/c;

    iget-object v0, v0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->kp()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/byazt/fcd/c$1;->c:Lcom/byazt/fcd/c;

    iget-object v0, v0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->oz()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    return v2

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/byazt/fcd/c$1;->c:Lcom/byazt/fcd/c;

    iget-object v0, v0, Lcom/byazt/fcd/c;->da:Lcom/byazt/dqg/n;

    invoke-virtual {v0}, Lcom/byazt/dqg/n;->tt()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    return v0

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/byazt/fcd/c$1;->c:Lcom/byazt/fcd/c;

    iget-object v0, v0, Lcom/byazt/fcd/c;->da:Lcom/byazt/dqg/n;

    invoke-virtual {v0}, Lcom/byazt/dqg/n;->ve()Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    .line 6
    :cond_4
    iget-object v0, p0, Lcom/byazt/fcd/c$1;->c:Lcom/byazt/fcd/c;

    iget-object v0, v0, Lcom/byazt/fcd/c;->my:Lcom/byazt/kcl/a;

    invoke-virtual {v0}, Lcom/byazt/kcl/a;->uj()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 7
    :cond_5
    iget-object v0, p0, Lcom/byazt/fcd/c$1;->c:Lcom/byazt/fcd/c;

    iget-object v0, v0, Lcom/byazt/fcd/c;->my:Lcom/byazt/kcl/a;

    invoke-virtual {v0}, Lcom/byazt/kcl/a;->tt()Z

    move-result v0

    if-eqz v0, :cond_6

    return v4

    .line 8
    :cond_6
    iget-object v0, p0, Lcom/byazt/fcd/c$1;->c:Lcom/byazt/fcd/c;

    iget-object v0, v0, Lcom/byazt/fcd/c;->my:Lcom/byazt/kcl/a;

    invoke-virtual {v0}, Lcom/byazt/kcl/a;->ve()Z

    return v3
.end method

.method public tt(I)V
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/byazt/fcd/c$1;->c:Lcom/byazt/fcd/c;

    iget-object v0, v0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/kp;->n(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    iget-object p1, p0, Lcom/byazt/fcd/c$1;->c:Lcom/byazt/fcd/c;

    iget-object p1, p1, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->uj(I)V

    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/byazt/fcd/c$1;->c:Lcom/byazt/fcd/c;

    iget-object v0, v0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(IZ)V

    return-void
.end method

.method public uj()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c$1;->c:Lcom/byazt/fcd/c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/byazt/fcd/c;->yv:Z

    return-void
.end method

.method public uj(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/fcd/c$1;->c:Lcom/byazt/fcd/c;

    iget-object v0, v0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0, p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->ve(I)V

    return-void
.end method

.method public ve()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c$1;->c:Lcom/byazt/fcd/c;

    invoke-virtual {v0}, Lcom/byazt/fcd/c;->yv()I

    move-result v0

    return v0
.end method

.method public ve(I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/fcd/c$1;->c:Lcom/byazt/fcd/c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/byazt/fcd/c;->p:Z

    .line 3
    iget-object v0, v0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0, p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->rh(I)V

    return-void
.end method

.method public x()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c$1;->c:Lcom/byazt/fcd/c;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->q()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
