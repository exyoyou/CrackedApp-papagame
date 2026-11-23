.class public Lcom/byazt/sz/z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x26a,
        0x85
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/sz/qy;

.field public c:Landroid/content/Context;

.field public da:Lcom/byazt/pm/u;

.field public gr:F

.field public gt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public gu:F

.field public i:Lcom/byazt/pm/yp;

.field public m:Z

.field public my:Z

.field public n:Lcom/byazt/sz/rh;

.field public nu:Lcom/byazt/vt/c;

.field public qy:Lcom/byazt/sz/a;

.field public rh:Z

.field public rl:Lcom/byazt/sz/x;

.field public sl:Lcom/byazt/sz/i;

.field public sp:Lcom/byazt/sz/gt;

.field public t:Ljava/lang/String;

.field public tt:Lorg/json/JSONObject;

.field public u:Lcom/byazt/sz/yp;

.field public uj:Lcom/byazt/sz/da;

.field public ve:Lcom/byazt/xj/ve;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/xj/ve<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public x:Lcom/byazt/sz/my;

.field public yp:Lorg/json/JSONObject;

.field public z:Z

.field public zm:Lcom/byazt/sz/sl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/byazt/sz/z;->z:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/byazt/sz/z;->m:Z

    .line 9
    .line 10
    iput-object p1, p0, Lcom/byazt/sz/z;->c:Landroid/content/Context;

    .line 11
    .line 12
    return-void
.end method

