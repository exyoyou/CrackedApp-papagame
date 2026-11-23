.class public Lcom/byazt/nm/t$c$1$1;
.super Lcom/byazt/ocd/ve;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x249,
        0x363
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/nm/t$c$1;->c(Lcom/byazt/nc/tt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/nm/t$c$1;


# direct methods
.method public constructor <init>(Lcom/byazt/nm/t$c$1;Ljava/util/function/Function;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/nm/t$c$1$1;->c:Lcom/byazt/nm/t$c$1;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/byazt/ocd/ve;-><init>(Ljava/util/function/Function;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/t$c$1$1;->c:Lcom/byazt/nm/t$c$1;

    iget-object v0, v0, Lcom/byazt/nm/t$c$1;->c:Lcom/byazt/nm/t$c;

    invoke-static {v0}, Lcom/byazt/nm/t$c;->uj(Lcom/byazt/nm/t$c;)Lcom/byazt/zh/tt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/byazt/nm/t$c$1$1;->c:Lcom/byazt/nm/t$c$1;

    iget-object v0, v0, Lcom/byazt/nm/t$c$1;->c:Lcom/byazt/nm/t$c;

    invoke-static {v0}, Lcom/byazt/nm/t$c;->n(Lcom/byazt/nm/t$c;)Lcom/byazt/zh/tt;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/zh/tt;->c()V

    :cond_0
    return-void
.end method

.method public c(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 10

    move-object v0, p0

    .line 3
    iget-object v1, v0, Lcom/byazt/nm/t$c$1$1;->c:Lcom/byazt/nm/t$c$1;

    iget-object v1, v1, Lcom/byazt/nm/t$c$1;->c:Lcom/byazt/nm/t$c;

    invoke-static {v1}, Lcom/byazt/nm/t$c;->a(Lcom/byazt/nm/t$c;)Lcom/byazt/zh/tt;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, v0, Lcom/byazt/nm/t$c$1$1;->c:Lcom/byazt/nm/t$c$1;

    iget-object v1, v1, Lcom/byazt/nm/t$c$1;->c:Lcom/byazt/nm/t$c;

    invoke-static {v1}, Lcom/byazt/nm/t$c;->sp(Lcom/byazt/nm/t$c;)Lcom/byazt/zh/tt;

    move-result-object v1

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-eqz v4, :cond_0

    div-long v2, p3, p1

    :cond_0
    long-to-int v6, v2

    const/4 v7, -0x1

    move-wide v2, p1

    move-wide v4, p3

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-interface/range {v1 .. v9}, Lcom/byazt/zh/tt;->c(JJIILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public c(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/byazt/nm/t$c$1$1;->c:Lcom/byazt/nm/t$c$1;

    iget-object v0, v0, Lcom/byazt/nm/t$c$1;->c:Lcom/byazt/nm/t$c;

    invoke-static {v0}, Lcom/byazt/nm/t$c;->t(Lcom/byazt/nm/t$c;)Lcom/byazt/zh/tt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/byazt/nm/t$c$1$1;->c:Lcom/byazt/nm/t$c$1;

    iget-object v0, v0, Lcom/byazt/nm/t$c$1;->c:Lcom/byazt/nm/t$c;

    invoke-static {v0}, Lcom/byazt/nm/t$c;->u(Lcom/byazt/nm/t$c;)Lcom/byazt/zh/tt;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/byazt/zh/tt;->c(JLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/byazt/nm/t$c$1$1;->c:Lcom/byazt/nm/t$c$1;

    iget-object v0, v0, Lcom/byazt/nm/t$c$1;->c:Lcom/byazt/nm/t$c;

    invoke-static {v0}, Lcom/byazt/nm/t$c;->yp(Lcom/byazt/nm/t$c;)Lcom/byazt/zh/tt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/byazt/nm/t$c$1$1;->c:Lcom/byazt/nm/t$c$1;

    iget-object v0, v0, Lcom/byazt/nm/t$c$1;->c:Lcom/byazt/nm/t$c;

    invoke-static {v0}, Lcom/byazt/nm/t$c;->z(Lcom/byazt/nm/t$c;)Lcom/byazt/zh/tt;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/byazt/zh/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public tt(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/t$c$1$1;->c:Lcom/byazt/nm/t$c$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/nm/t$c$1;->c:Lcom/byazt/nm/t$c;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/byazt/nm/t$c;->x(Lcom/byazt/nm/t$c;)Lcom/byazt/zh/tt;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/nm/t$c$1$1;->c:Lcom/byazt/nm/t$c$1;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/byazt/nm/t$c$1;->c:Lcom/byazt/nm/t$c;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/byazt/nm/t$c;->i(Lcom/byazt/nm/t$c;)Lcom/byazt/zh/tt;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    move-wide v2, p1

    .line 20
    move-wide v4, p3

    .line 21
    move-object v6, p5

    .line 22
    move-object v7, p6

    .line 23
    invoke-interface/range {v1 .. v7}, Lcom/byazt/zh/tt;->c(JJLjava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public ve(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/t$c$1$1;->c:Lcom/byazt/nm/t$c$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/nm/t$c$1;->c:Lcom/byazt/nm/t$c;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/byazt/nm/t$c;->da(Lcom/byazt/nm/t$c;)Lcom/byazt/zh/tt;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/nm/t$c$1$1;->c:Lcom/byazt/nm/t$c$1;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/byazt/nm/t$c$1;->c:Lcom/byazt/nm/t$c;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/byazt/nm/t$c;->sl(Lcom/byazt/nm/t$c;)Lcom/byazt/zh/tt;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    move-wide v2, p1

    .line 20
    move-wide v4, p3

    .line 21
    move-object v6, p5

    .line 22
    move-object v7, p6

    .line 23
    invoke-interface/range {v1 .. v7}, Lcom/byazt/zh/tt;->tt(JJLjava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method
