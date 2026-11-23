.class public Lcom/byazt/vvt/uj;
.super Lcom/byazt/vvt/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xd2,
        0xf
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/byazt/vvt/tt<",
        "Ljava/util/List<",
        "Lcom/byazt/nc/yp;",
        ">;>;"
    }
.end annotation


# instance fields
.field public tt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final ve:I


# direct methods
.method public constructor <init>(Lcom/byazt/iu/tt;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/vvt/tt;-><init>(Lcom/byazt/iu/tt;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/byazt/vvt/uj;->tt:Ljava/util/List;

    .line 10
    .line 11
    iput p2, p0, Lcom/byazt/vvt/uj;->ve:I

    .line 12
    .line 13
    return-void
.end method

.method private c(Lcom/byazt/dj/tt;Lcom/byazt/ete/ic;)Lcom/byazt/nc/yp;
    .locals 3

    .line 31
    invoke-static {p2}, Lcom/byazt/ete/xd;->z(Lcom/byazt/ete/ic;)Lcom/byazt/jzl/uj;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    iget v2, p0, Lcom/byazt/vvt/uj;->ve:I

    if-eq v2, v1, :cond_4

    const/4 v1, 0x5

    if-eq v2, v1, :cond_2

    const/16 v0, 0x9

    if-eq v2, v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 33
    :cond_1
    new-instance v0, Lcom/byazt/ouz/gr;

    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/byazt/vvt/uj;->ve:I

    invoke-direct {v0, v1, p2, p1, v2}, Lcom/byazt/ouz/gr;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;I)V

    return-object v0

    :cond_2
    if-eqz v0, :cond_3

    .line 34
    new-instance v0, Lcom/byazt/ouz/zm;

    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/byazt/vvt/uj;->ve:I

    invoke-direct {v0, v1, p2, p1, v2}, Lcom/byazt/ouz/zm;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;I)V

    return-object v0

    .line 35
    :cond_3
    new-instance v0, Lcom/byazt/ouz/gu;

    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/byazt/vvt/uj;->ve:I

    invoke-direct {v0, v1, p2, p1, v2}, Lcom/byazt/ouz/gu;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;I)V

    return-object v0

    :cond_4
    if-eqz v0, :cond_5

    .line 36
    new-instance v0, Lcom/byazt/tp/ve;

    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2, p1}, Lcom/byazt/tp/ve;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;)V

    return-object v0

    .line 37
    :cond_5
    new-instance v0, Lcom/byazt/tp/tt;

    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2, p1}, Lcom/byazt/tp/tt;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;)V

    return-object v0
.end method

.method public static synthetic c(Lcom/byazt/vvt/uj;Lcom/byazt/dj/tt;Lcom/byazt/ete/ic;)Lcom/byazt/nc/yp;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/byazt/vvt/uj;->c(Lcom/byazt/dj/tt;Lcom/byazt/ete/ic;)Lcom/byazt/nc/yp;

    move-result-object p0

    return-object p0
.end method

