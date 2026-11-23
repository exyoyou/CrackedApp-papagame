.class public final Lcom/byazt/dk/m;
.super Lcom/byazt/fb/uj;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x163,
        0x82
    }
.end annotation


# static fields
.field public static volatile c:Lcom/byazt/dk/m;


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/byazt/ar/AdDownloadController;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/byazt/ar/AdDownloadController$Builder;",
            ">;"
        }
    .end annotation
.end field

.field public sp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/byazt/ar/AdDownloadEventConfig$Builder;",
            ">;"
        }
    .end annotation
.end field

.field public final tt:Landroid/content/Context;

.field public uj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/byazt/ar/AdDownloadModel;",
            ">;"
        }
    .end annotation
.end field

.field public ve:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/byazt/ar/AdDownloadModel$Builder;",
            ">;"
        }
    .end annotation
.end field

.field public x:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/byazt/ar/AdDownloadEventConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/byazt/fb/uj;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/dk/m;->ve:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/byazt/dk/m;->uj:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/byazt/dk/m;->n:Ljava/util/Map;

    .line 24
    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/byazt/dk/m;->a:Ljava/util/Map;

    .line 31
    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/byazt/dk/m;->sp:Ljava/util/Map;

    .line 38
    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/byazt/dk/m;->x:Ljava/util/Map;

    .line 45
    .line 46
    iput-object p1, p0, Lcom/byazt/dk/m;->tt:Landroid/content/Context;

    .line 47
    .line 48
    return-void
.end method

