.class public Lcom/byazt/ji/x;
.super Lcom/byazt/ji/tt;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ji/sp;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xde,
        0x47
    }
.end annotation


# instance fields
.field public sl:Ljava/lang/String;

.field public t:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/ji/tt;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private tt(Lcom/byazt/xj/ve;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/xj/ve;->kp()Lcom/byazt/pm/i;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "timer"

    .line 2
    invoke-virtual {v0, v1}, Lcom/byazt/pm/i;->tt(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/ji/tt;

    .line 5
    instance-of v2, v1, Lcom/byazt/ji/a;

    if-eqz v2, :cond_1

    .line 6
    check-cast v1, Lcom/byazt/ji/a;

    .line 7
    iget-object v2, p0, Lcom/byazt/ji/x;->sl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/byazt/ji/x;->sl:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/byazt/ji/a;->tt()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    :cond_2
    invoke-virtual {v1, p0}, Lcom/byazt/ji/a;->c(Lcom/byazt/ji/sp;)V

    goto :goto_0

    .line 9
    :cond_3
    instance-of v0, p1, Lcom/byazt/xj/c;

    if-eqz v0, :cond_5

    .line 10
    check-cast p1, Lcom/byazt/xj/c;

    invoke-virtual {p1}, Lcom/byazt/xj/c;->sp()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 11
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 12
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/xj/ve;

    .line 13
    invoke-direct {p0, v0}, Lcom/byazt/ji/x;->tt(Lcom/byazt/xj/ve;)V

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 4

    .line 8
    iget-object v0, p0, Lcom/byazt/ji/x;->t:Ljava/lang/String;

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/byazt/ji/x;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/byazt/ji/x;->sl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/byazt/ji/x;->sl:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/byazt/ji/tt;->c:Lcom/byazt/pm/sl;

    if-eqz p1, :cond_2

    .line 11
    iget-object v0, p0, Lcom/byazt/ji/tt;->tt:Lcom/byazt/xj/ve;

    iget-object v1, p0, Lcom/byazt/ji/tt;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/byazt/ji/tt;->ve:Lcom/byazt/pm/a;

    invoke-virtual {v2}, Lcom/byazt/pm/a;->tt()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/byazt/ji/tt;->ve:Lcom/byazt/pm/a;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/byazt/pm/sl;->c(Lcom/byazt/xj/ve;Ljava/lang/String;Ljava/util/List;Lcom/byazt/pm/a;)V

    :cond_2
    return-void
.end method

.method public varargs c([Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/byazt/ji/tt;->n:Ljava/util/Map;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/byazt/ji/tt;->n:Ljava/util/Map;

    const-string v0, "name"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/ji/x;->sl:Ljava/lang/String;

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/byazt/ji/tt;->n:Ljava/util/Map;

    const-string v0, "state"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/ji/x;->t:Ljava/lang/String;

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/byazt/ji/tt;->tt:Lcom/byazt/xj/ve;

    invoke-virtual {p1, p1}, Lcom/byazt/xj/ve;->tt(Lcom/byazt/xj/ve;)Lcom/byazt/xj/ve;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    return v0

    .line 7
    :cond_2
    invoke-direct {p0, p1}, Lcom/byazt/ji/x;->tt(Lcom/byazt/xj/ve;)V

    return v0
.end method

.method public tt(Ljava/lang/String;)V
    .locals 4

    .line 14
    iget-object v0, p0, Lcom/byazt/ji/x;->t:Ljava/lang/String;

    const-string v1, "complete"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/byazt/ji/x;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/byazt/ji/x;->sl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/byazt/ji/x;->sl:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 16
    :cond_1
    iget-object p1, p0, Lcom/byazt/ji/tt;->c:Lcom/byazt/pm/sl;

    if-eqz p1, :cond_2

    .line 17
    iget-object v0, p0, Lcom/byazt/ji/tt;->tt:Lcom/byazt/xj/ve;

    iget-object v1, p0, Lcom/byazt/ji/tt;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/byazt/ji/tt;->ve:Lcom/byazt/pm/a;

    invoke-virtual {v2}, Lcom/byazt/pm/a;->tt()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/byazt/ji/tt;->ve:Lcom/byazt/pm/a;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/byazt/pm/sl;->c(Lcom/byazt/xj/ve;Ljava/lang/String;Ljava/util/List;Lcom/byazt/pm/a;)V

    :cond_2
    return-void
.end method
