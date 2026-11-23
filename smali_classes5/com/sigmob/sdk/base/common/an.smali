.class public Lcom/sigmob/sdk/base/common/an;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/base/common/an$a;,
        Lcom/sigmob/sdk/base/common/an$c;,
        Lcom/sigmob/sdk/base/common/an$b;
    }
.end annotation


# static fields
.field private static final a:Lcom/sigmob/sdk/base/common/an$b;

.field private static final b:Lcom/sigmob/sdk/base/common/an$c;


# instance fields
.field private final c:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/sigmob/sdk/base/common/am;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/sigmob/sdk/base/common/an$b;

.field private final e:Lcom/sigmob/sdk/base/common/an$b;

.field private final f:Lcom/sigmob/sdk/base/common/an$c;

.field private final g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field private final h:Z

.field private i:Z

.field private j:Z

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sigmob/sdk/base/common/an$1;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/common/an$1;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/base/common/an;->a:Lcom/sigmob/sdk/base/common/an$b;

    new-instance v0, Lcom/sigmob/sdk/base/common/an$2;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/common/an$2;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/base/common/an;->b:Lcom/sigmob/sdk/base/common/an$c;

    return-void
.end method

.method private constructor <init>(Ljava/util/EnumSet;Lcom/sigmob/sdk/base/common/an$b;Lcom/sigmob/sdk/base/common/an$b;Lcom/sigmob/sdk/base/common/an$c;ZLcom/sigmob/sdk/base/models/BaseAdUnit;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "supportedUrlActions",
            "resultActions",
            "deepLinkResultActions",
            "sigmobSchemeListener",
            "skipShowSigmobBrowser",
            "adUnit",
            "withoOutresolvedUrl"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/sigmob/sdk/base/common/am;",
            ">;",
            "Lcom/sigmob/sdk/base/common/an$b;",
            "Lcom/sigmob/sdk/base/common/an$b;",
            "Lcom/sigmob/sdk/base/common/an$c;",
            "Z",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/an;->c:Ljava/util/EnumSet;

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/an;->d:Lcom/sigmob/sdk/base/common/an$b;

    iput-object p3, p0, Lcom/sigmob/sdk/base/common/an;->e:Lcom/sigmob/sdk/base/common/an$b;

    iput-object p4, p0, Lcom/sigmob/sdk/base/common/an;->f:Lcom/sigmob/sdk/base/common/an$c;

    iput-boolean p5, p0, Lcom/sigmob/sdk/base/common/an;->h:Z

    iput-object p6, p0, Lcom/sigmob/sdk/base/common/an;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sigmob/sdk/base/common/an;->i:Z

    iput-boolean p1, p0, Lcom/sigmob/sdk/base/common/an;->j:Z

    iput-boolean p7, p0, Lcom/sigmob/sdk/base/common/an;->k:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/EnumSet;Lcom/sigmob/sdk/base/common/an$b;Lcom/sigmob/sdk/base/common/an$b;Lcom/sigmob/sdk/base/common/an$c;ZLcom/sigmob/sdk/base/models/BaseAdUnit;ZLcom/sigmob/sdk/base/common/an$1;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p7}, Lcom/sigmob/sdk/base/common/an;-><init>(Ljava/util/EnumSet;Lcom/sigmob/sdk/base/common/an$b;Lcom/sigmob/sdk/base/common/an$b;Lcom/sigmob/sdk/base/common/an$c;ZLcom/sigmob/sdk/base/models/BaseAdUnit;Z)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/common/an;)Lcom/sigmob/sdk/base/models/BaseAdUnit;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/base/common/an;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-object p0
.end method

.method private a(Ljava/lang/String;Lcom/sigmob/sdk/base/common/am;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "urlAction",
            "message",
            "throwable"
        }
    .end annotation

    .line 3
    invoke-static {p3}, Lcom/czhj/sdk/common/utils/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;)Z

    if-nez p2, :cond_0

    sget-object p2, Lcom/sigmob/sdk/base/common/am;->h:Lcom/sigmob/sdk/base/common/am;

    :cond_0
    invoke-static {p3, p4}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p3, p0, Lcom/sigmob/sdk/base/common/an;->d:Lcom/sigmob/sdk/base/common/an$b;

    invoke-interface {p3, p1, p2}, Lcom/sigmob/sdk/base/common/an$b;->b(Ljava/lang/String;Lcom/sigmob/sdk/base/common/am;)V

    return-void
