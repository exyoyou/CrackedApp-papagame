.class public Lcom/byazt/kcl/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x173,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/kcl/c$ve;,
        Lcom/byazt/kcl/c$uj;,
        Lcom/byazt/kcl/c$c;,
        Lcom/byazt/kcl/c$tt;
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/ete/ic;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/byazt/pop/ve;",
            ">;"
        }
    .end annotation
.end field

.field public da:J

.field public i:J

.field public m:Z

.field public n:Lcom/byazt/lcf/TTBaseVideoActivity;

.field public sl:J

.field public sp:Ljava/lang/String;

.field public t:J

.field public tt:Lcom/byazt/pop/ve;

.field public u:J

.field public final uj:Lcom/byazt/kcl/c$ve;

.field public ve:Landroid/view/View;

.field public x:Ljava/lang/String;

.field public yp:J

.field public z:Z


# direct methods
.method public constructor <init>(Lcom/byazt/lcf/TTBaseVideoActivity;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/byazt/kcl/c;->c:Ljava/util/Map;

    .line 14
    .line 15
    new-instance v0, Lcom/byazt/kcl/c$ve;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/byazt/kcl/c$ve;-><init>(Lcom/byazt/kcl/c;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/byazt/kcl/c;->uj:Lcom/byazt/kcl/c$ve;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/byazt/kcl/c;->ve:Landroid/view/View;

    .line 24
    .line 25
    const-wide/16 v0, 0x0

    .line 26
    .line 27
    iput-wide v0, p0, Lcom/byazt/kcl/c;->i:J

    .line 28
    .line 29
    iput-wide v0, p0, Lcom/byazt/kcl/c;->da:J

    .line 30
    .line 31
    iput-wide v0, p0, Lcom/byazt/kcl/c;->sl:J

    .line 32
    .line 33
    iput-wide v0, p0, Lcom/byazt/kcl/c;->t:J

    .line 34
    .line 35
    iput-wide v0, p0, Lcom/byazt/kcl/c;->u:J

    .line 36
    .line 37
    iput-wide v0, p0, Lcom/byazt/kcl/c;->yp:J

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/byazt/kcl/c;->m:Z

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/byazt/kcl/c;->z:Z

    .line 44
    .line 45
    iput-object p1, p0, Lcom/byazt/kcl/c;->n:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 46
    .line 47
    return-void
.end method

.method public static synthetic a(Lcom/byazt/kcl/c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/kcl/c;->yp:J

    return-wide v0
.end method

.method public static synthetic a(Lcom/byazt/kcl/c;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/kcl/c;->yp:J

    return-wide p1
.end method

.method public static synthetic c(Lcom/byazt/kcl/c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/kcl/c;->i:J

    return-wide v0
.end method

.method public static synthetic c(Lcom/byazt/kcl/c;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/kcl/c;->i:J

    return-wide p1
.end method

.method public static c(I)Lcom/byazt/omf/yp;
    .locals 1

    .line 13
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/wzi/c;->c(Landroid/content/Context;)Lcom/byazt/wzi/c;

    move-result-object v0

    .line 14
    invoke-virtual {v0, p0}, Lcom/byazt/wzi/c;->c(I)Landroid/os/IBinder;

    move-result-object p0

    .line 15
    invoke-static {p0}, Lcom/byazt/omf/yp$c;->c(Landroid/os/IBinder;)Lcom/byazt/omf/yp;

    move-result-object p0

    return-object p0
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .line 12
    new-instance v0, Lcom/byazt/kcl/c$uj;

    const-string v1, "executeMultiProcessAppDownloadCallBack"

    invoke-direct {v0, v1, p1}, Lcom/byazt/kcl/c$uj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x5

    invoke-static {v0, p1}, Lcom/byazt/bwm/n;->tt(Lcom/byazt/bwm/sp;I)V

    return-void
.end method

.method public static synthetic n(Lcom/byazt/kcl/c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/kcl/c;->u:J

    return-wide v0
.end method

.method public static synthetic n(Lcom/byazt/kcl/c;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/kcl/c;->u:J

    return-wide p1
.end method

.method public static synthetic sp(Lcom/byazt/kcl/c;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/kcl/c;->a:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/kcl/c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/kcl/c;->sl:J

    return-wide v0
.end method

.method public static synthetic tt(Lcom/byazt/kcl/c;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/kcl/c;->sl:J

    return-wide p1
.end method

.method public static synthetic uj(Lcom/byazt/kcl/c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/kcl/c;->t:J

    return-wide v0
.end method

.method public static synthetic uj(Lcom/byazt/kcl/c;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/kcl/c;->t:J

    return-wide p1
.end method

.method public static synthetic ve(Lcom/byazt/kcl/c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/kcl/c;->da:J

    return-wide v0
.end method

.method public static synthetic ve(Lcom/byazt/kcl/c;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/kcl/c;->da:J

    return-wide p1
.end method

.method public static synthetic x(Lcom/byazt/kcl/c;)Lcom/byazt/lcf/TTBaseVideoActivity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/kcl/c;->n:Lcom/byazt/lcf/TTBaseVideoActivity;

    return-object p0
.end method

.method private x()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/byazt/kcl/c;->a:Lcom/byazt/ete/ic;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->i()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/byazt/kcl/c;->n:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v1, p0, Lcom/byazt/kcl/c;->a:Lcom/byazt/ete/ic;

    iget-object v2, p0, Lcom/byazt/kcl/c;->sp:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/byazt/yih/x;->c(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;)Lcom/byazt/wz/c;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/kcl/c;->tt:Lcom/byazt/pop/ve;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/byazt/kcl/c;->tt:Lcom/byazt/pop/ve;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/byazt/pop/ve;->ve()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/byazt/kcl/c;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/pop/ve;

    invoke-interface {v1}, Lcom/byazt/pop/ve;->ve()V

    goto :goto_0

    .line 8
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/byazt/kcl/c;->x:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/byazt/kcl/c;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "RewardFullDownloadManager"

    const-string v2, "remove from ITTAppDownloadListener throw Exception : "

    .line 9
    invoke-static {v1, v2, v0}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public c()V
    .locals 3

    .line 9
    iget-object v0, p0, Lcom/byazt/kcl/c;->tt:Lcom/byazt/pop/ve;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/byazt/kcl/c;->a:Lcom/byazt/ete/ic;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->i()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 11
    iget-object v0, p0, Lcom/byazt/kcl/c;->n:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v1, p0, Lcom/byazt/kcl/c;->a:Lcom/byazt/ete/ic;

    iget-object v2, p0, Lcom/byazt/kcl/c;->sp:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/byazt/yih/x;->c(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;)Lcom/byazt/wz/c;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/kcl/c;->tt:Lcom/byazt/pop/ve;

    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;Lcom/byazt/kcl/c$c;Lcom/byazt/ete/da;)V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/byazt/kcl/c;->tt:Lcom/byazt/pop/ve;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p3

    const v0, 0x7e06fe99

    const/4 v1, 0x0

    if-ne p3, v0, :cond_0

    const-string p1, "click_play_star_level"

    .line 37
    invoke-interface {p2, p1, v1}, Lcom/byazt/kcl/c$c;->c(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 38
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p3

    const v0, 0x7e06feae

    if-ne p3, v0, :cond_1

    const-string p1, "click_play_star_nums"

    .line 39
    invoke-interface {p2, p1, v1}, Lcom/byazt/kcl/c$c;->c(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 40
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p3

    const v0, 0x7e06ffa3

    if-ne p3, v0, :cond_2

    const-string p1, "click_play_source"

    .line 41
    invoke-interface {p2, p1, v1}, Lcom/byazt/kcl/c$c;->c(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 42
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const p3, 0x7e06ff51

    if-ne p1, p3, :cond_4

    const-string p1, "click_play_logo"

    .line 43
    invoke-interface {p2, p1, v1}, Lcom/byazt/kcl/c$c;->c(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 44
    :cond_3
    invoke-interface {p2, p1, p3}, Lcom/byazt/kcl/c$c;->c(Landroid/view/View;Lcom/byazt/ete/da;)V

    :cond_4
    return-void
.end method

.method public c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcom/byazt/kcl/c;->z:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/byazt/kcl/c;->z:Z

    .line 5
    iput-object p1, p0, Lcom/byazt/kcl/c;->a:Lcom/byazt/ete/ic;

    .line 6
    iput-object p2, p0, Lcom/byazt/kcl/c;->sp:Ljava/lang/String;

    .line 7
    invoke-direct {p0}, Lcom/byazt/kcl/c;->x()V

    .line 8
    iput-object p3, p0, Lcom/byazt/kcl/c;->x:Ljava/lang/String;

    return-void
.end method

.method public c(Lcom/byazt/kcl/c$c;)V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/byazt/kcl/c;->tt:Lcom/byazt/pop/ve;

    new-instance v1, Lcom/byazt/kcl/c$2;

    invoke-direct {v1, p0, p1}, Lcom/byazt/kcl/c$2;-><init>(Lcom/byazt/kcl/c;Lcom/byazt/kcl/c$c;)V

    const/4 p1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/byazt/pop/ve;->c(ILcom/byazt/dk/ve$c;)V

    return-void
.end method

.method public c(Lcom/byazt/kcl/c$tt;)V
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/byazt/kcl/c;->tt:Lcom/byazt/pop/ve;

    if-nez v0, :cond_0

    return-void

    .line 17
    :cond_0
    new-instance v1, Lcom/byazt/kcl/c$1;

    invoke-direct {v1, p0, p1}, Lcom/byazt/kcl/c$1;-><init>(Lcom/byazt/kcl/c;Lcom/byazt/kcl/c$tt;)V

    invoke-interface {v0, v1}, Lcom/byazt/pop/ve;->c(Lcom/byazt/pop/c;)V

    return-void
.end method

.method public c(Lcom/byazt/ua/c$c;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/byazt/kcl/c;->tt:Lcom/byazt/pop/ve;

    if-eqz v0, :cond_0

    .line 46
    invoke-interface {v0, p1}, Lcom/byazt/pop/ve;->c(Lcom/byazt/ua/c$c;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;Z)V
    .locals 4

    .line 18
    iget-object v0, p0, Lcom/byazt/kcl/c;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 19
    iget-object v0, p0, Lcom/byazt/kcl/c;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/pop/ve;

    if-eqz p1, :cond_3

    if-eqz p2, :cond_0

    .line 20
    iget-object p2, p0, Lcom/byazt/kcl/c;->a:Lcom/byazt/ete/ic;

    invoke-static {p2}, Lcom/byazt/wz/x;->c(Lcom/byazt/ete/ic;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/byazt/pop/ve;->c(I)V

    .line 21
    :cond_0
    instance-of p2, p1, Lcom/byazt/wz/c;

    if-eqz p2, :cond_1

    .line 22
    move-object p2, p1

    check-cast p2, Lcom/byazt/wz/c;

    invoke-virtual {p2}, Lcom/byazt/wz/c;->x()Lcom/byazt/yzg/ve;

    move-result-object p2

    iget-boolean v0, p0, Lcom/byazt/kcl/c;->m:Z

    invoke-virtual {p2, v0}, Lcom/byazt/yzg/ve;->c(Z)V

    goto :goto_0

    .line 23
    :cond_1
    instance-of p2, p1, Lcom/byazt/wz/sp;

    if-eqz p2, :cond_2

    .line 24
    move-object p2, p1

    check-cast p2, Lcom/byazt/wz/sp;

    invoke-virtual {p2}, Lcom/byazt/wz/sp;->x()Lcom/byazt/yzg/ve;

    move-result-object p2

    iget-boolean v0, p0, Lcom/byazt/kcl/c;->m:Z

    invoke-virtual {p2, v0}, Lcom/byazt/yzg/ve;->c(Z)V

    .line 25
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/byazt/kcl/c;->a:Lcom/byazt/ete/ic;

    invoke-static {p2}, Lcom/byazt/aas/nb;->qy(Lcom/byazt/ete/ic;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-interface {p1, p2, v1}, Lcom/byazt/pop/ve;->c(Lorg/json/JSONObject;Z)V

    :cond_3
    return-void

    .line 26
    :cond_4
    iget-object v0, p0, Lcom/byazt/kcl/c;->n:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v2, p0, Lcom/byazt/kcl/c;->a:Lcom/byazt/ete/ic;

    iget-object v3, p0, Lcom/byazt/kcl/c;->sp:Ljava/lang/String;

    invoke-static {v0, p1, v2, v3}, Lcom/byazt/yih/x;->c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/ete/ic;Ljava/lang/String;)Lcom/byazt/pop/ve;

    move-result-object v0

    if-eqz p2, :cond_5

    .line 27
    iget-object p2, p0, Lcom/byazt/kcl/c;->a:Lcom/byazt/ete/ic;

    invoke-static {p2}, Lcom/byazt/wz/x;->c(Lcom/byazt/ete/ic;)I

    move-result p2

    invoke-interface {v0, p2}, Lcom/byazt/pop/ve;->c(I)V

    .line 28
    :cond_5
    instance-of p2, v0, Lcom/byazt/wz/c;

    if-eqz p2, :cond_6

    .line 29
    move-object p2, v0

    check-cast p2, Lcom/byazt/wz/c;

    invoke-virtual {p2}, Lcom/byazt/wz/c;->x()Lcom/byazt/yzg/ve;

    move-result-object p2

    iget-boolean v2, p0, Lcom/byazt/kcl/c;->m:Z

    invoke-virtual {p2, v2}, Lcom/byazt/yzg/ve;->c(Z)V

    goto :goto_1

    .line 30
    :cond_6
    instance-of p2, v0, Lcom/byazt/wz/sp;

    if-eqz p2, :cond_7

    .line 31
    move-object p2, v0

    check-cast p2, Lcom/byazt/wz/sp;

    invoke-virtual {p2}, Lcom/byazt/wz/sp;->x()Lcom/byazt/yzg/ve;

    move-result-object p2

    iget-boolean v2, p0, Lcom/byazt/kcl/c;->m:Z

    invoke-virtual {p2, v2}, Lcom/byazt/yzg/ve;->c(Z)V

    .line 32
    :cond_7
    :goto_1
    iget-object p2, p0, Lcom/byazt/kcl/c;->c:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object p1, p0, Lcom/byazt/kcl/c;->a:Lcom/byazt/ete/ic;

    invoke-static {p1}, Lcom/byazt/aas/nb;->qy(Lcom/byazt/ete/ic;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Lcom/byazt/pop/ve;->c(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public n()V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/byazt/kcl/c;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public sp()Lcom/byazt/kcl/c$ve;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/kcl/c;->uj:Lcom/byazt/kcl/c$ve;

    return-object v0
.end method

.method public tt()Lcom/byazt/pop/ve;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/kcl/c;->tt:Lcom/byazt/pop/ve;

    return-object v0
.end method

.method public uj()V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/byazt/kcl/c;->tt:Lcom/byazt/pop/ve;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/byazt/kcl/c;->n:Lcom/byazt/lcf/TTBaseVideoActivity;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/byazt/pop/ve;->c(Landroid/app/Activity;Z)V

    .line 5
    iget-object v0, p0, Lcom/byazt/kcl/c;->tt:Lcom/byazt/pop/ve;

    invoke-interface {v0}, Lcom/byazt/pop/ve;->tt()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/kcl/c;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/pop/ve;

    invoke-interface {v1}, Lcom/byazt/pop/ve;->tt()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public ve()Z
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/kcl/c;->tt:Lcom/byazt/pop/ve;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
