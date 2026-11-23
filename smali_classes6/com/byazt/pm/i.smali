.class public Lcom/byazt/pm/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/pm/sl;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x54b,
        0x2a
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/pm/i$c;
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/sz/a;

.field public c:Landroid/os/Handler;

.field public da:Z

.field public i:Lcom/byazt/dq/c;

.field public n:Lcom/byazt/xj/ve;

.field public sl:Z

.field public sp:Lcom/byazt/pm/yp;

.field public t:Z

.field public tt:Lcom/byazt/pm/i$c;

.field public uj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/byazt/ji/tt;",
            ">;>;"
        }
    .end annotation
.end field

.field public ve:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/byazt/ji/tt;",
            ">;>;"
        }
    .end annotation
.end field

.field public x:Lcom/byazt/pm/u;


# direct methods
.method public constructor <init>(Lcom/byazt/xj/ve;Lcom/byazt/pm/i$c;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/byazt/pm/i;->c:Landroid/os/Handler;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/byazt/pm/i;->n:Lcom/byazt/xj/ve;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/byazt/pm/i;->tt:Lcom/byazt/pm/i$c;

    .line 18
    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    iget-object v0, p2, Lcom/byazt/pm/i$c;->c:Ljava/util/Map;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/byazt/pm/i;->ve:Ljava/util/Map;

    .line 24
    .line 25
    iget-object p2, p2, Lcom/byazt/pm/i$c;->tt:Ljava/util/Map;

    .line 26
    .line 27
    iput-object p2, p0, Lcom/byazt/pm/i;->uj:Ljava/util/Map;

    .line 28
    .line 29
    :cond_0
    if-eqz p1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/byazt/xj/ve;->lt()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    iget-object p1, p0, Lcom/byazt/pm/i;->i:Lcom/byazt/dq/c;

    .line 38
    .line 39
    if-nez p1, :cond_1

    .line 40
    .line 41
    new-instance p1, Lcom/byazt/dq/c;

    .line 42
    .line 43
    invoke-direct {p1}, Lcom/byazt/dq/c;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lcom/byazt/pm/i;->i:Lcom/byazt/dq/c;

    .line 47
    .line 48
    :cond_1
    return-void
.end method

.method public static c(Lcom/byazt/xj/ve;Ljava/lang/String;)Lcom/byazt/pm/i;
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    .line 83
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 84
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-gtz p1, :cond_1

    return-object v0

    .line 86
    :cond_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 87
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 88
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 89
    new-instance v4, Lcom/byazt/pm/i$c;

    invoke-direct {v4, p1, v2, v3}, Lcom/byazt/pm/i$c;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    const/4 p1, 0x0

    .line 90
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p1, v2, :cond_5

    .line 91
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 92
    invoke-virtual {p0}, Lcom/byazt/xj/ve;->i()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 93
    invoke-virtual {p0}, Lcom/byazt/xj/ve;->da()Lorg/json/JSONObject;

    move-result-object v5

    .line 94
    invoke-static {v3, p0, v2, v5}, Lcom/byazt/ji/tt$c;->c(Landroid/content/Context;Lcom/byazt/xj/ve;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/byazt/ji/tt;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 95
    iget-object v3, v4, Lcom/byazt/pm/i$c;->c:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/byazt/ji/tt;->sp()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 96
    iget-object v3, v4, Lcom/byazt/pm/i$c;->c:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/byazt/ji/tt;->sp()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_2

    .line 97
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 98
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v5, v4, Lcom/byazt/pm/i$c;->c:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/byazt/ji/tt;->sp()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v5, v4, Lcom/byazt/pm/i$c;->tt:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/byazt/ji/tt;->i()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 101
    :cond_2
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 102
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 103
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v5, v4, Lcom/byazt/pm/i$c;->c:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/byazt/ji/tt;->sp()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v5, v4, Lcom/byazt/pm/i$c;->tt:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/byazt/ji/tt;->i()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :goto_1
    iget-object v3, v4, Lcom/byazt/pm/i$c;->ve:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/byazt/ji/tt;->x()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 107
    :cond_5
    new-instance p1, Lcom/byazt/pm/i;

    invoke-direct {p1, p0, v4}, Lcom/byazt/pm/i;-><init>(Lcom/byazt/xj/ve;Lcom/byazt/pm/i$c;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 108
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    return-object v0
.end method

.method public static synthetic c(Lcom/byazt/pm/i;)Lcom/byazt/sz/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/pm/i;->a:Lcom/byazt/sz/a;

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/pm/i;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/byazt/pm/i;->c(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/byazt/pm/a$c;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 67
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 68
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/pm/a$c;

    if-eqz v0, :cond_1

    .line 69
    iget-object v1, p0, Lcom/byazt/pm/i;->n:Lcom/byazt/xj/ve;

    invoke-static {v1, p1, v0}, Lcom/byazt/vd/c$c;->c(Lcom/byazt/xj/ve;Ljava/lang/String;Lcom/byazt/pm/a$c;)Lcom/byazt/vd/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {v0}, Lcom/byazt/vd/c;->c()V

    .line 71
    invoke-virtual {v0}, Lcom/byazt/vd/c;->tt()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    const-string v0, "timerState"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/byazt/pm/i;->tt(Ljava/lang/String;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/byazt/ji/tt;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {v1, p0}, Lcom/byazt/ji/tt;->c(Lcom/byazt/pm/sl;)V

    .line 35
    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    new-array v2, v2, [Ljava/lang/Object;

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Lcom/byazt/ji/tt;->c([Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    :goto_1
    return-void
.end method

.method public c()Lcom/byazt/pm/u;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/byazt/pm/i;->x:Lcom/byazt/pm/u;

    return-object v0
.end method

.method public c(I)V
    .locals 3

    const-string v0, "timer"

    .line 7
    invoke-virtual {p0, v0}, Lcom/byazt/pm/i;->tt(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/ji/tt;

    .line 10
    instance-of v2, v1, Lcom/byazt/ji/a;

    if-eqz v2, :cond_1

    .line 11
    check-cast v1, Lcom/byazt/ji/a;

    invoke-virtual {v1, p1}, Lcom/byazt/ji/a;->c(I)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public c(Lcom/byazt/pm/u;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/byazt/pm/i;->x:Lcom/byazt/pm/u;

    return-void
.end method

.method public c(Lcom/byazt/pm/yp;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/pm/i;->sp:Lcom/byazt/pm/yp;

    return-void
.end method

.method public c(Lcom/byazt/sz/a;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/pm/i;->a:Lcom/byazt/sz/a;

    return-void
.end method

.method public c(Lcom/byazt/xj/ve;Ljava/lang/String;Ljava/util/List;Lcom/byazt/pm/a;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/xj/ve;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/byazt/pm/a$c;",
            ">;",
            "Lcom/byazt/pm/a;",
            ")V"
        }
    .end annotation

    .line 77
    invoke-virtual {p4}, Lcom/byazt/pm/a;->ve()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 78
    :cond_0
    invoke-virtual {p4}, Lcom/byazt/pm/a;->uj()I

    move-result p4

    if-lez p4, :cond_1

    .line 79
    iget-object v0, p0, Lcom/byazt/pm/i;->c:Landroid/os/Handler;

    new-instance v7, Lcom/byazt/cd/da;

    new-instance v8, Lcom/byazt/pm/i$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move v4, p4

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/byazt/pm/i$1;-><init>(Lcom/byazt/pm/i;Ljava/lang/String;ILcom/byazt/xj/ve;Ljava/util/List;)V

    invoke-direct {v7, v8}, Lcom/byazt/cd/da;-><init>(Ljava/lang/Runnable;)V

    int-to-long p1, p4

    invoke-virtual {v0, v7, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 80
    :cond_1
    iget-object p4, p0, Lcom/byazt/pm/i;->a:Lcom/byazt/sz/a;

    if-eqz p4, :cond_2

    .line 81
    invoke-interface {p4, p1, p2, p3}, Lcom/byazt/sz/a;->c(Lcom/byazt/xj/ve;Ljava/lang/String;Ljava/util/List;)V

    .line 82
    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/byazt/pm/i;->c(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    const-string v0, "timer"

    .line 17
    invoke-virtual {p0, v0}, Lcom/byazt/pm/i;->tt(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 18
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    .line 19
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/ji/tt;

    .line 20
    instance-of v2, v1, Lcom/byazt/ji/a;

    if-eqz v2, :cond_2

    .line 21
    check-cast v1, Lcom/byazt/ji/a;

    .line 22
    invoke-virtual {v1}, Lcom/byazt/ji/a;->tt()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 23
    invoke-virtual {v1}, Lcom/byazt/ji/a;->c()V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public varargs c(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 72
    invoke-virtual {p0, p1}, Lcom/byazt/pm/i;->ve(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 73
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/ji/tt;

    .line 75
    invoke-virtual {v0, p0}, Lcom/byazt/ji/tt;->c(Lcom/byazt/pm/sl;)V

    .line 76
    invoke-virtual {v0, p2}, Lcom/byazt/ji/tt;->c([Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 3

    const-string v0, "timer"

    .line 12
    invoke-virtual {p0, v0}, Lcom/byazt/pm/i;->tt(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 14
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/ji/tt;

    .line 15
    instance-of v2, v1, Lcom/byazt/ji/a;

    if-eqz v2, :cond_1

    .line 16
    check-cast v1, Lcom/byazt/ji/a;

    invoke-virtual {v1, p1}, Lcom/byazt/ji/a;->c(Z)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public c(Landroid/view/MotionEvent;)Z
    .locals 8

    const-string v0, "touchStart"

    .line 24
    invoke-virtual {p0, v0}, Lcom/byazt/pm/i;->tt(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 25
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/ji/tt;

    .line 27
    instance-of v4, v3, Lcom/byazt/ji/da;

    if-eqz v4, :cond_0

    .line 28
    invoke-virtual {v3, p0}, Lcom/byazt/ji/tt;->c(Lcom/byazt/pm/sl;)V

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v1

    .line 29
    invoke-virtual {v3, v4}, Lcom/byazt/ji/tt;->c([Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v0, "touchEnd"

    .line 30
    invoke-virtual {p0, v0}, Lcom/byazt/pm/i;->tt(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const-string v3, "tap"

    .line 31
    invoke-virtual {p0, v3}, Lcom/byazt/pm/i;->tt(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const-string v4, "slide"

    .line 32
    invoke-virtual {p0, v4}, Lcom/byazt/pm/i;->tt(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    if-eqz v0, :cond_3

    .line 33
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 34
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/byazt/ji/tt;

    .line 35
    instance-of v6, v5, Lcom/byazt/ji/i;

    if-eqz v6, :cond_2

    .line 36
    invoke-virtual {v5, p0}, Lcom/byazt/ji/tt;->c(Lcom/byazt/pm/sl;)V

    new-array v6, v2, [Ljava/lang/Object;

    aput-object p1, v6, v1

    .line 37
    invoke-virtual {v5, v6}, Lcom/byazt/ji/tt;->c([Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/byazt/pm/i;->t:Z

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    .line 38
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    if-eqz v4, :cond_16

    .line 39
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_5

    .line 40
    :cond_5
    iget-boolean v0, p0, Lcom/byazt/pm/i;->t:Z

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_6

    return v2

    .line 41
    :cond_6
    iget-object v0, p0, Lcom/byazt/pm/i;->i:Lcom/byazt/dq/c;

    if-eqz v0, :cond_8

    .line 42
    invoke-virtual {v0, p1}, Lcom/byazt/dq/c;->c(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    .line 43
    :cond_7
    iget-object v0, p0, Lcom/byazt/pm/i;->i:Lcom/byazt/dq/c;

    iget-object v5, p0, Lcom/byazt/pm/i;->n:Lcom/byazt/xj/ve;

    invoke-virtual {v0, v5, p1}, Lcom/byazt/dq/c;->c(Lcom/byazt/xj/ve;Landroid/view/MotionEvent;)V

    :cond_8
    if-eqz v3, :cond_a

    .line 44
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 45
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/ji/tt;

    .line 46
    instance-of v5, v3, Lcom/byazt/ji/n;

    if-eqz v5, :cond_9

    .line 47
    move-object v5, v3

    check-cast v5, Lcom/byazt/ji/n;

    iget-object v6, p0, Lcom/byazt/pm/i;->sp:Lcom/byazt/pm/yp;

    invoke-virtual {v5, v6}, Lcom/byazt/ji/n;->c(Lcom/byazt/pm/yp;)V

    .line 48
    invoke-virtual {v3, p0}, Lcom/byazt/ji/tt;->c(Lcom/byazt/pm/sl;)V

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v1

    .line 49
    invoke-virtual {v3, v5}, Lcom/byazt/ji/tt;->c([Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/byazt/pm/i;->da:Z

    goto :goto_2

    .line 50
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v2, :cond_b

    if-ne v0, v3, :cond_d

    .line 51
    :cond_b
    iget-boolean v5, p0, Lcom/byazt/pm/i;->da:Z

    if-eqz v5, :cond_d

    .line 52
    iget-object p1, p0, Lcom/byazt/pm/i;->i:Lcom/byazt/dq/c;

    if-eqz p1, :cond_c

    .line 53
    invoke-virtual {p1}, Lcom/byazt/dq/c;->c()V

    :cond_c
    return v2

    :cond_d
    if-eqz v4, :cond_f

    .line 54
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_f

    .line 55
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_e
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/byazt/ji/tt;

    .line 56
    instance-of v6, v5, Lcom/byazt/ji/uj;

    if-eqz v6, :cond_e

    .line 57
    move-object v6, v5

    check-cast v6, Lcom/byazt/ji/uj;

    iget-object v7, p0, Lcom/byazt/pm/i;->x:Lcom/byazt/pm/u;

    invoke-virtual {v6, v7}, Lcom/byazt/ji/uj;->c(Lcom/byazt/pm/u;)V

    .line 58
    invoke-virtual {v5, p0}, Lcom/byazt/ji/tt;->c(Lcom/byazt/pm/sl;)V

    new-array v6, v2, [Ljava/lang/Object;

    aput-object p1, v6, v1

    .line 59
    invoke-virtual {v5, v6}, Lcom/byazt/ji/tt;->c([Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/byazt/pm/i;->sl:Z

    goto :goto_3

    :cond_f
    if-eq v0, v2, :cond_10

    if-ne v0, v3, :cond_13

    .line 60
    :cond_10
    iget-boolean p1, p0, Lcom/byazt/pm/i;->sl:Z

    if-eqz p1, :cond_12

    .line 61
    iget-object p1, p0, Lcom/byazt/pm/i;->i:Lcom/byazt/dq/c;

    if-eqz p1, :cond_11

    .line 62
    invoke-virtual {p1}, Lcom/byazt/dq/c;->c()V

    :cond_11
    return v2

    .line 63
    :cond_12
    iget-object p1, p0, Lcom/byazt/pm/i;->i:Lcom/byazt/dq/c;

    if-eqz p1, :cond_13

    .line 64
    iget-object v0, p0, Lcom/byazt/pm/i;->n:Lcom/byazt/xj/ve;

    invoke-virtual {p1, v0}, Lcom/byazt/dq/c;->c(Lcom/byazt/xj/ve;)V

    .line 65
    :cond_13
    iget-boolean p1, p0, Lcom/byazt/pm/i;->da:Z

    if-nez p1, :cond_15

    iget-boolean p1, p0, Lcom/byazt/pm/i;->sl:Z

    if-eqz p1, :cond_14

    goto :goto_4

    :cond_14
    return v1

    :cond_15
    :goto_4
    return v2

    .line 66
    :cond_16
    :goto_5
    iget-boolean p1, p0, Lcom/byazt/pm/i;->t:Z

    return p1
.end method

.method public n()V
    .locals 3

    .line 1
    const-string v0, "animateState"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/byazt/pm/i;->tt(Ljava/lang/String;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/byazt/ji/tt;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {v1, p0}, Lcom/byazt/ji/tt;->c(Lcom/byazt/pm/sl;)V

    .line 35
    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    new-array v2, v2, [Ljava/lang/Object;

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Lcom/byazt/ji/tt;->c([Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    :goto_1
    return-void
.end method

.method public sp()V
    .locals 3

    .line 1
    const-string v0, "timer"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/byazt/pm/i;->tt(Ljava/lang/String;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/byazt/ji/tt;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {v1, p0}, Lcom/byazt/ji/tt;->c(Lcom/byazt/pm/sl;)V

    .line 35
    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    new-array v2, v2, [Ljava/lang/Object;

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Lcom/byazt/ji/tt;->c([Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    :goto_1
    return-void
.end method

.method public tt(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/byazt/ji/tt;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/byazt/pm/i;->ve:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/byazt/pm/i;->uj:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 7
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/byazt/pm/i;->ve:Ljava/util/Map;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/byazt/pm/i;->ve:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/byazt/pm/i;->uj:Ljava/util/Map;

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    iget-object v0, p0, Lcom/byazt/pm/i;->uj:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    :cond_4
    :goto_0
    return-object v1
.end method

.method public tt()V
    .locals 3

    const-string v0, "shake"

    .line 1
    invoke-virtual {p0, v0}, Lcom/byazt/pm/i;->tt(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/ji/tt;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1, p0}, Lcom/byazt/ji/tt;->c(Lcom/byazt/pm/sl;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 5
    invoke-virtual {v1, v2}, Lcom/byazt/ji/tt;->c([Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public uj()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/pm/i;->tt:Lcom/byazt/pm/i$c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, v0, Lcom/byazt/pm/i$c;->c:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_3

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/util/Map$Entry;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/util/List;

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_1

    .line 43
    .line 44
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Lcom/byazt/ji/tt;

    .line 59
    .line 60
    instance-of v3, v2, Lcom/byazt/ji/ve;

    .line 61
    .line 62
    if-eqz v3, :cond_2

    .line 63
    .line 64
    invoke-virtual {v2, p0}, Lcom/byazt/ji/tt;->c(Lcom/byazt/pm/sl;)V

    .line 65
    .line 66
    .line 67
    const/4 v3, 0x0

    .line 68
    new-array v3, v3, [Ljava/lang/Object;

    .line 69
    .line 70
    invoke-virtual {v2, v3}, Lcom/byazt/ji/tt;->c([Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    return-void
.end method

.method public ve(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/byazt/ji/tt;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/byazt/pm/i;->uj:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/byazt/pm/i;->uj:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/byazt/pm/i;->uj:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public ve()V
    .locals 3

    const-string v0, "twist"

    .line 1
    invoke-virtual {p0, v0}, Lcom/byazt/pm/i;->tt(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/ji/tt;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1, p0}, Lcom/byazt/ji/tt;->c(Lcom/byazt/pm/sl;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 5
    invoke-virtual {v1, v2}, Lcom/byazt/ji/tt;->c([Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public x()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/byazt/ji/tt;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/pm/i;->ve:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method
