.class public Lcom/byazt/eti/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x180,
        0x2e
    }
.end annotation


# static fields
.field public static final a:Lcom/byazt/eti/n;

.field public static final c:Lcom/byazt/eti/n;

.field public static final n:Lcom/byazt/eti/n;

.field public static final sp:Lcom/byazt/eti/n;

.field public static final tt:Lcom/byazt/eti/n;

.field public static final uj:Lcom/byazt/eti/n;

.field public static final ve:Lcom/byazt/eti/n;

.field public static final x:Lcom/byazt/eti/n;


# instance fields
.field public final i:Lcom/byazt/eti/sp;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/eti/n;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    invoke-direct {v0, v1}, Lcom/byazt/eti/n;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/byazt/eti/n;->c:Lcom/byazt/eti/n;

    .line 8
    .line 9
    new-instance v0, Lcom/byazt/eti/n;

    .line 10
    .line 11
    const/16 v1, 0x8

    .line 12
    .line 13
    invoke-direct {v0, v1}, Lcom/byazt/eti/n;-><init>(I)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/byazt/eti/n;->tt:Lcom/byazt/eti/n;

    .line 17
    .line 18
    new-instance v0, Lcom/byazt/eti/n;

    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    invoke-direct {v0, v1}, Lcom/byazt/eti/n;-><init>(I)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lcom/byazt/eti/n;->ve:Lcom/byazt/eti/n;

    .line 25
    .line 26
    new-instance v0, Lcom/byazt/eti/n;

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-direct {v0, v1}, Lcom/byazt/eti/n;-><init>(I)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lcom/byazt/eti/n;->uj:Lcom/byazt/eti/n;

    .line 33
    .line 34
    new-instance v0, Lcom/byazt/eti/n;

    .line 35
    .line 36
    const/4 v1, 0x5

    .line 37
    invoke-direct {v0, v1}, Lcom/byazt/eti/n;-><init>(I)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lcom/byazt/eti/n;->n:Lcom/byazt/eti/n;

    .line 41
    .line 42
    new-instance v0, Lcom/byazt/eti/n;

    .line 43
    .line 44
    const/16 v1, 0x9

    .line 45
    .line 46
    invoke-direct {v0, v1}, Lcom/byazt/eti/n;-><init>(I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/byazt/eti/n;->a:Lcom/byazt/eti/n;

    .line 50
    .line 51
    new-instance v0, Lcom/byazt/eti/n;

    .line 52
    .line 53
    const/4 v1, 0x6

    .line 54
    invoke-direct {v0, v1}, Lcom/byazt/eti/n;-><init>(I)V

    .line 55
    .line 56
    .line 57
    sput-object v0, Lcom/byazt/eti/n;->sp:Lcom/byazt/eti/n;

    .line 58
    .line 59
    new-instance v0, Lcom/byazt/eti/n;

    .line 60
    .line 61
    const/4 v1, 0x0

    .line 62
    invoke-direct {v0, v1}, Lcom/byazt/eti/n;-><init>(I)V

    .line 63
    .line 64
    .line 65
    sput-object v0, Lcom/byazt/eti/n;->x:Lcom/byazt/eti/n;

    .line 66
    .line 67
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/byazt/eti/sp;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/byazt/eti/sp;-><init>(I)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/eti/n;->i:Lcom/byazt/eti/sp;

    .line 10
    .line 11
    return-void
.end method

.method public static c(I)Lcom/byazt/eti/n;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 1
    sget-object p0, Lcom/byazt/eti/n;->x:Lcom/byazt/eti/n;

    return-object p0

    .line 2
    :pswitch_0
    sget-object p0, Lcom/byazt/eti/n;->a:Lcom/byazt/eti/n;

    return-object p0

    .line 3
    :pswitch_1
    sget-object p0, Lcom/byazt/eti/n;->tt:Lcom/byazt/eti/n;

    return-object p0

    .line 4
    :pswitch_2
    sget-object p0, Lcom/byazt/eti/n;->c:Lcom/byazt/eti/n;

    return-object p0

    .line 5
    :pswitch_3
    sget-object p0, Lcom/byazt/eti/n;->sp:Lcom/byazt/eti/n;

    return-object p0

    .line 6
    :pswitch_4
    sget-object p0, Lcom/byazt/eti/n;->n:Lcom/byazt/eti/n;

    return-object p0

    .line 7
    :cond_0
    sget-object p0, Lcom/byazt/eti/n;->ve:Lcom/byazt/eti/n;

    return-object p0

    .line 8
    :cond_1
    sget-object p0, Lcom/byazt/eti/n;->uj:Lcom/byazt/eti/n;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static c(Lcom/byazt/ete/ic;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->ym()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/byazt/ete/ic;->ym()Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "save_type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public static tt(I)V
    .locals 1

    .line 2
    invoke-static {p0}, Lcom/byazt/eti/n;->c(I)Lcom/byazt/eti/n;

    move-result-object v0

    iget-object v0, v0, Lcom/byazt/eti/n;->i:Lcom/byazt/eti/sp;

    invoke-virtual {v0, p0}, Lcom/byazt/eti/sp;->c(I)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;ZJ)Lcom/byazt/ete/ic;
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/byazt/eti/n;->i:Lcom/byazt/eti/sp;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/byazt/eti/sp;->c(Ljava/lang/String;ZJ)Lcom/byazt/eti/sp$tt;

    move-result-object p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    return-object p3

    .line 27
    :cond_0
    iget-object p4, p2, Lcom/byazt/eti/sp$tt;->ve:Ljava/lang/String;

    invoke-static {p4}, Lcom/byazt/nr/c;->ve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 28
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 29
    new-instance p4, Lcom/byazt/ete/x$tt$c;

    invoke-direct {p4}, Lcom/byazt/ete/x$tt$c;-><init>()V

    .line 30
    invoke-virtual {p4, v0}, Lcom/byazt/ete/x$tt$c;->c(Lorg/json/JSONObject;)Lcom/byazt/ete/x$tt$c;

    move-result-object p4

    .line 31
    invoke-virtual {p4}, Lcom/byazt/ete/x$tt$c;->c()Lcom/byazt/ete/x$tt;

    move-result-object p4

    .line 32
    iget-object v1, p0, Lcom/byazt/eti/n;->i:Lcom/byazt/eti/sp;

    iget-object v1, v1, Lcom/byazt/eti/sp;->c:Lcom/byazt/eti/sp$c;

    invoke-virtual {v1}, Lcom/byazt/eti/sp$c;->tt()I

    move-result v1

    invoke-static {v1}, Lcom/byazt/ete/x;->c(I)Lcom/byazt/ete/x$ve;

    move-result-object v1

    const-string v2, "forbid_read_cache"

    invoke-virtual {v1, v2, p4}, Lcom/byazt/ete/x$ve;->c(Ljava/lang/String;Lcom/byazt/ete/x$tt;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 33
    iget-object p4, p0, Lcom/byazt/eti/n;->i:Lcom/byazt/eti/sp;

    iget-object p2, p2, Lcom/byazt/eti/sp$tt;->n:Ljava/lang/String;

    invoke-virtual {p4, p1, p2}, Lcom/byazt/eti/sp;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object p3

    .line 34
    :cond_1
    invoke-static {v0}, Lcom/byazt/omf/c;->c(Lorg/json/JSONObject;)Lcom/byazt/ete/ic;

    move-result-object p1

    const/4 p4, 0x1

    .line 35
    invoke-virtual {p1, p4}, Lcom/byazt/ete/ic;->da(Z)V

    .line 36
    iget-wide v0, p2, Lcom/byazt/eti/sp$tt;->c:J

    invoke-virtual {p1, v0, v1}, Lcom/byazt/ete/ic;->sp(J)V

    .line 37
    iget-object p2, p2, Lcom/byazt/eti/sp$tt;->n:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/byazt/ete/ic;->p(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->bn()Lcom/byazt/ete/hd;

    move-result-object p2

    const/4 p4, 0x2

    invoke-virtual {p2, p4}, Lcom/byazt/ete/hd;->tt(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object p3
.end method

.method public c(Ljava/lang/String;ZJID)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZJID)",
            "Ljava/util/List<",
            "Lcom/byazt/ete/ic;",
            ">;"
        }
    .end annotation

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 40
    iget-object v0, p0, Lcom/byazt/eti/n;->i:Lcom/byazt/eti/sp;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/byazt/eti/sp;->c(Ljava/lang/String;ZJID)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 41
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_1

    .line 42
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 43
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/byazt/eti/sp$tt;

    .line 45
    iget-object p5, p4, Lcom/byazt/eti/sp$tt;->ve:Ljava/lang/String;

    invoke-static {p5}, Lcom/byazt/nr/c;->ve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 46
    :try_start_0
    new-instance p6, Lorg/json/JSONObject;

    invoke-direct {p6, p5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 47
    new-instance p5, Lcom/byazt/ete/x$tt$c;

    invoke-direct {p5}, Lcom/byazt/ete/x$tt$c;-><init>()V

    .line 48
    invoke-virtual {p5, p6}, Lcom/byazt/ete/x$tt$c;->c(Lorg/json/JSONObject;)Lcom/byazt/ete/x$tt$c;

    move-result-object p5

    .line 49
    invoke-virtual {p5}, Lcom/byazt/ete/x$tt$c;->c()Lcom/byazt/ete/x$tt;

    move-result-object p5

    .line 50
    iget-object p7, p0, Lcom/byazt/eti/n;->i:Lcom/byazt/eti/sp;

    iget-object p7, p7, Lcom/byazt/eti/sp;->c:Lcom/byazt/eti/sp$c;

    invoke-virtual {p7}, Lcom/byazt/eti/sp$c;->tt()I

    move-result p7

    invoke-static {p7}, Lcom/byazt/ete/x;->c(I)Lcom/byazt/ete/x$ve;

    move-result-object p7

    const-string v0, "forbid_read_cache"

    invoke-virtual {p7, v0, p5}, Lcom/byazt/ete/x$ve;->c(Ljava/lang/String;Lcom/byazt/ete/x$tt;)Z

    move-result p5

    if-eqz p5, :cond_1

    .line 51
    iget-object p5, p0, Lcom/byazt/eti/n;->i:Lcom/byazt/eti/sp;

    iget-object p4, p4, Lcom/byazt/eti/sp$tt;->n:Ljava/lang/String;

    invoke-virtual {p5, p1, p4}, Lcom/byazt/eti/sp;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_1
    invoke-static {p6}, Lcom/byazt/omf/c;->c(Lorg/json/JSONObject;)Lcom/byazt/ete/ic;

    move-result-object p5

    const/4 p6, 0x1

    .line 53
    invoke-virtual {p5, p6}, Lcom/byazt/ete/ic;->da(Z)V

    .line 54
    iget-wide p6, p4, Lcom/byazt/eti/sp$tt;->c:J

    invoke-virtual {p5, p6, p7}, Lcom/byazt/ete/ic;->sp(J)V

    .line 55
    iget-object p4, p4, Lcom/byazt/eti/sp$tt;->n:Ljava/lang/String;

    invoke-virtual {p5, p4}, Lcom/byazt/ete/ic;->p(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p5}, Lcom/byazt/ete/ic;->bn()Lcom/byazt/ete/hd;

    move-result-object p4

    const/4 p6, 0x2

    invoke-virtual {p4, p6}, Lcom/byazt/ete/hd;->tt(I)V

    .line 57
    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_2
    return-object p3

    .line 58
    :cond_3
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public c()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/byazt/eti/n;->i:Lcom/byazt/eti/sp;

    invoke-virtual {v0}, Lcom/byazt/eti/sp;->c()V

    return-void
.end method

.method public c(Lcom/byazt/dj/tt;Lcom/byazt/ete/ic;Z)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-eqz v0, :cond_5

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 9
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    .line 10
    new-instance v2, Lcom/byazt/ete/x$tt$c;

    invoke-direct {v2}, Lcom/byazt/ete/x$tt$c;-><init>()V

    .line 11
    invoke-virtual {v2, v0}, Lcom/byazt/ete/x$tt$c;->c(Lcom/byazt/dj/tt;)Lcom/byazt/ete/x$tt$c;

    move-result-object v2

    .line 12
    invoke-virtual {v2, v1}, Lcom/byazt/ete/x$tt$c;->c(Lcom/byazt/ete/ic;)Lcom/byazt/ete/x$tt$c;

    move-result-object v2

    .line 13
    invoke-virtual {v2}, Lcom/byazt/ete/x$tt$c;->c()Lcom/byazt/ete/x$tt;

    move-result-object v2

    .line 14
    invoke-static/range {p2 .. p2}, Lcom/byazt/aas/nb;->sl(Lcom/byazt/ete/ic;)I

    move-result v3

    invoke-static {v3}, Lcom/byazt/ete/x;->c(I)Lcom/byazt/ete/x$ve;

    move-result-object v3

    const-string v4, "forbid_save_cache"

    invoke-virtual {v3, v4, v2}, Lcom/byazt/ete/x$ve;->c(Ljava/lang/String;Lcom/byazt/ete/x$tt;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 15
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/ete/ic;->ym()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/byazt/ete/ic;->ym()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "save_type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    return-void

    .line 16
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    move-result-object v5

    .line 17
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/ete/ic;->yg()Lorg/json/JSONObject;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/nr/c;->tt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v8, 0x3e8

    div-long/2addr v2, v8

    const-wide/16 v10, 0x3c

    div-long/2addr v2, v10

    div-long/2addr v2, v10

    const-wide/16 v10, 0x3

    div-long/2addr v2, v10

    invoke-static/range {p2 .. p2}, Lcom/byazt/aas/nb;->rh(Lcom/byazt/ete/ic;)I

    move-result v0

    int-to-long v10, v0

    add-long/2addr v2, v10

    .line 20
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/ete/ic;->uv()J

    move-result-wide v10

    .line 21
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/ete/ic;->fq()I

    move-result v0

    .line 22
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/ete/ic;->ul()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v4, v12, v14

    if-lez v4, :cond_4

    .line 23
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/ete/ic;->ul()J

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 24
    :cond_4
    new-instance v13, Lcom/byazt/eti/sp$tt;

    invoke-virtual/range {p2 .. p2}, Lcom/byazt/ete/ic;->xg()J

    move-result-wide v14

    mul-long v10, v10, v8

    invoke-virtual/range {p2 .. p2}, Lcom/byazt/ete/ic;->sf()Ljava/lang/String;

    move-result-object v12

    move-object v6, v13

    move-wide v8, v14

    invoke-direct/range {v6 .. v12}, Lcom/byazt/eti/sp$tt;-><init>(Ljava/lang/String;JJLjava/lang/String;)V

    move-object/from16 v1, p0

    .line 25
    iget-object v4, v1, Lcom/byazt/eti/n;->i:Lcom/byazt/eti/sp;

    move/from16 v7, p3

    move-wide v8, v2

    move v10, v0

    invoke-virtual/range {v4 .. v10}, Lcom/byazt/eti/sp;->c(Ljava/lang/String;Lcom/byazt/eti/sp$tt;ZJI)V

    return-void

    :cond_5
    :goto_1
    move-object/from16 v1, p0

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/byazt/eti/n;->i:Lcom/byazt/eti/sp;

    invoke-virtual {v0, p1}, Lcom/byazt/eti/sp;->c(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 60
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/byazt/eti/n;->i:Lcom/byazt/eti/sp;

    invoke-virtual {v0, p1, p2}, Lcom/byazt/eti/sp;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 62
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/byazt/eti/n;->i:Lcom/byazt/eti/sp;

    invoke-virtual {v0, p1, p2, p3}, Lcom/byazt/eti/sp;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public n(Ljava/lang/String;)J
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/byazt/eti/n;->i:Lcom/byazt/eti/sp;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/byazt/eti/sp;->c(Ljava/lang/String;ZJ)Lcom/byazt/eti/sp$tt;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_2

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/byazt/eti/sp$tt;->c()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-wide v0, p1, Lcom/byazt/eti/sp$tt;->tt:J

    .line 20
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    .line 23
    .line 24
    move-result-wide v4

    .line 25
    sub-long/2addr v0, v4

    .line 26
    cmp-long p1, v0, v2

    .line 27
    .line 28
    if-gtz p1, :cond_1

    .line 29
    .line 30
    return-wide v2

    .line 31
    :cond_1
    const-wide/16 v2, 0x3e8

    .line 32
    .line 33
    div-long/2addr v0, v2

    .line 34
    return-wide v0

    .line 35
    :cond_2
    :goto_0
    return-wide v2
.end method

.method public tt(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eti/n;->i:Lcom/byazt/eti/sp;

    invoke-virtual {v0, p1}, Lcom/byazt/eti/sp;->tt(Ljava/lang/String;)V

    return-void
.end method

.method public uj(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eti/n;->i:Lcom/byazt/eti/sp;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/eti/sp;->uj(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public ve(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eti/n;->i:Lcom/byazt/eti/sp;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/eti/sp;->ve(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
