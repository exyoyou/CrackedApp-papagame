.class public Lcom/byazt/qx/gr;
.super Lcom/byazt/pct/uj;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa3,
        0xc4
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


# direct methods
.method public constructor <init>(Lcom/byazt/omf/d;)V
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
    iput-object v0, p0, Lcom/byazt/qx/gr;->c:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method

.method private c(ILjava/lang/String;)V
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "code = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", msg = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MallTopBarClickMethod"

    invoke-static {p2, p1}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "\u52aa\u529b\u52a0\u8f7d\u4e2d\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/byazt/nr/h;->c(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static c(Lcom/byazt/pct/nu;Lcom/byazt/omf/d;)V
    .locals 1

    .line 5
    new-instance v0, Lcom/byazt/qx/gr$1;

    invoke-direct {v0, p1}, Lcom/byazt/qx/gr$1;-><init>(Lcom/byazt/omf/d;)V

    const-string p1, "mallTopbarClick"

    invoke-virtual {p0, p1, v0}, Lcom/byazt/pct/nu;->c(Ljava/lang/String;Lcom/byazt/pct/uj$tt;)Lcom/byazt/pct/nu;

    return-void
.end method

.method public static synthetic c(Lcom/byazt/qx/gr;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/byazt/qx/gr;->c(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/qx/gr;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/byazt/pct/uj;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/qx/gr;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/byazt/qx/gr;->c(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private c(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .line 22
    invoke-static {}, Lcom/byazt/apd/tt;->c()Lcom/byazt/apd/tt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/apd/tt;->c(Ljava/lang/String;)I

    move-result p1

    :try_start_0
    const-string v0, "code"

    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const-string v0, "schema \u89e3\u6790\u5931\u8d25"

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/byazt/qx/gr;->c(ILjava/lang/String;)V

    .line 25
    :cond_0
    invoke-virtual {p0, p2}, Lcom/byazt/pct/uj;->c(Ljava/lang/Object;)V

    return-void
.end method

.method private c(Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 15
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 16
    invoke-static {}, Lcom/byazt/apd/tt;->c()Lcom/byazt/apd/tt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/apd/tt;->n()I

    move-result v1

    const/4 v2, 0x2

    if-ne v2, v1, :cond_0

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/byazt/qx/gr;->c(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 18
    :cond_0
    invoke-static {}, Lcom/byazt/apd/tt;->c()Lcom/byazt/apd/tt;

    move-result-object v1

    new-instance v2, Lcom/byazt/qx/gr$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/byazt/qx/gr$2;-><init>(Lcom/byazt/qx/gr;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2, p2}, Lcom/byazt/apd/tt;->c(Lcom/byazt/cn/tt;Z)I

    move-result p1

    const-string p2, "code"

    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const-string p2, "\u6267\u884c\u6388\u6743\u5931\u8d25"

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/byazt/qx/gr;->c(ILjava/lang/String;)V

    .line 21
    invoke-virtual {p0, v0}, Lcom/byazt/pct/uj;->c(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static synthetic tt(Lcom/byazt/qx/gr;Ljava/lang/Object;)V
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

    .line 4
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/byazt/qx/gr;->c(Lorg/json/JSONObject;Lcom/byazt/pct/a;)V

    return-void
.end method

.method public c(Lorg/json/JSONObject;Lcom/byazt/pct/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object p2

    invoke-virtual {p2}, Lcom/byazt/omf/x;->hd()Z

    .line 7
    iget-object p2, p0, Lcom/byazt/qx/gr;->c:Ljava/lang/ref/WeakReference;

    if-nez p2, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/byazt/omf/d;

    if-eqz p2, :cond_3

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "schema"

    .line 9
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 10
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/byazt/pct/uj;->ve()V

    return-void

    :cond_2
    const-string v0, "sync_auth"

    const/4 v1, 0x0

    .line 12
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 13
    invoke-direct {p0, p2, p1}, Lcom/byazt/qx/gr;->c(Ljava/lang/String;Z)V

    return-void

    .line 14
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/byazt/pct/uj;->ve()V

    return-void
.end method

.method public uj()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/byazt/qx/gr;->c:Ljava/lang/ref/WeakReference;

    .line 3
    .line 4
    return-void
.end method