.method private a(I)I
    .locals 0

    .line 1
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private a(Ljava/lang/Object;)Lcom/byazt/su/DownloadController;
    .locals 1

    .line 2
    instance-of v0, p1, Lcom/byazt/su/DownloadController;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/byazt/su/DownloadController;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private c(JLjava/lang/String;ZZLjava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel$Builder;
    .locals 6

    move-object v0, p8

    .line 38
    new-instance v1, Lcom/byazt/ar/AdDownloadModel$Builder;

    invoke-direct {v1}, Lcom/byazt/ar/AdDownloadModel$Builder;-><init>()V

    move-wide v2, p1

    .line 39
    invoke-virtual {v1, p1, p2}, Lcom/byazt/ar/AdDownloadModel$Builder;->setAdId(J)Lcom/byazt/ar/AdDownloadModel$Builder;

    move-result-object v1

    move-object v4, p3

    .line 40
    invoke-virtual {v1, p3}, Lcom/byazt/ar/AdDownloadModel$Builder;->setAppIcon(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel$Builder;

    move-result-object v1

    move v4, p4

    .line 41
    invoke-virtual {v1, p4}, Lcom/byazt/ar/AdDownloadModel$Builder;->setIsShowNotification(Z)Lcom/byazt/ar/AdDownloadModel$Builder;

    move-result-object v1

    move v4, p5

    .line 42
    invoke-virtual {v1, p5}, Lcom/byazt/ar/AdDownloadModel$Builder;->setAutoInstallWithoutNotification(Z)Lcom/byazt/ar/AdDownloadModel$Builder;

    move-result-object v1

    move-object v4, p6

    .line 43
    invoke-virtual {v1, p6}, Lcom/byazt/ar/AdDownloadModel$Builder;->setLogExtra(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel$Builder;

    move-result-object v1

    move-object v4, p7

    .line 44
    invoke-virtual {v1, p7}, Lcom/byazt/ar/AdDownloadModel$Builder;->setExtra(Lorg/json/JSONObject;)Lcom/byazt/ar/AdDownloadModel$Builder;

    move-result-object v1

    const/4 v4, 0x1

    .line 45
    invoke-virtual {v1, v4}, Lcom/byazt/ar/AdDownloadModel$Builder;->setDistinctDir(Z)Lcom/byazt/ar/AdDownloadModel$Builder;

    move-result-object v1

    .line 46
    invoke-virtual {v1, v4}, Lcom/byazt/ar/AdDownloadModel$Builder;->setIsAd(Z)Lcom/byazt/ar/AdDownloadModel$Builder;

    move-result-object v1

    new-instance v4, Lcom/byazt/dk/m$1;

    move-object v5, p0

    invoke-direct {v4, p0}, Lcom/byazt/dk/m$1;-><init>(Lcom/byazt/dk/m;)V

    .line 47
    invoke-virtual {v1, v4}, Lcom/byazt/ar/AdDownloadModel$Builder;->setFileUriProvider(Lcom/byazt/c/IDownloadFileUriProvider;)Lcom/byazt/ar/AdDownloadModel$Builder;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v1, p8}, Lcom/byazt/ar/AdDownloadModel$Builder;->setDownloadSettings(Lorg/json/JSONObject;)Lcom/byazt/ar/AdDownloadModel$Builder;

    .line 49
    :cond_0
    invoke-static {p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p9

    .line 50
    invoke-virtual {v1, p9}, Lcom/byazt/ar/AdDownloadModel$Builder;->setFilePath(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel$Builder;

    .line 51
    :cond_1
    invoke-static/range {p10 .. p10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move-object/from16 v0, p10

    .line 52
    invoke-virtual {v1, v0}, Lcom/byazt/ar/AdDownloadModel$Builder;->setDownloadUrl(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel$Builder;

    .line 53
    :cond_2
    invoke-static/range {p11 .. p11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    move-object/from16 v0, p11

    .line 54
    invoke-virtual {v1, v0}, Lcom/byazt/ar/AdDownloadModel$Builder;->setAppName(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel$Builder;

    .line 55
    :cond_3
    invoke-static/range {p12 .. p12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    move-object/from16 v0, p12

    .line 56
    invoke-virtual {v1, v0}, Lcom/byazt/ar/AdDownloadModel$Builder;->setPackageName(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel$Builder;

    :cond_4
    move/from16 v0, p13

    .line 57
    invoke-virtual {v1, v0}, Lcom/byazt/ar/AdDownloadModel$Builder;->setNeedIndependentProcess(Z)Lcom/byazt/ar/AdDownloadModel$Builder;

    move-object p3, p0

    move-wide p4, p1

    move-object/from16 p6, p14

    move-object/from16 p7, p15

    move-object/from16 p8, p16

    .line 58
    invoke-direct/range {p3 .. p8}, Lcom/byazt/dk/m;->c(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/e/DeepLink;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/byazt/ar/AdDownloadModel$Builder;->setDeepLink(Lcom/byazt/e/DeepLink;)Lcom/byazt/ar/AdDownloadModel$Builder;

    return-object v1
.end method

.method private c(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/e/DeepLink;
    .locals 1

    .line 85
    new-instance v0, Lcom/byazt/e/DeepLink;

    invoke-direct {v0}, Lcom/byazt/e/DeepLink;-><init>()V

    .line 86
    invoke-virtual {v0, p1, p2}, Lcom/byazt/e/DeepLink;->setId(J)V

    .line 87
    invoke-virtual {v0, p3}, Lcom/byazt/e/DeepLink;->setOpenUrl(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0, p4}, Lcom/byazt/e/DeepLink;->setWebTitle(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0, p5}, Lcom/byazt/e/DeepLink;->setWebUrl(Ljava/lang/String;)V

    return-object v0
.end method

.method private c()Ljava/util/function/Function;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/dk/m;->i:Ljava/util/function/Function;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/byazt/omf/x;->a(I)Ljava/util/function/Function;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/dk/m;->i:Ljava/util/function/Function;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/omf/x;->nb()Ljava/util/function/Function;

    move-result-object v1

    const-string v2, "n"

    .line 5
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lcom/byazt/dk/m;->i:Ljava/util/function/Function;

    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    move-result-object v2

    const/16 v3, 0x9f

    invoke-virtual {v2, v3}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    move-result-object v2

    const-class v3, Ljava/util/Map;

    .line 7
    invoke-virtual {v2, v3}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    move-result-object v2

    const/4 v3, 0x0

    .line 8
    invoke-virtual {v2, v3, v0}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object v0

    .line 9
    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lcom/byazt/dk/m;->i:Ljava/util/function/Function;

    return-object v0
.end method

.method private c(I)V
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/byazt/dk/m;->ve:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lcom/byazt/dk/m;->uj:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/byazt/dk/m;->n:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lcom/byazt/dk/m;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lcom/byazt/dk/m;->sp:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Lcom/byazt/dk/m;->x:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private c(II)V
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->uj(I)Lcom/byazt/ar/AdDownloadController;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 125
    :cond_0
    invoke-interface {p1, p2}, Lcom/byazt/su/DownloadController;->setDownloadMode(I)V

    return-void
.end method

.method private c(IIIZZZ)V
    .locals 1

    .line 114
    new-instance v0, Lcom/byazt/ar/AdDownloadController$Builder;

    invoke-direct {v0}, Lcom/byazt/ar/AdDownloadController$Builder;-><init>()V

    .line 115
    invoke-virtual {v0, p2}, Lcom/byazt/ar/AdDownloadController$Builder;->setLinkMode(I)Lcom/byazt/ar/AdDownloadController$Builder;

    move-result-object p2

    .line 116
    invoke-virtual {p2, p3}, Lcom/byazt/ar/AdDownloadController$Builder;->setDownloadMode(I)Lcom/byazt/ar/AdDownloadController$Builder;

    move-result-object p2

    const/4 p3, 0x1

    .line 117
    invoke-virtual {p2, p3}, Lcom/byazt/ar/AdDownloadController$Builder;->setIsEnableBackDialog(Z)Lcom/byazt/ar/AdDownloadController$Builder;

    move-result-object p2

    const/4 p3, 0x0

    .line 118
    invoke-virtual {p2, p3}, Lcom/byazt/ar/AdDownloadController$Builder;->setIsAddToDownloadManage(Z)Lcom/byazt/ar/AdDownloadController$Builder;

    move-result-object p2

    .line 119
    iget-object p3, p0, Lcom/byazt/dk/m;->n:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_0

    .line 120
    invoke-virtual {p2, p5}, Lcom/byazt/ar/AdDownloadController$Builder;->setEnableAH(Z)Lcom/byazt/ar/AdDownloadController$Builder;

    .line 121
    invoke-virtual {p2, p6}, Lcom/byazt/ar/AdDownloadController$Builder;->setEnableAM(Z)Lcom/byazt/ar/AdDownloadController$Builder;

    .line 122
    :cond_0
    invoke-virtual {p2}, Lcom/byazt/ar/AdDownloadController$Builder;->build()Lcom/byazt/ar/AdDownloadController;

    move-result-object p2

    .line 123
    iget-object p3, p0, Lcom/byazt/dk/m;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private c(ILcom/byazt/ou/DownloadMarketInterceptor;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->uj(I)Lcom/byazt/ar/AdDownloadController;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 35
    :cond_0
    invoke-virtual {p1, p2}, Lcom/byazt/ar/AdDownloadController;->setDownloadMarketInterceptor(Lcom/byazt/ou/DownloadMarketInterceptor;)V

    return-void
.end method

.method private c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 90
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->tt(I)Lcom/byazt/ar/AdDownloadModel$Builder;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 91
    :cond_0
    invoke-virtual {v0, p2}, Lcom/byazt/ar/AdDownloadModel$Builder;->setAppIcon(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel$Builder;

    move-result-object p2

    .line 92
    invoke-virtual {p2, p3}, Lcom/byazt/ar/AdDownloadModel$Builder;->setAppName(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel$Builder;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/byazt/ar/AdDownloadModel$Builder;->setPackageName(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/byazt/ar/AdDownloadModel$Builder;->build()Lcom/byazt/ar/AdDownloadModel;

    move-result-object p2

    .line 93
    iget-object p3, p0, Lcom/byazt/dk/m;->uj:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private c(ILjava/util/Map;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v15, p2

    if-eqz v15, :cond_1

    .line 94
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v1, "id"

    .line 95
    invoke-interface {v15, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string v3, "appIcon"

    .line 96
    invoke-interface {v15, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "isShowNotification"

    .line 97
    invoke-interface {v15, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v5, "isAutoInstallWithoutNotification"

    .line 98
    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string v6, "logExtra"

    .line 99
    invoke-interface {v15, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "extraJson"

    .line 100
    invoke-interface {v15, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    const-string v8, "downloadSettings"

    .line 101
    invoke-interface {v15, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONObject;

    const-string v9, "filePath"

    .line 102
    invoke-interface {v15, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "downloadUrl"

    .line 103
    invoke-interface {v15, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "appName"

    .line 104
    invoke-interface {v15, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "packageName"

    .line 105
    invoke-interface {v15, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v13, "isNeedIndependentProcess"

    .line 106
    invoke-interface {v15, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    const-string v14, "openUrl"

    .line 107
    invoke-interface {v15, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const-string v0, "webTitle"

    .line 108
    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-wide/from16 v17, v1

    move-object v1, v15

    move-object v15, v0

    const-string v0, "webUrl"

    .line 109
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    .line 110
    invoke-direct/range {v0 .. v16}, Lcom/byazt/dk/m;->c(JLjava/lang/String;ZZLjava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel$Builder;

    move-result-object v0

    move-object/from16 v1, p0

    .line 111
    iget-object v2, v1, Lcom/byazt/dk/m;->ve:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-virtual {v0}, Lcom/byazt/ar/AdDownloadModel$Builder;->build()Lcom/byazt/ar/AdDownloadModel;

    move-result-object v0

    .line 113
    iget-object v2, v1, Lcom/byazt/dk/m;->uj:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    :goto_0
    move-object v1, v0

    return-void
.end method

.method private c(IZLcom/byazt/ou/DownloadMarketInterceptor;)V
    .locals 0

    .line 126
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->uj(I)Lcom/byazt/ar/AdDownloadController;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 127
    :cond_0
    :try_start_0
    invoke-virtual {p1, p3}, Lcom/byazt/ar/AdDownloadController;->setDownloadMarketInterceptor(Lcom/byazt/ou/DownloadMarketInterceptor;)V

    .line 128
    invoke-virtual {p1, p2}, Lcom/byazt/ar/AdDownloadController;->setEnableOppoAutoDownload(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private c(Landroid/content/Intent;)V
    .locals 11

    .line 17
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    const-string v0, "extra_click_download_ids"

    const/4 v1, -0x1

    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "extra_click_download_type"

    .line 19
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    const-string v1, "extra_tag"

    .line 20
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "extra_value"

    .line 21
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_log_extra"

    .line 22
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "extra_package_name"

    .line 23
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-static {p1}, Lcom/byazt/aas/nb;->tt(Ljava/lang/String;)Z

    move-result v3

    .line 25
    iget-object v4, p0, Lcom/byazt/dk/m;->tt:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 26
    new-instance v6, Lcom/byazt/qt/c;

    invoke-direct {v6}, Lcom/byazt/qt/c;-><init>()V

    .line 27
    invoke-virtual {v6, v1}, Lcom/byazt/qt/c;->sp(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v6, v2}, Lcom/byazt/qt/c;->uj(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v6, p1}, Lcom/byazt/qt/c;->ve(Ljava/lang/String;)V

    const-string v1, "success"

    if-eqz v3, :cond_0

    .line 30
    invoke-static {p1}, Lcom/byazt/hu/i;->c(Ljava/lang/String;)Lcom/byazt/nn/sp;

    const-string p1, "open"

    :goto_0
    move-object v7, p1

    move-object v10, v1

    goto :goto_2

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/byazt/dk/m;->tt:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/byazt/z/uj;->c(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "failure"

    :goto_1
    const-string p1, "install"

    goto :goto_0

    :goto_2
    const-string v5, "notification"

    const-string v8, "click_other"

    const/4 v9, 0x0

    .line 32
    invoke-static/range {v5 .. v10}, Lcom/byazt/yih/n;->c(Ljava/lang/String;Lcom/byazt/qt/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0, v0}, Lcom/byazt/dk/m;->a(I)I

    move-result p1

    invoke-virtual {v4, p1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private c(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "notification"

    .line 59
    invoke-direct {p0}, Lcom/byazt/dk/m;->c()Ljava/util/function/Function;

    move-result-object v1

    const-string v2, "xgc_dl"

    if-nez v1, :cond_0

    const-string p1, "false"

    .line 60
    invoke-static {v2, p1}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 61
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    move-result-object v3

    const/16 v4, 0xa1

    .line 62
    invoke-virtual {v3, v4}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    move-result-object v3

    const-class v4, Ljava/util/Map;

    .line 63
    invoke-virtual {v3, v4}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    move-result-object v3

    const/4 v4, 0x0

    .line 64
    invoke-virtual {v3, v4, p1}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object v3

    .line 65
    invoke-static {v1, v3}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 66
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification;

    .line 67
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const-string v3, "install_download_id"

    .line 68
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 69
    instance-of v3, p1, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 70
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 71
    :cond_1
    invoke-direct {p0, v4}, Lcom/byazt/dk/m;->a(I)I

    move-result p1

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "e:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v0

    const-string v1, "csj_install_notification"

    invoke-virtual {v0, v1, p1}, Lcom/byazt/ukr/yp;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static c(Lcom/byazt/ou/IDownloadButtonClickListener;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 36
    :cond_0
    sget-object p0, Lcom/byazt/omf/p;->x:Ljava/lang/String;

    const-string v0, "internal"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 37
    invoke-static {}, Lcom/byazt/dk/m;->tt()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private da(Ljava/lang/Object;)Lcom/byazt/ou/OnItemClickListener;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/byazt/ou/OnItemClickListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/byazt/ou/OnItemClickListener;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    return-object p1
.end method

.method private getActivity(Ljava/lang/Object;)Landroid/app/Activity;
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/app/Activity;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Landroid/app/Activity;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    return-object p1
.end method

.method private i(Ljava/lang/Object;)Lcom/byazt/ou/DownloadMarketInterceptor;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/byazt/ou/DownloadMarketInterceptor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/byazt/ou/DownloadMarketInterceptor;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    return-object p1
.end method

.method public static instance(Landroid/content/Context;)Lcom/byazt/dk/m;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/dk/m;->c:Lcom/byazt/dk/m;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/byazt/dk/m;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/byazt/dk/m;->c:Lcom/byazt/dk/m;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/byazt/dk/m;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/byazt/dk/m;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/byazt/dk/m;->c:Lcom/byazt/dk/m;

    .line 18
    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0

    .line 24
    :cond_1
    :goto_0
    sget-object p0, Lcom/byazt/dk/m;->c:Lcom/byazt/dk/m;

    .line 25
    .line 26
    return-object p0
.end method

.method private n(I)Lcom/byazt/ar/AdDownloadEventConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dk/m;->x:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/ar/AdDownloadEventConfig;

    return-object p1
.end method

.method private n(Ljava/lang/Object;)Lcom/byazt/su/DownloadEventConfig;
    .locals 1

    .line 2
    instance-of v0, p1, Lcom/byazt/su/DownloadEventConfig;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/byazt/su/DownloadEventConfig;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private n(ILjava/util/Map;)V
    .locals 41
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v0, p2

    if-eqz v0, :cond_6

    .line 4
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v1, "expectFileLength"

    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string v3, "md5"

    .line 6
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "extraValue"

    .line 7
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string v7, "isAd"

    .line 8
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const-string v8, "modelType"

    .line 9
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string v9, "clickTrackUrl"

    .line 10
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const-string v10, "backupUrls"

    .line 11
    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    const-string v11, "notificationJumpUrl"

    .line 12
    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "mimeType"

    .line 13
    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v13, "headers"

    .line 14
    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;

    const-string v14, "isShowToast"

    .line 15
    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    const-string v15, "needWifi"

    .line 16
    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    const-string v6, "fileName"

    .line 17
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v16, v6

    const-string v6, "versionCode"

    .line 18
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move/from16 v17, v6

    const-string v6, "versionName"

    .line 19
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v18, v6

    const-string v6, "quickAppModelOpenUrl"

    .line 20
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move/from16 v19, v15

    const-string v15, "quickAppModelExtraData"

    .line 21
    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move/from16 v20, v14

    .line 22
    new-instance v14, Lcom/byazt/e/uj$c;

    invoke-direct {v14}, Lcom/byazt/e/uj$c;-><init>()V

    invoke-virtual {v14, v6}, Lcom/byazt/e/uj$c;->c(Ljava/lang/String;)Lcom/byazt/e/uj$c;

    move-result-object v6

    .line 23
    invoke-virtual {v6, v15}, Lcom/byazt/e/uj$c;->tt(Ljava/lang/String;)Lcom/byazt/e/uj$c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/byazt/e/uj$c;->c()Lcom/byazt/e/uj;

    move-result-object v6

    const-string v14, "executorGroup"

    .line 24
    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const-string v15, "startToast"

    .line 25
    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v21, v15

    const-string v15, "sdkMonitorScene"

    .line 26
    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v22, v15

    const-string v15, "autoInstall"

    .line 27
    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    move/from16 v23, v15

    const-string v15, "distinctDir"

    .line 28
    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    move/from16 v24, v15

    const-string v15, "enablePause"

    .line 29
    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    move/from16 v25, v15

    const-string v15, "id"

    .line 30
    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    move/from16 v26, v14

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    move-object/from16 v27, v6

    const-string v6, "appIcon"

    .line 31
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v28, v13

    const-string v13, "isShowNotification"

    .line 32
    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    move/from16 v29, v13

    const-string v13, "isAutoInstallWithoutNotification"

    .line 33
    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    move/from16 v30, v13

    const-string v13, "logExtra"

    .line 34
    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v31, v12

    const-string v12, "extraJson"

    .line 35
    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/json/JSONObject;

    move-object/from16 v32, v12

    const-string v12, "downloadSettings"

    .line 36
    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/json/JSONObject;

    move-object/from16 v33, v12

    const-string v12, "filePath"

    .line 37
    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object/from16 v34, v12

    const-string v12, "downloadUrl"

    .line 38
    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object/from16 v35, v12

    const-string v12, "appName"

    .line 39
    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object/from16 v36, v12

    const-string v12, "packageName"

    .line 40
    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object/from16 v37, v12

    const-string v12, "isNeedIndependentProcess"

    .line 41
    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    move/from16 v38, v12

    const-string v12, "openUrl"

    .line 42
    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object/from16 v39, v12

    const-string v12, "webTitle"

    .line 43
    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object/from16 v40, v12

    const-string v12, "webUrl"

    .line 44
    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/lang/String;

    .line 45
    new-instance v0, Lcom/byazt/ar/AdDownloadModel$Builder;

    invoke-direct {v0}, Lcom/byazt/ar/AdDownloadModel$Builder;-><init>()V

    .line 46
    invoke-virtual {v0, v1, v2}, Lcom/byazt/ar/AdDownloadModel$Builder;->setExpectFileLength(J)Lcom/byazt/ar/AdDownloadModel$Builder;

    move-result-object v0

    .line 47
    invoke-virtual {v0, v3}, Lcom/byazt/ar/AdDownloadModel$Builder;->setMd5(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel$Builder;

    move-result-object v0

    .line 48
    invoke-virtual {v0, v14, v15}, Lcom/byazt/ar/AdDownloadModel$Builder;->setId(J)Lcom/byazt/ar/AdDownloadModel$Builder;

    move-result-object v0

    .line 49
    invoke-virtual {v0, v4, v5}, Lcom/byazt/ar/AdDownloadModel$Builder;->setExtraValue(J)Lcom/byazt/ar/AdDownloadModel$Builder;

    move-result-object v0

    .line 50
    invoke-virtual {v0, v7}, Lcom/byazt/ar/AdDownloadModel$Builder;->setIsAd(Z)Lcom/byazt/ar/AdDownloadModel$Builder;

    move-result-object v0

    .line 51
    invoke-virtual {v0, v8}, Lcom/byazt/ar/AdDownloadModel$Builder;->setModelType(I)Lcom/byazt/ar/AdDownloadModel$Builder;

    move-result-object v0

    .line 52
    invoke-virtual {v0, v13}, Lcom/byazt/ar/AdDownloadModel$Builder;->setLogExtra(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel$Builder;

    move-result-object v0

    .line 53
    invoke-virtual {v0, v6}, Lcom/byazt/ar/AdDownloadModel$Builder;->setAppIcon(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel$Builder;

    move-result-object v0

    .line 54
    invoke-virtual {v0, v10}, Lcom/byazt/ar/AdDownloadModel$Builder;->setBackupUrls(Ljava/util/List;)Lcom/byazt/ar/AdDownloadModel$Builder;

    move-result-object v0

    .line 55
    invoke-virtual {v0, v11}, Lcom/byazt/ar/AdDownloadModel$Builder;->setNotificationJumpUrl(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel$Builder;

    move-result-object v0

    .line 56
    invoke-virtual {v0, v9}, Lcom/byazt/ar/AdDownloadModel$Builder;->setClickTrackUrl(Ljava/util/List;)Lcom/byazt/ar/AdDownloadModel$Builder;

    move-result-object v0

    move-object/from16 v1, v31

    .line 57
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadModel$Builder;->setMimeType(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel$Builder;

    move-result-object v0

    move-object/from16 v13, v28

    .line 58
    invoke-virtual {v0, v13}, Lcom/byazt/ar/AdDownloadModel$Builder;->setHeaders(Ljava/util/Map;)Lcom/byazt/ar/AdDownloadModel$Builder;

    move-result-object v0

    move/from16 v1, v20

    .line 59
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadModel$Builder;->setIsShowToast(Z)Lcom/byazt/ar/AdDownloadModel$Builder;

    move-result-object v0

    move/from16 v1, v29

    .line 60
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadModel$Builder;->setIsShowNotification(Z)Lcom/byazt/ar/AdDownloadModel$Builder;

    move-result-object v0

    move/from16 v1, v19

    .line 61
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadModel$Builder;->setNeedWifi(Z)Lcom/byazt/ar/AdDownloadModel$Builder;

    move-result-object v0

    move-object/from16 v6, v16

    .line 62
    invoke-virtual {v0, v6}, Lcom/byazt/ar/AdDownloadModel$Builder;->setFileName(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel$Builder;

    move-result-object v0

    move/from16 v1, v17

    .line 63
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadModel$Builder;->setVersionCode(I)Lcom/byazt/ar/AdDownloadModel$Builder;

    move-result-object v0

    move-object/from16 v6, v18

    .line 64
    invoke-virtual {v0, v6}, Lcom/byazt/ar/AdDownloadModel$Builder;->setVersionName(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel$Builder;

    move-result-object v0

    move-object/from16 v1, v27

    .line 65
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadModel$Builder;->setQuickAppModel(Lcom/byazt/e/uj;)Lcom/byazt/ar/AdDownloadModel$Builder;

    move-result-object v0

    move/from16 v1, v30

    .line 66
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadModel$Builder;->setAutoInstallWithoutNotification(Z)Lcom/byazt/ar/AdDownloadModel$Builder;

    move-result-object v0

    move/from16 v1, v26

    .line 67
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadModel$Builder;->setExecutorGroup(I)Lcom/byazt/ar/AdDownloadModel$Builder;

    move-result-object v0

    move-object/from16 v1, v21

    .line 68
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadModel$Builder;->setStartToast(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel$Builder;

    move-result-object v0

    move-object/from16 v1, v22

    .line 69
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadModel$Builder;->setSdkMonitorScene(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel$Builder;

    move-result-object v0

    move/from16 v1, v23

    .line 70
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadModel$Builder;->setAutoInstall(Z)Lcom/byazt/ar/AdDownloadModel$Builder;

    move-result-object v0

    move/from16 v1, v24

    .line 71
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadModel$Builder;->setDistinctDir(Z)Lcom/byazt/ar/AdDownloadModel$Builder;

    move-result-object v0

    move/from16 v1, v25

    .line 72
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadModel$Builder;->setEnablePause(Z)Lcom/byazt/ar/AdDownloadModel$Builder;

    move-result-object v0

    move-object/from16 v1, v32

    .line 73
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadModel$Builder;->setExtra(Lorg/json/JSONObject;)Lcom/byazt/ar/AdDownloadModel$Builder;

    move-result-object v0

    new-instance v1, Lcom/byazt/dk/m$2;

    move-object/from16 v6, p0

    invoke-direct {v1, v6}, Lcom/byazt/dk/m$2;-><init>(Lcom/byazt/dk/m;)V

    .line 74
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadModel$Builder;->setFileUriProvider(Lcom/byazt/c/IDownloadFileUriProvider;)Lcom/byazt/ar/AdDownloadModel$Builder;

    move-result-object v7

    if-eqz v33, :cond_1

    move-object/from16 v0, v33

    .line 75
    invoke-virtual {v7, v0}, Lcom/byazt/ar/AdDownloadModel$Builder;->setDownloadSettings(Lorg/json/JSONObject;)Lcom/byazt/ar/AdDownloadModel$Builder;

    .line 76
    :cond_1
    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move-object/from16 v0, v34

    .line 77
    invoke-virtual {v7, v0}, Lcom/byazt/ar/AdDownloadModel$Builder;->setFilePath(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel$Builder;

    .line 78
    :cond_2
    invoke-static/range {v35 .. v35}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    move-object/from16 v0, v35

    .line 79
    invoke-virtual {v7, v0}, Lcom/byazt/ar/AdDownloadModel$Builder;->setDownloadUrl(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel$Builder;

    .line 80
    :cond_3
    invoke-static/range {v36 .. v36}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    move-object/from16 v0, v36

    .line 81
    invoke-virtual {v7, v0}, Lcom/byazt/ar/AdDownloadModel$Builder;->setAppName(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel$Builder;

    .line 82
    :cond_4
    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    move-object/from16 v0, v37

    .line 83
    invoke-virtual {v7, v0}, Lcom/byazt/ar/AdDownloadModel$Builder;->setPackageName(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel$Builder;

    :cond_5
    move/from16 v0, v38

    .line 84
    invoke-virtual {v7, v0}, Lcom/byazt/ar/AdDownloadModel$Builder;->setNeedIndependentProcess(Z)Lcom/byazt/ar/AdDownloadModel$Builder;

    move-object/from16 v0, p0

    move-wide v1, v14

    move-object/from16 v3, v39

    move-object/from16 v4, v40

    move-object v5, v12

    .line 85
    invoke-direct/range {v0 .. v5}, Lcom/byazt/dk/m;->c(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/e/DeepLink;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/byazt/ar/AdDownloadModel$Builder;->setDeepLink(Lcom/byazt/e/DeepLink;)Lcom/byazt/ar/AdDownloadModel$Builder;

    .line 86
    iget-object v0, v6, Lcom/byazt/dk/m;->ve:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-virtual {v7}, Lcom/byazt/ar/AdDownloadModel$Builder;->build()Lcom/byazt/ar/AdDownloadModel;

    move-result-object v0

    .line 88
    iget-object v1, v6, Lcom/byazt/dk/m;->uj:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_0
    return-void
.end method

.method private sl(Ljava/lang/Object;)Lcom/byazt/ou/IDownloadButtonClickListener;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/byazt/ou/IDownloadButtonClickListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/byazt/ou/IDownloadButtonClickListener;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    return-object p1
.end method

.method private sp(I)I
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->uj(I)Lcom/byazt/ar/AdDownloadController;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadController;->getDownloadMode()I

    move-result p1

    return p1
.end method

.method private sp(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private tt(I)Lcom/byazt/ar/AdDownloadModel$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dk/m;->ve:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/ar/AdDownloadModel$Builder;

    return-object p1
.end method

.method private tt(Ljava/lang/Object;)Lcom/byazt/su/DownloadStatusChangeListener;
    .locals 1

    .line 11
    instance-of v0, p1, Lcom/byazt/su/DownloadStatusChangeListener;

    if-eqz v0, :cond_0

    .line 12
    check-cast p1, Lcom/byazt/su/DownloadStatusChangeListener;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private tt(ILjava/util/Map;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-eqz v1, :cond_1

    .line 13
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->size()I

    move-result v2

    if-gtz v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v2, "linkMode"

    .line 14
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "downloadMode"

    .line 15
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "isEnableBackDialog"

    .line 16
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v5, "isAddToDownloadManage"

    .line 17
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string v6, "extraOperation"

    .line 18
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "shouldUseNewWebView"

    .line 19
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string v7, "interceptFlag"

    .line 20
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v8, "extraJson"

    .line 21
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONObject;

    const-string v9, "extraObject"

    .line 22
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    const-string v10, "enableShowComplianceDialog"

    .line 23
    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    const-string v11, "isAutoDownloadOnCardShow"

    .line 24
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    const-string v12, "enableNewActivity"

    .line 25
    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    const-string v13, "isEnableAH"

    .line 26
    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    const-string v14, "isEnableAM"

    .line 27
    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    const-string v15, "isEnableOppoAutoDownload"

    .line 28
    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 29
    new-instance v15, Lcom/byazt/ar/AdDownloadController$Builder;

    invoke-direct {v15}, Lcom/byazt/ar/AdDownloadController$Builder;-><init>()V

    .line 30
    invoke-virtual {v15, v2}, Lcom/byazt/ar/AdDownloadController$Builder;->setLinkMode(I)Lcom/byazt/ar/AdDownloadController$Builder;

    move-result-object v2

    .line 31
    invoke-virtual {v2, v3}, Lcom/byazt/ar/AdDownloadController$Builder;->setDownloadMode(I)Lcom/byazt/ar/AdDownloadController$Builder;

    move-result-object v2

    .line 32
    invoke-virtual {v2, v4}, Lcom/byazt/ar/AdDownloadController$Builder;->setIsEnableBackDialog(Z)Lcom/byazt/ar/AdDownloadController$Builder;

    move-result-object v2

    .line 33
    invoke-virtual {v2, v5}, Lcom/byazt/ar/AdDownloadController$Builder;->setIsAddToDownloadManage(Z)Lcom/byazt/ar/AdDownloadController$Builder;

    move-result-object v2

    .line 34
    invoke-virtual {v2, v6}, Lcom/byazt/ar/AdDownloadController$Builder;->setShouldUseNewWebView(Z)Lcom/byazt/ar/AdDownloadController$Builder;

    move-result-object v2

    .line 35
    invoke-virtual {v2, v7}, Lcom/byazt/ar/AdDownloadController$Builder;->setInterceptFlag(I)Lcom/byazt/ar/AdDownloadController$Builder;

    move-result-object v2

    .line 36
    invoke-virtual {v2, v8}, Lcom/byazt/ar/AdDownloadController$Builder;->setExtraJson(Lorg/json/JSONObject;)Lcom/byazt/ar/AdDownloadController$Builder;

    move-result-object v2

    .line 37
    invoke-virtual {v2, v9}, Lcom/byazt/ar/AdDownloadController$Builder;->setExtraObject(Ljava/lang/Object;)Lcom/byazt/ar/AdDownloadController$Builder;

    move-result-object v2

    .line 38
    invoke-virtual {v2, v10}, Lcom/byazt/ar/AdDownloadController$Builder;->setEnableShowComplianceDialog(Z)Lcom/byazt/ar/AdDownloadController$Builder;

    move-result-object v2

    .line 39
    invoke-virtual {v2, v11}, Lcom/byazt/ar/AdDownloadController$Builder;->setIsAutoDownloadOnCardShow(Z)Lcom/byazt/ar/AdDownloadController$Builder;

    move-result-object v2

    .line 40
    invoke-virtual {v2, v12}, Lcom/byazt/ar/AdDownloadController$Builder;->setEnableNewActivity(Z)Lcom/byazt/ar/AdDownloadController$Builder;

    move-result-object v2

    .line 41
    invoke-virtual {v2, v13}, Lcom/byazt/ar/AdDownloadController$Builder;->setEnableAH(Z)Lcom/byazt/ar/AdDownloadController$Builder;

    move-result-object v2

    .line 42
    invoke-virtual {v2, v14}, Lcom/byazt/ar/AdDownloadController$Builder;->setEnableAM(Z)Lcom/byazt/ar/AdDownloadController$Builder;

    move-result-object v2

    .line 43
    invoke-virtual {v2, v1}, Lcom/byazt/ar/AdDownloadController$Builder;->setEnableOppoAutoDownload(Z)Lcom/byazt/ar/AdDownloadController$Builder;

    move-result-object v1

    .line 44
    iget-object v2, v0, Lcom/byazt/dk/m;->n:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-virtual {v1}, Lcom/byazt/ar/AdDownloadController$Builder;->build()Lcom/byazt/ar/AdDownloadController;

    move-result-object v1

    .line 46
    iget-object v2, v0, Lcom/byazt/dk/m;->a:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method private static tt()Z
    .locals 5

    .line 2
    const-class v0, Lcom/byazt/di/uj;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    const-string v4, "tt"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 3
    invoke-virtual {v4, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 5
    instance-of v0, v4, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    return v3

    :catch_0
    :try_start_1
    const-string v4, "c"

    .line 6
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 9
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 10
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const v2, 0x660b45d

    if-gt v0, v2, :cond_1

    const v2, 0x3df810

    if-gt v0, v2, :cond_0

    const v2, 0x2dc6c0

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    return v3

    :catch_1
    :cond_2
    return v1
.end method

.method private uj(I)Lcom/byazt/ar/AdDownloadController;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dk/m;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/ar/AdDownloadController;

    return-object p1
.end method

.method private uj(Ljava/lang/Object;)Lcom/byazt/su/DownloadModel;
    .locals 1

    .line 2
    instance-of v0, p1, Lcom/byazt/su/DownloadModel;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/byazt/su/DownloadModel;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private uj(ILjava/util/Map;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-eqz v1, :cond_2

    .line 4
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->size()I

    move-result v2

    if-gtz v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v2, "clickButtonTag"

    .line 5
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "clickItemTag"

    .line 6
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "clickLabel"

    .line 7
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "downloadScene"

    .line 8
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "refer"

    .line 9
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "extraJson"

    .line 10
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    const-string v8, "paramsJson"

    .line 11
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONObject;

    const-string v9, "clickStartLabel"

    .line 12
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "clickContinueLabel"

    .line 13
    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "clickPauseLabel"

    .line 14
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "storageDenyLabel"

    .line 15
    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v13, "clickInstallLabel"

    .line 16
    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v14, "isEnableClickEvent"

    .line 17
    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    const-string v15, "isEnableV3Event"

    .line 18
    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    const-string v0, "extraEventObject"

    .line 19
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 20
    new-instance v1, Lcom/byazt/ar/AdDownloadEventConfig$Builder;

    invoke-direct {v1}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;-><init>()V

    .line 21
    invoke-virtual {v1, v2}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->setClickButtonTag(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;

    move-result-object v1

    .line 22
    invoke-virtual {v1, v3}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->setClickItemTag(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;

    move-result-object v1

    .line 23
    invoke-virtual {v1, v4}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->setClickLabel(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;

    move-result-object v1

    .line 24
    invoke-virtual {v1, v9}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->setClickStartLabel(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;

    move-result-object v1

    .line 25
    invoke-virtual {v1, v10}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->setClickContinueLabel(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;

    move-result-object v1

    .line 26
    invoke-virtual {v1, v11}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->setClickPauseLabel(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;

    move-result-object v1

    .line 27
    invoke-virtual {v1, v12}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->setStorageDenyLabel(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;

    move-result-object v1

    .line 28
    invoke-virtual {v1, v13}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->setClickInstallLabel(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;

    move-result-object v1

    .line 29
    invoke-virtual {v1, v14}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->setIsEnableClickEvent(Z)Lcom/byazt/ar/AdDownloadEventConfig$Builder;

    move-result-object v1

    .line 30
    invoke-virtual {v1, v5}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->setDownloadScene(I)Lcom/byazt/ar/AdDownloadEventConfig$Builder;

    move-result-object v1

    .line 31
    invoke-virtual {v1, v15}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->setIsEnableV3Event(Z)Lcom/byazt/ar/AdDownloadEventConfig$Builder;

    move-result-object v1

    .line 32
    invoke-virtual {v1, v6}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->setRefer(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;

    move-result-object v1

    .line 33
    invoke-virtual {v1, v7}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->setExtraJson(Lorg/json/JSONObject;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;

    move-result-object v1

    .line 34
    invoke-virtual {v1, v8}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->setParamsJson(Lorg/json/JSONObject;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;

    move-result-object v1

    move-object/from16 v2, p0

    .line 35
    iget-object v3, v2, Lcom/byazt/dk/m;->sp:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {v1, v0}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->setExtraEventObject(Ljava/lang/Object;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;

    .line 37
    :cond_1
    invoke-virtual {v1}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->build()Lcom/byazt/ar/AdDownloadEventConfig;

    move-result-object v0

    .line 38
    iget-object v1, v2, Lcom/byazt/dk/m;->x:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    :goto_0
    move-object v2, v0

    return-void
.end method

.method private ve(I)Lcom/byazt/ar/AdDownloadModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dk/m;->uj:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/ar/AdDownloadModel;

    return-object p1
.end method

.method private ve(Ljava/lang/Object;)Lcom/byazt/su/tt;
    .locals 1

    .line 2
    instance-of v0, p1, Lcom/byazt/su/tt;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/byazt/su/tt;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private ve(ILjava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 4
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "clickButtonTag"

    .line 5
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "clickItemTag"

    .line 6
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "clickStartLabel"

    .line 7
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "clickContinueLabel"

    .line 8
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "clickPauseLabel"

    .line 9
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "storageDenyLabel"

    .line 10
    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "clickInstallLabel"

    .line 11
    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "isEnableClickEvent"

    .line 12
    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const-string v8, "isEnableV3Event"

    .line 13
    invoke-interface {p2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const-string v9, "extraEventObject"

    .line 14
    invoke-interface {p2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/json/JSONObject;

    .line 15
    new-instance v9, Lcom/byazt/ar/AdDownloadEventConfig$Builder;

    invoke-direct {v9}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;-><init>()V

    .line 16
    invoke-virtual {v9, v0}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->setClickButtonTag(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;

    move-result-object v0

    .line 17
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->setClickItemTag(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;

    move-result-object v0

    .line 18
    invoke-virtual {v0, v2}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->setClickStartLabel(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;

    move-result-object v0

    .line 19
    invoke-virtual {v0, v3}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->setClickContinueLabel(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;

    move-result-object v0

    .line 20
    invoke-virtual {v0, v4}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->setClickPauseLabel(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;

    move-result-object v0

    .line 21
    invoke-virtual {v0, v5}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->setStorageDenyLabel(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;

    move-result-object v0

    .line 22
    invoke-virtual {v0, v6}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->setClickInstallLabel(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;

    move-result-object v0

    .line 23
    invoke-virtual {v0, v7}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->setIsEnableClickEvent(Z)Lcom/byazt/ar/AdDownloadEventConfig$Builder;

    move-result-object v0

    .line 24
    invoke-virtual {v0, v8}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->setIsEnableV3Event(Z)Lcom/byazt/ar/AdDownloadEventConfig$Builder;

    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/byazt/dk/m;->sp:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    .line 26
    invoke-virtual {v0, p2}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->setExtraEventObject(Ljava/lang/Object;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;

    .line 27
    :cond_1
    invoke-virtual {v0}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->build()Lcom/byazt/ar/AdDownloadEventConfig;

    move-result-object p2

    .line 28
    iget-object v0, p0, Lcom/byazt/dk/m;->x:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method private x(Ljava/lang/Object;)Lcom/byazt/ocd/c;
    .locals 1

    .line 1
    invoke-static {p1}, Ln0/b;->a(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/byazt/ocd/c;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Lcom/byazt/ocd/c;-><init>(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    return-object p1
.end method


# virtual methods
.method public applyFunction(ILcom/bykv/vk/openvk/api/proto/PluginValueSet;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/bykv/vk/openvk/api/proto/PluginValueSet;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    const v0, -0x5f5e0f2

    .line 2
    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/byazt/dk/m;->values()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->sparseArray()Landroid/util/SparseArray;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/byazt/dk/m;->call(ILcom/bykv/vk/openvk/api/proto/PluginValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public autoInstallWithoutNotification(I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->autoInstallWithoutNotification()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "custom_authority"

    .line 80
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "custom_file_path"

    .line 81
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-direct {p0}, Lcom/byazt/dk/m;->c()Ljava/util/function/Function;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 83
    :cond_0
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    move-result-object p2

    const/16 v1, 0x9b

    invoke-virtual {p2, v1}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    move-result-object p2

    const-class v1, Landroid/net/Uri;

    invoke-virtual {p2, v1}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    move-result-object p2

    invoke-virtual {p2}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object p2

    invoke-static {p1, p2}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 84
    check-cast p1, Landroid/net/Uri;

    return-object p1
.end method

.method public c(Ljava/lang/Object;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "params"

    .line 75
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-direct {p0}, Lcom/byazt/dk/m;->c()Ljava/util/function/Function;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 77
    :cond_0
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    move-result-object v1

    const/16 v2, 0x9c

    invoke-virtual {v1, v2}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    move-result-object v1

    const-class v2, Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 78
    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public call(ILcom/bykv/vk/openvk/api/proto/PluginValueSet;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/bykv/vk/openvk/api/proto/PluginValueSet;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    const/16 v0, 0x14

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    const-class p1, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-interface {p2, v1, p1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroid/os/Bundle;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/byazt/dk/m;->init(Landroid/os/Bundle;)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    return-object p1

    .line 19
    :cond_0
    if-eqz p2, :cond_1

    .line 20
    .line 21
    const-class v0, Ljava/util/Map;

    .line 22
    .line 23
    invoke-interface {p2, v1, v0}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-interface {p2, v1, v0}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    check-cast p2, Ljava/util/Map;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    new-instance p2, Ljava/util/HashMap;

    .line 37
    .line 38
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-virtual {p0, p3, p1, p2}, Lcom/byazt/dk/m;->callMethod(Ljava/lang/Class;ILjava/util/Map;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    return-object p1
.end method

.method public callMethod(Ljava/lang/Class;ILjava/util/Map;)Ljava/lang/Object;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v0, p3

    const-string v1, "hashCode"

    .line 1
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 3
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-direct {v8, v2}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    move-result-object v1

    const-string v3, "action_type_button"

    const-string v4, "downloadStatusChangeListener"

    const-string v5, "logExtra"

    const-string v6, "extraJson"

    const-string v7, "downloadMarketInterceptor"

    const-string v9, "downloadMode"

    const-string v10, "packageName"

    const-string v11, "appName"

    const-string v12, "appIcon"

    const-string v13, "uri"

    const-string v14, "hid"

    const-string v15, "downloadButtonClickListener"

    move-object/from16 p1, v14

    const-string v14, "open_market_in_app"

    move-object/from16 v16, v4

    const-string v4, "downloadModel"

    move-object/from16 v17, v4

    const-string v4, "downloadEventConfig"

    move-object/from16 v18, v13

    const-string v13, "activity"

    move-object/from16 v19, v14

    const-string v14, "downloadController"

    move-object/from16 v20, v13

    const-string v13, "downloadUrl"

    move-object/from16 v21, v15

    const-string v15, "id"

    const/16 v22, 0x0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    return-object v22

    :pswitch_1
    const-string v1, "listener"

    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/byazt/ocd/tt;

    if-eqz v1, :cond_1

    .line 7
    check-cast v0, Lcom/byazt/ocd/tt;

    invoke-static {v0}, Lcom/byazt/dk/z;->c(Lcom/byazt/ocd/tt;)V

    :cond_1
    return-object v22

    .line 8
    :pswitch_2
    invoke-direct {v8, v0}, Lcom/byazt/dk/m;->c(Ljava/util/Map;)V

    return-object v22

    :pswitch_3
    :try_start_0
    const-string v1, "i"

    .line 9
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "c"

    .line 10
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    instance-of v0, v1, Landroid/content/Intent;

    if-eqz v0, :cond_3

    .line 12
    move-object v0, v1

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.csj.install"

    .line 13
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    check-cast v1, Landroid/content/Intent;

    invoke-direct {v8, v1}, Lcom/byazt/dk/m;->c(Landroid/content/Intent;)V

    goto :goto_1

    .line 15
    :cond_2
    move-object v0, v1

    check-cast v0, Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    invoke-static {}, Lcom/byazt/zz/ve;->ic()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/byazt/z/DownloadHandlerService;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 16
    invoke-static {}, Lcom/byazt/zz/ve;->ic()Landroid/content/Context;

    move-result-object v0

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 17
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v1

    const-string v2, "start_service"

    invoke-virtual {v1, v2, v0}, Lcom/byazt/ukr/yp;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-object v22

    :pswitch_4
    const-string v1, "s"

    .line 18
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 19
    instance-of v1, v0, Landroid/app/Service;

    if-eqz v1, :cond_4

    .line 20
    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/byazt/zz/ve;->c(Landroid/content/Context;)V

    :cond_4
    return-object v22

    .line 21
    :pswitch_5
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/byazt/dk/m;->i(Ljava/lang/Object;)Lcom/byazt/ou/DownloadMarketInterceptor;

    move-result-object v0

    .line 22
    invoke-direct {v8, v2, v0}, Lcom/byazt/dk/m;->c(ILcom/byazt/ou/DownloadMarketInterceptor;)V

    return-object v22

    :pswitch_6
    const-string v1, "funnelType"

    .line 23
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 24
    invoke-virtual {v8, v2, v0}, Lcom/byazt/dk/m;->setFunnelType(II)Lcom/byazt/ar/AdDownloadModel;

    return-object v22

    :pswitch_7
    const-string v1, "isAutoInstallWithoutNotification"

    .line 25
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 26
    invoke-virtual {v8, v2, v0}, Lcom/byazt/dk/m;->setAutoInstallWithoutNotification(IZ)Lcom/byazt/ar/AdDownloadModel;

    return-object v22

    :pswitch_8
    const-string v1, "quickAppModelOpenUrl"

    .line 27
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "quickAppModelExtraData"

    .line 28
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 29
    new-instance v3, Lcom/byazt/e/uj$c;

    invoke-direct {v3}, Lcom/byazt/e/uj$c;-><init>()V

    invoke-virtual {v3, v1}, Lcom/byazt/e/uj$c;->c(Ljava/lang/String;)Lcom/byazt/e/uj$c;

    move-result-object v1

    .line 30
    invoke-virtual {v1, v0}, Lcom/byazt/e/uj$c;->tt(Ljava/lang/String;)Lcom/byazt/e/uj$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/e/uj$c;->c()Lcom/byazt/e/uj;

    move-result-object v0

    .line 31
    invoke-virtual {v8, v2, v0}, Lcom/byazt/dk/m;->setQuickAppModel(ILcom/byazt/e/uj;)Lcom/byazt/ar/AdDownloadModel;

    return-object v22

    :pswitch_9
    const-string v1, "versionName"

    .line 32
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 33
    invoke-virtual {v8, v2, v0}, Lcom/byazt/dk/m;->setVersionName(ILjava/lang/String;)Lcom/byazt/ar/AdDownloadModel;

    return-object v22

    :pswitch_a
    const-string v1, "versionCode"

    .line 34
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 35
    invoke-virtual {v8, v2, v0}, Lcom/byazt/dk/m;->setVersionCode(II)Lcom/byazt/ar/AdDownloadModel;

    return-object v22

    :pswitch_b
    const-string v1, "isNeedIndependentProcess"

    .line 36
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 37
    invoke-virtual {v8, v2, v0}, Lcom/byazt/dk/m;->setNeedIndependentProcess(IZ)Lcom/byazt/ar/AdDownloadModel;

    return-object v22

    :pswitch_c
    const-string v1, "fileName"

    .line 38
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 39
    invoke-virtual {v8, v2, v0}, Lcom/byazt/dk/m;->setFileName(ILjava/lang/String;)Lcom/byazt/ar/AdDownloadModel;

    return-object v22

    :pswitch_d
    const-string v1, "filePath"

    .line 40
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 41
    invoke-virtual {v8, v2, v0}, Lcom/byazt/dk/m;->setFilePath(ILjava/lang/String;)Lcom/byazt/ar/AdDownloadModel;

    return-object v22

    :pswitch_e
    const-string v1, "isShowNotification"

    .line 42
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 43
    invoke-virtual {v8, v2, v0}, Lcom/byazt/dk/m;->setIsShowNotification(IZ)Lcom/byazt/ar/AdDownloadModel;

    return-object v22

    :pswitch_f
    const-string v1, "headers"

    .line 44
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 45
    invoke-virtual {v8, v2, v0}, Lcom/byazt/dk/m;->setHeaders(ILjava/util/Map;)Lcom/byazt/ar/AdDownloadModel;

    return-object v22

    :pswitch_10
    const-string v1, "mimeType"

    .line 46
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 47
    invoke-virtual {v8, v2, v0}, Lcom/byazt/dk/m;->setMimeType(ILjava/lang/String;)Lcom/byazt/ar/AdDownloadModel;

    return-object v22

    :pswitch_11
    const-string v1, "notificationJumpUrl"

    .line 48
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 49
    invoke-virtual {v8, v2, v0}, Lcom/byazt/dk/m;->setNotificationJumpUrl(ILjava/lang/String;)Lcom/byazt/ar/AdDownloadModel;

    return-object v22

    :pswitch_12
    const-string v1, "backupUrls"

    .line 50
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 51
    invoke-virtual {v8, v2, v0}, Lcom/byazt/dk/m;->setBackupUrls(ILjava/util/List;)Lcom/byazt/ar/AdDownloadModel;

    return-object v22

    .line 52
    :pswitch_13
    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 53
    invoke-virtual {v8, v2, v0}, Lcom/byazt/dk/m;->setDownloadUrl(ILjava/lang/String;)Lcom/byazt/ar/AdDownloadModel;

    return-object v22

    :pswitch_14
    const-string v1, "clickTrackUrl"

    .line 54
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 55
    invoke-virtual {v8, v2, v0}, Lcom/byazt/dk/m;->setClickTrackUrl(ILjava/util/List;)Lcom/byazt/ar/AdDownloadModel;

    return-object v22

    .line 56
    :pswitch_15
    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 57
    invoke-virtual {v8, v2, v0}, Lcom/byazt/dk/m;->setAppIcon(ILjava/lang/String;)Lcom/byazt/ar/AdDownloadModel;

    return-object v22

    .line 58
    :pswitch_16
    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 59
    invoke-virtual {v8, v2, v0}, Lcom/byazt/dk/m;->setPackageName(ILjava/lang/String;)Lcom/byazt/ar/AdDownloadModel;

    return-object v22

    .line 60
    :pswitch_17
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 61
    invoke-virtual {v8, v2, v0}, Lcom/byazt/dk/m;->setLogExtra(ILjava/lang/String;)Lcom/byazt/ar/AdDownloadModel;

    return-object v22

    :pswitch_18
    const-string v1, "modelType"

    .line 62
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 63
    invoke-virtual {v8, v2, v0}, Lcom/byazt/dk/m;->setModelType(II)Lcom/byazt/ar/AdDownloadModel;

    return-object v22

    :pswitch_19
    const-string v1, "isAd"

    .line 64
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 65
    invoke-virtual {v8, v2, v0}, Lcom/byazt/dk/m;->setIsAd(IZ)Lcom/byazt/ar/AdDownloadModel;

    return-object v22

    .line 66
    :pswitch_1a
    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 67
    invoke-virtual {v8, v2, v0, v1}, Lcom/byazt/dk/m;->setId(IJ)Lcom/byazt/ar/AdDownloadModel;

    return-object v22

    :pswitch_1b
    const-string v1, "sdkMonitorScene"

    .line 68
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 69
    invoke-virtual {v8, v2, v0}, Lcom/byazt/dk/m;->setSdkMonitorScene(ILjava/lang/String;)V

    return-object v22

    :pswitch_1c
    const-string v1, "startToast"

    .line 70
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 71
    invoke-virtual {v8, v2, v0}, Lcom/byazt/dk/m;->setStartToast(ILjava/lang/String;)V

    return-object v22

    .line 72
    :pswitch_1d
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 73
    invoke-virtual {v8, v2, v0}, Lcom/byazt/dk/m;->setExtra(ILorg/json/JSONObject;)V

    return-object v22

    .line 74
    :pswitch_1e
    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 75
    invoke-virtual {v8, v2, v0}, Lcom/byazt/dk/m;->setAppName(ILjava/lang/String;)V

    return-object v22

    :pswitch_1f
    const-string v1, "extraValue"

    .line 76
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 77
    invoke-virtual {v8, v2, v0, v1}, Lcom/byazt/dk/m;->setExtraValue(IJ)V

    return-object v22

    :pswitch_20
    const-string v1, "needWifi"

    .line 78
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 79
    invoke-virtual {v8, v2, v0}, Lcom/byazt/dk/m;->setNeedWifi(IZ)V

    return-object v22

    :pswitch_21
    const-string v1, "expectFileLength"

    .line 80
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 81
    invoke-virtual {v8, v2, v0, v1}, Lcom/byazt/dk/m;->setExpectFileLength(IJ)V

    return-object v22

    :pswitch_22
    const-string v1, "md5"

    .line 82
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 83
    invoke-virtual {v8, v2, v0}, Lcom/byazt/dk/m;->setMd5(ILjava/lang/String;)V

    return-object v22

    .line 84
    :pswitch_23
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->enablePause(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 85
    :pswitch_24
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->distinctDir(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 86
    :pswitch_25
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->isAutoInstall(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 87
    :pswitch_26
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->getSdkMonitorScene(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 88
    :pswitch_27
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->getStartToast(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 89
    :pswitch_28
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->getFunnelType(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 90
    :pswitch_29
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->getExecutorGroup(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 91
    :pswitch_2a
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->shouldDownloadWithPatchApply(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 92
    :pswitch_2b
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->autoInstallWithoutNotification(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 93
    :pswitch_2c
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->getQuickAppModel(I)Lcom/byazt/e/uj;

    move-result-object v0

    return-object v0

    .line 94
    :pswitch_2d
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->getModelType(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 95
    :pswitch_2e
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->getExtra(I)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 96
    :pswitch_2f
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->getClickTrackUrl(I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 97
    :pswitch_30
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->getDeepLink(I)Lcom/byazt/e/DeepLink;

    move-result-object v0

    return-object v0

    .line 98
    :pswitch_31
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->getAppIcon(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 99
    :pswitch_32
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 100
    :pswitch_33
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->getLogExtra(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 101
    :pswitch_34
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->isAd(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 102
    :pswitch_35
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->getVersionName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 103
    :pswitch_36
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->getVersionCode(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 104
    :pswitch_37
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->needIndependentProcess(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 105
    :pswitch_38
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->forceHideNotification(I)V

    return-object v22

    .line 106
    :pswitch_39
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->forceHideToast(I)V

    return-object v22

    .line 107
    :pswitch_3a
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->getDownloadSettings(I)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 108
    :pswitch_3b
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->forceWifi(I)V

    return-object v22

    .line 109
    :pswitch_3c
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->getFileName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 110
    :pswitch_3d
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->getFilePath(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 111
    :pswitch_3e
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->isVisibleInDownloadsUi(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 112
    :pswitch_3f
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->isInExternalPublicDir(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 113
    :pswitch_40
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->isNeedWifi(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 114
    :pswitch_41
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->isShowNotification(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 115
    :pswitch_42
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->isShowToast(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 116
    :pswitch_43
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->getHeaders(I)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 117
    :pswitch_44
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->getMimeType(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 118
    :pswitch_45
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->getName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 119
    :pswitch_46
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->getNotificationJumpUrl(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 120
    :pswitch_47
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->getBackupUrls(I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 121
    :pswitch_48
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->getDownloadUrl(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 122
    :pswitch_49
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->getExtraValue(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 123
    :pswitch_4a
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->getExpectFileLength(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 124
    :pswitch_4b
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->getMd5(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 125
    :pswitch_4c
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->getId(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 126
    :pswitch_4d
    invoke-direct {v8, v2, v0}, Lcom/byazt/dk/m;->n(ILjava/util/Map;)V

    return-object v22

    :pswitch_4e
    const-string v1, "quickAppEventTag"

    .line 127
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 128
    invoke-virtual {v8, v2, v0}, Lcom/byazt/dk/m;->setQuickAppEventTag(ILjava/lang/String;)V

    return-object v22

    :pswitch_4f
    const-string v1, "refer"

    .line 129
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 130
    invoke-virtual {v8, v2, v0}, Lcom/byazt/dk/m;->setRefer(ILjava/lang/String;)V

    return-object v22

    :pswitch_50
    const-string v1, "clickItemTag"

    .line 131
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 132
    invoke-virtual {v8, v2, v0}, Lcom/byazt/dk/m;->setClickItemTag(ILjava/lang/String;)V

    return-object v22

    :pswitch_51
    const-string v1, "paramsJson"

    .line 133
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 134
    invoke-virtual {v8, v2, v0}, Lcom/byazt/dk/m;->setParamsJson(ILorg/json/JSONObject;)V

    return-object v22

    :pswitch_52
    const-string v1, "eventConfigExtraJson"

    .line 135
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 136
    invoke-virtual {v8, v2, v0}, Lcom/byazt/dk/m;->setEventConfigExtraJson(ILorg/json/JSONObject;)V

    return-object v22

    :pswitch_53
    const-string v1, "clickButtonTag"

    .line 137
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 138
    invoke-virtual {v8, v2, v0}, Lcom/byazt/dk/m;->setClickButtonTag(ILjava/lang/String;)V

    return-object v22

    :pswitch_54
    const-string v1, "extraEventObject"

    .line 139
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 140
    invoke-virtual {v8, v2, v0}, Lcom/byazt/dk/m;->setExtraEventObject(ILjava/lang/Object;)V

    return-object v22

    .line 141
    :pswitch_55
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->getParamsJson(I)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 142
    :pswitch_56
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->getEventConfigExtraJson(I)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 143
    :pswitch_57
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->isEnableV3Event(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 144
    :pswitch_58
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->isEnableClickEvent(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 145
    :pswitch_59
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->getDownloadScene(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 146
    :pswitch_5a
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->getExtraEventObject(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 147
    :pswitch_5b
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->getStorageDenyLabel(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 148
    :pswitch_5c
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->getClickInstallLabel(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 149
    :pswitch_5d
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->getClickContinueLabel(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 150
    :pswitch_5e
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->getClickPauseLabel(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 151
    :pswitch_5f
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->getClickStartLabel(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 152
    :pswitch_60
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->getClickLabel(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 153
    :pswitch_61
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->getClickItemTag(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 154
    :pswitch_62
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->getClickButtonTag(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 155
    :pswitch_63
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->getRefer(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 156
    :pswitch_64
    invoke-direct {v8, v2, v0}, Lcom/byazt/dk/m;->uj(ILjava/util/Map;)V

    return-object v22

    .line 157
    :pswitch_65
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->enableOppoAutoDownload(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 158
    :pswitch_66
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 159
    invoke-virtual {v8, v2, v0}, Lcom/byazt/dk/m;->setExtraJson(ILorg/json/JSONObject;)V

    return-object v22

    :pswitch_67
    const-string v1, "extraObject"

    .line 160
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 161
    invoke-virtual {v8, v2, v0}, Lcom/byazt/dk/m;->setExtraObject(ILjava/lang/Object;)V

    return-object v22

    .line 162
    :pswitch_68
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->enableAM(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 163
    :pswitch_69
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->enableAH(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_6a
    const-string v1, "enableNewActivity"

    .line 164
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 165
    invoke-virtual {v8, v2, v0}, Lcom/byazt/dk/m;->setEnableNewActivity(IZ)V

    return-object v22

    :pswitch_6b
    const-string v1, "isAutoDownloadOnCardShow"

    .line 166
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 167
    invoke-virtual {v8, v2, v0}, Lcom/byazt/dk/m;->setIsAutoDownloadOnCardShow(IZ)V

    return-object v22

    .line 168
    :pswitch_6c
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->enableNewActivity(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 169
    :pswitch_6d
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->isAutoDownloadOnCardShow(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_6e
    const-string v1, "enableShowComplianceDialog"

    .line 170
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 171
    invoke-virtual {v8, v2, v0}, Lcom/byazt/dk/m;->setEnableShowComplianceDialog(IZ)V

    return-object v22

    .line 172
    :pswitch_6f
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->enableShowComplianceDialog(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_70
    const-string v1, "linkMode"

    .line 173
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 174
    invoke-virtual {v8, v2, v0}, Lcom/byazt/dk/m;->setLinkMode(II)V

    return-object v22

    .line 175
    :pswitch_71
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->getExtraObject(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 176
    :pswitch_72
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->getExtraJson(I)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 177
    :pswitch_73
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->getInterceptFlag(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 178
    :pswitch_74
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->shouldUseNewWebView(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 179
    :pswitch_75
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->getDownloadChunkCount(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 180
    :pswitch_76
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->isEnableMultipleDownload(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 181
    :pswitch_77
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->getExtraClickOperation(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 182
    :pswitch_78
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->isAddToDownloadManage(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 183
    :pswitch_79
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->isEnableBackDialog(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 184
    :pswitch_7a
    invoke-virtual {v8, v2}, Lcom/byazt/dk/m;->getLinkMode(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 185
    :pswitch_7b
    invoke-direct {v8, v2, v0}, Lcom/byazt/dk/m;->tt(ILjava/util/Map;)V

    return-object v22

    :pswitch_7c
    const-string v1, "isShowToast"

    .line 186
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 187
    invoke-virtual {v8, v2, v0}, Lcom/byazt/dk/m;->setIsShowToast(IZ)V

    return-object v22

    :pswitch_7d
    const-string v1, "downloadScene"

    .line 188
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 189
    invoke-virtual {v8, v2, v0}, Lcom/byazt/dk/m;->setDownloadScene(II)V

    return-object v22

    .line 190
    :pswitch_7e
    invoke-direct {v8, v2, v0}, Lcom/byazt/dk/m;->ve(ILjava/util/Map;)V

    return-object v22

    :pswitch_7f
    const-string v1, "isEnableOppoAutoDownload"

    .line 191
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 192
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/byazt/dk/m;->i(Ljava/lang/Object;)Lcom/byazt/ou/DownloadMarketInterceptor;

    move-result-object v0

    invoke-direct {v8, v2, v1, v0}, Lcom/byazt/dk/m;->c(IZLcom/byazt/ou/DownloadMarketInterceptor;)V

    return-object v22

    .line 193
    :pswitch_80
    invoke-direct {v8, v2}, Lcom/byazt/dk/m;->sp(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 194
    :pswitch_81
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 195
    invoke-direct {v8, v2, v0}, Lcom/byazt/dk/m;->c(II)V

    return-object v22

    :pswitch_82
    const-string v1, "autoOpen"

    .line 196
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 197
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v1, "isHaveDownloadSdkConfig"

    .line 198
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string v1, "isEnableAH"

    .line 199
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string v1, "isEnableAM"

    .line 200
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    move-object/from16 v1, p0

    .line 201
    invoke-direct/range {v1 .. v7}, Lcom/byazt/dk/m;->c(IIIZZZ)V

    return-object v22

    .line 202
    :pswitch_83
    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 203
    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 204
    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 205
    invoke-direct {v8, v2, v1, v3, v0}, Lcom/byazt/dk/m;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v22

    :pswitch_84
    const-string v1, "mateIsEmpty"

    .line 206
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 207
    new-instance v0, Lcom/byazt/ar/AdDownloadModel$Builder;

    invoke-direct {v0}, Lcom/byazt/ar/AdDownloadModel$Builder;-><init>()V

    .line 208
    iget-object v1, v8, Lcom/byazt/dk/m;->ve:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    invoke-virtual {v0}, Lcom/byazt/ar/AdDownloadModel$Builder;->build()Lcom/byazt/ar/AdDownloadModel;

    move-result-object v0

    .line 210
    iget-object v1, v8, Lcom/byazt/dk/m;->uj:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v22

    .line 211
    :cond_5
    invoke-direct {v8, v2, v0}, Lcom/byazt/dk/m;->c(ILjava/util/Map;)V

    return-object v22

    :pswitch_85
    if-nez v1, :cond_6

    .line 212
    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_2

    :cond_6
    invoke-interface {v1}, Lcom/byazt/su/DownloadModel;->getId()J

    move-result-wide v0

    .line 213
    :goto_2
    invoke-static {}, Lcom/byazt/dk/z;->tt()Lcom/byazt/di/da;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/di/da;->n()Lcom/byazt/pk/tt;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/byazt/pk/tt;->c(J)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_86
    if-nez v1, :cond_7

    .line 214
    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_3

    :cond_7
    invoke-interface {v1}, Lcom/byazt/su/DownloadModel;->getId()J

    move-result-wide v0

    .line 215
    :goto_3
    invoke-static {}, Lcom/byazt/dk/z;->tt()Lcom/byazt/di/da;

    move-result-object v3

    invoke-virtual {v3}, Lcom/byazt/di/da;->n()Lcom/byazt/pk/tt;

    move-result-object v3

    invoke-interface {v3, v0, v1, v2}, Lcom/byazt/pk/tt;->c(JI)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 216
    invoke-direct {v8, v2}, Lcom/byazt/dk/m;->c(I)V

    return-object v0

    :pswitch_87
    if-nez v1, :cond_8

    .line 217
    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_4

    :cond_8
    invoke-interface {v1}, Lcom/byazt/su/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    :goto_4
    move-object/from16 v24, v1

    .line 218
    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    .line 219
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v27

    .line 220
    invoke-direct {v8, v2}, Lcom/byazt/dk/m;->n(I)Lcom/byazt/ar/AdDownloadEventConfig;

    move-result-object v1

    if-nez v1, :cond_9

    .line 221
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/byazt/dk/m;->n(Ljava/lang/Object;)Lcom/byazt/su/DownloadEventConfig;

    move-result-object v1

    :cond_9
    move-object/from16 v28, v1

    .line 222
    invoke-direct {v8, v2}, Lcom/byazt/dk/m;->uj(I)Lcom/byazt/ar/AdDownloadController;

    move-result-object v1

    if-nez v1, :cond_a

    .line 223
    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/byazt/dk/m;->a(Ljava/lang/Object;)Lcom/byazt/su/DownloadController;

    move-result-object v1

    :cond_a
    const-string v2, "itemClickListener"

    .line 224
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v8, v2}, Lcom/byazt/dk/m;->da(Ljava/lang/Object;)Lcom/byazt/ou/OnItemClickListener;

    move-result-object v30

    move-object/from16 v3, v21

    .line 225
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v8, v2}, Lcom/byazt/dk/m;->sl(Ljava/lang/Object;)Lcom/byazt/ou/IDownloadButtonClickListener;

    move-result-object v31

    move-object/from16 v5, v20

    .line 226
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v8, v2}, Lcom/byazt/dk/m;->getActivity(Ljava/lang/Object;)Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v6, v19

    .line 227
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/byazt/dk/m;->sp(Ljava/lang/Object;)Z

    move-result v0

    .line 228
    instance-of v3, v1, Lcom/byazt/ar/AdDownloadController;

    if-eqz v3, :cond_b

    if-eqz v2, :cond_b

    if-eqz v0, :cond_b

    .line 229
    move-object v0, v1

    check-cast v0, Lcom/byazt/ar/AdDownloadController;

    invoke-virtual {v0, v2}, Lcom/byazt/ar/AdDownloadController;->setWeakActivity(Landroid/app/Activity;)V

    .line 230
    :cond_b
    invoke-static {}, Lcom/byazt/dk/z;->tt()Lcom/byazt/di/da;

    move-result-object v23

    move-object/from16 v29, v1

    invoke-virtual/range {v23 .. v31}, Lcom/byazt/di/da;->c(Ljava/lang/String;JILcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;Lcom/byazt/ou/OnItemClickListener;Lcom/byazt/ou/IDownloadButtonClickListener;)V

    return-object v22

    :pswitch_88
    move-object/from16 v6, v19

    move-object/from16 v5, v20

    if-nez v1, :cond_c

    .line 231
    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_5

    :cond_c
    invoke-interface {v1}, Lcom/byazt/su/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v7

    :goto_5
    move-object/from16 v24, v7

    if-nez v1, :cond_d

    .line 232
    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    goto :goto_6

    :cond_d
    invoke-interface {v1}, Lcom/byazt/su/DownloadModel;->getId()J

    move-result-wide v9

    :goto_6
    move-wide/from16 v25, v9

    .line 233
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v27

    .line 234
    invoke-direct {v8, v2}, Lcom/byazt/dk/m;->n(I)Lcom/byazt/ar/AdDownloadEventConfig;

    move-result-object v1

    if-nez v1, :cond_e

    .line 235
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/byazt/dk/m;->n(Ljava/lang/Object;)Lcom/byazt/su/DownloadEventConfig;

    move-result-object v1

    :cond_e
    move-object/from16 v28, v1

    .line 236
    invoke-direct {v8, v2}, Lcom/byazt/dk/m;->uj(I)Lcom/byazt/ar/AdDownloadController;

    move-result-object v1

    if-nez v1, :cond_f

    .line 237
    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/byazt/dk/m;->a(Ljava/lang/Object;)Lcom/byazt/su/DownloadController;

    move-result-object v1

    .line 238
    :cond_f
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v8, v2}, Lcom/byazt/dk/m;->getActivity(Ljava/lang/Object;)Landroid/app/Activity;

    move-result-object v2

    .line 239
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/byazt/dk/m;->sp(Ljava/lang/Object;)Z

    move-result v0

    .line 240
    instance-of v3, v1, Lcom/byazt/ar/AdDownloadController;

    if-eqz v3, :cond_10

    if-eqz v2, :cond_10

    if-eqz v0, :cond_10

    .line 241
    move-object v0, v1

    check-cast v0, Lcom/byazt/ar/AdDownloadController;

    invoke-virtual {v0, v2}, Lcom/byazt/ar/AdDownloadController;->setWeakActivity(Landroid/app/Activity;)V

    .line 242
    :cond_10
    invoke-static {}, Lcom/byazt/dk/z;->tt()Lcom/byazt/di/da;

    move-result-object v23

    move-object/from16 v29, v1

    invoke-virtual/range {v23 .. v29}, Lcom/byazt/di/da;->c(Ljava/lang/String;JILcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;)V

    return-object v22

    :pswitch_89
    move-object/from16 v7, v18

    .line 243
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 244
    invoke-static {v0}, Lcom/byazt/dk/z;->c(Landroid/net/Uri;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_8a
    if-nez v1, :cond_11

    .line 245
    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_7

    :cond_11
    invoke-interface {v1}, Lcom/byazt/su/DownloadModel;->getId()J

    move-result-wide v3

    :goto_7
    move-wide v11, v3

    if-nez v1, :cond_12

    .line 246
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_8

    :cond_12
    invoke-interface {v1}, Lcom/byazt/su/DownloadModel;->getLogExtra()Ljava/lang/String;

    move-result-object v0

    :goto_8
    move-object v13, v0

    .line 247
    invoke-static {}, Lcom/byazt/dk/z;->tt()Lcom/byazt/di/da;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/di/da;->n()Lcom/byazt/pk/tt;

    move-result-object v9

    iget-object v10, v8, Lcom/byazt/dk/m;->tt:Landroid/content/Context;

    const/4 v14, 0x0

    move v15, v2

    invoke-interface/range {v9 .. v15}, Lcom/byazt/pk/tt;->c(Landroid/content/Context;JLjava/lang/String;Lcom/byazt/su/DownloadStatusChangeListener;I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_8b
    move-object/from16 v3, v21

    const-string v5, "isDisableDialog"

    .line 248
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    const-string v5, "userAgent"

    .line 249
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Ljava/lang/String;

    if-nez v1, :cond_13

    move-object/from16 v9, v17

    .line 250
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/byazt/dk/m;->uj(Ljava/lang/Object;)Lcom/byazt/su/DownloadModel;

    move-result-object v1

    :cond_13
    move-object v13, v1

    .line 251
    invoke-direct {v8, v2}, Lcom/byazt/dk/m;->n(I)Lcom/byazt/ar/AdDownloadEventConfig;

    move-result-object v1

    if-nez v1, :cond_14

    .line 252
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/byazt/dk/m;->n(Ljava/lang/Object;)Lcom/byazt/su/DownloadEventConfig;

    move-result-object v1

    .line 253
    :cond_14
    invoke-direct {v8, v2}, Lcom/byazt/dk/m;->uj(I)Lcom/byazt/ar/AdDownloadController;

    move-result-object v4

    if-nez v4, :cond_15

    .line 254
    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v8, v4}, Lcom/byazt/dk/m;->a(Ljava/lang/Object;)Lcom/byazt/su/DownloadController;

    move-result-object v4

    :cond_15
    move-object v15, v4

    move-object/from16 v4, v16

    .line 255
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v8, v4}, Lcom/byazt/dk/m;->tt(Ljava/lang/Object;)Lcom/byazt/su/DownloadStatusChangeListener;

    move-result-object v16

    .line 256
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/byazt/dk/m;->sl(Ljava/lang/Object;)Lcom/byazt/ou/IDownloadButtonClickListener;

    move-result-object v18

    .line 257
    invoke-static/range {v18 .. v18}, Lcom/byazt/dk/m;->c(Lcom/byazt/ou/IDownloadButtonClickListener;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 258
    invoke-static {}, Lcom/byazt/dk/z;->tt()Lcom/byazt/di/da;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/di/da;->n()Lcom/byazt/pk/tt;

    move-result-object v9

    iget-object v10, v8, Lcom/byazt/dk/m;->tt:Landroid/content/Context;

    move-object v14, v1

    move/from16 v17, v2

    invoke-interface/range {v9 .. v18}, Lcom/byazt/pk/tt;->c(Landroid/content/Context;Ljava/lang/String;ZLcom/byazt/su/DownloadModel;Lcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;Lcom/byazt/su/DownloadStatusChangeListener;ILcom/byazt/ou/IDownloadButtonClickListener;)Landroid/app/Dialog;

    return-object v22

    .line 259
    :cond_16
    invoke-static {}, Lcom/byazt/dk/z;->tt()Lcom/byazt/di/da;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/di/da;->n()Lcom/byazt/pk/tt;

    move-result-object v9

    iget-object v10, v8, Lcom/byazt/dk/m;->tt:Landroid/content/Context;

    move-object v14, v1

    move/from16 v17, v2

    invoke-interface/range {v9 .. v17}, Lcom/byazt/pk/tt;->c(Landroid/content/Context;Ljava/lang/String;ZLcom/byazt/su/DownloadModel;Lcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;Lcom/byazt/su/DownloadStatusChangeListener;I)Landroid/app/Dialog;

    return-object v22

    :pswitch_8c
    move-object/from16 v9, v17

    move-object/from16 v7, v18

    move-object/from16 v6, v19

    move-object/from16 v5, v20

    move-object/from16 v3, v21

    .line 260
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    if-nez v1, :cond_17

    .line 261
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/byazt/dk/m;->uj(Ljava/lang/Object;)Lcom/byazt/su/DownloadModel;

    move-result-object v1

    .line 262
    :cond_17
    invoke-direct {v8, v2}, Lcom/byazt/dk/m;->n(I)Lcom/byazt/ar/AdDownloadEventConfig;

    move-result-object v9

    if-nez v9, :cond_18

    .line 263
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v8, v4}, Lcom/byazt/dk/m;->n(Ljava/lang/Object;)Lcom/byazt/su/DownloadEventConfig;

    move-result-object v4

    goto :goto_9

    :cond_18
    move-object v4, v9

    .line 264
    :goto_9
    invoke-direct {v8, v2}, Lcom/byazt/dk/m;->uj(I)Lcom/byazt/ar/AdDownloadController;

    move-result-object v2

    if-nez v2, :cond_19

    .line 265
    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v8, v2}, Lcom/byazt/dk/m;->a(Ljava/lang/Object;)Lcom/byazt/su/DownloadController;

    move-result-object v2

    .line 266
    :cond_19
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v8, v5}, Lcom/byazt/dk/m;->getActivity(Ljava/lang/Object;)Landroid/app/Activity;

    move-result-object v5

    .line 267
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v8, v6}, Lcom/byazt/dk/m;->sp(Ljava/lang/Object;)Z

    move-result v6

    .line 268
    iget-object v9, v8, Lcom/byazt/dk/m;->tt:Landroid/content/Context;

    .line 269
    instance-of v10, v2, Lcom/byazt/ar/AdDownloadController;

    if-eqz v10, :cond_1a

    if-eqz v5, :cond_1a

    if-eqz v6, :cond_1a

    move-object v15, v5

    goto :goto_a

    :cond_1a
    move-object v15, v9

    .line 270
    :goto_a
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/byazt/dk/m;->sl(Ljava/lang/Object;)Lcom/byazt/ou/IDownloadButtonClickListener;

    move-result-object v20

    .line 271
    invoke-static/range {v20 .. v20}, Lcom/byazt/dk/m;->c(Lcom/byazt/ou/IDownloadButtonClickListener;)Z

    move-result v0

    if-eqz v0, :cond_1b

    move-object/from16 v16, v7

    move-object/from16 v17, v1

    move-object/from16 v18, v4

    move-object/from16 v19, v2

    .line 272
    invoke-static/range {v15 .. v20}, Lcom/byazt/dk/z;->c(Landroid/content/Context;Landroid/net/Uri;Lcom/byazt/su/DownloadModel;Lcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;Lcom/byazt/ou/IDownloadButtonClickListener;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 273
    :cond_1b
    invoke-static {v15, v7, v1, v4, v2}, Lcom/byazt/dk/z;->c(Landroid/content/Context;Landroid/net/Uri;Lcom/byazt/su/DownloadModel;Lcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_8d
    const-string v1, "downloadPath"

    .line 274
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 275
    invoke-static {v0}, Lcom/byazt/dk/z;->c(Ljava/lang/String;)V

    return-object v22

    :pswitch_8e
    move-object/from16 v1, p1

    .line 276
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "onEventLogHandler"

    .line 277
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/dk/ve$c;

    .line 278
    invoke-static {v1, v0}, Lcom/byazt/dk/z;->c(ILcom/byazt/dk/ve$c;)V

    return-object v22

    :pswitch_8f
    if-nez v1, :cond_1c

    .line 279
    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_b

    :cond_1c
    invoke-interface {v1}, Lcom/byazt/su/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    :goto_b
    const-string v2, "force"

    .line 280
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 281
    invoke-static {}, Lcom/byazt/dk/z;->tt()Lcom/byazt/di/da;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/byazt/di/da;->c(Ljava/lang/String;Z)V

    return-object v22

    .line 282
    :pswitch_90
    invoke-static {}, Lcom/byazt/dk/z;->ve()V

    return-object v22

    :pswitch_91
    if-nez v1, :cond_1d

    .line 283
    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_c

    :cond_1d
    invoke-interface {v1}, Lcom/byazt/su/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    .line 284
    :goto_c
    iget-object v1, v8, Lcom/byazt/dk/m;->tt:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/byazt/dk/z;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_92
    move-object/from16 v4, v16

    move-object/from16 v9, v17

    if-nez v1, :cond_1e

    .line 285
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/byazt/dk/m;->uj(Ljava/lang/Object;)Lcom/byazt/su/DownloadModel;

    move-result-object v1

    .line 286
    :cond_1e
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v8, v3}, Lcom/byazt/dk/m;->tt(Ljava/lang/Object;)Lcom/byazt/su/DownloadStatusChangeListener;

    move-result-object v3

    .line 287
    invoke-direct {v8, v2}, Lcom/byazt/dk/m;->uj(I)Lcom/byazt/ar/AdDownloadController;

    move-result-object v4

    if-nez v4, :cond_1f

    .line 288
    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v8, v4}, Lcom/byazt/dk/m;->a(Ljava/lang/Object;)Lcom/byazt/su/DownloadController;

    move-result-object v4

    :cond_1f
    const-string v5, "marketStatusChangeListener"

    .line 289
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/byazt/dk/m;->ve(Ljava/lang/Object;)Lcom/byazt/su/tt;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 290
    instance-of v5, v4, Lcom/byazt/ar/AdDownloadController;

    if-eqz v5, :cond_20

    .line 291
    check-cast v4, Lcom/byazt/ar/AdDownloadController;

    invoke-virtual {v4, v0}, Lcom/byazt/ar/AdDownloadController;->setMarketStatusChangeListener(Lcom/byazt/su/tt;)V

    .line 292
    :cond_20
    invoke-static {}, Lcom/byazt/dk/z;->tt()Lcom/byazt/di/da;

    move-result-object v0

    iget-object v4, v8, Lcom/byazt/dk/m;->tt:Landroid/content/Context;

    invoke-virtual {v0, v4, v2, v3, v1}, Lcom/byazt/di/da;->c(Landroid/content/Context;ILcom/byazt/su/DownloadStatusChangeListener;Lcom/byazt/su/DownloadModel;)V

    return-object v22

    :pswitch_93
    if-nez v1, :cond_21

    .line 293
    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_d

    :cond_21
    invoke-interface {v1}, Lcom/byazt/su/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    .line 294
    :goto_d
    invoke-static {}, Lcom/byazt/dk/z;->tt()Lcom/byazt/di/da;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/byazt/di/da;->c(Ljava/lang/String;I)V

    .line 295
    invoke-direct {v8, v2}, Lcom/byazt/dk/m;->c(I)V

    return-object v22

    :pswitch_94
    move-object/from16 v1, p1

    .line 296
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 297
    invoke-static {v0}, Lcom/byazt/dk/z;->c(I)V

    return-object v22

    :pswitch_95
    :try_start_1
    const-string v1, "tagIntercept"

    .line 298
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "label"

    .line 299
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "meta"

    .line 300
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 301
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1, v2, v3, v0}, Lcom/byazt/dk/z;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 302
    :catch_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 303
    :pswitch_96
    invoke-static {}, Lcom/byazt/dk/z;->tt()Lcom/byazt/di/da;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/di/da;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_97
    move-object/from16 v5, v20

    .line 304
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/byazt/dk/m;->getActivity(Ljava/lang/Object;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "exitInstallListener"

    .line 305
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/byazt/dk/m;->x(Ljava/lang/Object;)Lcom/byazt/ocd/c;

    move-result-object v0

    .line 306
    invoke-static {v1, v0}, Lcom/byazt/dk/z;->c(Landroid/app/Activity;Lcom/byazt/ocd/c;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_0
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_0
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_0
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_0
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public distinctDir(I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->distinctDir()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public enableAH(I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->uj(I)Lcom/byazt/ar/AdDownloadController;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadController;->enableAH()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public enableAM(I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->uj(I)Lcom/byazt/ar/AdDownloadController;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadController;->enableAM()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public enableNewActivity(I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->uj(I)Lcom/byazt/ar/AdDownloadController;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadController;->enableNewActivity()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public enableOppoAutoDownload(I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->uj(I)Lcom/byazt/ar/AdDownloadController;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/ar/AdDownloadController;->enableOppoAutoDownload()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public enablePause(I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->enablePause()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public enableShowComplianceDialog(I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->uj(I)Lcom/byazt/ar/AdDownloadController;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadController;->enableShowComplianceDialog()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public forceHideNotification(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->forceHideNotification()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public forceHideToast(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->forceHideToast()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public forceWifi(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->forceWifi()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public getAppIcon(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getAppIcon()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public getBackupUrls(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getBackupUrls()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public getClickButtonTag(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->n(I)Lcom/byazt/ar/AdDownloadEventConfig;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadEventConfig;->getClickButtonTag()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public getClickContinueLabel(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->n(I)Lcom/byazt/ar/AdDownloadEventConfig;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadEventConfig;->getClickPauseLabel()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public getClickInstallLabel(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->n(I)Lcom/byazt/ar/AdDownloadEventConfig;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadEventConfig;->getClickInstallLabel()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public getClickItemTag(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->n(I)Lcom/byazt/ar/AdDownloadEventConfig;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadEventConfig;->getClickItemTag()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public getClickLabel(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->n(I)Lcom/byazt/ar/AdDownloadEventConfig;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadEventConfig;->getClickLabel()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public getClickPauseLabel(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->n(I)Lcom/byazt/ar/AdDownloadEventConfig;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadEventConfig;->getClickPauseLabel()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public getClickStartLabel(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->n(I)Lcom/byazt/ar/AdDownloadEventConfig;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadEventConfig;->getClickStartLabel()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public getClickTrackUrl(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getClickTrackUrl()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public getDeepLink(I)Lcom/byazt/e/DeepLink;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getDeepLink()Lcom/byazt/e/DeepLink;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public getDownloadChunkCount(I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->uj(I)Lcom/byazt/ar/AdDownloadController;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadController;->getDowloadChunkCount()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public getDownloadScene(I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->n(I)Lcom/byazt/ar/AdDownloadEventConfig;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadEventConfig;->getDownloadScene()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public getDownloadSettings(I)Lorg/json/JSONObject;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getDownloadSettings()Lorg/json/JSONObject;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public getDownloadUrl(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public getEventConfigExtraJson(I)Lorg/json/JSONObject;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->n(I)Lcom/byazt/ar/AdDownloadEventConfig;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadEventConfig;->getExtraJson()Lorg/json/JSONObject;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public getExecutorGroup(I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getExecutorGroup()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public getExpectFileLength(I)J
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getExpectFileLength()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    return-wide v0
.end method

.method public getExtra(I)Lorg/json/JSONObject;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getExtra()Lorg/json/JSONObject;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public getExtraClickOperation(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->uj(I)Lcom/byazt/ar/AdDownloadController;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadController;->getExtraClickOperation()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public getExtraEventObject(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->n(I)Lcom/byazt/ar/AdDownloadEventConfig;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadEventConfig;->getExtraEventObject()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public getExtraJson(I)Lorg/json/JSONObject;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->uj(I)Lcom/byazt/ar/AdDownloadController;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadController;->getExtraJson()Lorg/json/JSONObject;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public getExtraObject(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->uj(I)Lcom/byazt/ar/AdDownloadController;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadController;->getExtraObject()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public getExtraValue(I)J
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getExtraValue()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    return-wide v0
.end method

.method public getFileName(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getFileName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public getFilePath(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getFilePath()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public getFunnelType(I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getFunnelType()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public getHeaders(I)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getHeaders()Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public getId(I)J
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getId()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    return-wide v0
.end method

.method public getInterceptFlag(I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->uj(I)Lcom/byazt/ar/AdDownloadController;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadController;->getInterceptFlag()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public getLinkMode(I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->uj(I)Lcom/byazt/ar/AdDownloadController;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadController;->getLinkMode()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public getLogExtra(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getLogExtra()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public getMd5(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getMd5()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public getMimeType(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getMimeType()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public getModelType(I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getModelType()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public getName(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public getNotificationJumpUrl(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getNotificationJumpUrl()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public getPackageName(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getPackageName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public getParamsJson(I)Lorg/json/JSONObject;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->n(I)Lcom/byazt/ar/AdDownloadEventConfig;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadEventConfig;->getParamsJson()Lorg/json/JSONObject;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public getQuickAppModel(I)Lcom/byazt/e/uj;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getQuickAppModel()Lcom/byazt/e/uj;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public getRefer(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->n(I)Lcom/byazt/ar/AdDownloadEventConfig;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadEventConfig;->getRefer()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public getSdkMonitorScene(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getStartToast()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public getStartToast(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getStartToast()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public getStorageDenyLabel(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->n(I)Lcom/byazt/ar/AdDownloadEventConfig;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadEventConfig;->getStorageDenyLabel()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public getVersionCode(I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getVersionCode()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public getVersionName(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getVersionName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public init(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/byazt/dk/m;->tt:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/byazt/dk/z;->c(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/byazt/dk/m;->c()Ljava/util/function/Function;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public isAd(I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->isAd()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public isAddToDownloadManage(I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->uj(I)Lcom/byazt/ar/AdDownloadController;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadController;->isAddToDownloadManage()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public isAutoDownloadOnCardShow(I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->uj(I)Lcom/byazt/ar/AdDownloadController;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadController;->isAutoDownloadOnCardShow()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public isAutoInstall(I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->isAutoInstall()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public isEnableBackDialog(I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->uj(I)Lcom/byazt/ar/AdDownloadController;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadController;->isEnableBackDialog()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public isEnableClickEvent(I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->n(I)Lcom/byazt/ar/AdDownloadEventConfig;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadEventConfig;->isEnableClickEvent()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public isEnableMultipleDownload(I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->uj(I)Lcom/byazt/ar/AdDownloadController;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadController;->isEnableMultipleDownload()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public isEnableV3Event(I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->n(I)Lcom/byazt/ar/AdDownloadEventConfig;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadEventConfig;->isEnableV3Event()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public isInExternalPublicDir(I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->isInExternalPublicDir()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public isNeedWifi(I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->isNeedWifi()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public isShowNotification(I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->isShowNotification()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public isShowToast(I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->isShowToast()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public isVisibleInDownloadsUi(I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->isInExternalPublicDir()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public needIndependentProcess(I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->needIndependentProcess()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public setAdId(IJ)Lcom/byazt/ar/AdDownloadModel;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/byazt/ar/AdDownloadModel;->setAdId(J)Lcom/byazt/ar/AdDownloadModel;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public setAppIcon(ILjava/lang/String;)Lcom/byazt/ar/AdDownloadModel;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-virtual {p1, p2}, Lcom/byazt/ar/AdDownloadModel;->setAppIcon(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public setAppName(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1, p2}, Lcom/byazt/ar/AdDownloadModel;->setAppName(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setAutoInstallWithoutNotification(IZ)Lcom/byazt/ar/AdDownloadModel;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-virtual {p1, p2}, Lcom/byazt/ar/AdDownloadModel;->setAutoInstallWithoutNotification(Z)Lcom/byazt/ar/AdDownloadModel;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public setBackupUrls(ILjava/util/List;)Lcom/byazt/ar/AdDownloadModel;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/byazt/ar/AdDownloadModel;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-virtual {p1, p2}, Lcom/byazt/ar/AdDownloadModel;->setBackupUrls(Ljava/util/List;)Lcom/byazt/ar/AdDownloadModel;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public setClickButtonTag(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->n(I)Lcom/byazt/ar/AdDownloadEventConfig;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1, p2}, Lcom/byazt/ar/AdDownloadEventConfig;->setClickButtonTag(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setClickItemTag(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->n(I)Lcom/byazt/ar/AdDownloadEventConfig;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1, p2}, Lcom/byazt/ar/AdDownloadEventConfig;->setClickItemTag(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setClickTrackUrl(ILjava/util/List;)Lcom/byazt/ar/AdDownloadModel;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/byazt/ar/AdDownloadModel;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-virtual {p1, p2}, Lcom/byazt/ar/AdDownloadModel;->setClickTrackUrl(Ljava/util/List;)Lcom/byazt/ar/AdDownloadModel;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public setDeepLink(ILcom/byazt/e/DeepLink;)Lcom/byazt/ar/AdDownloadModel;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-virtual {p1, p2}, Lcom/byazt/ar/AdDownloadModel;->setDeepLink(Lcom/byazt/e/DeepLink;)Lcom/byazt/ar/AdDownloadModel;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public setDownloadScene(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->n(I)Lcom/byazt/ar/AdDownloadEventConfig;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-interface {p1, p2}, Lcom/byazt/su/DownloadEventConfig;->setDownloadScene(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setDownloadUrl(ILjava/lang/String;)Lcom/byazt/ar/AdDownloadModel;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-virtual {p1, p2}, Lcom/byazt/ar/AdDownloadModel;->setDownloadUrl(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public setEnableNewActivity(IZ)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->uj(I)Lcom/byazt/ar/AdDownloadController;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/byazt/dk/m;->a:Ljava/util/Map;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-interface {p1, p2}, Lcom/byazt/su/DownloadController;->setEnableNewActivity(Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setEnableShowComplianceDialog(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->uj(I)Lcom/byazt/ar/AdDownloadController;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-interface {p1, p2}, Lcom/byazt/su/DownloadController;->setEnableShowComplianceDialog(Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setEventConfigExtraJson(ILorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->n(I)Lcom/byazt/ar/AdDownloadEventConfig;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1, p2}, Lcom/byazt/ar/AdDownloadEventConfig;->setExtraJson(Lorg/json/JSONObject;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setExpectFileLength(IJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/byazt/ar/AdDownloadModel;->setExpectFileLength(J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setExtra(ILorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1, p2}, Lcom/byazt/ar/AdDownloadModel;->setExtra(Lorg/json/JSONObject;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setExtraEventObject(ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->n(I)Lcom/byazt/ar/AdDownloadEventConfig;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1, p2}, Lcom/byazt/ar/AdDownloadEventConfig;->setExtraEventObject(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setExtraJson(ILorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->uj(I)Lcom/byazt/ar/AdDownloadController;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1, p2}, Lcom/byazt/ar/AdDownloadController;->setExtraJson(Lorg/json/JSONObject;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setExtraObject(ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->uj(I)Lcom/byazt/ar/AdDownloadController;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1, p2}, Lcom/byazt/ar/AdDownloadController;->setExtraObject(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setExtraValue(IJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/byazt/ar/AdDownloadModel;->setExtraValue(J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setFileName(ILjava/lang/String;)Lcom/byazt/ar/AdDownloadModel;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-virtual {p1, p2}, Lcom/byazt/ar/AdDownloadModel;->setFileName(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public setFilePath(ILjava/lang/String;)Lcom/byazt/ar/AdDownloadModel;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-virtual {p1, p2}, Lcom/byazt/ar/AdDownloadModel;->setFilePath(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public setFileUriProvider(ILcom/byazt/c/IDownloadFileUriProvider;)Lcom/byazt/ar/AdDownloadModel;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-virtual {p1, p2}, Lcom/byazt/ar/AdDownloadModel;->setFileUriProvider(Lcom/byazt/c/IDownloadFileUriProvider;)Lcom/byazt/ar/AdDownloadModel;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public setFunnelType(II)Lcom/byazt/ar/AdDownloadModel;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-virtual {p1, p2}, Lcom/byazt/ar/AdDownloadModel;->setFunnelType(I)Lcom/byazt/ar/AdDownloadModel;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public setHeaders(ILjava/util/Map;)Lcom/byazt/ar/AdDownloadModel;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/byazt/ar/AdDownloadModel;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-virtual {p1, p2}, Lcom/byazt/ar/AdDownloadModel;->setHeaders(Ljava/util/Map;)Lcom/byazt/ar/AdDownloadModel;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public setId(IJ)Lcom/byazt/ar/AdDownloadModel;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/byazt/ar/AdDownloadModel;->setId(J)Lcom/byazt/ar/AdDownloadModel;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public setIsAd(IZ)Lcom/byazt/ar/AdDownloadModel;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-virtual {p1, p2}, Lcom/byazt/ar/AdDownloadModel;->setIsAd(Z)Lcom/byazt/ar/AdDownloadModel;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public setIsAutoDownloadOnCardShow(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->uj(I)Lcom/byazt/ar/AdDownloadController;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1, p2}, Lcom/byazt/ar/AdDownloadController;->setIsAutoDownloadOnCardShow(Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setIsShowNotification(IZ)Lcom/byazt/ar/AdDownloadModel;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-virtual {p1, p2}, Lcom/byazt/ar/AdDownloadModel;->setIsShowNotification(Z)Lcom/byazt/ar/AdDownloadModel;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public setIsShowToast(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1, p2}, Lcom/byazt/ar/AdDownloadModel;->setIsShowToast(Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setLinkMode(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->uj(I)Lcom/byazt/ar/AdDownloadController;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-interface {p1, p2}, Lcom/byazt/su/DownloadController;->setLinkMode(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setLogExtra(ILjava/lang/String;)Lcom/byazt/ar/AdDownloadModel;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-virtual {p1, p2}, Lcom/byazt/ar/AdDownloadModel;->setLogExtra(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public setMd5(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1, p2}, Lcom/byazt/ar/AdDownloadModel;->setMd5(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setMimeType(ILjava/lang/String;)Lcom/byazt/ar/AdDownloadModel;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-virtual {p1, p2}, Lcom/byazt/ar/AdDownloadModel;->setMimeType(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public setModelType(II)Lcom/byazt/ar/AdDownloadModel;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-virtual {p1, p2}, Lcom/byazt/ar/AdDownloadModel;->setModelType(I)Lcom/byazt/ar/AdDownloadModel;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public setNeedIndependentProcess(IZ)Lcom/byazt/ar/AdDownloadModel;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-virtual {p1, p2}, Lcom/byazt/ar/AdDownloadModel;->setNeedIndependentProcess(Z)Lcom/byazt/ar/AdDownloadModel;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public setNeedWifi(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1, p2}, Lcom/byazt/ar/AdDownloadModel;->setNeedWifi(Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setNotificationJumpUrl(ILjava/lang/String;)Lcom/byazt/ar/AdDownloadModel;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-virtual {p1, p2}, Lcom/byazt/ar/AdDownloadModel;->setNotificationJumpUrl(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public setPackageName(ILjava/lang/String;)Lcom/byazt/ar/AdDownloadModel;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-virtual {p1, p2}, Lcom/byazt/ar/AdDownloadModel;->setPackageName(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public setParamsJson(ILorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->n(I)Lcom/byazt/ar/AdDownloadEventConfig;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1, p2}, Lcom/byazt/ar/AdDownloadEventConfig;->setParamsJson(Lorg/json/JSONObject;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setQuickAppEventTag(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->n(I)Lcom/byazt/ar/AdDownloadEventConfig;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1, p2}, Lcom/byazt/ar/AdDownloadEventConfig;->setQuickAppEventTag(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setQuickAppModel(ILcom/byazt/e/uj;)Lcom/byazt/ar/AdDownloadModel;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-virtual {p1, p2}, Lcom/byazt/ar/AdDownloadModel;->setQuickAppModel(Lcom/byazt/e/uj;)Lcom/byazt/ar/AdDownloadModel;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public setRefer(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->n(I)Lcom/byazt/ar/AdDownloadEventConfig;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-interface {p1, p2}, Lcom/byazt/su/DownloadEventConfig;->setRefer(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setSdkMonitorScene(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1, p2}, Lcom/byazt/ar/AdDownloadModel;->setSdkMonitorScene(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setStartToast(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1, p2}, Lcom/byazt/ar/AdDownloadModel;->setStartToast(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setVersionCode(II)Lcom/byazt/ar/AdDownloadModel;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-virtual {p1, p2}, Lcom/byazt/ar/AdDownloadModel;->setVersionCode(I)Lcom/byazt/ar/AdDownloadModel;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public setVersionName(ILjava/lang/String;)Lcom/byazt/ar/AdDownloadModel;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-virtual {p1, p2}, Lcom/byazt/ar/AdDownloadModel;->setVersionName(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public shouldDownloadWithPatchApply(I)Z
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->ve(I)Lcom/byazt/ar/AdDownloadModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/byazt/dk/m;->getDownloadSettings(I)Lorg/json/JSONObject;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/byazt/k/c;->c(Lorg/json/JSONObject;)Lcom/byazt/k/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, p1}, Lcom/byazt/dk/m;->getMimeType(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {v0, p1}, Lcom/byazt/ki/tt;->c(Lcom/byazt/k/c;Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1

    .line 24
    :cond_0
    invoke-interface {v0}, Lcom/byazt/su/DownloadModel;->shouldDownloadWithPatchApply()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1
.end method

.method public shouldUseNewWebView(I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dk/m;->uj(I)Lcom/byazt/ar/AdDownloadController;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadController;->shouldUseNewWebView()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public values()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;
    .locals 3

    .line 1
    invoke-static {}, Lcom/byazt/rl/c;->c()Lcom/byazt/rl/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    sget-object v2, Lcom/byazt/dk/z;->c:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/byazt/rl/c;->c(ILjava/lang/String;)Lcom/byazt/rl/c;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-boolean v1, Lcom/byazt/dk/z;->tt:Z

    .line 13
    .line 14
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-virtual {v0, v2, v1}, Lcom/byazt/rl/c;->c(ILjava/lang/Object;)Lcom/byazt/rl/c;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/16 v1, 0x2710

    .line 24
    .line 25
    const/4 v2, 0x3

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/byazt/rl/c;->c(II)Lcom/byazt/rl/c;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/byazt/rl/c;->tt()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0
.end method
