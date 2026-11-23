.class public Lcom/byazt/nm/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x249,
        0x47
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/nm/x$c;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/byazt/nm/x;Ljava/util/List;Lcom/byazt/sp/tt;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/nm/x;->c(Ljava/util/List;Lcom/byazt/sp/tt;Z)V

    return-void
.end method

.method private c(Ljava/util/List;Lcom/byazt/sp/tt;Z)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/nc/da;",
            ">;",
            "Lcom/byazt/sp/tt;",
            "Z)V"
        }
    .end annotation

    .line 3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    const-string v0, "PangleNativeAd_nativeSupportRenderControl_adNum:"

    .line 4
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v12, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v12}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 6
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/byazt/nc/da;

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 9
    new-instance v10, Lcom/byazt/nm/x$2;

    const/4 v2, 0x0

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v5, v13

    move-object v6, v15

    move/from16 v7, p3

    move-object v8, v12

    move v9, v11

    move/from16 v16, v11

    move-object v11, v10

    move-object/from16 v10, p2

    invoke-direct/range {v0 .. v10}, Lcom/byazt/nm/x$2;-><init>(Lcom/byazt/nm/x;Ljava/util/function/Function;JLjava/util/List;Lcom/byazt/nc/da;ZLjava/util/concurrent/atomic/AtomicInteger;ILcom/byazt/sp/tt;)V

    invoke-virtual {v15, v11}, Lcom/byazt/nc/u;->setExpressRenderListener(Lcom/byazt/lsp/ve;)V

    .line 10
    invoke-virtual {v15}, Lcom/byazt/nc/u;->render()V

    move/from16 v11, v16

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public c(ZLcom/byazt/omf/h;Lcom/byazt/dj/tt;Lcom/byazt/sp/tt;)V
    .locals 7

    if-eqz p2, :cond_1

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v6, Lcom/byazt/nm/x$1;

    const/4 v2, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v3, p4

    move-object v4, p3

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/byazt/nm/x$1;-><init>(Lcom/byazt/nm/x;Ljava/util/function/Function;Lcom/byazt/sp/tt;Lcom/byazt/dj/tt;Z)V

    invoke-virtual {p2, p3, v6}, Lcom/byazt/omf/h;->loadFeedAd(Lcom/byazt/dj/tt;Lcom/byazt/nh/ve;)V

    :cond_1
    :goto_0
    return-void
.end method
