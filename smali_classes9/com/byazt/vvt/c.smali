.class public abstract Lcom/byazt/vvt/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xd2,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static tt:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static ve:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public c:Lcom/byazt/iu/uj;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/util/LruCache;

    .line 2
    .line 3
    const/16 v1, 0x14

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/byazt/vvt/c;->tt:Landroid/util/LruCache;

    .line 9
    .line 10
    new-instance v0, Landroid/util/LruCache;

    .line 11
    .line 12
    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/byazt/vvt/c;->ve:Landroid/util/LruCache;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/byazt/iu/uj;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/byazt/vvt/c;->c()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-direct {v0, v1}, Lcom/byazt/iu/uj;-><init>(I)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/byazt/vvt/c;->c:Lcom/byazt/iu/uj;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic c(Lcom/byazt/vvt/c;)Lcom/byazt/lh/tt;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/vvt/c;->uj()Lcom/byazt/lh/tt;

    move-result-object p0

    return-object p0
.end method

.method public static c(I)Lcom/byazt/vvt/c;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/16 v0, 0x9

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 63
    :cond_0
    invoke-static {}, Lcom/byazt/ob/c;->uj()Lcom/byazt/ob/c;

    move-result-object p0

    return-object p0

    .line 64
    :cond_1
    invoke-static {}, Lcom/byazt/pro/c;->uj()Lcom/byazt/pro/c;

    move-result-object p0

    return-object p0

    .line 65
    :cond_2
    invoke-static {}, Lcom/byazt/wb/c;->uj()Lcom/byazt/wb/c;

    move-result-object p0

    return-object p0

    .line 66
    :cond_3
    invoke-static {}, Lcom/byazt/sg/c;->uj()Lcom/byazt/sg/c;

    move-result-object p0

    return-object p0
.end method

.method public static c(ILcom/byazt/ete/ic;)V
    .locals 0

    .line 69
    invoke-static {p0}, Lcom/byazt/vvt/c;->c(I)Lcom/byazt/vvt/c;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 70
    invoke-virtual {p0, p1}, Lcom/byazt/vvt/c;->c(Lcom/byazt/ete/ic;)V

    :cond_0
    return-void
.end method

.method private c(Lcom/byazt/dj/tt;Lcom/byazt/nh/a;JLjava/lang/String;Ljava/lang/String;)V
    .locals 11

    move-object v8, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 57
    invoke-virtual {p0}, Lcom/byazt/vvt/c;->c()I

    move-result v5

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v3, p3

    move-object v6, p1

    invoke-virtual/range {v0 .. v7}, Lcom/byazt/vvt/c;->c(ZZJILcom/byazt/dj/tt;Lcom/byazt/rob/uj;)Lcom/byazt/ete/bm;

    move-result-object v7

    move-object/from16 v6, p6

    .line 58
    iput-object v6, v7, Lcom/byazt/ete/bm;->my:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    move-object/from16 v2, p5

    .line 60
    invoke-virtual {p0, v2}, Lcom/byazt/vvt/c;->tt(Ljava/lang/String;)V

    .line 61
    iget-object v9, v8, Lcom/byazt/vvt/c;->c:Lcom/byazt/iu/uj;

    if-eqz v9, :cond_0

    .line 62
    new-instance v10, Lcom/byazt/vvt/c$4;

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v2, p5

    move-object v3, p1

    move-object v4, v7

    move-object v5, p2

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/byazt/vvt/c$4;-><init>(Lcom/byazt/vvt/c;Ljava/lang/String;Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;Lcom/byazt/nh/a;Ljava/lang/String;)V

    move-object v0, p1

    invoke-virtual {v9, p1, v7, v10}, Lcom/byazt/iu/uj;->c(Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;Lcom/byazt/iu/n;)V

    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/byazt/vvt/c;Lcom/byazt/dj/tt;Lcom/byazt/nh/a;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p6}, Lcom/byazt/vvt/c;->c(Lcom/byazt/dj/tt;Lcom/byazt/nh/a;JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;Lcom/byazt/dj/tt;I)V
    .locals 2

    const/4 v0, 0x0

    .line 71
    invoke-static {v0}, Lcom/byazt/ip/n;->c(I)Lcom/byazt/ip/uj;

    move-result-object v0

    check-cast v0, Lcom/byazt/lh/tt;

    .line 72
    invoke-virtual {p2}, Lcom/byazt/dj/tt;->or()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/byazt/lh/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance v1, Lcom/byazt/ky/ve;

    invoke-direct {v1}, Lcom/byazt/ky/ve;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/byazt/ip/uj;->c(Ljava/lang/String;Lcom/byazt/ip/a;)V

    .line 74
    invoke-static {}, Lcom/byazt/wi/a;->c()Lcom/byazt/wi/a;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/byazt/wi/a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    new-instance v1, Lcom/byazt/wi/ve;

    invoke-direct {v1}, Lcom/byazt/wi/ve;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/byazt/ip/uj;->c(Ljava/lang/String;Lcom/byazt/ip/a;)V

    .line 76
    :cond_0
    new-instance v1, Lcom/byazt/vvt/c$5;

    invoke-direct {v1, p0, p2, p3}, Lcom/byazt/vvt/c$5;-><init>(Lcom/byazt/vvt/c;Lcom/byazt/dj/tt;I)V

    invoke-virtual {v0, p1, v1}, Lcom/byazt/ip/uj;->c(Ljava/lang/String;Lcom/byazt/ip/uj$c;)V

    return-void
