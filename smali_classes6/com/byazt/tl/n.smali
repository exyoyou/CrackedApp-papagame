.class public Lcom/byazt/tl/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/sif/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1d3,
        0x2e
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/ete/ic;

.field public n:Z

.field public final tt:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public uj:Ljava/lang/String;

.field public final ve:Lcom/byazt/tl/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/ete/ic;Landroid/content/Context;Lcom/byazt/tl/uj;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/tl/n;->c:Lcom/byazt/ete/ic;

    .line 5
    .line 6
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/byazt/tl/n;->tt:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/byazt/tl/n;->ve:Lcom/byazt/tl/uj;

    .line 14
    .line 15
    iput-boolean p4, p0, Lcom/byazt/tl/n;->n:Z

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic c(Lcom/byazt/tl/n;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/tl/n;->uj:Ljava/lang/String;

    return-object p0
.end method

.method public static c(Landroid/content/Context;Lcom/byazt/dyf/tt;Lcom/byazt/ete/ic;)V
    .locals 3

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->cg()Z

    move-result v0

    .line 36
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/ogz/sl;->ij()Lcom/byazt/tl/uj;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 37
    invoke-virtual {v1}, Lcom/byazt/tl/uj;->ve()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {v1}, Lcom/byazt/tl/uj;->tt()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_3

    .line 39
    :cond_2
    new-instance v2, Lcom/byazt/tl/n;

    invoke-direct {v2, p2, p0, v1, v0}, Lcom/byazt/tl/n;-><init>(Lcom/byazt/ete/ic;Landroid/content/Context;Lcom/byazt/tl/uj;Z)V

    invoke-virtual {p1, v2}, Lcom/byazt/dyf/tt;->addInterceptor(Lcom/byazt/sif/c;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static synthetic c(Lcom/byazt/tl/n;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/tl/n;->tt(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/tl/n;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/byazt/tl/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/byazt/tl/n;->tt:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "clipboard"

    .line 19
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const/4 v1, 0x0

    .line 20
    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 21
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "\u53cd\u9988\u4e0a\u4f20\u4e2d\uff0c\u8bf7\u60a8\u7a0d\u7b49\uff01"

    .line 33
    invoke-direct {p0, v0}, Lcom/byazt/tl/n;->tt(Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcom/byazt/tl/n$4;

    const-string v1, "upload_oncall"

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/byazt/tl/n$4;-><init>(Lcom/byazt/tl/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/byazt/bwm/n;->tt(Lcom/byazt/bwm/sp;)V

    return-void
.end method

.method public static synthetic tt(Lcom/byazt/tl/n;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/tl/n;->tt:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/tl/n;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/byazt/tl/n;->tt(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private tt(Ljava/lang/String;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/byazt/tl/n$3;

    invoke-direct {v0, p0, p1}, Lcom/byazt/tl/n$3;-><init>(Lcom/byazt/tl/n;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/byazt/bzd/x;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private tt(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 4
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/byazt/nr/sp;->tt(Landroid/content/Context;ZLjava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 6
    invoke-static {}, Lcom/byazt/omf/gt;->c()Lcom/byazt/omf/gu;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/byazt/omf/gr;

    .line 7
    iget-object v1, p0, Lcom/byazt/tl/n;->c:Lcom/byazt/ete/ic;

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->ij()Lcom/byazt/dj/tt;

    move-result-object v5

    .line 8
    new-instance v6, Lcom/byazt/ete/bm;

    invoke-direct {v6}, Lcom/byazt/ete/bm;-><init>()V

    .line 9
    invoke-virtual {v5}, Lcom/byazt/dj/tt;->gt()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    .line 10
    invoke-virtual/range {v4 .. v10}, Lcom/byazt/omf/gr;->c(Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;IZIZ)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 11
    :cond_0
    invoke-static {}, Lcom/byazt/by/a;->c()Lcom/byazt/by/a;

    move-result-object v4

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/byazt/by/a;->tt(Ljava/lang/String;)Lcom/byazt/wo/tt;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/byazt/wo/tt;->uj()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/io/File;

    const-string v5, "request.info"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1, v4}, Lcom/byazt/bzd/n;->c(Ljava/lang/String;Ljava/io/File;)Z

    .line 13
    invoke-static {v3}, Lcom/byazt/ogz/x;->c(Lcom/byazt/ogz/n;)Lcom/byazt/ogz/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/ogz/x;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/byazt/nr/c;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14
    new-instance v4, Ljava/io/File;

    const-string v5, "setting.info"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1, v4}, Lcom/byazt/bzd/n;->c(Ljava/lang/String;Ljava/io/File;)Z

    .line 15
    iget-object v1, p0, Lcom/byazt/tl/n;->c:Lcom/byazt/ete/ic;

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->yg()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/byazt/nr/c;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/io/File;

    const-string v5, "meta.info"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1, v4}, Lcom/byazt/bzd/n;->c(Ljava/lang/String;Ljava/io/File;)Z

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".zip"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/byazt/bzd/n;->c(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 17
    invoke-direct {p0, p2, p1}, Lcom/byazt/tl/n;->ve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 18
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 19
    invoke-static {}, Lcom/byazt/by/a;->c()Lcom/byazt/by/a;

    move-result-object p2

    invoke-virtual {p2, p1, v2}, Lcom/byazt/by/a;->c(Ljava/lang/String;Z)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 20
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 21
    iget-object p2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Lorg/json/JSONObject;

    const-string v2, "message"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "deviceInfo"

    invoke-interface {v7, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "x-pglcypher"

    invoke-interface {v3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v9, v3

    .line 23
    new-instance v4, Lcom/byazt/sml/c;

    invoke-direct {v4}, Lcom/byazt/sml/c;-><init>()V

    iget-object p1, p0, Lcom/byazt/tl/n;->ve:Lcom/byazt/tl/uj;

    invoke-virtual {p1}, Lcom/byazt/tl/uj;->ve()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Lcom/byazt/tl/n$5;

    invoke-direct {v8, p0}, Lcom/byazt/tl/n$5;-><init>(Lcom/byazt/tl/n;)V

    move-object v6, v1

    invoke-virtual/range {v4 .. v9}, Lcom/byazt/sml/c;->c(Ljava/lang/String;Ljava/io/File;Ljava/util/Map;Lcom/byazt/sml/c$c;Ljava/util/Map;)V

    .line 24
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 25
    invoke-static {v0}, Lcom/byazt/bzd/n;->tt(Ljava/io/File;)V

    return-void
.end method

.method private ve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "app_name"

    .line 3
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/omf/x;->qy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "app_id"

    .line 4
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/omf/x;->rl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "os_api"

    .line 5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "os_version"

    .line 6
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "manufacturer"

    .line 7
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "did"

    const-string v2, "embed_applog"

    .line 8
    invoke-static {v2}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/dna/ve;

    invoke-interface {v2}, Lcom/byazt/dna/ve;->getDid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sdk_version"

    const/16 v2, 0x1dbb

    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sdk_api_version"

    .line 10
    sget v2, Lcom/byazt/omf/p;->uj:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "live_sdk_version"

    .line 11
    invoke-static {}, Lcom/byazt/apd/tt;->c()Lcom/byazt/apd/tt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/apd/tt;->sp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "msg"

    .line 12
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "recordId"

    .line 13
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "os"

    const-string v1, "Android"

    .line 14
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "ad_info"

    .line 15
    iget-object v1, p0, Lcom/byazt/tl/n;->c:Lcom/byazt/ete/ic;

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->mk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    iget-object p2, p0, Lcom/byazt/tl/n;->c:Lcom/byazt/ete/ic;

    invoke-virtual {p2}, Lcom/byazt/ete/ic;->ij()Lcom/byazt/dj/tt;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v1, "ad_slot_type"

    .line 17
    invoke-virtual {p2}, Lcom/byazt/dj/tt;->gt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "rit"

    .line 18
    invoke-virtual {p2}, Lcom/byazt/dj/tt;->my()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "#oncall#"

    .line 20
    invoke-static {p2, v0}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method

.method public static synthetic ve(Lcom/byazt/tl/n;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/tl/n;->n:Z

    return p0
.end method


# virtual methods
.method public c(Landroid/content/Context;Ljava/lang/String;Landroid/app/Dialog;)Z
    .locals 1

    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/byazt/tl/n;->uj:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 23
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/tl/n;->uj:Ljava/lang/String;

    :cond_0
    if-eqz p3, :cond_1

    .line 24
    invoke-virtual {p3}, Landroid/app/Dialog;->dismiss()V

    .line 25
    :cond_1
    new-instance p3, Landroid/app/AlertDialog$Builder;

    invoke-direct {p3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p1, "\u786e\u5b9a"

    new-instance v0, Lcom/byazt/tl/n$2;

    invoke-direct {v0, p0, p2}, Lcom/byazt/tl/n$2;-><init>(Lcom/byazt/tl/n;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p3, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "\u53d6\u6d88"

    new-instance p3, Lcom/byazt/tl/n$1;

    invoke-direct {p3, p0}, Lcom/byazt/tl/n$1;-><init>(Lcom/byazt/tl/n;)V

    .line 27
    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/byazt/tl/n;->ve:Lcom/byazt/tl/uj;

    .line 28
    invoke-virtual {p3}, Lcom/byazt/tl/uj;->uj()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n\n\u60a8\u6b64\u6b21\u53cd\u9988\u7684id\u4e3a\uff1a"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/byazt/tl/n;->uj:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 29
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    :catch_0
    move-exception p1

    .line 32
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public c(Lcom/byazt/nc/a;Ljava/lang/String;Landroid/app/Dialog;)Z
    .locals 3

    .line 8
    invoke-static {}, Lcom/byazt/tl/uj;->c()Lcom/byazt/vo/ve;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p1}, Lcom/byazt/nc/a;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/byazt/vo/ve;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {p1}, Lcom/byazt/nc/a;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/byazt/vo/ve;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "click feedback :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/byazt/nc/a;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/byazt/nc/a;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TTAdDislikeImpl"

    invoke-static {v0, p1}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-boolean p1, p0, Lcom/byazt/tl/n;->n:Z

    if-eqz p1, :cond_1

    .line 13
    iget-object p1, p0, Lcom/byazt/tl/n;->uj:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 14
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/tl/n;->uj:Ljava/lang/String;

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/byazt/tl/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcom/byazt/tl/n;->uj:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/byazt/tl/n;->c(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/byazt/tl/n;->tt:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1, p2, p3}, Lcom/byazt/tl/n;->c(Landroid/content/Context;Ljava/lang/String;Landroid/app/Dialog;)Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public c(Ljava/lang/String;Landroid/app/Dialog;)Z
    .locals 2

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/byazt/tl/n;->tt:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "#oncall#"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/byazt/tl/n;->tt:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p0, v0, p1, p2}, Lcom/byazt/tl/n;->c(Landroid/content/Context;Ljava/lang/String;Landroid/app/Dialog;)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method
