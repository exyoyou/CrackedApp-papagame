.class public Lcom/byazt/wdw/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x26d,
        0x2e
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/wdw/n$c;,
        Lcom/byazt/wdw/n$tt;
    }
.end annotation


# static fields
.field public static volatile sp:Z


# instance fields
.field public a:Lcom/byazt/ete/hq;

.field public c:Landroid/widget/Toast;

.field public da:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Z

.field public n:Z

.field public final tt:Landroid/content/Context;

.field public uj:Ljava/lang/String;

.field public ve:I

.field public final x:Lcom/byazt/eia/da;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/byazt/eia/da;Landroid/content/Context;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/wdw/n;->x:Lcom/byazt/eia/da;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/wdw/n;->tt:Landroid/content/Context;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/byazt/wdw/n;->i:Z

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic a(Lcom/byazt/wdw/n;)Lcom/byazt/ete/hq;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/wdw/n;->a:Lcom/byazt/ete/hq;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/wdw/n;)Landroid/widget/Toast;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/wdw/n;->c:Landroid/widget/Toast;

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/wdw/n;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/wdw/n;->c:Landroid/widget/Toast;

    return-object p1
.end method

.method private c(Lcom/byazt/wdw/n$c;Lcom/byazt/ete/hq;)V
    .locals 23

    move-object/from16 v6, p0

    .line 20
    invoke-direct/range {p0 .. p0}, Lcom/byazt/wdw/n;->uj()V

    .line 21
    iget-object v0, v6, Lcom/byazt/wdw/n;->x:Lcom/byazt/eia/da;

    instance-of v1, v0, Lcom/byazt/eia/uj;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/byazt/eia/uj;

    invoke-virtual {v0}, Lcom/byazt/eia/uj;->sp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v6, Lcom/byazt/wdw/n;->x:Lcom/byazt/eia/da;

    check-cast v0, Lcom/byazt/eia/uj;

    invoke-virtual {v0}, Lcom/byazt/eia/uj;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    invoke-static {}, Lcom/byazt/wdw/uj;->ve()Lcom/byazt/wdw/uj;

    move-result-object v7

    iget-object v8, v6, Lcom/byazt/wdw/n;->x:Lcom/byazt/eia/da;

    move-object v0, v8

    check-cast v0, Lcom/byazt/eia/uj;

    invoke-virtual {v0}, Lcom/byazt/eia/uj;->i()Ljava/lang/String;

    move-result-object v9

    iget-object v0, v6, Lcom/byazt/wdw/n;->x:Lcom/byazt/eia/da;

    check-cast v0, Lcom/byazt/eia/uj;

    invoke-virtual {v0}, Lcom/byazt/eia/uj;->sp()Ljava/lang/String;

    move-result-object v10

    iget-object v12, v6, Lcom/byazt/wdw/n;->uj:Ljava/lang/String;

    iget-boolean v13, v6, Lcom/byazt/wdw/n;->n:Z

    iget-object v14, v6, Lcom/byazt/wdw/n;->da:Ljava/util/Map;

    move-object/from16 v11, p1

    invoke-virtual/range {v7 .. v14}, Lcom/byazt/wdw/uj;->c(Lcom/byazt/eia/da;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/wdw/n$c;Ljava/lang/String;ZLjava/util/Map;)V

    return-void

    .line 23
    :cond_0
    new-instance v19, Lcom/byazt/wdw/n$1;

    iget-object v4, v6, Lcom/byazt/wdw/n;->c:Landroid/widget/Toast;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/byazt/wdw/n$1;-><init>(Lcom/byazt/wdw/n;Lcom/byazt/wdw/n$c;Lcom/byazt/ete/hq;Landroid/widget/Toast;Lcom/byazt/wdw/n$c;)V

    .line 24
    invoke-static {}, Lcom/byazt/omf/gt;->c()Lcom/byazt/omf/gu;

    move-result-object v15

    iget-object v0, v6, Lcom/byazt/wdw/n;->x:Lcom/byazt/eia/da;

    invoke-interface {v0}, Lcom/byazt/eia/da;->x()Ljava/lang/String;

    move-result-object v17

    iget-object v0, v6, Lcom/byazt/wdw/n;->x:Lcom/byazt/eia/da;

    .line 25
    invoke-interface {v0}, Lcom/byazt/eia/da;->w_()Ljava/lang/String;

    move-result-object v18

    const/16 v20, 0x1

    const-wide/16 v21, 0x7d0

    move-object/from16 v16, p2

    .line 26
    invoke-interface/range {v15 .. v22}, Lcom/byazt/omf/gu;->c(Lcom/byazt/ete/hq;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/omf/gu$ve;IJ)V

    return-void