.method private tt(Lcom/byazt/xj/ve;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/xj/ve<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 55
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/xj/ve;->gr()Lorg/json/JSONObject;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 57
    invoke-virtual {p1}, Lcom/byazt/xj/ve;->d()Lcom/byazt/xj/c;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 58
    invoke-virtual {v2}, Lcom/byazt/xj/c;->x()Lcom/byazt/xj/c$c;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 59
    :goto_0
    invoke-direct {p0, p1}, Lcom/byazt/sz/z;->ve(Lcom/byazt/xj/ve;)V

    .line 60
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 61
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 62
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/byazt/sz/z;->tt:Lorg/json/JSONObject;

    invoke-static {v4, v5}, Lcom/byazt/wj/tt;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    .line 63
    invoke-virtual {p1, v3, v4}, Lcom/byazt/xj/ve;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_2

    .line 64
    iget-object v5, p0, Lcom/byazt/sz/z;->c:Landroid/content/Context;

    invoke-virtual {v2, v5, v3, v4}, Lcom/byazt/xj/c$c;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 65
    :cond_3
    iget-object v0, p0, Lcom/byazt/sz/z;->uj:Lcom/byazt/sz/da;

    invoke-virtual {p1, v0}, Lcom/byazt/xj/ve;->c(Lcom/byazt/sz/da;)V

    .line 66
    iget-object v0, p0, Lcom/byazt/sz/z;->n:Lcom/byazt/sz/rh;

    invoke-virtual {p1, v0}, Lcom/byazt/xj/ve;->c(Lcom/byazt/sz/rh;)V

    .line 67
    iget-object v0, p0, Lcom/byazt/sz/z;->sp:Lcom/byazt/sz/gt;

    invoke-virtual {p1, v0}, Lcom/byazt/xj/ve;->c(Lcom/byazt/sz/gt;)V

    .line 68
    iget-object v0, p0, Lcom/byazt/sz/z;->zm:Lcom/byazt/sz/sl;

    if-eqz v0, :cond_4

    .line 69
    invoke-virtual {p1, v0}, Lcom/byazt/xj/ve;->c(Lcom/byazt/sz/sp;)V

    .line 70
    :cond_4
    iget-object v0, p0, Lcom/byazt/sz/z;->qy:Lcom/byazt/sz/a;

    if-eqz v0, :cond_5

    .line 71
    invoke-virtual {p1, v0}, Lcom/byazt/xj/ve;->c(Lcom/byazt/sz/a;)V

    .line 72
    :cond_5
    iget-object v0, p0, Lcom/byazt/sz/z;->i:Lcom/byazt/pm/yp;

    if-eqz v0, :cond_6

    .line 73
    invoke-virtual {p1, v0}, Lcom/byazt/xj/ve;->c(Lcom/byazt/pm/yp;)V

    .line 74
    :cond_6
    iget-object v0, p0, Lcom/byazt/sz/z;->da:Lcom/byazt/pm/u;

    if-eqz v0, :cond_7

    .line 75
    invoke-virtual {p1, v0}, Lcom/byazt/xj/ve;->c(Lcom/byazt/pm/u;)V

    .line 76
    :cond_7
    instance-of v0, p1, Lcom/byazt/xj/c;

    if-eqz v0, :cond_8

    .line 77
    move-object v0, p1

    check-cast v0, Lcom/byazt/xj/c;

    invoke-virtual {v0}, Lcom/byazt/xj/c;->sp()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 78
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 79
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/xj/ve;

    .line 80
    invoke-direct {p0, v1}, Lcom/byazt/sz/z;->tt(Lcom/byazt/xj/ve;)V

    goto :goto_2

    :cond_8
    if-eqz v2, :cond_9

    .line 81
    invoke-virtual {v2}, Lcom/byazt/xj/c$c;->c()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/byazt/xj/ve;->c(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    :cond_9
    invoke-virtual {p1}, Lcom/byazt/xj/ve;->tt()V

    return-void
.end method

.method private ve(Lcom/byazt/xj/ve;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/byazt/xj/ve;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/byazt/xj/ve;->md()Lcom/byazt/sz/i$c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/byazt/xj/ve;->md()Lcom/byazt/sz/i$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/sz/i$c;->sp()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "i18n"

    .line 3
    invoke-virtual {p1}, Lcom/byazt/xj/ve;->md()Lcom/byazt/sz/i$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/sz/i$c;->sp()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    iget-object p1, p0, Lcom/byazt/sz/z;->tt:Lorg/json/JSONObject;

    const-string v1, "xNode"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/sz/i$c;)Lcom/byazt/xj/ve;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/sz/i$c;",
            ")",
            "Lcom/byazt/xj/ve<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 111
    invoke-virtual {p0, p1, v0}, Lcom/byazt/sz/z;->tt(Lcom/byazt/sz/i$c;Lcom/byazt/xj/ve;)Lcom/byazt/xj/ve;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/sz/z;->ve:Lcom/byazt/xj/ve;

    return-object p1
.end method

.method public c(Lcom/byazt/sz/i$c;Lcom/byazt/xj/ve;)Lcom/byazt/xj/ve;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/sz/i$c;",
            "Lcom/byazt/xj/ve<",
            "Landroid/view/View;",
            ">;)",
            "Lcom/byazt/xj/ve<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 42
    invoke-static {p1}, Lcom/byazt/sz/i;->uj(Lcom/byazt/sz/i$c;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/byazt/sz/z;->rl:Lcom/byazt/sz/x;

    if-eqz v0, :cond_1

    .line 44
    invoke-interface {v0, p1}, Lcom/byazt/sz/x;->c(Lcom/byazt/sz/i$c;)V

    .line 45
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/sz/i$c;->uj()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {v0}, Lcom/byazt/sz/uj;->c(Ljava/lang/String;)Lcom/byazt/sz/tt;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_3

    .line 47
    iput-boolean v3, p0, Lcom/byazt/sz/z;->rh:Z

    .line 48
    iget-object v2, p0, Lcom/byazt/sz/z;->gt:Ljava/util/List;

    if-nez v2, :cond_2

    .line 49
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/byazt/sz/z;->gt:Ljava/util/List;

    .line 50
    :cond_2
    iget-object v2, p0, Lcom/byazt/sz/z;->gt:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "View"

    .line 51
    invoke-virtual {p1, v0}, Lcom/byazt/sz/i$c;->c(Ljava/lang/String;)V

    .line 52
    invoke-static {v0}, Lcom/byazt/sz/uj;->c(Ljava/lang/String;)Lcom/byazt/sz/tt;

    move-result-object v2

    if-nez v2, :cond_3

    return-object v1

    .line 53
    :cond_3
    iget-object v4, p0, Lcom/byazt/sz/z;->c:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lcom/byazt/sz/tt;->c(Landroid/content/Context;)Lcom/byazt/xj/ve;

    move-result-object v2

    if-nez v2, :cond_4

    return-object v1

    .line 54
    :cond_4
    invoke-virtual {p1}, Lcom/byazt/sz/i$c;->n()Lorg/json/JSONObject;

    move-result-object v4

    .line 55
    invoke-virtual {p1}, Lcom/byazt/sz/i$c;->c()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/byazt/sz/z;->tt:Lorg/json/JSONObject;

    invoke-static {v5, v6}, Lcom/byazt/wj/tt;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    .line 56
    invoke-virtual {v2, v5}, Lcom/byazt/xj/ve;->sp(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v2, v0}, Lcom/byazt/xj/ve;->x(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v2, v4}, Lcom/byazt/xj/ve;->ve(Lorg/json/JSONObject;)V

    .line 59
    invoke-virtual {v2, p1}, Lcom/byazt/xj/ve;->c(Lcom/byazt/sz/i$c;)V

    .line 60
    iget-object v0, p0, Lcom/byazt/sz/z;->tt:Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Lcom/byazt/xj/ve;->tt(Lorg/json/JSONObject;)V

    .line 61
    iget-object v0, p0, Lcom/byazt/sz/z;->sl:Lcom/byazt/sz/i;

    if-nez v0, :cond_5

    .line 62
    invoke-virtual {v2, v3}, Lcom/byazt/xj/ve;->ve(Z)V

    goto :goto_0

    .line 63
    :cond_5
    invoke-virtual {v0}, Lcom/byazt/sz/i;->uj()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/byazt/xj/ve;->ve(Z)V

    .line 64
    :goto_0
    iget-object v0, p0, Lcom/byazt/sz/z;->u:Lcom/byazt/sz/yp;

    invoke-virtual {v2, v0}, Lcom/byazt/xj/ve;->c(Lcom/byazt/sz/yp;)V

    .line 65
    iget-object v0, p0, Lcom/byazt/sz/z;->nu:Lcom/byazt/vt/c;

    invoke-virtual {v2, v0}, Lcom/byazt/xj/ve;->c(Lcom/byazt/vt/c;)V

    .line 66
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 67
    instance-of v5, p2, Lcom/byazt/xj/c;

    if-eqz v5, :cond_6

    .line 68
    move-object v1, p2

    check-cast v1, Lcom/byazt/xj/c;

    invoke-virtual {v1}, Lcom/byazt/xj/c;->x()Lcom/byazt/xj/c$c;

    move-result-object v5

    .line 69
    invoke-virtual {v2, v1}, Lcom/byazt/xj/ve;->c(Lcom/byazt/xj/c;)V

    move-object v1, v5

    .line 70
    :cond_6
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 71
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 72
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/byazt/sz/z;->tt:Lorg/json/JSONObject;

    invoke-static {v6, v7}, Lcom/byazt/wj/tt;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    .line 73
    invoke-virtual {v2, v5, v6}, Lcom/byazt/xj/ve;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v7, p0, Lcom/byazt/sz/z;->zm:Lcom/byazt/sz/sl;

    if-eqz v7, :cond_7

    .line 75
    invoke-virtual {v7, v5, v6}, Lcom/byazt/sz/sl;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-eqz v1, :cond_6

    .line 76
    iget-object v7, p0, Lcom/byazt/sz/z;->c:Landroid/content/Context;

    invoke-virtual {v1, v7, v5, v6}, Lcom/byazt/xj/c$c;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    if-eqz v1, :cond_9

    .line 77
    invoke-virtual {v1}, Lcom/byazt/xj/c$c;->c()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/byazt/xj/ve;->c(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    if-eqz p2, :cond_a

    const-string v0, "virtualNode"

    .line 78
    invoke-virtual {p2}, Lcom/byazt/xj/ve;->eo()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 79
    invoke-virtual {v2}, Lcom/byazt/xj/ve;->pu()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 80
    iput-boolean v3, p0, Lcom/byazt/sz/z;->my:Z

    .line 81
    :cond_a
    instance-of p2, v2, Lcom/byazt/xj/c;

    if-eqz p2, :cond_11

    .line 82
    invoke-virtual {p1}, Lcom/byazt/sz/i$c;->a()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 83
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-gtz p2, :cond_b

    goto :goto_3

    .line 84
    :cond_b
    invoke-virtual {v2}, Lcom/byazt/xj/ve;->zb()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Swiper"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 85
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-eq p2, v3, :cond_c

    const-string p2, "UGTemplateEngine"

    const-string v0, "Swiper must be only one widget"

    .line 86
    invoke-static {p2, v0}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_c
    :try_start_0
    new-instance p2, Lcom/byazt/sz/z$1;

    invoke-direct {p2, p0}, Lcom/byazt/sz/z$1;-><init>(Lcom/byazt/sz/z;)V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :catchall_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/byazt/sz/i$c;

    .line 89
    invoke-virtual {p0, p2, v2}, Lcom/byazt/sz/z;->c(Lcom/byazt/sz/i$c;Lcom/byazt/xj/ve;)Lcom/byazt/xj/ve;

    move-result-object p2

    if-eqz p2, :cond_d

    .line 90
    invoke-virtual {p2}, Lcom/byazt/xj/ve;->pu()Z

    move-result v0

    if-nez v0, :cond_d

    .line 91
    move-object v0, v2

    check-cast v0, Lcom/byazt/xj/c;

    invoke-virtual {p2}, Lcom/byazt/xj/ve;->p()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/byazt/xj/c;->c(Lcom/byazt/xj/ve;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 92
    :cond_e
    :goto_3
    invoke-virtual {v2}, Lcom/byazt/xj/ve;->zb()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RecyclerLayout"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 93
    iget-object p1, p0, Lcom/byazt/sz/z;->sl:Lcom/byazt/sz/i;

    invoke-virtual {p1}, Lcom/byazt/sz/i;->ve()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 94
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_10

    .line 95
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_f
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/byazt/sz/i$c;

    .line 96
    invoke-virtual {p0, p2, v2}, Lcom/byazt/sz/z;->c(Lcom/byazt/sz/i$c;Lcom/byazt/xj/ve;)Lcom/byazt/xj/ve;

    move-result-object p2

    if-eqz p2, :cond_f

    .line 97
    invoke-virtual {p2}, Lcom/byazt/xj/ve;->nb()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 98
    move-object v0, v2

    check-cast v0, Lcom/byazt/xj/c;

    invoke-virtual {v0, p2}, Lcom/byazt/xj/c;->c(Lcom/byazt/xj/ve;)V

    goto :goto_4

    :cond_10
    return-object v2

    .line 99
    :cond_11
    iput-object v2, p0, Lcom/byazt/sz/z;->ve:Lcom/byazt/xj/ve;

    return-object v2
.end method

.method public c(Lcom/byazt/sz/i$c;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/byazt/xj/ve;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/sz/i$c;",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/byazt/xj/ve<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 30
    iput-object p2, p0, Lcom/byazt/sz/z;->tt:Lorg/json/JSONObject;

    .line 31
    iget-object p2, p0, Lcom/byazt/sz/z;->a:Lcom/byazt/sz/qy;

    if-eqz p2, :cond_0

    .line 32
    invoke-interface {p2}, Lcom/byazt/sz/qy;->c()V

    .line 33
    :cond_0
    new-instance p2, Lcom/byazt/vt/c;

    invoke-direct {p2}, Lcom/byazt/vt/c;-><init>()V

    iput-object p2, p0, Lcom/byazt/sz/z;->nu:Lcom/byazt/vt/c;

    .line 34
    iget-object p2, p0, Lcom/byazt/sz/z;->n:Lcom/byazt/sz/rh;

    instance-of p3, p2, Lcom/byazt/lv/tt;

    if-eqz p3, :cond_1

    .line 35
    check-cast p2, Lcom/byazt/lv/tt;

    const-string p3, "3.0"

    invoke-virtual {p2, p3}, Lcom/byazt/lv/tt;->c(Ljava/lang/String;)V

    :cond_1
    const/4 p2, 0x0

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/byazt/sz/z;->c(Lcom/byazt/sz/i$c;Lcom/byazt/xj/ve;)Lcom/byazt/xj/ve;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/sz/z;->ve:Lcom/byazt/xj/ve;

    .line 37
    iget-object p1, p0, Lcom/byazt/sz/z;->a:Lcom/byazt/sz/qy;

    if-eqz p1, :cond_2

    .line 38
    invoke-interface {p1}, Lcom/byazt/sz/qy;->tt()V

    .line 39
    iget-object p1, p0, Lcom/byazt/sz/z;->ve:Lcom/byazt/xj/ve;

    iget-object p2, p0, Lcom/byazt/sz/z;->a:Lcom/byazt/sz/qy;

    invoke-virtual {p1, p2}, Lcom/byazt/xj/ve;->c(Lcom/byazt/sz/qy;)V

    .line 40
    :cond_2
    iget-object p1, p0, Lcom/byazt/sz/z;->ve:Lcom/byazt/xj/ve;

    invoke-direct {p0, p1}, Lcom/byazt/sz/z;->tt(Lcom/byazt/xj/ve;)V

    .line 41
    iget-object p1, p0, Lcom/byazt/sz/z;->ve:Lcom/byazt/xj/ve;

    return-object p1
.end method

.method public c(Lorg/json/JSONObject;)Lcom/byazt/xj/ve;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/byazt/xj/ve<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/byazt/sz/z;->a:Lcom/byazt/sz/qy;

    if-eqz v0, :cond_0

    .line 101
    invoke-interface {v0}, Lcom/byazt/sz/qy;->c()V

    .line 102
    :cond_0
    new-instance v0, Lcom/byazt/sz/i;

    iget-object v1, p0, Lcom/byazt/sz/z;->tt:Lorg/json/JSONObject;

    invoke-direct {v0, p1, v1}, Lcom/byazt/sz/i;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/byazt/sz/z;->sl:Lcom/byazt/sz/i;

    .line 103
    iget-object p1, p0, Lcom/byazt/sz/z;->n:Lcom/byazt/sz/rh;

    instance-of v1, p1, Lcom/byazt/lv/tt;

    if-eqz v1, :cond_1

    .line 104
    check-cast p1, Lcom/byazt/lv/tt;

    invoke-virtual {v0}, Lcom/byazt/sz/i;->tt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/byazt/lv/tt;->c(Ljava/lang/String;)V

    .line 105
    :cond_1
    iget-object p1, p0, Lcom/byazt/sz/z;->sl:Lcom/byazt/sz/i;

    invoke-virtual {p1}, Lcom/byazt/sz/i;->c()Lcom/byazt/sz/i$c;

    move-result-object p1

    const/4 v0, 0x0

    .line 106
    invoke-virtual {p0, p1, v0}, Lcom/byazt/sz/z;->tt(Lcom/byazt/sz/i$c;Lcom/byazt/xj/ve;)Lcom/byazt/xj/ve;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/sz/z;->ve:Lcom/byazt/xj/ve;

    .line 107
    iget-object p1, p0, Lcom/byazt/sz/z;->a:Lcom/byazt/sz/qy;

    if-eqz p1, :cond_2

    .line 108
    invoke-interface {p1}, Lcom/byazt/sz/qy;->tt()V

    .line 109
    iget-object p1, p0, Lcom/byazt/sz/z;->ve:Lcom/byazt/xj/ve;

    iget-object v0, p0, Lcom/byazt/sz/z;->a:Lcom/byazt/sz/qy;

    invoke-virtual {p1, v0}, Lcom/byazt/xj/ve;->c(Lcom/byazt/sz/qy;)V

    .line 110
    :cond_2
    iget-object p1, p0, Lcom/byazt/sz/z;->ve:Lcom/byazt/xj/ve;

    return-object p1
.end method

.method public c(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/byazt/xj/ve;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/byazt/xj/ve<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 4
    iput-object p2, p0, Lcom/byazt/sz/z;->tt:Lorg/json/JSONObject;

    .line 5
    iget-object v0, p0, Lcom/byazt/sz/z;->a:Lcom/byazt/sz/qy;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Lcom/byazt/sz/qy;->c()V

    .line 7
    :cond_0
    new-instance v0, Lcom/byazt/sz/i;

    invoke-direct {v0, p1, p2, p3}, Lcom/byazt/sz/i;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/byazt/sz/z;->sl:Lcom/byazt/sz/i;

    .line 8
    iget p1, p0, Lcom/byazt/sz/z;->gu:F

    iget p2, p0, Lcom/byazt/sz/z;->gr:F

    invoke-virtual {v0, p1, p2}, Lcom/byazt/sz/i;->c(FF)V

    .line 9
    new-instance p1, Lcom/byazt/vt/c;

    invoke-direct {p1}, Lcom/byazt/vt/c;-><init>()V

    iput-object p1, p0, Lcom/byazt/sz/z;->nu:Lcom/byazt/vt/c;

    .line 10
    iget-object p1, p0, Lcom/byazt/sz/z;->n:Lcom/byazt/sz/rh;

    instance-of p2, p1, Lcom/byazt/lv/tt;

    if-eqz p2, :cond_1

    .line 11
    check-cast p1, Lcom/byazt/lv/tt;

    iget-object p2, p0, Lcom/byazt/sz/z;->sl:Lcom/byazt/sz/i;

    invoke-virtual {p2}, Lcom/byazt/sz/i;->tt()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/byazt/lv/tt;->c(Ljava/lang/String;)V

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/byazt/sz/z;->sl:Lcom/byazt/sz/i;

    invoke-virtual {p1}, Lcom/byazt/sz/i;->c()Lcom/byazt/sz/i$c;

    move-result-object p1

    const/4 p2, 0x0

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/byazt/sz/z;->c(Lcom/byazt/sz/i$c;Lcom/byazt/xj/ve;)Lcom/byazt/xj/ve;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/sz/z;->ve:Lcom/byazt/xj/ve;

    .line 14
    iget-object p1, p0, Lcom/byazt/sz/z;->zm:Lcom/byazt/sz/sl;

    if-eqz p1, :cond_3

    .line 15
    invoke-virtual {p1}, Lcom/byazt/sz/sl;->tt()I

    .line 16
    iget-object p1, p0, Lcom/byazt/sz/z;->zm:Lcom/byazt/sz/sl;

    invoke-virtual {p1}, Lcom/byazt/sz/sl;->ve()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 17
    iget-object p1, p0, Lcom/byazt/sz/z;->zm:Lcom/byazt/sz/sl;

    iget-object p2, p0, Lcom/byazt/sz/z;->x:Lcom/byazt/sz/my;

    invoke-virtual {p1, p2}, Lcom/byazt/sz/sl;->c(Lcom/byazt/sz/my;)V

    .line 18
    :cond_2
    iget-object p1, p0, Lcom/byazt/sz/z;->zm:Lcom/byazt/sz/sl;

    iget-object p2, p0, Lcom/byazt/sz/z;->a:Lcom/byazt/sz/qy;

    invoke-virtual {p1, p2}, Lcom/byazt/sz/sl;->c(Lcom/byazt/sz/qy;)V

    .line 19
    :cond_3
    iget-object p1, p0, Lcom/byazt/sz/z;->a:Lcom/byazt/sz/qy;

    if-eqz p1, :cond_4

    .line 20
    invoke-interface {p1}, Lcom/byazt/sz/qy;->tt()V

    .line 21
    iget-object p1, p0, Lcom/byazt/sz/z;->ve:Lcom/byazt/xj/ve;

    iget-object p2, p0, Lcom/byazt/sz/z;->a:Lcom/byazt/sz/qy;

    invoke-virtual {p1, p2}, Lcom/byazt/xj/ve;->c(Lcom/byazt/sz/qy;)V

    .line 22
    iget-object p1, p0, Lcom/byazt/sz/z;->a:Lcom/byazt/sz/qy;

    invoke-interface {p1}, Lcom/byazt/sz/qy;->ve()V

    .line 23
    :cond_4
    iget-object p1, p0, Lcom/byazt/sz/z;->ve:Lcom/byazt/xj/ve;

    invoke-direct {p0, p1}, Lcom/byazt/sz/z;->tt(Lcom/byazt/xj/ve;)V

    .line 24
    iget-object p1, p0, Lcom/byazt/sz/z;->a:Lcom/byazt/sz/qy;

    if-eqz p1, :cond_5

    .line 25
    new-instance p1, Lcom/byazt/sz/rl;

    invoke-direct {p1}, Lcom/byazt/sz/rl;-><init>()V

    const/4 p2, 0x0

    .line 26
    invoke-virtual {p1, p2}, Lcom/byazt/sz/rl;->c(I)V

    .line 27
    iget-object p2, p0, Lcom/byazt/sz/z;->ve:Lcom/byazt/xj/ve;

    invoke-virtual {p1, p2}, Lcom/byazt/sz/rl;->c(Lcom/byazt/xj/ve;)V

    .line 28
    iget-object p2, p0, Lcom/byazt/sz/z;->a:Lcom/byazt/sz/qy;

    invoke-interface {p2, p1}, Lcom/byazt/sz/qy;->c(Lcom/byazt/sz/rl;)V

    .line 29
    :cond_5
    iget-object p1, p0, Lcom/byazt/sz/z;->ve:Lcom/byazt/xj/ve;

    return-object p1
.end method

.method public c(Lcom/byazt/pm/u;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/byazt/sz/z;->da:Lcom/byazt/pm/u;

    return-void
.end method

.method public c(Lcom/byazt/pm/yp;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/byazt/sz/z;->i:Lcom/byazt/pm/yp;

    return-void
.end method

.method public c(Lcom/byazt/sz/a;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/byazt/sz/z;->qy:Lcom/byazt/sz/a;

    return-void
.end method

.method public c(Lcom/byazt/sz/da;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/byazt/sz/z;->uj:Lcom/byazt/sz/da;

    return-void
.end method

.method public c(Lcom/byazt/sz/gt;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/byazt/sz/z;->sp:Lcom/byazt/sz/gt;

    return-void
.end method

.method public c(Lcom/byazt/sz/rh;)V
    .locals 1

    .line 134
    invoke-static {}, Lcom/byazt/sa/n;->c()Lcom/byazt/sa/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/sa/n;->n()Lcom/byazt/lv/c;

    move-result-object v0

    if-nez v0, :cond_0

    .line 135
    iput-object p1, p0, Lcom/byazt/sz/z;->n:Lcom/byazt/sz/rh;

    return-void

    .line 136
    :cond_0
    invoke-interface {v0, p1}, Lcom/byazt/lv/c;->c(Lcom/byazt/sz/rh;)Lcom/byazt/lv/tt;

    move-result-object v0

    if-nez v0, :cond_1

    .line 137
    iput-object p1, p0, Lcom/byazt/sz/z;->n:Lcom/byazt/sz/rh;

    return-void

    .line 138
    :cond_1
    iget-object p1, p0, Lcom/byazt/sz/z;->yp:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lcom/byazt/lv/tt;->c(Lorg/json/JSONObject;)V

    .line 139
    iget-boolean p1, p0, Lcom/byazt/sz/z;->z:Z

    invoke-virtual {v0, p1}, Lcom/byazt/lv/tt;->c(Z)V

    .line 140
    iget-boolean p1, p0, Lcom/byazt/sz/z;->m:Z

    invoke-virtual {v0, p1}, Lcom/byazt/lv/tt;->tt(Z)V

    .line 141
    iget-object p1, p0, Lcom/byazt/sz/z;->sl:Lcom/byazt/sz/i;

    if-eqz p1, :cond_2

    .line 142
    invoke-virtual {p1}, Lcom/byazt/sz/i;->tt()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/byazt/lv/tt;->c(Ljava/lang/String;)V

    .line 143
    :cond_2
    iput-object v0, p0, Lcom/byazt/sz/z;->n:Lcom/byazt/sz/rh;

    return-void
.end method

.method public c(Lcom/byazt/sz/x;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/byazt/sz/z;->rl:Lcom/byazt/sz/x;

    return-void
.end method

.method public c(Lcom/byazt/xj/ve;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 112
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/xj/ve;->d()Lcom/byazt/xj/c;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 113
    invoke-virtual {v0}, Lcom/byazt/xj/c;->x()Lcom/byazt/xj/c$c;

    move-result-object v0

    .line 114
    invoke-virtual {p1}, Lcom/byazt/xj/ve;->gr()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 115
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Lcom/byazt/xj/ve;->gr()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/byazt/sz/z;->tt:Lorg/json/JSONObject;

    invoke-static {v3, v4}, Lcom/byazt/wj/tt;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    .line 118
    invoke-virtual {p1, v2, v3}, Lcom/byazt/xj/ve;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v4, p0, Lcom/byazt/sz/z;->c:Landroid/content/Context;

    invoke-virtual {v0, v4, v2, v3}, Lcom/byazt/xj/c$c;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {v0}, Lcom/byazt/xj/c$c;->c()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/byazt/xj/ve;->c(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    :cond_2
    instance-of v0, p1, Lcom/byazt/xj/c;

    if-eqz v0, :cond_4

    .line 122
    check-cast p1, Lcom/byazt/xj/c;

    invoke-virtual {p1}, Lcom/byazt/xj/c;->sp()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 123
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_3

    goto :goto_2

    .line 124
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/xj/ve;

    .line 125
    invoke-virtual {p0, v0}, Lcom/byazt/sz/z;->c(Lcom/byazt/xj/ve;)V

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method public varargs c(Lcom/byazt/xj/ve;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 145
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/byazt/xj/ve;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    instance-of v0, p1, Lcom/byazt/xj/c;

    if-eqz v0, :cond_2

    .line 147
    check-cast p1, Lcom/byazt/xj/c;

    invoke-virtual {p1}, Lcom/byazt/xj/c;->sp()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 148
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 149
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/xj/ve;

    .line 150
    invoke-virtual {p0, v0, p2, p3}, Lcom/byazt/sz/z;->c(Lcom/byazt/xj/ve;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public c(Lcom/byazt/xj/ve;Lorg/json/JSONObject;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 126
    :cond_0
    instance-of v0, p1, Lcom/byazt/xj/c;

    if-eqz v0, :cond_3

    .line 127
    invoke-virtual {p1, p2}, Lcom/byazt/xj/ve;->c(Lorg/json/JSONObject;)V

    .line 128
    check-cast p1, Lcom/byazt/xj/c;

    invoke-virtual {p1}, Lcom/byazt/xj/c;->sp()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 129
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_1

    .line 130
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/xj/ve;

    .line 131
    invoke-virtual {p0, v0, p2}, Lcom/byazt/sz/z;->c(Lcom/byazt/xj/ve;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    .line 132
    :cond_3
    invoke-virtual {p1, p2}, Lcom/byazt/xj/ve;->c(Lorg/json/JSONObject;)V

    return-void
.end method

.method public c(Ljava/lang/String;Lcom/byazt/sz/yp;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/byazt/sz/z;->u:Lcom/byazt/sz/yp;

    .line 2
    iput-object p1, p0, Lcom/byazt/sz/z;->t:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/byazt/sz/yp;->c()Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/sz/z;->tt:Lorg/json/JSONObject;

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .line 151
    iget-boolean v0, p0, Lcom/byazt/sz/z;->rh:Z

    return v0
.end method

.method public tt(Lcom/byazt/sz/i$c;Lcom/byazt/xj/ve;)Lcom/byazt/xj/ve;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/sz/i$c;",
            "Lcom/byazt/xj/ve<",
            "Landroid/view/View;",
            ">;)",
            "Lcom/byazt/xj/ve<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/byazt/sz/i;->uj(Lcom/byazt/sz/i$c;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/byazt/sz/z;->rl:Lcom/byazt/sz/x;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0, p1}, Lcom/byazt/sz/x;->tt(Lcom/byazt/sz/i$c;)V

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/sz/i$c;->uj()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/byazt/sz/uj;->c(Ljava/lang/String;)Lcom/byazt/sz/tt;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_3

    .line 6
    iput-boolean v3, p0, Lcom/byazt/sz/z;->rh:Z

    .line 7
    iget-object p1, p0, Lcom/byazt/sz/z;->gt:Ljava/util/List;

    if-nez p1, :cond_2

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/byazt/sz/z;->gt:Ljava/util/List;

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/byazt/sz/z;->gt:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1

    .line 10
    :cond_3
    iget-object v4, p0, Lcom/byazt/sz/z;->c:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lcom/byazt/sz/tt;->c(Landroid/content/Context;)Lcom/byazt/xj/ve;

    move-result-object v2

    if-nez v2, :cond_4

    return-object v1

    .line 11
    :cond_4
    invoke-virtual {p1}, Lcom/byazt/sz/i$c;->c()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/byazt/sz/z;->tt:Lorg/json/JSONObject;

    invoke-static {v4, v5}, Lcom/byazt/wj/tt;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    .line 12
    invoke-virtual {v2, v4}, Lcom/byazt/xj/ve;->sp(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v2, v0}, Lcom/byazt/xj/ve;->x(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Lcom/byazt/sz/i$c;->n()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/byazt/xj/ve;->ve(Lorg/json/JSONObject;)V

    .line 15
    invoke-virtual {v2, p1}, Lcom/byazt/xj/ve;->c(Lcom/byazt/sz/i$c;)V

    .line 16
    iget-object v0, p0, Lcom/byazt/sz/z;->u:Lcom/byazt/sz/yp;

    invoke-virtual {v2, v0}, Lcom/byazt/xj/ve;->c(Lcom/byazt/sz/yp;)V

    .line 17
    instance-of v0, p2, Lcom/byazt/xj/c;

    if-eqz v0, :cond_5

    .line 18
    check-cast p2, Lcom/byazt/xj/c;

    invoke-virtual {v2, p2}, Lcom/byazt/xj/ve;->c(Lcom/byazt/xj/c;)V

    .line 19
    invoke-virtual {p2}, Lcom/byazt/xj/c;->x()Lcom/byazt/xj/c$c;

    move-result-object v1

    .line 20
    :cond_5
    invoke-virtual {p1}, Lcom/byazt/sz/i$c;->n()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p2

    .line 21
    :cond_6
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 22
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Lcom/byazt/sz/i$c;->n()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/byazt/sz/z;->tt:Lorg/json/JSONObject;

    invoke-static {v4, v5}, Lcom/byazt/wj/tt;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    .line 24
    invoke-virtual {v2, v0, v4}, Lcom/byazt/xj/ve;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_6

    .line 25
    iget-object v5, p0, Lcom/byazt/sz/z;->c:Landroid/content/Context;

    invoke-virtual {v1, v5, v0, v4}, Lcom/byazt/xj/c$c;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 26
    :cond_7
    instance-of p2, v2, Lcom/byazt/xj/c;

    if-eqz p2, :cond_e

    .line 27
    invoke-virtual {p1}, Lcom/byazt/sz/i$c;->a()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 28
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-gtz p2, :cond_8

    goto :goto_2

    .line 29
    :cond_8
    invoke-virtual {v2}, Lcom/byazt/xj/ve;->zb()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Swiper"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 30
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-eq p2, v3, :cond_9

    const-string p2, "UGTemplateEngine"

    const-string v0, "Swiper must be only one widget"

    .line 31
    invoke-static {p2, v0}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/byazt/sz/i$c;

    .line 33
    invoke-virtual {p0, p2, v2}, Lcom/byazt/sz/z;->tt(Lcom/byazt/sz/i$c;Lcom/byazt/xj/ve;)Lcom/byazt/xj/ve;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 34
    invoke-virtual {p2}, Lcom/byazt/xj/ve;->nb()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 35
    move-object v0, v2

    check-cast v0, Lcom/byazt/xj/c;

    invoke-virtual {v0, p2}, Lcom/byazt/xj/c;->c(Lcom/byazt/xj/ve;)V

    goto :goto_1

    .line 36
    :cond_b
    :goto_2
    invoke-virtual {v2}, Lcom/byazt/xj/ve;->zb()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RecyclerLayout"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 37
    iget-object p1, p0, Lcom/byazt/sz/z;->sl:Lcom/byazt/sz/i;

    invoke-virtual {p1}, Lcom/byazt/sz/i;->ve()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 38
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_d

    .line 39
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/byazt/sz/i$c;

    .line 40
    invoke-virtual {p0, p2, v2}, Lcom/byazt/sz/z;->tt(Lcom/byazt/sz/i$c;Lcom/byazt/xj/ve;)Lcom/byazt/xj/ve;

    move-result-object p2

    if-eqz p2, :cond_c

    .line 41
    invoke-virtual {p2}, Lcom/byazt/xj/ve;->nb()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 42
    move-object v0, v2

    check-cast v0, Lcom/byazt/xj/c;

    invoke-virtual {v0, p2}, Lcom/byazt/xj/c;->c(Lcom/byazt/xj/ve;)V

    goto :goto_3

    :cond_d
    return-object v2

    :cond_e
    if-eqz v1, :cond_f

    .line 43
    invoke-virtual {v1}, Lcom/byazt/xj/c$c;->c()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/byazt/xj/ve;->c(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    :cond_f
    iput-object v2, p0, Lcom/byazt/sz/z;->ve:Lcom/byazt/xj/ve;

    return-object v2
.end method

.method public tt()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/byazt/sz/z;->gt:Ljava/util/List;

    return-object v0
.end method

.method public tt(Lorg/json/JSONObject;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/byazt/sz/z;->a:Lcom/byazt/sz/qy;

    if-eqz v0, :cond_0

    .line 46
    invoke-interface {v0}, Lcom/byazt/sz/qy;->ve()V

    .line 47
    :cond_0
    iput-object p1, p0, Lcom/byazt/sz/z;->tt:Lorg/json/JSONObject;

    .line 48
    iget-object v0, p0, Lcom/byazt/sz/z;->ve:Lcom/byazt/xj/ve;

    invoke-virtual {p0, v0, p1}, Lcom/byazt/sz/z;->c(Lcom/byazt/xj/ve;Lorg/json/JSONObject;)V

    .line 49
    iget-object p1, p0, Lcom/byazt/sz/z;->ve:Lcom/byazt/xj/ve;

    invoke-direct {p0, p1}, Lcom/byazt/sz/z;->tt(Lcom/byazt/xj/ve;)V

    .line 50
    iget-object p1, p0, Lcom/byazt/sz/z;->a:Lcom/byazt/sz/qy;

    if-eqz p1, :cond_1

    .line 51
    new-instance p1, Lcom/byazt/sz/rl;

    invoke-direct {p1}, Lcom/byazt/sz/rl;-><init>()V

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p1, v0}, Lcom/byazt/sz/rl;->c(I)V

    .line 53
    iget-object v0, p0, Lcom/byazt/sz/z;->ve:Lcom/byazt/xj/ve;

    invoke-virtual {p1, v0}, Lcom/byazt/sz/rl;->c(Lcom/byazt/xj/ve;)V

    .line 54
    iget-object v0, p0, Lcom/byazt/sz/z;->a:Lcom/byazt/sz/qy;

    invoke-interface {v0, p1}, Lcom/byazt/sz/qy;->c(Lcom/byazt/sz/rl;)V

    :cond_1
    return-void
.end method

.method public ve()Z
    .locals 1

    .line 5
    iget-boolean v0, p0, Lcom/byazt/sz/z;->my:Z

    return v0
.end method
