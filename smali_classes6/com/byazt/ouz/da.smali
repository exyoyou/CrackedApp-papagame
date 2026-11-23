.class public Lcom/byazt/ouz/da;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/sz/qy;
.implements Lcom/byazt/xl/i;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1b,
        0x48
    }
.end annotation


# instance fields
.field public a:J

.field public c:Lcom/byazt/rbg/c;

.field public n:J

.field public sp:Lcom/byazt/zb/x;

.field public tt:Ljava/lang/String;

.field public uj:Ljava/lang/String;

.field public ve:Lcom/byazt/ete/ic;


# direct methods
.method public constructor <init>(Lcom/byazt/rbg/c;Ljava/lang/String;Lcom/byazt/ete/ic;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/ouz/da;->c:Lcom/byazt/rbg/c;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/ouz/da;->tt:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/byazt/ouz/da;->uj:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/byazt/ouz/da;->ve:Lcom/byazt/ete/ic;

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic c(Lcom/byazt/ouz/da;)Lcom/byazt/ete/ic;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/ouz/da;->ve:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/ouz/da;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ouz/da;->tt:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/ouz/da;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ouz/da;->uj:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/da;->c:Lcom/byazt/rbg/c;

    invoke-interface {v0}, Lcom/byazt/yw/ve;->c()V

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/ouz/da;->a:J

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/byazt/ouz/da;->c:Lcom/byazt/rbg/c;

    const-string v0, "dynamic_render2_success"

    invoke-interface {p1, v0}, Lcom/byazt/yw/c;->ve(Ljava/lang/String;)V

    const-string p1, "dynamic2_render"

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/byazt/ouz/da;->c:Lcom/byazt/rbg/c;

    const-string v0, "dynamic_render_success"

    invoke-interface {p1, v0}, Lcom/byazt/yw/c;->ve(Ljava/lang/String;)V

    const-string p1, "dynamic_backup_native_render"

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/byazt/ouz/da;->c:Lcom/byazt/rbg/c;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/byazt/rbg/c;->c(Z)V

    .line 6
    new-instance v0, Lcom/byazt/ouz/da$1;

    const-string v1, "dynamic_success"

    invoke-direct {v0, p0, v1, p1}, Lcom/byazt/ouz/da$1;-><init>(Lcom/byazt/ouz/da;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/byazt/bwm/n;->ve(Lcom/byazt/bwm/sp;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/byazt/ouz/da;->c:Lcom/byazt/rbg/c;

    const-string v1, "ugen_render_start"

    invoke-interface {v0, v1}, Lcom/byazt/yw/c;->uj(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/byazt/ouz/da;->c:Lcom/byazt/rbg/c;

    const-string v1, "ugen_sub_analysis_start"

    invoke-interface {v0, v1}, Lcom/byazt/yw/c;->uj(Ljava/lang/String;)V

    return-void
.end method

.method public c(I)V
    .locals 2

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/ouz/da;->n:J

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 8
    iget-object p1, p0, Lcom/byazt/ouz/da;->c:Lcom/byazt/rbg/c;

    const-string v0, "dynamic_render2_start"

    invoke-interface {p1, v0}, Lcom/byazt/yw/c;->c(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/byazt/ouz/da;->c:Lcom/byazt/rbg/c;

    const-string v0, "dynamic_render_start"

    invoke-interface {p1, v0}, Lcom/byazt/yw/c;->c(Ljava/lang/String;)V

    return-void
.end method

.method public c(IILjava/lang/String;Z)V
    .locals 0

    .line 10
    iget-object p3, p0, Lcom/byazt/ouz/da;->c:Lcom/byazt/rbg/c;

    const/4 p4, 0x1

    invoke-interface {p3, p4}, Lcom/byazt/rbg/c;->c(Z)V

    const/4 p3, 0x3

    if-ne p1, p3, :cond_0

    .line 11
    iget-object p1, p0, Lcom/byazt/ouz/da;->c:Lcom/byazt/rbg/c;

    const-string p3, "dynamic_render2_error"

    invoke-interface {p1, p2, p3}, Lcom/byazt/yw/c;->tt(ILjava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/byazt/ouz/da;->c:Lcom/byazt/rbg/c;

    const-string p3, "dynamic_render_error"

    invoke-interface {p1, p2, p3}, Lcom/byazt/yw/c;->tt(ILjava/lang/String;)V

    .line 13
    :goto_0
    iget-object p1, p0, Lcom/byazt/ouz/da;->tt:Ljava/lang/String;

    iget-object p3, p0, Lcom/byazt/ouz/da;->uj:Ljava/lang/String;

    iget-object p4, p0, Lcom/byazt/ouz/da;->ve:Lcom/byazt/ete/ic;

    invoke-static {p2, p1, p3, p4}, Lcom/byazt/ouz/i;->c(ILjava/lang/String;Ljava/lang/String;Lcom/byazt/ete/ic;)V

    return-void
.end method

.method public c(ILjava/lang/String;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/byazt/ouz/da;->c:Lcom/byazt/rbg/c;

    invoke-interface {v0, p1, p2}, Lcom/byazt/yw/ve;->c(ILjava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/byazt/ouz/da;->tt:Ljava/lang/String;

    iget-object v0, p0, Lcom/byazt/ouz/da;->uj:Ljava/lang/String;

    iget-object v1, p0, Lcom/byazt/ouz/da;->ve:Lcom/byazt/ete/ic;

    invoke-static {p1, p2, v0, v1}, Lcom/byazt/ouz/i;->c(ILjava/lang/String;Ljava/lang/String;Lcom/byazt/ete/ic;)V

    .line 5
    iget-object p1, p0, Lcom/byazt/ouz/da;->sp:Lcom/byazt/zb/x;

    if-nez p1, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/byazt/ouz/da;->ve:Lcom/byazt/ete/ic;

    invoke-static {p2}, Lcom/byazt/ouz/yv;->c(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x69

    const/4 v1, 0x1

    invoke-virtual {p1, v1, p2, v0}, Lcom/byazt/zb/x;->c(ZLjava/lang/String;I)V

    return-void
.end method

.method public c(Lcom/byazt/sz/rl;)V
    .locals 2

    .line 17
    invoke-virtual {p1}, Lcom/byazt/sz/rl;->c()I

    move-result v0

    if-nez v0, :cond_0

    .line 18
    iget-object p1, p0, Lcom/byazt/ouz/da;->c:Lcom/byazt/rbg/c;

    const-string v0, "ugen_sub_render_end"

    invoke-interface {p1, v0}, Lcom/byazt/yw/c;->uj(Ljava/lang/String;)V

    .line 19
    iget-object p1, p0, Lcom/byazt/ouz/da;->c:Lcom/byazt/rbg/c;

    const-string v0, "ugen_render_success"

    invoke-interface {p1, v0}, Lcom/byazt/yw/c;->n(Ljava/lang/String;)V

    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/da;->c:Lcom/byazt/rbg/c;

    invoke-virtual {p1}, Lcom/byazt/sz/rl;->c()I

    move-result p1

    const-string v1, "ugen_render_error"

    invoke-interface {v0, p1, v1}, Lcom/byazt/yw/c;->ve(ILjava/lang/String;)V

    .line 21
    :goto_0
    iget-object p1, p0, Lcom/byazt/ouz/da;->c:Lcom/byazt/rbg/c;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/byazt/rbg/c;->c(Z)V

    return-void
.end method

.method public c(Lcom/byazt/zb/x;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/byazt/ouz/da;->sp:Lcom/byazt/zb/x;

    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/byazt/ouz/da;->c:Lcom/byazt/rbg/c;

    invoke-interface {v0, p1}, Lcom/byazt/yw/c;->c(Lorg/json/JSONObject;)V

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public da()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/da;->c:Lcom/byazt/rbg/c;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-interface {v0, v1}, Lcom/byazt/rbg/c;->c(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/ouz/da;->c:Lcom/byazt/rbg/c;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/byazt/yw/tt;->n()V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/byazt/ouz/da$2;

    .line 13
    .line 14
    const-string v1, "native_success"

    .line 15
    .line 16
    invoke-direct {v0, p0, v1}, Lcom/byazt/ouz/da$2;-><init>(Lcom/byazt/ouz/da;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/byazt/bwm/n;->ve(Lcom/byazt/bwm/sp;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/da;->c:Lcom/byazt/rbg/c;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/yw/tt;->ve()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public n()V
    .locals 0

    .line 1
    return-void
.end method

.method public n(I)V
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/byazt/ouz/da;->c:Lcom/byazt/rbg/c;

    const-string v0, "dynamic_sub_render2_end"

    invoke-interface {p1, v0}, Lcom/byazt/yw/c;->tt(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/byazt/ouz/da;->c:Lcom/byazt/rbg/c;

    const-string v0, "dynamic_sub_render_end"

    invoke-interface {p1, v0}, Lcom/byazt/yw/c;->tt(Ljava/lang/String;)V

    return-void
.end method

.method public sl()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/da;->c:Lcom/byazt/rbg/c;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-interface {v0, v1}, Lcom/byazt/rbg/c;->c(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/ouz/da;->c:Lcom/byazt/rbg/c;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/byazt/yw/tt;->u()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public sp()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/da;->sp:Lcom/byazt/zb/x;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/byazt/ouz/da;->ve:Lcom/byazt/ete/ic;

    .line 7
    .line 8
    invoke-static {v1}, Lcom/byazt/ouz/yv;->c(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/byazt/zb/x;->a(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public t()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/da;->c:Lcom/byazt/rbg/c;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/yw/ve;->yp()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public tt()V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/byazt/ouz/da;->c:Lcom/byazt/rbg/c;

    const-string v1, "ugen_sub_analysis_end"

    invoke-interface {v0, v1}, Lcom/byazt/yw/c;->uj(Ljava/lang/String;)V

    return-void
.end method

.method public tt(I)V
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/byazt/ouz/da;->c:Lcom/byazt/rbg/c;

    const-string v0, "dynamic_sub_analysis2_start"

    invoke-interface {p1, v0}, Lcom/byazt/yw/c;->tt(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/byazt/ouz/da;->c:Lcom/byazt/rbg/c;

    const-string v0, "dynamic_sub_analysis_start"

    invoke-interface {p1, v0}, Lcom/byazt/yw/c;->tt(Ljava/lang/String;)V

    return-void
.end method

.method public tt(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/ouz/da;->c:Lcom/byazt/rbg/c;

    invoke-interface {v0, p1}, Lcom/byazt/yw/uj;->c(I)V

    return-void
.end method

.method public u()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/da;->c:Lcom/byazt/rbg/c;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/yw/ve;->tt()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public uj()V
    .locals 0

    .line 1
    return-void
.end method

.method public uj(I)V
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/byazt/ouz/da;->c:Lcom/byazt/rbg/c;

    const-string v0, "dynamic_sub_render2_start"

    invoke-interface {p1, v0}, Lcom/byazt/yw/c;->tt(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/byazt/ouz/da;->c:Lcom/byazt/rbg/c;

    const-string v0, "dynamic_sub_render_start"

    invoke-interface {p1, v0}, Lcom/byazt/yw/c;->tt(Ljava/lang/String;)V

    return-void
.end method

.method public ve()V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/byazt/ouz/da;->c:Lcom/byazt/rbg/c;

    const-string v1, "ugen_sub_render_start"

    invoke-interface {v0, v1}, Lcom/byazt/yw/c;->uj(Ljava/lang/String;)V

    return-void
.end method

.method public ve(I)V
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/byazt/ouz/da;->c:Lcom/byazt/rbg/c;

    const-string v0, "dynamic_sub_analysis2_end"

    invoke-interface {p1, v0}, Lcom/byazt/yw/c;->tt(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/byazt/ouz/da;->c:Lcom/byazt/rbg/c;

    const-string v0, "dynamic_sub_analysis_end"

    invoke-interface {p1, v0}, Lcom/byazt/yw/c;->tt(Ljava/lang/String;)V

    return-void
.end method

.method public x()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/da;->c:Lcom/byazt/rbg/c;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/yw/ve;->tt()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/ouz/da;->sp:Lcom/byazt/zb/x;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/byazt/ouz/da;->ve:Lcom/byazt/ete/ic;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/byazt/ouz/yv;->c(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/byazt/zb/x;->sp(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public yp()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/da;->c:Lcom/byazt/rbg/c;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/rbg/c;->z()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/ouz/da;->c:Lcom/byazt/rbg/c;

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/byazt/rbg/c;->m()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