.end method

.method private c(Lcom/byazt/wdw/n$c;Lcom/byazt/ete/hq;J)V
    .locals 8

    .line 27
    invoke-direct {p0}, Lcom/byazt/wdw/n;->uj()V

    .line 28
    new-instance v4, Lcom/byazt/wdw/n$tt;

    iget-object v0, p0, Lcom/byazt/wdw/n;->c:Landroid/widget/Toast;

    invoke-direct {v4, p0, p1, p2, v0}, Lcom/byazt/wdw/n$tt;-><init>(Lcom/byazt/wdw/n;Lcom/byazt/wdw/n$c;Lcom/byazt/ete/hq;Landroid/widget/Toast;)V

    .line 29
    invoke-static {}, Lcom/byazt/omf/gt;->c()Lcom/byazt/omf/gu;

    move-result-object v0

    iget-object p1, p0, Lcom/byazt/wdw/n;->x:Lcom/byazt/eia/da;

    invoke-interface {p1}, Lcom/byazt/eia/da;->x()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/byazt/wdw/n;->x:Lcom/byazt/eia/da;

    .line 30
    invoke-interface {p1}, Lcom/byazt/eia/da;->w_()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    move-object v1, p2

    move-wide v6, p3

    .line 31
    invoke-interface/range {v0 .. v7}, Lcom/byazt/omf/gu;->c(Lcom/byazt/ete/hq;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/omf/gu$ve;IJ)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/wdw/n;Ljava/lang/String;Lcom/byazt/ete/hq;Lcom/byazt/wdw/n$c;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/wdw/n;->c(Ljava/lang/String;Lcom/byazt/ete/hq;Lcom/byazt/wdw/n$c;)V

    return-void
.end method

