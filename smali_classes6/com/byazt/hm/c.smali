.class public Lcom/byazt/hm/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2a7,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/hm/c$c;
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/gqp/t;

.field public tt:Lcom/byazt/hw/a;

.field public ve:I


# direct methods
.method private constructor <init>(Lcom/byazt/hm/c$c;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/byazt/gqp/t$c;

    invoke-direct {v0}, Lcom/byazt/gqp/t$c;-><init>()V

    iget v1, p1, Lcom/byazt/hm/c$c;->c:I

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Lcom/byazt/gqp/t$c;->c(JLjava/util/concurrent/TimeUnit;)Lcom/byazt/gqp/t$c;

    move-result-object v0

    iget v1, p1, Lcom/byazt/hm/c$c;->ve:I

    int-to-long v1, v1

    .line 5
    invoke-virtual {v0, v1, v2, v3}, Lcom/byazt/gqp/t$c;->ve(JLjava/util/concurrent/TimeUnit;)Lcom/byazt/gqp/t$c;

    move-result-object v0

    iget v1, p1, Lcom/byazt/hm/c$c;->tt:I

    int-to-long v1, v1

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Lcom/byazt/gqp/t$c;->tt(JLjava/util/concurrent/TimeUnit;)Lcom/byazt/gqp/t$c;

    move-result-object v0

    .line 7
    iget-boolean v1, p1, Lcom/byazt/hm/c$c;->uj:Z

    if-eqz v1, :cond_0

    .line 8
    new-instance v1, Lcom/byazt/hw/a;

    invoke-direct {v1}, Lcom/byazt/hw/a;-><init>()V

    iput-object v1, p0, Lcom/byazt/hm/c;->tt:Lcom/byazt/hw/a;

    .line 9
    invoke-virtual {v0, v1}, Lcom/byazt/gqp/t$c;->c(Lcom/byazt/gqp/i;)Lcom/byazt/gqp/t$c;

    .line 10
    :cond_0
    iget-object v1, p1, Lcom/byazt/hm/c$c;->n:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 11
    iget-object v1, p1, Lcom/byazt/hm/c$c;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/gqp/i;

    .line 12
    invoke-virtual {v0, v2}, Lcom/byazt/gqp/t$c;->c(Lcom/byazt/gqp/i;)Lcom/byazt/gqp/t$c;

    goto :goto_0

    .line 13
    :cond_1
    invoke-static {p1}, Lcom/byazt/hm/c$c;->c(Lcom/byazt/hm/c$c;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 14
    invoke-static {p1}, Lcom/byazt/hm/c$c;->c(Lcom/byazt/hm/c$c;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/gqp/t$c;->c(Landroid/os/Bundle;)Lcom/byazt/gqp/t$c;

    .line 15
    :cond_2
    invoke-static {p1}, Lcom/byazt/hm/c$c;->tt(Lcom/byazt/hm/c$c;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/gqp/t$c;->c(Ljava/util/Set;)Lcom/byazt/gqp/t$c;

    .line 16
    invoke-static {p1}, Lcom/byazt/hm/c$c;->ve(Lcom/byazt/hm/c$c;)Lcom/byazt/gu/c;

    move-result-object v1

    if-nez v1, :cond_3

    .line 17
    new-instance p1, Lcom/byazt/gu/tt;

    invoke-direct {p1}, Lcom/byazt/gu/tt;-><init>()V

    invoke-virtual {v0, p1}, Lcom/byazt/gqp/t$c;->c(Lcom/byazt/gu/c;)Lcom/byazt/gqp/t$c;

    goto :goto_1

    .line 18
    :cond_3
    invoke-static {p1}, Lcom/byazt/hm/c$c;->ve(Lcom/byazt/hm/c$c;)Lcom/byazt/gu/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/byazt/gqp/t$c;->c(Lcom/byazt/gu/c;)Lcom/byazt/gqp/t$c;

    .line 19
    :goto_1
    invoke-virtual {v0}, Lcom/byazt/gqp/t$c;->c()Lcom/byazt/gqp/t;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/hm/c;->c:Lcom/byazt/gqp/t;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byazt/hm/c$c;Lcom/byazt/hm/c$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/hm/c;-><init>(Lcom/byazt/hm/c$c;)V

    return-void
.end method

.method public static c()V
    .locals 1

    .line 16
    sget-object v0, Lcom/byazt/lf/ve$c;->c:Lcom/byazt/lf/ve$c;

    invoke-static {v0}, Lcom/byazt/lf/ve;->c(Lcom/byazt/lf/ve$c;)V

    return-void
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 1

    .line 18
    invoke-static {p0}, Lcom/byazt/nr/gt;->tt(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, ":push"

    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ":pushservice"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a()Lcom/byazt/gqp/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/hm/c;->c:Lcom/byazt/gqp/t;

    .line 2
    .line 3
    return-object v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/va/tt;
    .locals 2

    .line 17
    new-instance v0, Lcom/byazt/va/tt;

    iget-object v1, p0, Lcom/byazt/hm/c;->c:Lcom/byazt/gqp/t;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/byazt/va/tt;-><init>(Lcom/byazt/gqp/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public c(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 9
    invoke-static {v0}, Lcom/byazt/hw/c;->tt(Z)V

    .line 10
    invoke-static {p1}, Lcom/byazt/hm/c;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/byazt/nr/gt;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 11
    :cond_0
    invoke-static {}, Lcom/byazt/hw/sp;->c()Lcom/byazt/hw/sp;

    move-result-object p2

    iget v0, p0, Lcom/byazt/hm/c;->ve:I

    invoke-virtual {p2, v0, p1}, Lcom/byazt/hw/sp;->c(ILandroid/content/Context;)Lcom/byazt/hw/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/byazt/hw/c;->uj()V

    .line 12
    invoke-static {}, Lcom/byazt/hw/sp;->c()Lcom/byazt/hw/sp;

    move-result-object p2

    iget v0, p0, Lcom/byazt/hm/c;->ve:I

    invoke-virtual {p2, v0, p1}, Lcom/byazt/hw/sp;->c(ILandroid/content/Context;)Lcom/byazt/hw/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/byazt/hw/c;->c()V

    .line 13
    :cond_1
    invoke-static {p1}, Lcom/byazt/nr/gt;->c(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_2

    return-void

    .line 14
    :cond_2
    invoke-static {}, Lcom/byazt/hw/sp;->c()Lcom/byazt/hw/sp;

    move-result-object p2

    iget v0, p0, Lcom/byazt/hm/c;->ve:I

    invoke-virtual {p2, v0, p1}, Lcom/byazt/hw/sp;->c(ILandroid/content/Context;)Lcom/byazt/hw/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/byazt/hw/c;->uj()V

    .line 15
    invoke-static {}, Lcom/byazt/hw/sp;->c()Lcom/byazt/hw/sp;

    move-result-object p2

    iget v0, p0, Lcom/byazt/hm/c;->ve:I

    invoke-virtual {p2, v0, p1}, Lcom/byazt/hw/sp;->c(ILandroid/content/Context;)Lcom/byazt/hw/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/hw/c;->c()V

    return-void
.end method

.method public c(Landroid/content/Context;ZLcom/byazt/hw/tt;)V
    .locals 2

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    .line 1
    invoke-interface {p3}, Lcom/byazt/hw/tt;->c()I

    move-result v0

    iput v0, p0, Lcom/byazt/hm/c;->ve:I

    .line 2
    iget-object v1, p0, Lcom/byazt/hm/c;->tt:Lcom/byazt/hw/a;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, v0}, Lcom/byazt/hw/a;->c(I)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/byazt/hw/sp;->c()Lcom/byazt/hw/sp;

    move-result-object v0

    iget v1, p0, Lcom/byazt/hm/c;->ve:I

    invoke-virtual {v0, v1}, Lcom/byazt/hw/sp;->c(I)Lcom/byazt/hw/n;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/byazt/hw/n;->c(Z)V

    .line 5
    invoke-static {}, Lcom/byazt/hw/sp;->c()Lcom/byazt/hw/sp;

    move-result-object p2

    iget v0, p0, Lcom/byazt/hm/c;->ve:I

    invoke-virtual {p2, v0}, Lcom/byazt/hw/sp;->c(I)Lcom/byazt/hw/n;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/byazt/hw/n;->c(Lcom/byazt/hw/tt;)V

    .line 6
    invoke-static {}, Lcom/byazt/hw/sp;->c()Lcom/byazt/hw/sp;

    move-result-object p2

    iget p3, p0, Lcom/byazt/hm/c;->ve:I

    invoke-virtual {p2, p3}, Lcom/byazt/hw/sp;->c(I)Lcom/byazt/hw/n;

    move-result-object p2

    invoke-static {p1}, Lcom/byazt/nr/gt;->c(Landroid/content/Context;)Z

    move-result p3

    invoke-virtual {p2, p1, p3}, Lcom/byazt/hw/n;->c(Landroid/content/Context;Z)V

    return-void

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "tryInitAdTTNet ITTAdNetDepend is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "tryInitAdTTNet context is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public n()Lcom/byazt/va/c;
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/va/c;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/hm/c;->c:Lcom/byazt/gqp/t;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/byazt/va/c;-><init>(Lcom/byazt/gqp/t;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public tt()Lcom/byazt/va/n;
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/va/n;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/hm/c;->c:Lcom/byazt/gqp/t;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/byazt/va/n;-><init>(Lcom/byazt/gqp/t;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public uj()Lcom/byazt/va/tt;
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/va/tt;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/hm/c;->c:Lcom/byazt/gqp/t;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/byazt/va/tt;-><init>(Lcom/byazt/gqp/t;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public ve()Lcom/byazt/va/ve;
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/va/ve;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/hm/c;->c:Lcom/byazt/gqp/t;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/byazt/va/ve;-><init>(Lcom/byazt/gqp/t;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
