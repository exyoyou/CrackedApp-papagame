.class public Lcom/byazt/ppf/ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x28a,
        0x36
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field public static c:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static n:J

.field public static sp:Ljava/lang/String;

.field public static tt:I

.field public static uj:J

.field public static ve:I

.field public static volatile x:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/byazt/ppf/ve;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    const/4 v0, -0x1

    .line 10
    sput v0, Lcom/byazt/ppf/ve;->tt:I

    .line 11
    .line 12
    sput v0, Lcom/byazt/ppf/ve;->ve:I

    .line 13
    .line 14
    sput v1, Lcom/byazt/ppf/ve;->x:I

    .line 15
    .line 16
    return-void
.end method

.method public static synthetic a()I
    .locals 1

    .line 1
    sget v0, Lcom/byazt/ppf/ve;->ve:I

    return v0
.end method

.method private static a(Ljava/lang/String;)V
    .locals 4

    const v0, 0x186a8

    .line 2
    sput v0, Lcom/byazt/ppf/ve;->tt:I

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/byazt/ppf/ve;->n:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/byazt/ppf/ve;->uj:J

    .line 4
    sget v2, Lcom/byazt/ppf/ve;->tt:I

    sget v3, Lcom/byazt/ppf/ve;->ve:I

    invoke-static {v2, v3, v0, v1}, Lcom/byazt/ppf/ve;->tt(IIJ)V

    .line 5
    invoke-static {p0}, Lcom/byazt/ppf/ve;->sp(Ljava/lang/String;)V

    return-void
.end method

.method public static c()I
    .locals 1

    .line 32
    sget v0, Lcom/byazt/ppf/ve;->x:I

    return v0
.end method

.method public static synthetic c(I)I
    .locals 0

    .line 1
    sput p0, Lcom/byazt/ppf/ve;->ve:I

    return p0
.end method