.method private c(JLcom/byazt/dj/tt;Ljava/util/List;Lcom/byazt/vvt/tt$c;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/byazt/dj/tt;",
            "Ljava/util/List<",
            "Lcom/byazt/ete/ic;",
            ">;",
            "Lcom/byazt/vvt/tt$c<",
            "Ljava/util/List<",
            "Lcom/byazt/nc/yp;",
            ">;>;II)V"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/byazt/vvt/uj;->tt:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 17
    :cond_0
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->xg()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-eq p6, p7, :cond_1

    return-void

    .line 18
    :cond_1
    iget-object p6, p0, Lcom/byazt/vvt/uj;->tt:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p6, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 19
    invoke-direct {p0, p3, p4, p5}, Lcom/byazt/vvt/uj;->tt(Lcom/byazt/dj/tt;Ljava/util/List;Lcom/byazt/vvt/tt$c;)V

    return-void
.end method

.method private c(Lcom/byazt/ete/ic;Lcom/byazt/xs/ve;)V
    .locals 1

    .line 20
    invoke-static {p1}, Lcom/byazt/ete/pu;->sl(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    invoke-static {p1, p2}, Lcom/byazt/lc/c;->c(Lcom/byazt/ete/ic;Lcom/byazt/xs/ve;)V

    return-void

    .line 22
    :cond_0
    invoke-static {p1}, Lcom/byazt/ete/pu;->da(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23
    invoke-static {p1}, Lcom/byazt/ete/pu;->a(Lcom/byazt/ete/ic;)Lcom/byazt/ete/dz;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 24
    invoke-virtual {p1}, Lcom/byazt/ete/dz;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/byazt/ete/dz;->da()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lcom/byazt/xs/da;->c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/xs/ve;)Lorg/json/JSONObject;

    :cond_1
    return-void

    :cond_2
    const/4 p1, 0x0

    .line 25
    invoke-interface {p2, p1}, Lcom/byazt/xs/ve;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/vvt/uj;JLcom/byazt/dj/tt;Ljava/util/List;Lcom/byazt/vvt/tt$c;II)V
    .locals 0

    .line 3
    invoke-direct/range {p0 .. p7}, Lcom/byazt/vvt/uj;->c(JLcom/byazt/dj/tt;Ljava/util/List;Lcom/byazt/vvt/tt$c;II)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/vvt/uj;Lcom/byazt/dj/tt;Ljava/util/List;Lcom/byazt/vvt/tt$c;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/vvt/uj;->tt(Lcom/byazt/dj/tt;Ljava/util/List;Lcom/byazt/vvt/tt$c;)V

    return-void
.end method

.method private tt(Lcom/byazt/dj/tt;Ljava/util/List;Lcom/byazt/vvt/tt$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/dj/tt;",
            "Ljava/util/List<",
            "Lcom/byazt/ete/ic;",
            ">;",
            "Lcom/byazt/vvt/tt$c<",
            "Ljava/util/List<",
            "Lcom/byazt/nc/yp;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/byazt/vvt/uj$3;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2, p1, p3}, Lcom/byazt/vvt/uj$3;-><init>(Lcom/byazt/vvt/uj;Ljava/util/List;Lcom/byazt/dj/tt;Lcom/byazt/vvt/tt$c;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/byazt/bzd/x;->ve(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public c(ILcom/byazt/dj/tt;Lcom/byazt/ete/ic;)V
    .locals 9

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 38
    iget p2, p0, Lcom/byazt/vvt/uj;->ve:I

    const/4 v2, 0x3

    if-eq p2, v2, :cond_1

    if-ne p2, v0, :cond_2

    .line 39
    :cond_1
    invoke-static {}, Lcom/byazt/bzd/sl;->n()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    move-object p2, v1

    .line 40
    :goto_0
    invoke-static {p3}, Lcom/byazt/ex/c;->tt(Lcom/byazt/ete/ic;)V

    .line 41
    invoke-virtual {p3}, Lcom/byazt/ete/ic;->qt()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 42
    invoke-virtual {p3}, Lcom/byazt/ete/ic;->pa()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p3}, Lcom/byazt/ete/ic;->pa()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 43
    invoke-virtual {p3}, Lcom/byazt/ete/ic;->pa()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/ete/zb;

    .line 44
    invoke-virtual {v2}, Lcom/byazt/ete/zb;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 45
    new-instance v3, Lcom/byazt/sml/tt;

    invoke-virtual {v2}, Lcom/byazt/ete/zb;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/byazt/ete/zb;->sp()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/byazt/sml/tt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/byazt/hy/n;->c()Lcom/byazt/hy/n;

    move-result-object v4

    invoke-virtual {v4}, Lcom/byazt/hy/n;->ve()Lcom/byazt/re/c;

    move-result-object v4

    .line 47
    invoke-static {}, Lcom/byazt/uph/c;->tt()Lcom/byazt/uph/c$c;

    move-result-object v5

    invoke-virtual {v2}, Lcom/byazt/ete/zb;->tt()I

    move-result v6

    invoke-virtual {v2}, Lcom/byazt/ete/zb;->ve()I

    move-result v7

    move-object v2, v4

    move-object v4, v5

    move v5, v6

    move v6, v7

    move-object v7, p2

    .line 48
    invoke-virtual/range {v2 .. v7}, Lcom/byazt/uph/c;->c(Lcom/byazt/sml/tt;Lcom/byazt/uph/c$tt;IILjava/lang/String;)V

    goto :goto_1

    .line 49
    :cond_4
    invoke-static {p3}, Lcom/byazt/ete/xd;->c(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 50
    invoke-static {p3}, Lcom/byazt/aas/nb;->t(Lcom/byazt/ete/ic;)I

    move-result p2

    .line 51
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/byazt/ogz/sl;->uj(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object p2

    invoke-virtual {p2}, Lcom/byazt/ogz/sl;->sf()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 52
    invoke-static {v0, p3}, Lcom/byazt/ete/xd;->c(ILcom/byazt/ete/ic;)Lcom/byazt/jzl/a;

    move-result-object p2

    const-string v0, "material_meta"

    .line 53
    invoke-virtual {p2, v0, p3}, Lcom/byazt/jzl/a;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p3, "ad_slot"

    .line 54
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/byazt/jzl/a;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    invoke-static {p2, v1}, Lcom/byazt/btt/ve;->c(Lcom/byazt/jzl/a;Lcom/byazt/fk/da$c;)V

    :cond_5
    return-void
.end method

.method public c(Lcom/byazt/dj/tt;Ljava/util/List;Lcom/byazt/vvt/tt$c;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/dj/tt;",
            "Ljava/util/List<",
            "Lcom/byazt/ete/ic;",
            ">;",
            "Lcom/byazt/vvt/tt$c<",
            "Ljava/util/List<",
            "Lcom/byazt/nc/yp;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v9, p0

    if-eqz p2, :cond_2

    .line 5
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 6
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 7
    iget-object v0, v9, Lcom/byazt/vvt/uj;->tt:Ljava/util/List;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 8
    filled-new-array {v0}, [I

    move-result-object v12

    .line 9
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    filled-new-array {v0}, [I

    move-result-object v13

    .line 10
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->up()I

    move-result v0

    if-lez v0, :cond_1

    .line 11
    invoke-static {}, Lcom/byazt/nr/da;->c()Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lcom/byazt/vvt/uj$1;

    move-object v0, v8

    move-object/from16 v1, p0

    move-wide v2, v10

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/byazt/vvt/uj$1;-><init>(Lcom/byazt/vvt/uj;JLcom/byazt/dj/tt;Ljava/util/List;Lcom/byazt/vvt/tt$c;)V

    .line 12
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->up()I

    move-result v0

    int-to-long v0, v0

    .line 13
    invoke-virtual {v7, v8, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 14
    :cond_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/byazt/ete/ic;

    .line 15
    new-instance v8, Lcom/byazt/vvt/uj$2;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v2, v12

    move-wide v3, v10

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v16, v10

    move-object v10, v8

    move-object v8, v13

    invoke-direct/range {v0 .. v8}, Lcom/byazt/vvt/uj$2;-><init>(Lcom/byazt/vvt/uj;[IJLcom/byazt/dj/tt;Ljava/util/List;Lcom/byazt/vvt/tt$c;[I)V

    invoke-direct {v9, v15, v10}, Lcom/byazt/vvt/uj;->c(Lcom/byazt/ete/ic;Lcom/byazt/xs/ve;)V

    move-wide/from16 v10, v16

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic c(Lcom/byazt/dj/tt;Ljava/util/List;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p3, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/byazt/vvt/uj;->c(Lcom/byazt/dj/tt;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public c(Lcom/byazt/dj/tt;Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/dj/tt;",
            "Ljava/util/List<",
            "Lcom/byazt/ete/ic;",
            ">;",
            "Ljava/util/List<",
            "Lcom/byazt/nc/yp;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 26
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 27
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/nc/yp;

    .line 28
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/ete/ic;

    .line 29
    iget-object v4, p0, Lcom/byazt/vvt/tt;->c:Lcom/byazt/iu/tt;

    if-eqz v4, :cond_0

    .line 30
    invoke-virtual {v4}, Lcom/byazt/iu/tt;->tt()Lcom/byazt/nhd/n;

    move-result-object v4

    invoke-interface {v4, p1, v3, v2, v0}, Lcom/byazt/nhd/n;->c(Lcom/byazt/dj/tt;Lcom/byazt/ete/ic;Ljava/lang/Object;Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
