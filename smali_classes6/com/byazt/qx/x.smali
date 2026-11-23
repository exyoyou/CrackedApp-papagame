.class public Lcom/byazt/qx/x;
.super Lcom/byazt/pct/uj;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa3,
        0x47
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/byazt/pct/uj<",
        "Lorg/json/JSONObject;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/byazt/omf/d;",
            ">;"
        }
    .end annotation
.end field

.field public tt:Lcom/byazt/ete/ic;

.field public ve:Lcom/byazt/at/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/omf/d;Lcom/byazt/ete/ic;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/byazt/pct/uj;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/qx/x;->c:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/byazt/qx/x;->tt:Lcom/byazt/ete/ic;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic c(Lcom/byazt/qx/x;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/qx/x;->tt:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method public static c(Lcom/byazt/pct/nu;Lcom/byazt/omf/d;Lcom/byazt/ete/ic;)V
    .locals 1

    .line 4
    new-instance v0, Lcom/byazt/qx/x$1;

    invoke-direct {v0, p1, p2}, Lcom/byazt/qx/x$1;-><init>(Lcom/byazt/omf/d;Lcom/byazt/ete/ic;)V

    const-string p1, "getNetworkData"

    invoke-virtual {p0, p1, v0}, Lcom/byazt/pct/nu;->c(Ljava/lang/String;Lcom/byazt/pct/uj$tt;)Lcom/byazt/pct/nu;

    return-void
.end method

.method public static synthetic c(Lcom/byazt/qx/x;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/byazt/pct/uj;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic tt(Lcom/byazt/qx/x;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/byazt/pct/uj;->c(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;Lcom/byazt/pct/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/byazt/qx/x;->c(Lorg/json/JSONObject;Lcom/byazt/pct/a;)V

    return-void
.end method

.method public c(Lorg/json/JSONObject;Lcom/byazt/pct/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5
    iget-object p2, p0, Lcom/byazt/qx/x;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/byazt/omf/d;

    if-nez p2, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/byazt/pct/uj;->ve()V

    return-void

    .line 7
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 8
    new-instance v2, Lcom/byazt/qx/x$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/byazt/qx/x$2;-><init>(Lcom/byazt/qx/x;J)V

    iput-object v2, p0, Lcom/byazt/qx/x;->ve:Lcom/byazt/at/uj;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const-string v2, "is_first_request"

    .line 9
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 10
    invoke-static {}, Lcom/byazt/ab/tt;->c()Lcom/byazt/ab/tt;

    move-result-object v2

    iget-object v3, p0, Lcom/byazt/qx/x;->tt:Lcom/byazt/ete/ic;

    iget-object v4, p0, Lcom/byazt/qx/x;->ve:Lcom/byazt/at/uj;

    invoke-virtual {v2, v3, v4}, Lcom/byazt/ab/tt;->c(Lcom/byazt/ete/ic;Lcom/byazt/at/uj;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/byazt/qx/x;->ve:Lcom/byazt/at/uj;

    invoke-virtual {p2, p1, v0}, Lcom/byazt/omf/d;->c(Lorg/json/JSONObject;Lcom/byazt/at/uj;)V

    :cond_3
    return-void
.end method

.method public uj()V
    .locals 0

    return-void
.end method
