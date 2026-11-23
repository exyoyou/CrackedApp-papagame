.class public Lcom/byazt/apd/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x62c,
        0xd
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/apd/tt$c;
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/ysz/uj;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/byazt/ogz/i;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/byazt/ysz/tt;

    invoke-direct {v0}, Lcom/byazt/ysz/tt;-><init>()V

    iput-object v0, p0, Lcom/byazt/apd/tt;->c:Lcom/byazt/ysz/uj;

    return-void

    .line 5
    :cond_0
    sget-boolean v0, Lcom/byazt/omf/p;->sp:Z

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Lcom/byazt/ysz/sp;

    invoke-direct {v0}, Lcom/byazt/ysz/sp;-><init>()V

    iput-object v0, p0, Lcom/byazt/apd/tt;->c:Lcom/byazt/ysz/uj;

    return-void

    .line 7
    :cond_1
    invoke-static {}, Lcom/byazt/omf/p;->x()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    new-instance v0, Lcom/byazt/ysz/n;

    invoke-direct {v0}, Lcom/byazt/ysz/n;-><init>()V

    iput-object v0, p0, Lcom/byazt/apd/tt;->c:Lcom/byazt/ysz/uj;

    return-void

    .line 9
    :cond_2
    new-instance v0, Lcom/byazt/ysz/tt;

    invoke-direct {v0}, Lcom/byazt/ysz/tt;-><init>()V

    iput-object v0, p0, Lcom/byazt/apd/tt;->c:Lcom/byazt/ysz/uj;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byazt/apd/tt$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/apd/tt;-><init>()V

    return-void
.end method

.method public static final c()Lcom/byazt/apd/tt;
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/apd/tt$c;->c()Lcom/byazt/apd/tt;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/by/uj;->ve()I

    move-result v0

    return v0
.end method