.method public static c(Ljava/lang/String;Lcom/byazt/ete/ic;)I
    .locals 2

    const-string v0, "download"

    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x4

    if-eqz p0, :cond_2

    .line 54
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->ls()Ljava/lang/String;

    move-result-object p0

    .line 55
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/ete/n;->uj()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    move-result-object p0

    invoke-virtual {p0}, Lcom/byazt/ete/n;->uj()Ljava/lang/String;

    move-result-object p0

    .line 57
    :cond_0
    invoke-static {p0}, Lcom/byazt/aas/nb;->tt(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    .line 58
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->gr()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x2

    if-eqz p0, :cond_2

    .line 59
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->ne()I

    move-result p0

    if-eq p0, v0, :cond_2

    .line 60
    invoke-static {p1}, Lcom/byazt/bzd/tt;->c(Lcom/byazt/ete/ic;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public static synthetic c(J)J
    .locals 0

    .line 2
    sput-wide p0, Lcom/byazt/ppf/ve;->uj:J

    return-wide p0
.end method

.method public static c(Ljava/lang/Object;Ljava/util/Map;)Lcom/byazt/ete/ic;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/byazt/ete/ic;"
        }
    .end annotation

    .line 145
    instance-of v0, p0, Lcom/byazt/ete/ic;

    if-eqz v0, :cond_0

    .line 146
    check-cast p0, Lcom/byazt/ete/ic;

    return-object p0

    .line 147
    :cond_0
    invoke-static {p1}, Lcom/byazt/ppf/ve;->ve(Ljava/util/Map;)Lcom/byazt/ete/ic;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    sput-object p0, Lcom/byazt/ppf/ve;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static c(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 5

    .line 22
    sget-object v0, Lcom/byazt/bh/tt;->c:Lcom/byazt/bh/tt;

    const-string v1, "clickEvent"

    invoke-virtual {v0, v1}, Lcom/byazt/bh/tt;->c(Ljava/lang/String;)Lcom/byazt/bh/ve;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 23
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/bh/ve;->c()Ljava/util/Map;

    move-result-object v0

    .line 24
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 25
    new-instance v0, Lcom/byazt/ppf/ve$2;

    invoke-direct {v0}, Lcom/byazt/ppf/ve$2;-><init>()V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 26
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/bh/c;

    .line 27
    invoke-virtual {v2}, Lcom/byazt/bh/c;->ve()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v3, p0, v4}, Lcom/byazt/bh/ve;->c(Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 28
    invoke-virtual {v2}, Lcom/byazt/bh/c;->tt()Ljava/lang/String;

    move-result-object p0

    .line 29
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 30
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 31
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public static synthetic c(IIJ)V
    .locals 0

    .line 4
    invoke-static {p0, p1, p2, p3}, Lcom/byazt/ppf/ve;->tt(IIJ)V

    return-void
.end method

.method public static c(Lcom/byazt/eia/c;Lorg/json/JSONObject;Ljava/util/Map;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/eia/c;",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 116
    :cond_0
    invoke-static {}, Lcom/byazt/ow/c;->c()Lcom/byazt/ow/c;

    move-result-object v0

    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/byazt/ow/c;->tt(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 118
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 119
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_3

    .line 120
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 121
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 122
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 123
    invoke-interface {p0}, Lcom/byazt/eia/c;->c()Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {p0}, Lcom/byazt/eia/c;->c()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 124
    invoke-interface {p0}, Lcom/byazt/eia/c;->c()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 125
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_2
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 127
    :cond_3
    invoke-static {p1, v3}, Lcom/byazt/ppf/ve;->c(Lorg/json/JSONObject;Ljava/util/Map;)V

    .line 128
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 129
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 130
    invoke-static {p1, v1}, Lcom/byazt/ppf/c;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 131
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    if-eqz p3, :cond_6

    .line 132
    invoke-virtual {v2, p3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 133
    :cond_6
    invoke-virtual {v0, p0, v2}, Lcom/byazt/ow/c;->c(Ljava/lang/Object;Ljava/util/Map;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/byazt/nd/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/ete/ic;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/byazt/nd/n;",
            ")V"
        }
    .end annotation

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p3, :cond_0

    .line 153
    invoke-interface {v0, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    const-string p3, "material_meta"

    .line 154
    invoke-interface {v0, p3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "context"

    .line 155
    invoke-interface {v0, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "event_tag"

    .line 156
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-static {p2}, Lcom/byazt/aas/nb;->uj(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "landing_page_source"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "open_landing_page"

    .line 158
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->yg()Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p1, p0, v0, p4}, Lcom/byazt/ppf/ve;->c(Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;Lcom/byazt/nd/n;)V

    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;Ljava/util/HashMap;Lcom/byazt/pm/a$c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/ete/ic;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/byazt/pm/a$c;",
            ")V"
        }
    .end annotation

    .line 84
    invoke-static {}, Lcom/byazt/aas/nb;->md()V

    .line 85
    invoke-virtual {p2}, Lcom/byazt/pm/a$c;->ve()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_9

    if-nez p0, :cond_0

    goto/16 :goto_2

    .line 86
    :cond_0
    invoke-virtual {p2}, Lcom/byazt/pm/a$c;->ve()Ljava/util/Map;

    move-result-object v0

    const-string v1, "type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 87
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 88
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 89
    :cond_2
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->yg()Lorg/json/JSONObject;

    move-result-object p0

    .line 90
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, -0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v2, "3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x2

    goto :goto_1

    :pswitch_1
    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x1

    goto :goto_1

    :pswitch_2
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :goto_1
    packed-switch v4, :pswitch_data_1

    goto :goto_2

    .line 91
    :pswitch_3
    invoke-virtual {p2}, Lcom/byazt/pm/a$c;->ve()Ljava/util/Map;

    move-result-object p2

    const-string v0, "scheme"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 92
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 93
    :cond_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 94
    new-instance p2, Lcom/byazt/cq/tt$c;

    invoke-direct {p2, v1, v3}, Lcom/byazt/cq/tt$c;-><init>(Ljava/lang/String;I)V

    .line 95
    invoke-virtual {p2, p0}, Lcom/byazt/cq/tt$c;->c(Lorg/json/JSONObject;)Lcom/byazt/cq/tt$c;

    move-result-object p0

    .line 96
    invoke-virtual {p0, p1}, Lcom/byazt/cq/tt$c;->c(Ljava/util/Map;)Lcom/byazt/cq/tt$c;

    move-result-object p0

    .line 97
    invoke-virtual {p0}, Lcom/byazt/cq/tt$c;->c()Lcom/byazt/cq/tt;

    move-result-object p0

    .line 98
    invoke-virtual {p0}, Lcom/byazt/cq/tt;->c()V

    goto :goto_2

    .line 99
    :pswitch_4
    invoke-virtual {p2}, Lcom/byazt/pm/a$c;->ve()Ljava/util/Map;

    move-result-object p2

    const-string v0, "data"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 100
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 101
    :cond_7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 102
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1, p2}, Lcom/byazt/ppf/ve;->c(Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;Lcom/byazt/nd/ve;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 104
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void

    .line 105
    :pswitch_5
    invoke-virtual {p2}, Lcom/byazt/pm/a$c;->ve()Ljava/util/Map;

    move-result-object p2

    const-string v0, "name"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 106
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 107
    :cond_8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 108
    invoke-static {v1, p0, p1}, Lcom/byazt/ppf/ve;->c(Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;)V

    :cond_9
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static c(Lcom/byazt/ete/ic;Ljava/util/HashMap;Lcom/byazt/qdk/ve;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/ete/ic;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/byazt/qdk/ve;",
            ")V"
        }
    .end annotation

    .line 64
    invoke-static {}, Lcom/byazt/aas/nb;->md()V

    if-eqz p2, :cond_5

    if-nez p0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "type"

    .line 65
    invoke-virtual {p2, v0}, Lcom/byazt/qdk/ve;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->yg()Lorg/json/JSONObject;

    move-result-object p0

    .line 68
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, -0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    goto :goto_0

    :pswitch_1
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    :pswitch_2
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_1

    goto :goto_1

    :pswitch_3
    const-string v0, "scheme"

    .line 69
    invoke-virtual {p2, v0}, Lcom/byazt/qdk/ve;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 70
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 71
    new-instance v0, Lcom/byazt/cq/tt$c;

    invoke-direct {v0, p2, v2}, Lcom/byazt/cq/tt$c;-><init>(Ljava/lang/String;I)V

    .line 72
    invoke-virtual {v0, p0}, Lcom/byazt/cq/tt$c;->c(Lorg/json/JSONObject;)Lcom/byazt/cq/tt$c;

    move-result-object p0

    .line 73
    invoke-virtual {p0, p1}, Lcom/byazt/cq/tt$c;->c(Ljava/util/Map;)Lcom/byazt/cq/tt$c;

    move-result-object p0

    .line 74
    invoke-virtual {p0}, Lcom/byazt/cq/tt$c;->c()Lcom/byazt/cq/tt;

    move-result-object p0

    .line 75
    invoke-virtual {p0}, Lcom/byazt/cq/tt;->c()V

    goto :goto_1

    :pswitch_4
    const-string v0, "data"

    .line 76
    invoke-virtual {p2, v0}, Lcom/byazt/qdk/ve;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 77
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 78
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2, p0, p1, v1, v0}, Lcom/byazt/ppf/ve;->c(Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;Lcom/byazt/nd/ve;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 80
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void

    :pswitch_5
    const-string v0, "name"

    .line 81
    invoke-virtual {p2, v0}, Lcom/byazt/qdk/ve;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 82
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 83
    invoke-static {p2, p0, p1}, Lcom/byazt/ppf/ve;->c(Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;)V

    :cond_5
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static c(Lcom/byazt/ete/ic;Ljava/util/Map;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/util/HashMap;J)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/ete/ic;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;J)V"
        }
    .end annotation

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    .line 33
    sget-object v0, Lcom/byazt/ppf/ve;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    const/4 v12, 0x0

    if-eq v0, v1, :cond_1

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/byazt/ppf/ve;->n:J

    if-nez v14, :cond_0

    move-object v0, v12

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/ete/ic;->jl()Ljava/lang/String;

    move-result-object v0

    .line 36
    :goto_0
    invoke-static {v0}, Lcom/byazt/ppf/ve;->sp(Ljava/lang/String;)V

    :cond_1
    if-nez v14, :cond_2

    return-void

    :cond_2
    const-wide/16 v0, 0x0

    const-wide/16 v16, -0x1

    cmp-long v18, p6, v0

    if-lez v18, :cond_3

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, v0, p6

    move-wide/from16 v19, v0

    goto :goto_1

    :cond_3
    move-wide/from16 v19, v16

    .line 38
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/ete/ic;->yg()Lorg/json/JSONObject;

    move-result-object v13

    .line 39
    :try_start_0
    invoke-virtual/range {p5 .. p5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 40
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v13, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 41
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 42
    :cond_4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 43
    new-instance v21, Lorg/json/JSONArray;

    invoke-direct/range {v21 .. v21}, Lorg/json/JSONArray;-><init>()V

    .line 44
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 45
    new-instance v10, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v10, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 46
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v11, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    new-instance v9, Lcom/byazt/ppf/ve$4;

    move-object v1, v9

    move-object v3, v10

    move-object/from16 v4, v21

    move-object v5, v11

    move-object/from16 v6, p0

    move-object v7, v0

    move-object/from16 v8, p2

    move-object v14, v9

    move-object/from16 v9, p4

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-wide/from16 v10, p6

    move-object v15, v13

    move-wide/from16 v12, v19

    invoke-direct/range {v1 .. v13}, Lcom/byazt/ppf/ve$4;-><init>(Ljava/util/Map;Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/json/JSONArray;Ljava/lang/StringBuilder;Lcom/byazt/ete/ic;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;JJ)V

    move-object/from16 v2, p2

    move-object/from16 v1, p3

    const/4 v3, 0x0

    .line 48
    invoke-static {v2, v15, v1, v14, v3}, Lcom/byazt/ppf/ve;->c(Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;Lcom/byazt/nd/ve;Lorg/json/JSONObject;)V

    move-object/from16 v1, p1

    if-eqz v1, :cond_5

    const-string v3, "uchain_event_id"

    .line 49
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_5
    invoke-static {}, Lcom/byazt/ppf/ve;->tt()Z

    move-result v1

    if-nez v1, :cond_7

    .line 51
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v4, p0

    invoke-static {v1, v4}, Lcom/byazt/ppf/ve;->c(Ljava/lang/String;Lcom/byazt/ete/ic;)I

    move-result v1

    invoke-static {v4, v1}, Lcom/byazt/ddx/uj;->tt(Lcom/byazt/ete/ic;I)V

    if-lez v18, :cond_6

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v5, p6

    move-wide v6, v5

    goto :goto_3

    :cond_6
    move-wide/from16 v6, v16

    :goto_3
    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v10

    move-object v1, v0

    move-object/from16 v2, p2

    move-object/from16 v3, v21

    move-object/from16 v4, p0

    move-object/from16 v5, p4

    move-wide/from16 v8, v19

    invoke-static/range {v1 .. v10}, Lcom/byazt/ppf/ve;->tt(Ljava/util/UUID;Ljava/lang/String;Lorg/json/JSONArray;Lcom/byazt/ete/ic;Ljava/lang/String;JJZ)V

    :cond_7
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p0, "95d9ae8de4e66aaf458fdd49879c67fa"

    const-string p1, "https://sf3-fe-tos.pglstatp-toutiao.com/obj/csj-sdk-static/uchain/20108/uchain_dsl.bin"

    .line 7
    :cond_1
    sput-object p0, Lcom/byazt/ppf/ve;->a:Ljava/lang/String;

    .line 8
    sput-object p1, Lcom/byazt/ppf/ve;->sp:Ljava/lang/String;

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sput-wide p0, Lcom/byazt/ppf/ve;->n:J

    .line 10
    sget-object p0, Lcom/byazt/ppf/ve;->a:Ljava/lang/String;

    sget-object p1, Lcom/byazt/ppf/ve;->sp:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/byazt/ppf/ve;->tt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 11
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-lez p1, :cond_2

    const/4 p1, 0x2

    .line 12
    sput p1, Lcom/byazt/ppf/ve;->ve:I

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sget-wide v0, Lcom/byazt/ppf/ve;->n:J

    sub-long/2addr p1, v0

    sput-wide p1, Lcom/byazt/ppf/ve;->uj:J

    .line 14
    sget v0, Lcom/byazt/ppf/ve;->tt:I

    sget v1, Lcom/byazt/ppf/ve;->ve:I

    invoke-static {v0, v1, p1, p2}, Lcom/byazt/ppf/ve;->tt(IIJ)V

    .line 15
    invoke-static {p0}, Lcom/byazt/ppf/ve;->ve(Lorg/json/JSONObject;)V

    return-void

    .line 16
    :cond_2
    invoke-static {}, Lcom/byazt/hy/n;->c()Lcom/byazt/hy/n;

    move-result-object p0

    invoke-virtual {p0}, Lcom/byazt/hy/n;->tt()Lcom/byazt/hm/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/byazt/hm/c;->n()Lcom/byazt/va/c;

    move-result-object p0

    if-nez p0, :cond_3

    .line 17
    sget-object p0, Lcom/byazt/ppf/ve;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    .line 18
    :cond_3
    sget-object p1, Lcom/byazt/ppf/ve;->sp:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/byazt/va/uj;->c(Ljava/lang/String;)V

    .line 19
    sget-object p1, Lcom/byazt/ppf/ve;->a:Ljava/lang/String;

    .line 20
    sget-object v0, Lcom/byazt/ppf/ve;->sp:Ljava/lang/String;

    .line 21
    new-instance v1, Lcom/byazt/ppf/ve$1;

    invoke-direct {v1, p1, v0, p2}, Lcom/byazt/ppf/ve$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/byazt/va/c;->c(Lcom/byazt/mh/c;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 159
    invoke-static {p0, p1, p2, v0, v0}, Lcom/byazt/ppf/ve;->c(Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;Lcom/byazt/nd/ve;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;Lcom/byazt/nd/n;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/byazt/nd/n;",
            ")V"
        }
    .end annotation

    .line 109
    invoke-static {}, Lcom/byazt/aas/nb;->md()V

    .line 110
    new-instance v0, Lcom/byazt/cq/tt$c;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/byazt/cq/tt$c;-><init>(Ljava/lang/String;I)V

    .line 111
    invoke-virtual {v0, p1}, Lcom/byazt/cq/tt$c;->c(Lorg/json/JSONObject;)Lcom/byazt/cq/tt$c;

    move-result-object p0

    .line 112
    invoke-virtual {p0, p2}, Lcom/byazt/cq/tt$c;->c(Ljava/util/Map;)Lcom/byazt/cq/tt$c;

    move-result-object p0

    new-instance p1, Lcom/byazt/ppf/ve$5;

    invoke-direct {p1, p3}, Lcom/byazt/ppf/ve$5;-><init>(Lcom/byazt/nd/n;)V

    .line 113
    invoke-virtual {p0, p1}, Lcom/byazt/cq/tt$c;->c(Lcom/byazt/nd/ve;)Lcom/byazt/cq/tt$c;

    move-result-object p0

    .line 114
    invoke-virtual {p0}, Lcom/byazt/cq/tt$c;->c()Lcom/byazt/cq/tt;

    move-result-object p0

    .line 115
    invoke-virtual {p0}, Lcom/byazt/cq/tt;->c()V

    return-void
.end method

.method public static c(Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;Lcom/byazt/nd/ve;Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/byazt/nd/ve;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .line 160
    invoke-static {}, Lcom/byazt/aas/nb;->md()V

    :try_start_0
    const-string v0, "u_setting"

    .line 161
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/ogz/sl;->if()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :catch_0
    new-instance v0, Lcom/byazt/cq/tt$c;

    invoke-direct {v0, p0}, Lcom/byazt/cq/tt$c;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0, p1}, Lcom/byazt/cq/tt$c;->c(Lorg/json/JSONObject;)Lcom/byazt/cq/tt$c;

    move-result-object p0

    .line 164
    invoke-virtual {p0, p2}, Lcom/byazt/cq/tt$c;->c(Ljava/util/Map;)Lcom/byazt/cq/tt$c;

    move-result-object p0

    .line 165
    invoke-virtual {p0, p3}, Lcom/byazt/cq/tt$c;->c(Lcom/byazt/nd/ve;)Lcom/byazt/cq/tt$c;

    move-result-object p0

    .line 166
    invoke-virtual {p0, p4}, Lcom/byazt/cq/tt$c;->tt(Lorg/json/JSONObject;)Lcom/byazt/cq/tt$c;

    move-result-object p0

    .line 167
    invoke-virtual {p0}, Lcom/byazt/cq/tt$c;->c()Lcom/byazt/cq/tt;

    move-result-object p0

    .line 168
    invoke-virtual {p0}, Lcom/byazt/cq/tt;->c()V

    return-void
.end method

.method public static c(Ljava/util/Map;Lcom/byazt/cr/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/byazt/cr/c;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 148
    invoke-virtual {p1}, Lcom/byazt/cr/c;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "status_code"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "status_msg"

    .line 149
    invoke-virtual {p1}, Lcom/byazt/cr/c;->tt()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static c(Ljava/util/Map;Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    const-string v0, "status_code"

    if-eqz p0, :cond_0

    .line 150
    invoke-static {}, Lcom/byazt/ppf/ve;->tt()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    :try_start_0
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static synthetic c(Ljava/util/UUID;Ljava/lang/String;Lorg/json/JSONArray;Lcom/byazt/ete/ic;Ljava/lang/String;JJZ)V
    .locals 0

    .line 5
    invoke-static/range {p0 .. p9}, Lcom/byazt/ppf/ve;->tt(Ljava/util/UUID;Ljava/lang/String;Lorg/json/JSONArray;Lcom/byazt/ete/ic;Ljava/lang/String;JJZ)V

    return-void
.end method

.method private static c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    const-string v0, "\\."

    .line 137
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 138
    :goto_0
    :try_start_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 139
    aget-object v1, p1, v0

    .line 140
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 141
    :cond_0
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_1
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    .line 143
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public static c(Lorg/json/JSONObject;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 134
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 135
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 136
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/byazt/ppf/ve;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static c(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    if-eqz p0, :cond_0

    const-string v0, "is_feed_register_direct_download"

    .line 61
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 62
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 63
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic i()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/ppf/ve;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic n()I
    .locals 1

    .line 1
    sget v0, Lcom/byazt/ppf/ve;->tt:I

    return v0
.end method

.method private static n(Ljava/lang/String;)Lcom/byazt/it/n;
    .locals 1

    const-string v0, "uchain_data"

    .line 2
    invoke-static {p0, v0}, Lcom/byazt/vif/uj;->tt(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/it/n;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic sp()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/byazt/ppf/ve;->uj:J

    return-wide v0
.end method

.method private static sp(Ljava/lang/String;)V
    .locals 4

    const/4 v0, -0x1

    .line 2
    sput v0, Lcom/byazt/ppf/ve;->tt:I

    .line 3
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->qt()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->fe()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v1, v0, p0}, Lcom/byazt/ppf/ve;->tt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x2

    .line 8
    sput v2, Lcom/byazt/ppf/ve;->ve:I

    .line 9
    sput-object v1, Lcom/byazt/ppf/ve;->a:Ljava/lang/String;

    .line 10
    sput-object v0, Lcom/byazt/ppf/ve;->sp:Ljava/lang/String;

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/byazt/ppf/ve;->n:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/byazt/ppf/ve;->uj:J

    .line 12
    sget v2, Lcom/byazt/ppf/ve;->tt:I

    sget v3, Lcom/byazt/ppf/ve;->ve:I

    invoke-static {v2, v3, v0, v1}, Lcom/byazt/ppf/ve;->tt(IIJ)V

    .line 13
    invoke-static {p0}, Lcom/byazt/ppf/ve;->ve(Lorg/json/JSONObject;)V

    return-void

    .line 14
    :cond_0
    invoke-static {}, Lcom/byazt/ppf/ve;->ve()Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 15
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 16
    sput v0, Lcom/byazt/ppf/ve;->ve:I

    const-string v0, "uc_dsl/uc_dsl.bin"

    .line 17
    sput-object v0, Lcom/byazt/ppf/ve;->sp:Ljava/lang/String;

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/byazt/ppf/ve;->n:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/byazt/ppf/ve;->uj:J

    .line 19
    sget v2, Lcom/byazt/ppf/ve;->tt:I

    sget v3, Lcom/byazt/ppf/ve;->ve:I

    invoke-static {v2, v3, v0, v1}, Lcom/byazt/ppf/ve;->tt(IIJ)V

    .line 20
    invoke-static {p0}, Lcom/byazt/ppf/ve;->ve(Lorg/json/JSONObject;)V

    return-void

    .line 21
    :cond_2
    :goto_0
    sget-object p0, Lcom/byazt/ppf/ve;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 22
    sget p0, Lcom/byazt/ppf/ve;->tt:I

    sget v0, Lcom/byazt/ppf/ve;->ve:I

    sget-wide v1, Lcom/byazt/ppf/ve;->uj:J

    invoke-static {p0, v0, v1, v2}, Lcom/byazt/ppf/ve;->tt(IIJ)V

    return-void
.end method

.method public static synthetic tt(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    sput-object p0, Lcom/byazt/ppf/ve;->sp:Ljava/lang/String;

    return-object p0
.end method

.method private static tt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    .line 6
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 7
    :cond_1
    :try_start_0
    invoke-static {p2}, Lcom/byazt/ppf/ve;->n(Ljava/lang/String;)Lcom/byazt/it/n;

    move-result-object p2

    const-string v0, ""

    .line 8
    invoke-interface {p2, p0, v0}, Lcom/byazt/it/c;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 9
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    .line 10
    :cond_2
    invoke-static {p2}, Lcom/byazt/nr/c;->ve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    .line 11
    sput v0, Lcom/byazt/ppf/ve;->ve:I

    .line 12
    sput-object p0, Lcom/byazt/ppf/ve;->a:Ljava/lang/String;

    .line 13
    sput-object p1, Lcom/byazt/ppf/ve;->sp:Ljava/lang/String;

    .line 14
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1
.end method

.method private static tt(IIJ)V
    .locals 2

    .line 15
    invoke-static {}, Lcom/byazt/ukr/tt;->ve()Lcom/byazt/nv/c;

    move-result-object v0

    new-instance v1, Lcom/byazt/ppf/ve$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/byazt/ppf/ve$3;-><init>(IIJ)V

    const-string p0, "uchain_stats_tracker"

    const/4 p1, 0x1

    invoke-interface {v0, v1, p0, p1}, Lcom/byazt/nv/c;->c(Lcom/byazt/ee/c;Ljava/lang/String;Z)V

    return-void
.end method

.method private static tt(Ljava/util/UUID;Ljava/lang/String;Lorg/json/JSONArray;Lcom/byazt/ete/ic;Ljava/lang/String;JJZ)V
    .locals 2

    .line 16
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "uchain_event_id"

    .line 17
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "pre_uchain"

    .line 18
    invoke-virtual {v0, p0, p7, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "duration"

    .line 19
    invoke-virtual {v0, p0, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "run_status"

    .line 20
    invoke-virtual {v0, p0, p9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p0, "version"

    .line 21
    invoke-static {}, Lcom/byazt/ppf/ve;->c()I

    move-result p5

    invoke-virtual {v0, p0, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 22
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "slot_type"

    .line 23
    invoke-static {p3}, Lcom/byazt/aas/nb;->sl(Lcom/byazt/ete/ic;)I

    move-result p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "uchain_event_tracker"

    .line 24
    invoke-static {p3, p4, p0, v0}, Lcom/byazt/ddx/uj;->tt(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static synthetic tt(Lorg/json/JSONObject;)V
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/byazt/ppf/ve;->ve(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static tt()Z
    .locals 3

    .line 3
    invoke-static {}, Lcom/byazt/ppf/ve;->c()I

    move-result v0

    const/16 v1, 0xbb8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "enableUChainModel: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UChain_utils"

    invoke-static {v2, v1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static tt(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    if-eqz p0, :cond_0

    const-string v0, "has_show_dl_factors"

    .line 25
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 26
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 27
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic uj()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/byazt/ppf/ve;->n:J

    return-wide v0
.end method

.method public static synthetic uj(Ljava/lang/String;)Lcom/byazt/it/n;
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/byazt/ppf/ve;->n(Ljava/lang/String;)Lcom/byazt/it/n;

    move-result-object p0

    return-object p0
.end method

.method private static ve(Ljava/util/Map;)Lcom/byazt/ete/ic;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/byazt/ete/ic;"
        }
    .end annotation

    if-eqz p0, :cond_1

    const-string v0, "material_meta"

    .line 14
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/byazt/ete/ic;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static ve()Lorg/json/JSONObject;
    .locals 2

    .line 13
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "{\"template_info\":{\"version\":\"2.1.8\"},\"event_template\":{\"clickEvent\":{\"main\":\"open_sass_live\",\"lazyLoad\":\"0\",\"events\":[{\"name\":\"open_sass_live\",\"scheme\":\"uchain://open_sass_live?ad_id=${ad_id}&ad_info=${ad_info}&log_extra=${ext}&coupon=${coupon}&ec_schema=${ec_schema}&ecom_live_params=${ecom_live_params}&live_interaction_type=${live_interaction_type}&live_room_id=${live_room_id}&deep_link=${deep_link}&landing_type=${landing_type}&saas_info=${saas_info}\",\"priority\":1,\"condition\":\"${coupon!=null || (ec_schema!=null&&ec_schema!=\'\') || (live_room_id!=null&&live_room_id!=\'\')}\",\"params\":{},\"next\":[],\"callback\":{\"success\":[],\"fail\":[{\"name\":\"open_miniapp\"}]}},{\"name\":\"open_miniapp\",\"scheme\":\"uchain://open_miniapp?ad_id=${ad_id}&ad_info=${ad_info}&log_extra=${ext}&wc_miniapp_info=${wc_miniapp_info}&target_url=${target_url}\",\"condition\":\"${wc_miniapp_info!=null}\",\"priority\":2,\"params\":{},\"next\":[],\"callback\":{\"success\":[],\"fail\":[{\"condition\":\"${(is_video_lp==true||if_both_open==1)&&deep_link==null&&ulink==null}\",\"name\":\"open_landing_page\"},{\"condition\":\"${deep_link!=null||ulink!=null||(is_video_lp!=true&&if_both_open==0)}\",\"name\":\"open_scheme\"}]}},{\"name\":\"open_landing_page\",\"scheme\":\"uchain://open_landing_page?ad_id=${ad_id}&ad_info=${ad_info}&log_extra=${ext}&interaction_type=${interaction_type}&title=${title!=null?title:\'\u5e7f\u544a\'}&url=${target_url}&button_text=${button_text!=null?button_text:\'\u7acb\u5373\u4e0b\u8f7d\'}&gecko_id=${gecko_id}&block_auto_open=${block_auto_open}&ugeno=${ugeno}&page_render_type=${page_render_type}&session_params=${session_params}&dylite_info=${dylite_info}&filter_words=${filter_words}&video=${video}&app_info=${app}&use_media_video_player=${use_media_video_player}&source=${source}&title=${title}&image_mode=${image_mode}&landing_page_conf=${landing_page_conf}&image=${image}&landing_scroll_percentage=${landing_scroll_percentage}&sdk_derive_info=${sdk_derive_info}&dynamic_join_type=${dynamic_join_type}&audio=${audio}&disable_video_join=${disable_video_join}&disable_top_bar=${disable_top_bar}&disable_rtn_button=${disable_rtn_button}&disable_safe_area=${disable_safe_area}&gnd_prefetch_timing=${gnd_prefetch_timing}&gnd_prefetch_cache_key=${gnd_prefetch_cache_key}&direct_landing_page_info=${direct_landing_page_info}&reward_browse_type=${reward_browse_type}&voice_control=${voice_control}&orientation=${orientation}&video_voice_control=${video_voice_control}&if_lpua_package=${if_lpua_package}\",\"priority\":4,\"condition\":\"${interaction_type==3||ext.interaction_type==3}\",\"params\":{},\"next\":[{\"condition\":\"${if_both_open==1&&(is_video_lp!=true||app.appleid==null||app.appleid==\'0\')}\",\"name\":\"download\"}],\"callback\":{\"success\":[],\"fail\":[]}},{\"name\":\"open_scheme\",\"scheme\":\"uchain://open_scheme?ad_id=${ad_id}&ad_info=${ad_info}&log_extra=${ext}&interaction_type=${interaction_type}&deep_link=${deep_link}&ulink=${ulink}&ulink_priority=${ulink_priority}&sub_convert_link=${sub_convert_link}&app_info=${app}&block_auto_open=${block_auto_open}\",\"priority\":3,\"condition\":\"${deep_link!=null||ulink!=null}\",\"params\":{},\"next\":[],\"callback\":{\"success\":[],\"fail\":[{\"condition\":\"${(deep_link!=null&&deep_link.fallback_type==1)||(deep_link==null&&(interaction_type==3||ext.interaction_type==3))}\",\"name\":\"open_landing_page\"},{\"condition\":\"${(deep_link!=null&&deep_link.fallback_type==2)||(deep_link==null&&(interaction_type==4||ext.interaction_type==4))}\",\"name\":\"download\"}]}},{\"name\":\"download\",\"scheme\":\"uchain://download?ad_id=${ad_id}&ad_info=${ad_info}&log_extra=${ext}&app_info=${app}&download_conf=${download_conf}&appstore_jump_type=${appstore_jump_type}&market_url=${market_url}&download_sdk_conf=${download_sdk_conf}&icon=${icon}&interaction_type=${interaction_type}&skan=${skan}\",\"priority\":5,\"condition\":\"${exist(app.download_url, download_url) != null && exist(app.download_url, download_url) != \'\' && (interaction_type==4||ext.interaction_type==4)}\",\"params\":{},\"next\":[],\"callback\":{\"success\":[],\"fail\":[{\"condition\":\"${if_both_open==0}\",\"name\":\"open_landing_page\"}]}}]},\"ugen_view_visibility_tracker\":{\"main\":\"report_event\",\"lazyLoad\":\"0\",\"events\":[{\"name\":\"report_event\",\"scheme\":\"uchain://report_event?label=ugen_view_visibility&ad_id=${ad_id}&log_extra=${ext}&ugen_id=${ugen_event_params.ugen_id}&visibility=${ugen_event_params.visibility}\",\"params\":{},\"next\":[],\"callback\":{\"success\":[],\"fail\":[]}}]},\"video_rate\":{\"main\":\"video\",\"lazyLoad\":\"0\",\"events\":[{\"name\":\"video\",\"scheme\":\"uchain://video?action=rate&identifier=${ad_info}&rate=1.0\",\"params\":{},\"next\":[],\"callback\":{\"success\":[],\"fail\":[]}}]},\"video_pause\":{\"main\":\"video\",\"lazyLoad\":\"0\",\"events\":[{\"name\":\"video\",\"scheme\":\"uchain://video?action=pause&identifier=${ad_info}\",\"params\":{},\"next\":[],\"callback\":{\"success\":[],\"fail\":[]}}]},\"video_play\":{\"main\":\"video\",\"lazyLoad\":\"0\",\"events\":[{\"name\":\"video\",\"scheme\":\"uchain://video?action=play&identifier=${ad_info}\",\"params\":{},\"next\":[],\"callback\":{\"success\":[],\"fail\":[]}}]},\"video_replay\":{\"main\":\"video\",\"lazyLoad\":\"0\",\"events\":[{\"name\":\"video\",\"scheme\":\"uchain://video?action=replay&identifier=${ad_info}\",\"params\":{},\"next\":[],\"callback\":{\"success\":[],\"fail\":[]}}]},\"openPolicy\":{\"main\":\"open_policy\",\"lazyLoad\":\"0\",\"events\":[{\"name\":\"open_policy\",\"scheme\":\"uchain://open_policy?ad_info=${ad_info}&adx_name=${adx_name}&filter_words=${filter_words}\",\"params\":{},\"next\":[],\"callback\":{\"success\":[],\"fail\":[]}}]},\"continue_watch\":{\"main\":\"reward_continue\",\"lazyLoad\":\"0\",\"events\":[{\"name\":\"reward_continue\",\"scheme\":\"uchain://reward_continue\",\"params\":{},\"next\":[],\"callback\":{\"success\":[],\"fail\":[]}}]},\"exit_watch\":{\"main\":\"close_reward\",\"lazyLoad\":\"0\",\"events\":[{\"name\":\"close_reward\",\"scheme\":\"uchain://close_reward\",\"params\":{},\"next\":[],\"callback\":{\"success\":[],\"fail\":[]}}]},\"reward_again\":{\"main\":\"reward_again\",\"lazyLoad\":\"0\",\"events\":[{\"name\":\"reward_again\",\"scheme\":\"uchain://reward_again?pression_sessions=${play_again.pression_sessions}&play_again_rit=${play_again.play_again_rit}&log_extra=${ext}\",\"params\":{},\"next\":[],\"callback\":{\"success\":[],\"fail\":[]}}]}}}"

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static synthetic ve(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ppf/ve;->a(Ljava/lang/String;)V

    return-void
.end method

.method private static ve(Lorg/json/JSONObject;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 3
    :cond_0
    invoke-static {}, Lcom/byazt/ppf/ve;->ve()Lorg/json/JSONObject;

    move-result-object p0

    :cond_1
    const/4 v0, 0x3

    if-eqz p0, :cond_6

    .line 4
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-gtz v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "template_info"

    .line 5
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "version"

    .line 6
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/byazt/ppf/ve;->x:I

    :cond_3
    const-string v1, "event_template"

    .line 7
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 8
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-gtz v1, :cond_4

    goto :goto_0

    .line 9
    :cond_4
    sget-object v0, Lcom/byazt/bh/tt;->c:Lcom/byazt/bh/tt;

    invoke-virtual {v0, p0}, Lcom/byazt/bh/tt;->c(Lorg/json/JSONObject;)V

    .line 10
    sget-object p0, Lcom/byazt/ppf/ve;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    .line 11
    :cond_5
    :goto_0
    sget-object p0, Lcom/byazt/ppf/ve;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    .line 12
    :cond_6
    :goto_1
    sget-object p0, Lcom/byazt/ppf/ve;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public static synthetic x()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/ppf/ve;->sp:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