.end method

.method public static tt()Landroid/util/LruCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/byazt/vvt/c;->tt:Landroid/util/LruCache;

    return-object v0
.end method

.method private uj()Lcom/byazt/lh/tt;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/byazt/ip/n;->c(I)Lcom/byazt/ip/uj;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    check-cast v0, Lcom/byazt/lh/tt;

    .line 7
    .line 8
    return-object v0
.end method

.method public static ve()Landroid/util/LruCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/byazt/vvt/c;->ve:Landroid/util/LruCache;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public abstract c()I
.end method

.method public c(ZZJILcom/byazt/dj/tt;Lcom/byazt/rob/uj;)Lcom/byazt/ete/bm;
    .locals 1

    .line 3
    new-instance v0, Lcom/byazt/ete/bm;

    invoke-direct {v0}, Lcom/byazt/ete/bm;-><init>()V

    .line 4
    iput-wide p3, v0, Lcom/byazt/ete/bm;->i:J

    const/4 p3, 0x2

    if-eqz p1, :cond_0

    .line 5
    iput p3, v0, Lcom/byazt/ete/bm;->c:I

    :cond_0
    if-eqz p2, :cond_1

    .line 6
    iput p3, v0, Lcom/byazt/ete/bm;->sp:I

    :cond_1
    const/4 p1, 0x1

    if-eqz p7, :cond_2

    .line 7
    invoke-virtual {p7}, Lcom/byazt/rob/uj;->n()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 8
    invoke-virtual {p7}, Lcom/byazt/rob/uj;->ve()I

    move-result p2

    iput p2, v0, Lcom/byazt/ete/bm;->nu:I

    .line 9
    invoke-virtual {p7}, Lcom/byazt/rob/uj;->uj()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/byazt/ete/bm;->rh:Ljava/lang/String;

    .line 10
    iput-boolean p1, v0, Lcom/byazt/ete/bm;->gt:Z

    :cond_2
    if-eqz p6, :cond_3

    .line 11
    invoke-virtual {p6}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p6}, Lcom/byazt/dj/tt;->t()I

    move-result p2

    invoke-virtual {v0, p5, p1, p2, p6}, Lcom/byazt/ete/bm;->c(ILjava/lang/String;ILcom/byazt/dj/tt;)V

    goto :goto_0

    :cond_3
    const-string p2, ""

    .line 12
    invoke-virtual {v0, p5, p2, p1, p6}, Lcom/byazt/ete/bm;->c(ILjava/lang/String;ILcom/byazt/dj/tt;)V

    :goto_0
    return-object v0