.method public a(Lcom/byazt/ete/ic;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->ma()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public c(Landroid/content/Context;Lcom/byazt/eia/i;Ljava/util/Map;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/byazt/eia/i;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/apd/tt;->c:Lcom/byazt/ysz/uj;

    invoke-interface {v0, p1, p2, p3}, Lcom/byazt/ysz/uj;->c(Landroid/content/Context;Lcom/byazt/eia/i;Ljava/util/Map;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x5

    return p1
.end method

.method public c(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/util/Map;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/byazt/ete/ic;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/byazt/apd/tt;->c:Lcom/byazt/ysz/uj;

    invoke-interface {v0, p1, p2, p3}, Lcom/byazt/ysz/uj;->c(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/util/Map;)I

    move-result p1

    return p1
.end method

.method public c(Lcom/byazt/cn/tt;Z)I
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/byazt/apd/tt;->c:Lcom/byazt/ysz/uj;

    invoke-interface {v0, p1, p2}, Lcom/byazt/ysz/uj;->c(Lcom/byazt/cn/tt;Z)I

    move-result p1

    return p1
.end method

.method public c(Lcom/byazt/eia/i;Lcom/byazt/ysz/ve;Ljava/lang/String;Ljava/util/Map;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/eia/i;",
            "Lcom/byazt/ysz/ve;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/byazt/apd/tt;->c:Lcom/byazt/ysz/uj;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/byazt/ysz/uj;->c(Lcom/byazt/eia/i;Lcom/byazt/ysz/ve;Ljava/lang/String;Ljava/util/Map;)I

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/String;)I
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/byazt/apd/tt;->c:Lcom/byazt/ysz/uj;

    invoke-interface {v0, p1}, Lcom/byazt/ysz/uj;->c(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public c(Landroid/view/View;Lcom/byazt/ete/sv;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/byazt/ete/sv;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x4000000

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 11
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 12
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    and-int/lit16 v0, p1, 0xff

    const v1, 0xff00

    and-int/2addr p1, v1

    ushr-int/lit8 p1, p1, 0x8

    if-lez v0, :cond_2

    if-lez p1, :cond_2

    const/16 v1, 0x65

    if-ne v0, v1, :cond_1

    .line 13
    invoke-virtual {p2}, Lcom/byazt/ete/sv;->ve()Z

    move-result p2

    if-nez p2, :cond_1

    const/16 v0, 0x66

    :cond_1
    const-string p2, "live_saas_param_interaction_type"

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "click_saas_area"

    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p4, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public c(Lcom/byazt/qh/uj;)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/byazt/apd/tt;->c:Lcom/byazt/ysz/uj;

    invoke-interface {v0, p1}, Lcom/byazt/ysz/uj;->c(Lcom/byazt/qh/uj;)V

    return-void
.end method

.method public c(Ljava/lang/String;Lcom/byazt/ete/ic;J)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/byazt/apd/tt;->c:Lcom/byazt/ysz/uj;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/byazt/ysz/uj;->c(Ljava/lang/String;Lcom/byazt/ete/ic;J)V

    return-void
.end method

.method public c(Ljava/lang/String;Z)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/byazt/apd/tt;->c:Lcom/byazt/ysz/uj;

    invoke-interface {v0, p1, p2}, Lcom/byazt/ysz/uj;->c(Ljava/lang/String;Z)V

    return-void
.end method

.method public c(Ljava/util/function/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/byazt/apd/tt;->c:Lcom/byazt/ysz/uj;

    invoke-interface {v0, p1}, Lcom/byazt/ysz/uj;->c(Ljava/util/function/Function;)V

    return-void
.end method

.method public c(Lcom/byazt/ete/ic;)Z
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/byazt/apd/tt;->c:Lcom/byazt/ysz/uj;

    invoke-interface {v0, p1}, Lcom/byazt/ysz/uj;->a_(Lcom/byazt/ete/ic;)Z

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/String;I)Z
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/byazt/apd/tt;->c:Lcom/byazt/ysz/uj;

    invoke-interface {v0, p1, p2}, Lcom/byazt/ysz/uj;->c(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public i()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/apd/tt;->c:Lcom/byazt/ysz/uj;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/ysz/uj;->ve()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public n()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/apd/tt;->c:Lcom/byazt/ysz/uj;

    invoke-interface {v0}, Lcom/byazt/ysz/uj;->n()I

    move-result v0

    return v0
.end method

.method public n(Lcom/byazt/ete/ic;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/apd/tt;->c:Lcom/byazt/ysz/uj;

    invoke-interface {v0, p1}, Lcom/byazt/ysz/uj;->ve(Lcom/byazt/eia/i;)V

    return-void
.end method

.method public sp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/apd/tt;->c:Lcom/byazt/ysz/uj;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/ysz/uj;->sp()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public tt()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/apd/tt;->c:Lcom/byazt/ysz/uj;

    invoke-interface {v0}, Lcom/byazt/ysz/uj;->c()V

    return-void
.end method

.method public tt(Lcom/byazt/ete/ic;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->da()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->da()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->n()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/byazt/apd/tt;->c(Ljava/lang/String;I)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public uj()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/apd/tt;->c:Lcom/byazt/ysz/uj;

    invoke-interface {v0}, Lcom/byazt/ysz/uj;->uj()V

    return-void
.end method

.method public uj(Lcom/byazt/ete/ic;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/byazt/apd/tt;->n(Lcom/byazt/ete/ic;)V

    .line 3
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->da()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/by/uj;->ve()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/16 v2, 0x64

    if-le v0, v2, :cond_2

    const/16 v0, 0x64

    .line 5
    :cond_2
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/byazt/by/uj;->c(I)V

    .line 6
    invoke-virtual {p0}, Lcom/byazt/apd/tt;->ve()I

    move-result v6

    .line 7
    invoke-virtual {p0}, Lcom/byazt/apd/tt;->n()I

    move-result v7

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {}, Lo0/b;->a()J

    move-result-wide v4

    sub-long v8, v2, v4

    .line 9
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->n()I

    move-result v0

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->xl()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 10
    invoke-static {}, Lcom/byazt/ukr/tt;->ve()Lcom/byazt/nv/c;

    move-result-object v0

    new-instance v2, Lcom/byazt/apd/tt$1;

    move-object v3, v2

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v9}, Lcom/byazt/apd/tt$1;-><init>(Lcom/byazt/apd/tt;Lcom/byazt/ete/ic;IIJ)V

    const-string p1, "saas_miss"

    invoke-interface {v0, v2, p1, v1}, Lcom/byazt/nv/c;->c(Lcom/byazt/ee/c;Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method

.method public ve()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/apd/tt;->c:Lcom/byazt/ysz/uj;

    invoke-interface {v0}, Lcom/byazt/ysz/uj;->tt()I

    move-result v0

    return v0
.end method

.method public ve(Lcom/byazt/ete/ic;)I
    .locals 1

    .line 2
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->ym()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/apd/tt;->c:Lcom/byazt/ysz/uj;

    invoke-interface {v0, p1}, Lcom/byazt/ysz/uj;->tt(Lcom/byazt/ete/ic;)I

    move-result p1

    return p1
.end method

.method public x()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/apd/tt;->c:Lcom/byazt/ysz/uj;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/ysz/uj;->x()Lorg/json/JSONObject;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
