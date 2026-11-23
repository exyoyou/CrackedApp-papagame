.class public Lcom/byazt/bb/sp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/hl/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x93,
        0x5b
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/ete/n;

.field public n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public tt:Landroid/content/Context;

.field public uj:Lcom/byazt/eia/sl;

.field public ve:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/byazt/ete/n;Landroid/content/Context;Lcom/byazt/eia/sl;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/ete/n;",
            "Landroid/content/Context;",
            "Lcom/byazt/eia/sl;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/bb/sp;->c:Lcom/byazt/ete/n;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/bb/sp;->tt:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/byazt/bb/sp;->uj:Lcom/byazt/eia/sl;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/byazt/bb/sp;->n:Ljava/util/Map;

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic c(Lcom/byazt/bb/sp;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/bb/sp;->c(Z)V

    return-void
.end method

.method private c(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 14
    invoke-direct {p0}, Lcom/byazt/bb/sp;->ve()Lcom/byazt/ete/ic;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/bb/sp;->ve:Ljava/lang/String;

    const-string v1, "quickapp_success"

    invoke-static {p1, v0, v1}, Lcom/byazt/ddx/uj;->tt(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 15
    :cond_0
    invoke-direct {p0}, Lcom/byazt/bb/sp;->ve()Lcom/byazt/ete/ic;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/bb/sp;->ve:Ljava/lang/String;

    const-string v1, "quickapp_fail"

    invoke-static {p1, v0, v1}, Lcom/byazt/ddx/uj;->tt(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c()Z
    .locals 4

    .line 4
    iget-object v0, p0, Lcom/byazt/bb/sp;->c:Lcom/byazt/ete/n;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/byazt/bb/sp;->n:Ljava/util/Map;

    sget-object v2, Lcom/byazt/cr/n;->x:Lcom/byazt/cr/n;

    invoke-static {v0, v2}, Lcom/byazt/ppf/ve;->c(Ljava/util/Map;Lcom/byazt/cr/c;)V

    return v1

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/ete/n;->c()Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v2, p0, Lcom/byazt/bb/sp;->uj:Lcom/byazt/eia/sl;

    invoke-interface {v2}, Lcom/byazt/eia/sl;->a()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p0, v0}, Lcom/byazt/bb/sp;->tt(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-direct {p0}, Lcom/byazt/bb/sp;->tt()V

    .line 10
    iget-object v1, p0, Lcom/byazt/bb/sp;->n:Ljava/util/Map;

    sget-object v2, Lcom/byazt/cr/n;->ve:Lcom/byazt/cr/n;

    invoke-static {v1, v2}, Lcom/byazt/ppf/ve;->c(Ljava/util/Map;Lcom/byazt/cr/c;)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-direct {p0, v1}, Lcom/byazt/bb/sp;->c(Z)V

    .line 12
    iget-object v1, p0, Lcom/byazt/bb/sp;->n:Ljava/util/Map;

    sget-object v2, Lcom/byazt/cr/n;->i:Lcom/byazt/cr/n;

    invoke-static {v1, v2}, Lcom/byazt/ppf/ve;->c(Ljava/util/Map;Lcom/byazt/cr/c;)V

    :goto_0
    return v0

    .line 13
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/byazt/bb/sp;->n:Ljava/util/Map;

    sget-object v2, Lcom/byazt/cr/n;->x:Lcom/byazt/cr/n;

    invoke-static {v0, v2}, Lcom/byazt/ppf/ve;->c(Ljava/util/Map;Lcom/byazt/cr/c;)V

    return v1
.end method

.method private tt()V
    .locals 7

    .line 1
    new-instance v6, Lcom/byazt/bb/sp$1;

    const-wide/16 v2, 0xbb8

    const-wide/16 v4, 0xbb8

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/byazt/bb/sp$1;-><init>(Lcom/byazt/bb/sp;JJ)V

    .line 2
    invoke-virtual {v6}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private ve()Lcom/byazt/ete/ic;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/bb/sp;->uj:Lcom/byazt/eia/sl;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/bb/sp;->n:Ljava/util/Map;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/ppf/ve;->c(Ljava/lang/Object;Ljava/util/Map;)Lcom/byazt/ete/ic;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/bb/sp;->ve:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/util/Map;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/byazt/bb/sp;->c()Z

    move-result p1

    return p1
.end method

.method public tt(Ljava/lang/String;)Z
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/byazt/bb/sp;->tt:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 5
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 7
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "open_url"

    .line 8
    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    iget-object p1, p0, Lcom/byazt/bb/sp;->tt:Landroid/content/Context;

    sget-object v0, Lcom/byazt/omf/p;->x:Ljava/lang/String;

    const-string v3, "internal"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {p1, v2, v0}, Lcom/byazt/nr/tt;->startActivity(Landroid/content/Context;Landroid/content/Intent;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    :catchall_0
    return v1
.end method
