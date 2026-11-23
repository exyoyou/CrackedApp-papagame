.class public Lcom/byazt/cq/tt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/nd/uj;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x7e0,
        0xd
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/cq/tt$c;
    }
.end annotation


# instance fields
.field public a:I

.field public c:Ljava/lang/String;

.field public n:Lcom/byazt/cq/c;

.field public tt:Lorg/json/JSONObject;

.field public uj:Lcom/byazt/nd/ve;

.field public ve:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/byazt/cq/tt$c;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/byazt/cq/tt;->a:I

    .line 4
    invoke-static {p1}, Lcom/byazt/cq/tt$c;->c(Lcom/byazt/cq/tt$c;)I

    move-result v0

    iput v0, p0, Lcom/byazt/cq/tt;->a:I

    .line 5
    invoke-static {p1}, Lcom/byazt/cq/tt$c;->c(Lcom/byazt/cq/tt$c;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 6
    new-instance v0, Lcom/byazt/cq/c;

    invoke-static {p1}, Lcom/byazt/cq/tt$c;->tt(Lcom/byazt/cq/tt$c;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/byazt/cq/tt$c;->ve(Lcom/byazt/cq/tt$c;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {p1}, Lcom/byazt/cq/tt$c;->uj(Lcom/byazt/cq/tt$c;)Ljava/util/Map;

    move-result-object v4

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/byazt/cq/c;-><init>(Ljava/lang/String;ILorg/json/JSONObject;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/byazt/cq/tt;->n:Lcom/byazt/cq/c;

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p1}, Lcom/byazt/cq/tt$c;->c(Lcom/byazt/cq/tt$c;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 8
    new-instance v0, Lcom/byazt/cq/c;

    invoke-static {p1}, Lcom/byazt/cq/tt$c;->n(Lcom/byazt/cq/tt$c;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/byazt/cq/tt$c;->ve(Lcom/byazt/cq/tt$c;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {p1}, Lcom/byazt/cq/tt$c;->uj(Lcom/byazt/cq/tt$c;)Ljava/util/Map;

    move-result-object v4

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/byazt/cq/c;-><init>(Ljava/lang/String;ILorg/json/JSONObject;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/byazt/cq/tt;->n:Lcom/byazt/cq/c;

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {p1}, Lcom/byazt/cq/tt$c;->a(Lcom/byazt/cq/tt$c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/cq/tt;->c:Ljava/lang/String;

    .line 10
    invoke-static {p1}, Lcom/byazt/cq/tt$c;->sp(Lcom/byazt/cq/tt$c;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 11
    sget-object v0, Lcom/byazt/bh/tt;->c:Lcom/byazt/bh/tt;

    invoke-static {p1}, Lcom/byazt/cq/tt$c;->sp(Lcom/byazt/cq/tt$c;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/bh/tt;->c(Lorg/json/JSONObject;)V

    .line 12
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/byazt/cq/tt$c;->ve(Lcom/byazt/cq/tt$c;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/cq/tt;->tt:Lorg/json/JSONObject;

    .line 13
    invoke-static {p1}, Lcom/byazt/cq/tt$c;->uj(Lcom/byazt/cq/tt$c;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/cq/tt;->ve:Ljava/util/Map;

    .line 14
    invoke-static {p1}, Lcom/byazt/cq/tt$c;->x(Lcom/byazt/cq/tt$c;)Lcom/byazt/nd/ve;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/cq/tt;->uj:Lcom/byazt/nd/ve;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byazt/cq/tt$c;Lcom/byazt/cq/tt$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/cq/tt;-><init>(Lcom/byazt/cq/tt$c;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/cq/tt;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cq/tt;->c:Ljava/lang/String;

    return-object p0
.end method

.method private c(Lcom/byazt/bh/c;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/bh/c;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 10
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 11
    :cond_1
    new-instance v0, Lcom/byazt/cq/c;

    iget-object v1, p0, Lcom/byazt/cq/tt;->tt:Lorg/json/JSONObject;

    invoke-direct {v0, p1, v1, p2}, Lcom/byazt/cq/c;-><init>(Lcom/byazt/bh/c;Lorg/json/JSONObject;Ljava/util/Map;)V

    .line 12
    iget-object v1, p0, Lcom/byazt/cq/tt;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/byazt/cq/c;->c(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, p0}, Lcom/byazt/cq/c;->c(Lcom/byazt/nd/uj;)V

    .line 14
    iget-object v1, p0, Lcom/byazt/cq/tt;->uj:Lcom/byazt/nd/ve;

    if-eqz v1, :cond_2

    .line 15
    invoke-interface {v1, v0}, Lcom/byazt/nd/ve;->c(Lcom/byazt/cq/c;)V

    .line 16
    :cond_2
    sget-object v1, Lcom/byazt/bh/tt;->c:Lcom/byazt/bh/tt;

    iget-object v2, p0, Lcom/byazt/cq/tt;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/byazt/bh/tt;->c(Ljava/lang/String;)Lcom/byazt/bh/ve;

    move-result-object v1

    .line 17
    invoke-virtual {v0}, Lcom/byazt/cq/c;->ve()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, p1, v2, p2}, Lcom/byazt/bh/ve;->ve(Lcom/byazt/bh/c;Lorg/json/JSONObject;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    .line 18
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, v1}, Lcom/byazt/cq/c;->c(Z)V

    .line 20
    :cond_3
    invoke-virtual {v0}, Lcom/byazt/cq/c;->sp()V

    .line 21
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/bh/c;

    if-eqz v0, :cond_4

    .line 22
    invoke-direct {p0, v0, p2}, Lcom/byazt/cq/tt;->c(Lcom/byazt/bh/c;Ljava/util/Map;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public static synthetic c(Lcom/byazt/cq/tt;Lcom/byazt/bh/c;Ljava/util/Map;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/byazt/cq/tt;->c(Lcom/byazt/bh/c;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic tt(Lcom/byazt/cq/tt;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/byazt/cq/tt;->uj()V

    return-void
.end method

.method private uj()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/cq/tt;->uj:Lcom/byazt/nd/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0}, Lcom/byazt/nd/ve;->c(Lcom/byazt/cq/tt;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 3
    iget v0, p0, Lcom/byazt/cq/tt;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/byazt/cq/tt;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 5
    :cond_1
    sget-object v0, Lcom/byazt/bh/tt;->c:Lcom/byazt/bh/tt;

    iget-object v1, p0, Lcom/byazt/cq/tt;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/byazt/bh/tt;->c(Ljava/lang/String;)Lcom/byazt/bh/ve;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 6
    :cond_2
    invoke-virtual {v0}, Lcom/byazt/bh/ve;->tt()Lcom/byazt/bh/c;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/cq/tt;->ve:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/byazt/cq/tt;->c(Lcom/byazt/bh/c;Ljava/util/Map;)V

    return-void

    .line 7
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/byazt/cq/tt;->uj:Lcom/byazt/nd/ve;

    if-eqz v0, :cond_4

    .line 8
    iget-object v1, p0, Lcom/byazt/cq/tt;->n:Lcom/byazt/cq/c;

    invoke-interface {v0, v1}, Lcom/byazt/nd/ve;->c(Lcom/byazt/cq/c;)V

    .line 9
    :cond_4
    iget-object v0, p0, Lcom/byazt/cq/tt;->n:Lcom/byazt/cq/c;

    invoke-virtual {v0}, Lcom/byazt/cq/c;->sp()V

    return-void
.end method

.method public tt()Lcom/byazt/nd/a;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public ve()Lcom/byazt/nd/n;
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/cq/tt$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/byazt/cq/tt$1;-><init>(Lcom/byazt/cq/tt;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