.method private c(Ljava/lang/String;Lcom/byazt/ete/hq;Lcom/byazt/wdw/n$c;)V
    .locals 5

    .line 32
    iget-object v0, p0, Lcom/byazt/wdw/n;->c:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 34
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 35
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 37
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 38
    invoke-virtual {p0}, Lcom/byazt/wdw/n;->tt()Lcom/byazt/ete/ic;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/aas/rl;->tt(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/byazt/wdw/n;->uj:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/byazt/wdw/n;->ve:I

    invoke-static {v0}, Lcom/byazt/aas/nb;->c(I)Ljava/lang/String;

    move-result-object v0

    .line 40
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "source"

    const-string v4, "WechatClickProcesser"

    .line 41
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "scheme"

    .line 42
    invoke-static {p1}, Lcom/byazt/aas/nb;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-virtual {p0}, Lcom/byazt/wdw/n;->tt()Lcom/byazt/ete/ic;

    move-result-object p1

    const/4 v3, 0x0

    invoke-static {p1, v0, v2, v3}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 44
    iget-object p1, p0, Lcom/byazt/wdw/n;->tt:Landroid/content/Context;

    new-instance v2, Lcom/byazt/wdw/n$3;

    invoke-direct {v2, p0, p2, v0, p3}, Lcom/byazt/wdw/n$3;-><init>(Lcom/byazt/wdw/n;Lcom/byazt/ete/hq;Ljava/lang/String;Lcom/byazt/wdw/n$c;)V

    sget-object p2, Lcom/byazt/omf/p;->x:Ljava/lang/String;

    const-string p3, "internal"

    .line 45
    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    .line 46
    invoke-static {p1, v1, v2, p2}, Lcom/byazt/nr/tt;->c(Landroid/content/Context;Landroid/content/Intent;Lcom/byazt/nr/tt$c;Z)Z

    return-void
.end method

.method public static c(Z)V
    .locals 0

    .line 5
    sput-boolean p0, Lcom/byazt/wdw/n;->sp:Z

    return-void
.end method

.method public static c()Z
    .locals 1

    .line 4
    sget-boolean v0, Lcom/byazt/wdw/n;->sp:Z

    return v0
.end method

.method private c(ILcom/byazt/wdw/n$c;)Z
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    return v2

    .line 15
    :cond_0
    iget-boolean p1, p0, Lcom/byazt/wdw/n;->n:Z

    if-nez p1, :cond_1

    return v2

    .line 16
    :cond_1
    iget-object p1, p0, Lcom/byazt/wdw/n;->a:Lcom/byazt/ete/hq;

    invoke-direct {p0, p2, p1}, Lcom/byazt/wdw/n;->c(Lcom/byazt/wdw/n$c;Lcom/byazt/ete/hq;)V

    return v0

    .line 17
    :cond_2
    iget-object p1, p0, Lcom/byazt/wdw/n;->a:Lcom/byazt/ete/hq;

    invoke-virtual {p1}, Lcom/byazt/ete/hq;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    .line 18
    :cond_3
    iget-object p1, p0, Lcom/byazt/wdw/n;->a:Lcom/byazt/ete/hq;

    const-wide/16 v1, 0x7d0

    invoke-direct {p0, p2, p1, v1, v2}, Lcom/byazt/wdw/n;->c(Lcom/byazt/wdw/n$c;Lcom/byazt/ete/hq;J)V

    return v0

    .line 19
    :cond_4
    iget-object p1, p0, Lcom/byazt/wdw/n;->a:Lcom/byazt/ete/hq;

    invoke-direct {p0, p2, p1}, Lcom/byazt/wdw/n;->c(Lcom/byazt/wdw/n$c;Lcom/byazt/ete/hq;)V

    return v0
.end method

.method public static synthetic n(Lcom/byazt/wdw/n;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/wdw/n;->da:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic sp(Lcom/byazt/wdw/n;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/wdw/n;->tt:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/wdw/n;)Lcom/byazt/eia/da;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/wdw/n;->x:Lcom/byazt/eia/da;

    return-object p0
.end method

.method private tt(Lcom/byazt/wdw/n$c;)Z
    .locals 5

    .line 3
    iget-object v0, p0, Lcom/byazt/wdw/n;->a:Lcom/byazt/ete/hq;

    invoke-virtual {v0}, Lcom/byazt/ete/hq;->tt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/byazt/wdw/n;->ve()I

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    if-ne v0, v2, :cond_2

    .line 5
    iget-object v0, p0, Lcom/byazt/wdw/n;->a:Lcom/byazt/ete/hq;

    invoke-direct {p0, p1, v0}, Lcom/byazt/wdw/n;->c(Lcom/byazt/wdw/n$c;Lcom/byazt/ete/hq;)V

    return v2

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/byazt/wdw/n;->a:Lcom/byazt/ete/hq;

    invoke-virtual {v0}, Lcom/byazt/ete/hq;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/byazt/wdw/n;->a:Lcom/byazt/ete/hq;

    const-wide/16 v3, 0x7d0

    invoke-direct {p0, p1, v0, v3, v4}, Lcom/byazt/wdw/n;->c(Lcom/byazt/wdw/n$c;Lcom/byazt/ete/hq;J)V

    return v2

    .line 8
    :cond_4
    iget-boolean v0, p0, Lcom/byazt/wdw/n;->n:Z

    if-eqz v0, :cond_6

    .line 9
    iget-object v0, p0, Lcom/byazt/wdw/n;->a:Lcom/byazt/ete/hq;

    invoke-virtual {v0}, Lcom/byazt/ete/hq;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    .line 10
    :cond_5
    invoke-direct {p0}, Lcom/byazt/wdw/n;->ve()I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 11
    iget-object v0, p0, Lcom/byazt/wdw/n;->a:Lcom/byazt/ete/hq;

    invoke-direct {p0, p1, v0}, Lcom/byazt/wdw/n;->c(Lcom/byazt/wdw/n$c;Lcom/byazt/ete/hq;)V

    return v2

    :cond_6
    :goto_0
    return v1
.end method

.method private uj()V
    .locals 1

    .line 2
    new-instance v0, Lcom/byazt/wdw/n$2;

    invoke-direct {v0, p0}, Lcom/byazt/wdw/n$2;-><init>(Lcom/byazt/wdw/n;)V

    invoke-static {v0}, Lcom/byazt/bzd/x;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic uj(Lcom/byazt/wdw/n;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/wdw/n;->n:Z

    return p0
.end method

.method private ve()I
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/byazt/wdw/n;->a:Lcom/byazt/ete/hq;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/ete/hq;->a()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    return v2

    .line 4
    :cond_1
    invoke-static {}, Lcom/byazt/wdw/uj;->ve()Lcom/byazt/wdw/uj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/wdw/uj;->c()Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/byazt/wdw/n;->a:Lcom/byazt/ete/hq;

    invoke-virtual {v0}, Lcom/byazt/ete/hq;->sp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    return v3
.end method

.method public static synthetic ve(Lcom/byazt/wdw/n;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/wdw/n;->uj:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public c(I)Lcom/byazt/wdw/n;
    .locals 0

    .line 7
    iput p1, p0, Lcom/byazt/wdw/n;->ve:I

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/byazt/wdw/n;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/byazt/wdw/n;->uj:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/util/Map;)Lcom/byazt/wdw/n;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/byazt/wdw/n;"
        }
    .end annotation

    .line 8
    iput-object p1, p0, Lcom/byazt/wdw/n;->da:Ljava/util/Map;

    return-object p0
.end method

.method public c(Lcom/byazt/wdw/n$c;)Z
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/byazt/wdw/n;->a:Lcom/byazt/ete/hq;

    if-nez v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/byazt/wdw/n;->x:Lcom/byazt/eia/da;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/byazt/eia/da;->A_()Lcom/byazt/ete/hq;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/byazt/wdw/n;->a:Lcom/byazt/ete/hq;

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/byazt/wdw/n;->a:Lcom/byazt/ete/hq;

    if-nez v0, :cond_2

    const/4 p1, 0x0

    return p1

    .line 12
    :cond_2
    iget-boolean v0, p0, Lcom/byazt/wdw/n;->i:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/byazt/wdw/n;->x:Lcom/byazt/eia/da;

    instance-of v1, v0, Lcom/byazt/eia/uj;

    if-eqz v1, :cond_3

    .line 13
    check-cast v0, Lcom/byazt/eia/uj;

    invoke-virtual {v0}, Lcom/byazt/eia/uj;->da()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/byazt/wdw/n;->c(ILcom/byazt/wdw/n$c;)Z

    move-result p1

    return p1

    .line 14
    :cond_3
    invoke-direct {p0, p1}, Lcom/byazt/wdw/n;->tt(Lcom/byazt/wdw/n$c;)Z

    move-result p1

    return p1
.end method

.method public tt()Lcom/byazt/ete/ic;
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/byazt/wdw/n;->x:Lcom/byazt/eia/da;

    iget-object v1, p0, Lcom/byazt/wdw/n;->da:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/byazt/ppf/ve;->c(Ljava/lang/Object;Ljava/util/Map;)Lcom/byazt/ete/ic;

    move-result-object v0

    return-object v0
.end method

.method public tt(Z)Lcom/byazt/wdw/n;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/wdw/n;->n:Z

    return-object p0
.end method