.end method

.method static synthetic b()Lcom/sigmob/sdk/base/common/an$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/sigmob/sdk/base/common/an;->a:Lcom/sigmob/sdk/base/common/an$b;

    return-object v0
.end method

.method static synthetic b(Lcom/sigmob/sdk/base/common/an;)Lcom/sigmob/sdk/base/common/an$b;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sigmob/sdk/base/common/an;->d:Lcom/sigmob/sdk/base/common/an$b;

    return-object p0
.end method

.method static synthetic c()Lcom/sigmob/sdk/base/common/an$c;
    .locals 1

    sget-object v0, Lcom/sigmob/sdk/base/common/an;->b:Lcom/sigmob/sdk/base/common/an$c;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "url"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/czhj/sdk/common/utils/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/sdk/base/common/an;->b(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method

.method a()Z
    .locals 1

    .line 4
    iget-boolean v0, p0, Lcom/sigmob/sdk/base/common/an;->h:Z

    return v0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "url"
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/sigmob/sdk/base/common/am;->h:Lcom/sigmob/sdk/base/common/am;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/an;->c:Ljava/util/EnumSet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sigmob/sdk/base/common/am;

    iget-object v5, p0, Lcom/sigmob/sdk/base/common/an;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v4, v5}, Lcom/sigmob/sdk/base/common/am;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sigmob/sdk/base/common/an;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v6}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getInteractionType()I

    move-result v6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v7, 0x7

    if-eq v6, v7, :cond_1

    move-object v5, p2

    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/an;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->macroProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v5, p0, Lcom/sigmob/sdk/base/common/an;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v5}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAndroidMarket()Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;

    move-result-object v5

    sget-object v7, Lcom/sigmob/sdk/base/common/am;->c:Lcom/sigmob/sdk/base/common/am;

    if-ne v4, v7, :cond_2

    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    const-string v8, "market"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v5, :cond_2

    iget-object v5, v5, Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;->market_url:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v4, v10, v6}, Lcom/sigmob/sdk/base/common/am;->a(Landroid/net/Uri;I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/sigmob/sdk/base/common/an;->k:Z

    if-nez v5, :cond_3

    sget-object v5, Lcom/sigmob/sdk/base/common/am;->g:Lcom/sigmob/sdk/base/common/am;

    if-ne v5, v4, :cond_3

    new-instance v12, Lcom/sigmob/sdk/base/common/an$3;

    move-object v5, v12

    move-object v6, p0

    move-object v7, v4

    move-object v8, p1

    move-object v9, p0

    move-object v11, v3

    invoke-direct/range {v5 .. v11}, Lcom/sigmob/sdk/base/common/an$3;-><init>(Lcom/sigmob/sdk/base/common/an;Lcom/sigmob/sdk/base/common/am;Landroid/content/Context;Lcom/sigmob/sdk/base/common/an;Landroid/net/Uri;Ljava/lang/String;)V

    invoke-static {v3, v12}, Lcom/sigmob/sdk/base/common/ao;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/common/ao$a;)V

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/sigmob/sdk/base/common/an;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v4, p1, v10, p0, v5}, Lcom/sigmob/sdk/base/common/am;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/sigmob/sdk/base/common/an;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sigmob/windad/WindAds;->getHandler()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/sigmob/sdk/base/common/an$4;

    invoke-direct {v6, p0, v3, v4}, Lcom/sigmob/sdk/base/common/an$4;-><init>(Lcom/sigmob/sdk/base/common/an;Ljava/lang/String;Lcom/sigmob/sdk/base/common/am;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    const/4 p1, 0x1

    return p1

    :catchall_0
    iget-object v5, p0, Lcom/sigmob/sdk/base/common/an;->d:Lcom/sigmob/sdk/base/common/an$b;

    invoke-interface {v5, v3, v4}, Lcom/sigmob/sdk/base/common/an$b;->b(Ljava/lang/String;Lcom/sigmob/sdk/base/common/am;)V

    goto/16 :goto_0

    :cond_4
    :try_start_1
    const-string p1, "Link ignored. Unable to handle url: "

    invoke-direct {p0, v3, v0, p1, v2}, Lcom/sigmob/sdk/base/common/an;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/common/am;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    const-string p2, "handleResolvedUrl error"

    invoke-static {p2, p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    const/4 p1, 0x0

    return p1
.end method