.end method

.method public abstract c(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public c(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/nc/yp;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 85
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 86
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/nc/yp;

    .line 88
    invoke-virtual {v1}, Lcom/byazt/nc/yp;->getLifecycleId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(ILcom/byazt/dj/tt;Lcom/byazt/nh/a;)V
    .locals 18

    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    .line 40
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v14, 0x0

    if-eqz v12, :cond_0

    .line 41
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/dj/tt;->rl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-direct {v10, v0, v12, v11}, Lcom/byazt/vvt/c;->c(Ljava/lang/String;Lcom/byazt/dj/tt;I)V

    move-object v15, v0

    goto :goto_0

    :cond_0
    move-object v15, v14

    .line 44
    :goto_0
    invoke-virtual {v10, v15}, Lcom/byazt/vvt/c;->c(Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcom/byazt/ogz/i;->c()Z

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_1

    .line 46
    new-instance v0, Lcom/byazt/lq/ve;

    const/16 v1, 0x3e8

    const-string v2, "\u5e7f\u544a\u8bf7\u6c42\u5f00\u5173\u5df2\u5173\u95ed,\u8bf7\u8054\u7cfb\u7a7f\u5c71\u7532\u7ba1\u7406\u5458"

    invoke-direct {v0, v1, v2}, Lcom/byazt/lq/ve;-><init>(ILjava/lang/String;)V

    invoke-virtual {v10, v15, v14, v9, v0}, Lcom/byazt/vvt/c;->c(Ljava/lang/String;Ljava/util/List;ZLcom/byazt/lq/ve;)V

    .line 47
    invoke-virtual {v13, v1, v2}, Lcom/byazt/nh/a;->c(ILjava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne v11, v0, :cond_2

    const-string v1, "loadBannerExpressAd"

    :goto_1
    move-object/from16 v16, v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x5

    if-ne v11, v1, :cond_3

    const-string v1, "loadNativeExpressAd"

    goto :goto_1

    :cond_3
    const/16 v1, 0x9

    if-ne v11, v1, :cond_4

    const-string v1, "loadExpressDrawFeedAd"

    goto :goto_1

    :cond_4
    const-string v1, "loadExpressAd"

    goto :goto_1

    .line 48
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 49
    invoke-static {v12, v0, v8}, Lcom/byazt/iyp/tt;->c(Lcom/byazt/dj/tt;ZLjava/lang/String;)V

    .line 50
    new-instance v5, Lcom/byazt/vvt/c$3;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object/from16 v3, p2

    move-object v4, v15

    move-object/from16 v17, v5

    move-object/from16 v5, p3

    const/4 v12, 0x0

    move-object/from16 v9, v16

    invoke-direct/range {v0 .. v9}, Lcom/byazt/vvt/c$3;-><init>(Lcom/byazt/vvt/c;Ljava/lang/String;Lcom/byazt/dj/tt;Ljava/lang/String;Lcom/byazt/nh/a;JLjava/lang/String;Ljava/lang/String;)V

    .line 51
    sget-boolean v0, Lcom/byazt/omf/rh;->c:Z

    if-nez v0, :cond_5

    const-string v0, "BaseLoadManager"

    const-string v1, "please exec TTAdSdk.init and TTAdSdk.start before load ad"

    .line 52
    invoke-static {v0, v1}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v0, Lcom/byazt/lq/ve;

    const/16 v2, 0x2710

    invoke-direct {v0, v2, v1}, Lcom/byazt/lq/ve;-><init>(ILjava/lang/String;)V

    invoke-virtual {v10, v15, v14, v12, v0}, Lcom/byazt/vvt/c;->c(Ljava/lang/String;Ljava/util/List;ZLcom/byazt/lq/ve;)V

    .line 54
    invoke-virtual {v13, v2, v1}, Lcom/byazt/nh/a;->c(ILjava/lang/String;)V

    return-void

    :cond_5
    move-object/from16 v0, v17

    .line 55
    invoke-static {v0, v11}, Lcom/byazt/omf/h;->execLoadAd(Lcom/byazt/bwm/sp;I)V

    .line 56
    invoke-static {}, Lcom/byazt/ktv/c;->c()Lcom/byazt/ktv/c;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-virtual {v0, v11, v1}, Lcom/byazt/ktv/c;->c(ILcom/byazt/dj/tt;)V

    return-void
.end method

.method public c(ILcom/byazt/dj/tt;Ljava/lang/Object;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/byazt/dj/tt;",
            "TT;)V"
        }
    .end annotation

    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    .line 13
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v14, 0x0

    if-eqz v12, :cond_0

    .line 14
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/dj/tt;->rl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-direct {v10, v0, v12, v11}, Lcom/byazt/vvt/c;->c(Ljava/lang/String;Lcom/byazt/dj/tt;I)V

    move-object v15, v0

    goto :goto_0

    :cond_0
    move-object v15, v14

    .line 17
    :goto_0
    invoke-virtual {v10, v15}, Lcom/byazt/vvt/c;->c(Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lcom/byazt/ogz/i;->c()Z

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_1

    .line 19
    new-instance v0, Lcom/byazt/lq/ve;

    const/16 v1, 0x3e8

    const-string v2, "\u5e7f\u544a\u8bf7\u6c42\u5f00\u5173\u5df2\u5173\u95ed,\u8bf7\u8054\u7cfb\u7a7f\u5c71\u7532\u7ba1\u7406\u5458"

    invoke-direct {v0, v1, v2}, Lcom/byazt/lq/ve;-><init>(ILjava/lang/String;)V

    invoke-virtual {v10, v15, v14, v9, v0}, Lcom/byazt/vvt/c;->c(Ljava/lang/String;Ljava/util/List;ZLcom/byazt/lq/ve;)V

    .line 20
    invoke-virtual {v10, v13, v1, v2}, Lcom/byazt/vvt/c;->c(Ljava/lang/Object;ILjava/lang/String;)V

    return-void

    .line 21
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v0, 0x1

    const-string v1, "loadNativeAd"

    if-ne v11, v0, :cond_3

    :cond_2
    :goto_1
    move-object/from16 v16, v1

    goto :goto_2

    :cond_3
    const/4 v2, 0x5

    if-ne v11, v2, :cond_4

    const-string v1, "loadFeedAd"

    goto :goto_1

    :cond_4
    const/16 v2, 0x9

    if-ne v11, v2, :cond_5

    const-string v1, "loadDrawFeedAd"

    goto :goto_1

    :cond_5
    const/4 v2, 0x6

    if-ne v11, v2, :cond_2

    const-string v1, "loadStream"

    goto :goto_1

    .line 22
    :goto_2
    invoke-static {v12, v0, v8}, Lcom/byazt/iyp/tt;->c(Lcom/byazt/dj/tt;ZLjava/lang/String;)V

    .line 23
    new-instance v7, Lcom/byazt/vvt/c$1;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v17, v7

    move-object v7, v15

    const/4 v12, 0x0

    move-object/from16 v9, v16

    invoke-direct/range {v0 .. v9}, Lcom/byazt/vvt/c$1;-><init>(Lcom/byazt/vvt/c;Ljava/lang/String;Lcom/byazt/dj/tt;Ljava/lang/Object;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    sget-boolean v0, Lcom/byazt/omf/rh;->c:Z

    if-nez v0, :cond_6

    const-string v0, "BaseLoadManager"

    const-string v1, "please exec TTAdSdk.init and TTAdSdk.start before load ad"

    .line 25
    invoke-static {v0, v1}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance v0, Lcom/byazt/lq/ve;

    const/16 v2, 0x2710

    invoke-direct {v0, v2, v1}, Lcom/byazt/lq/ve;-><init>(ILjava/lang/String;)V

    invoke-virtual {v10, v15, v14, v12, v0}, Lcom/byazt/vvt/c;->c(Ljava/lang/String;Ljava/util/List;ZLcom/byazt/lq/ve;)V

    .line 27
    invoke-virtual {v10, v13, v2, v1}, Lcom/byazt/vvt/c;->c(Ljava/lang/Object;ILjava/lang/String;)V

    return-void

    :cond_6
    move-object/from16 v0, v17

    .line 28
    invoke-static {v0, v11}, Lcom/byazt/omf/h;->execLoadAd(Lcom/byazt/bwm/sp;I)V

    .line 29
    invoke-static {}, Lcom/byazt/ktv/c;->c()Lcom/byazt/ktv/c;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Lcom/byazt/ktv/c;->c(ILjava/lang/String;)V

    return-void
.end method

.method public c(Lcom/byazt/dj/tt;Lcom/byazt/rob/uj;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/dj/tt;",
            "Lcom/byazt/rob/uj;",
            "TT;)V"
        }
    .end annotation

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v5, p2

    .line 31
    invoke-virtual/range {v0 .. v7}, Lcom/byazt/vvt/c;->c(Lcom/byazt/dj/tt;Ljava/lang/Object;JLcom/byazt/rob/uj;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p2}, Lcom/byazt/rob/uj;->c()Lcom/byazt/ete/ic;

    move-result-object p1

    invoke-virtual {p2}, Lcom/byazt/rob/uj;->ve()I

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x1

    invoke-static {p1, v0, p2, p3}, Lcom/byazt/rob/ve;->c(Lcom/byazt/ete/ic;ZII)V

    return-void
.end method

.method public c(Lcom/byazt/dj/tt;Ljava/lang/Object;JLcom/byazt/rob/uj;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/dj/tt;",
            "TT;J",
            "Lcom/byazt/rob/uj;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v9, p0

    move-object/from16 v8, p6

    .line 33
    invoke-virtual {p0, v8}, Lcom/byazt/vvt/c;->tt(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 34
    invoke-virtual {p0}, Lcom/byazt/vvt/c;->c()I

    move-result v5

    move-object v0, p0

    move-wide/from16 v3, p3

    move-object v6, p1

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/byazt/vvt/c;->c(ZZJILcom/byazt/dj/tt;Lcom/byazt/rob/uj;)Lcom/byazt/ete/bm;

    move-result-object v10

    move-object/from16 v7, p7

    .line 35
    iput-object v7, v10, Lcom/byazt/ete/bm;->my:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    .line 37
    iget-object v0, v9, Lcom/byazt/vvt/c;->c:Lcom/byazt/iu/uj;

    if-eqz v0, :cond_0

    .line 38
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2, v8}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 39
    iget-object v11, v9, Lcom/byazt/vvt/c;->c:Lcom/byazt/iu/uj;

    new-instance v12, Lcom/byazt/vvt/c$2;

    move-object v0, v12

    move-object v1, p0

    move-object v3, p1

    move-object v4, v10

    move-object/from16 v5, p5

    move-object v6, p2

    move-object/from16 v7, p7

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/byazt/vvt/c$2;-><init>(Lcom/byazt/vvt/c;Ljava/util/concurrent/atomic/AtomicReference;Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;Lcom/byazt/rob/uj;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    invoke-virtual {v11, p1, v10, v12}, Lcom/byazt/iu/uj;->c(Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;Lcom/byazt/iu/n;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/ete/ic;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/byazt/vvt/c;->c:Lcom/byazt/iu/uj;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Lcom/byazt/iu/tt;->tt()Lcom/byazt/nhd/n;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/byazt/nhd/n;->c(Lcom/byazt/ete/ic;)V

    :cond_0
    return-void
.end method

.method public abstract c(Ljava/lang/Object;ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract c(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TV;)V"
        }
    .end annotation
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 77
    invoke-direct {p0}, Lcom/byazt/vvt/c;->uj()Lcom/byazt/lh/tt;

    move-result-object v0

    sget-object v1, Lcom/byazt/hi/tt;->c:Lcom/byazt/hi/tt;

    invoke-virtual {v0, p1, v1}, Lcom/byazt/lh/tt;->c(Ljava/lang/String;Lcom/byazt/hi/tt;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/util/List;ZLcom/byazt/lq/ve;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/byazt/lq/ve;",
            ")V"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Lcom/byazt/vvt/c;->uj()Lcom/byazt/lh/tt;

    move-result-object v0

    new-instance v1, Lcom/byazt/vvt/c$7;

    invoke-direct {v1, p0, p3, p4, p2}, Lcom/byazt/vvt/c$7;-><init>(Lcom/byazt/vvt/c;ZLcom/byazt/lq/ve;Ljava/util/List;)V

    invoke-virtual {v0, p1, v1}, Lcom/byazt/ip/uj;->c(Ljava/lang/String;Lcom/byazt/ip/uj$c;)V

    const/4 p3, 0x1

    .line 81
    invoke-static {p3}, Lcom/byazt/ip/n;->c(I)Lcom/byazt/ip/uj;

    move-result-object p3

    check-cast p3, Lcom/byazt/lh/ve;

    if-eqz p2, :cond_0

    .line 82
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 83
    new-instance v0, Lcom/byazt/vvt/c$8;

    invoke-direct {v0, p0, p1}, Lcom/byazt/vvt/c$8;-><init>(Lcom/byazt/vvt/c;Ljava/lang/String;)V

    invoke-virtual {p3, p4, v0}, Lcom/byazt/ip/uj;->c(Ljava/lang/String;Lcom/byazt/ip/uj$c;)V

    goto :goto_0

    .line 84
    :cond_0
    invoke-direct {p0}, Lcom/byazt/vvt/c;->uj()Lcom/byazt/lh/tt;

    move-result-object p2

    sget-object p3, Lcom/byazt/hi/tt;->uj:Lcom/byazt/hi/tt;

    invoke-virtual {p2, p1, p3}, Lcom/byazt/lh/tt;->c(Ljava/lang/String;Lcom/byazt/hi/tt;)V

    return-void
.end method

.method public c(Ljava/lang/String;Z)V
    .locals 2

    .line 78
    invoke-direct {p0}, Lcom/byazt/vvt/c;->uj()Lcom/byazt/lh/tt;

    move-result-object v0

    new-instance v1, Lcom/byazt/vvt/c$6;

    invoke-direct {v1, p0, p2}, Lcom/byazt/vvt/c$6;-><init>(Lcom/byazt/vvt/c;Z)V

    invoke-virtual {v0, p1, v1}, Lcom/byazt/ip/uj;->c(Ljava/lang/String;Lcom/byazt/ip/uj$c;)V

    .line 79
    invoke-direct {p0}, Lcom/byazt/vvt/c;->uj()Lcom/byazt/lh/tt;

    move-result-object p2

    sget-object v0, Lcom/byazt/hi/tt;->ve:Lcom/byazt/hi/tt;

    invoke-virtual {p2, p1, v0}, Lcom/byazt/lh/tt;->c(Ljava/lang/String;Lcom/byazt/hi/tt;)V

    return-void
.end method

.method public abstract tt(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public tt(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/nc/yp;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/nc/yp;

    invoke-virtual {p1}, Lcom/byazt/nc/yp;->getMediaExtraInfo()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "request_id"

    .line 5
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public tt(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/byazt/vvt/c;->uj()Lcom/byazt/lh/tt;

    move-result-object v0

    sget-object v1, Lcom/byazt/hi/tt;->tt:Lcom/byazt/hi/tt;

    invoke-virtual {v0, p1, v1}, Lcom/byazt/lh/tt;->c(Ljava/lang/String;Lcom/byazt/hi/tt;)V

    return-void
.end method
