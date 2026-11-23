.class public Lcom/byazt/nm/x$c$4;
.super Lcom/byazt/ocd/ve;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x249,
        0x935
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
    iput-object p1, p0, Lcom/byazt/nm/x$c$4;->c:Lcom/byazt/nm/x$c;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/x$c$4;->c:Lcom/byazt/nm/x$c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/byazt/nm/x$c;->c(Lcom/byazt/nm/x$c;I)I

    .line 2
    iget-object v0, p0, Lcom/byazt/nm/x$c$4;->c:Lcom/byazt/nm/x$c;

    invoke-static {v0}, Lcom/byazt/nm/x$c;->gu(Lcom/byazt/nm/x$c;)Lcom/byazt/zh/tt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/byazt/nm/x$c$4;->c:Lcom/byazt/nm/x$c;

    invoke-static {v0}, Lcom/byazt/nm/x$c;->gr(Lcom/byazt/nm/x$c;)Lcom/byazt/zh/tt;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/zh/tt;->c()V

    :cond_0
    return-void
.end method

.method public c(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 10

    move-object v0, p0

    .line 4
    iget-object v1, v0, Lcom/byazt/nm/x$c$4;->c:Lcom/byazt/nm/x$c;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/byazt/nm/x$c;->c(Lcom/byazt/nm/x$c;I)I

    .line 5
    iget-object v1, v0, Lcom/byazt/nm/x$c$4;->c:Lcom/byazt/nm/x$c;

    invoke-static {v1}, Lcom/byazt/nm/x$c;->zm(Lcom/byazt/nm/x$c;)Lcom/byazt/zh/tt;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, v0, Lcom/byazt/nm/x$c$4;->c:Lcom/byazt/nm/x$c;

    invoke-static {v1}, Lcom/byazt/nm/x$c;->yv(Lcom/byazt/nm/x$c;)Lcom/byazt/zh/tt;

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
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/byazt/nm/x$c$4;->c:Lcom/byazt/nm/x$c;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/byazt/nm/x$c;->c(Lcom/byazt/nm/x$c;I)I

    .line 8
    iget-object v0, p0, Lcom/byazt/nm/x$c$4;->c:Lcom/byazt/nm/x$c;

    invoke-static {v0}, Lcom/byazt/nm/x$c;->eo(Lcom/byazt/nm/x$c;)Lcom/byazt/zh/tt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/byazt/nm/x$c$4;->c:Lcom/byazt/nm/x$c;

    invoke-static {v0}, Lcom/byazt/nm/x$c;->zb(Lcom/byazt/nm/x$c;)Lcom/byazt/zh/tt;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/byazt/zh/tt;->c(JLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/byazt/nm/x$c$4;->c:Lcom/byazt/nm/x$c;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/byazt/nm/x$c;->c(Lcom/byazt/nm/x$c;I)I

    .line 11
    iget-object v0, p0, Lcom/byazt/nm/x$c$4;->c:Lcom/byazt/nm/x$c;

    invoke-static {v0}, Lcom/byazt/nm/x$c;->or(Lcom/byazt/nm/x$c;)Lcom/byazt/zh/tt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/byazt/nm/x$c$4;->c:Lcom/byazt/nm/x$c;

    invoke-static {v0}, Lcom/byazt/nm/x$c;->cu(Lcom/byazt/nm/x$c;)Lcom/byazt/zh/tt;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/byazt/zh/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public tt(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/x$c$4;->c:Lcom/byazt/nm/x$c;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Lcom/byazt/nm/x$c;->c(Lcom/byazt/nm/x$c;I)I

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/nm/x$c$4;->c:Lcom/byazt/nm/x$c;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/byazt/nm/x$c;->p(Lcom/byazt/nm/x$c;)Lcom/byazt/zh/tt;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/byazt/nm/x$c$4;->c:Lcom/byazt/nm/x$c;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/byazt/nm/x$c;->md(Lcom/byazt/nm/x$c;)Lcom/byazt/zh/tt;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    move-wide v2, p1

    .line 22
    move-wide v4, p3

    .line 23
    move-object v6, p5

    .line 24
    move-object v7, p6

    .line 25
    invoke-interface/range {v1 .. v7}, Lcom/byazt/zh/tt;->c(JJLjava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public ve(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/x$c$4;->c:Lcom/byazt/nm/x$c;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-static {v0, v1}, Lcom/byazt/nm/x$c;->c(Lcom/byazt/nm/x$c;I)I

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/nm/x$c$4;->c:Lcom/byazt/nm/x$c;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/byazt/nm/x$c;->h(Lcom/byazt/nm/x$c;)Lcom/byazt/zh/tt;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/byazt/nm/x$c$4;->c:Lcom/byazt/nm/x$c;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/byazt/nm/x$c;->d(Lcom/byazt/nm/x$c;)Lcom/byazt/zh/tt;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    move-wide v2, p1

    .line 22
    move-wide v4, p3

    .line 23
    move-object v6, p5

    .line 24
    move-object v7, p6

    .line 25
    invoke-interface/range {v1 .. v7}, Lcom/byazt/zh/tt;->tt(JJLjava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
