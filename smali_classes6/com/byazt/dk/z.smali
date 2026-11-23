.class public Lcom/byazt/dk/z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x163,
        0x85
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/dk/z$tt;,
        Lcom/byazt/dk/z$n;,
        Lcom/byazt/dk/z$a;,
        Lcom/byazt/dk/z$ve;,
        Lcom/byazt/dk/z$c;,
        Lcom/byazt/dk/z$uj;
    }
.end annotation


# static fields
.field public static a:Landroid/content/Context;

.field public static volatile c:Ljava/lang/String;

.field public static final i:Lcom/byazt/yq/c;

.field public static final n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static sp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/byazt/dk/ve$c;",
            ">;"
        }
    .end annotation
.end field

.field public static tt:Z

.field public static final uj:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static ve:Lcom/byazt/dk/uj;

.field public static x:Lcom/byazt/ocd/tt;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/byazt/dk/z;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/byazt/dk/z;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    sput-boolean v0, Lcom/byazt/dk/z;->tt:Z

    .line 18
    .line 19
    :try_start_0
    invoke-static {}, Lcom/byazt/dk/z;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-static {v0, v2, v1, v3}, Lcom/byazt/nr/sp;->c(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/io/File;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Lcom/byazt/dk/z;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    :catchall_0
    new-instance v0, Lcom/byazt/dk/z$2;

    .line 37
    .line 38
    invoke-direct {v0}, Lcom/byazt/dk/z$2;-><init>()V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lcom/byazt/dk/z;->i:Lcom/byazt/yq/c;

    .line 42
    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a()Lorg/json/JSONObject;
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/dk/z;->i()Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 60
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const-string p0, "%s_%s"

    .line 61
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 62
    invoke-static {p0}, Lcom/byazt/w/a;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 63
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    .line 64
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public static c(Lcom/byazt/qt/c;I)Landroid/os/Bundle;
    .locals 11

    const-string v0, "_"

    .line 47
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/16 v2, 0x65

    const-string v3, "msg"

    if-ne p1, v2, :cond_4

    .line 48
    :try_start_0
    invoke-virtual {p0}, Lcom/byazt/qt/c;->ve()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/aas/nb;->tt(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string v2, "open"

    goto :goto_0

    :cond_0
    const-string v2, "install"

    :goto_0
    move-object v6, v2

    if-eqz p1, :cond_1

    .line 49
    invoke-virtual {p0}, Lcom/byazt/qt/c;->ve()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/hu/i;->c(Ljava/lang/String;)Lcom/byazt/nn/sp;

    move-result-object p1

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/byazt/nn/sp;->getType()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/byazt/nn/sp;->c()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/byazt/nn/sp;->tt()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "open "

    .line 51
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_2

    .line 52
    :cond_1
    sget-object p1, Lcom/byazt/dk/z;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/byazt/qt/c;->uj()I

    move-result v0

    invoke-static {p1, v0}, Lcom/byazt/z/uj;->c(Landroid/content/Context;I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 53
    invoke-virtual {p0}, Lcom/byazt/qt/c;->da()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/byazt/qt/c;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/byazt/dk/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const-string v0, "cache install"

    .line 54
    sget-object v2, Lcom/byazt/dk/z;->a:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/byazt/z/uj;->c(Landroid/content/Context;I)Z

    move-result p1

    goto :goto_1

    :cond_2
    const-string v0, "mem install"

    :goto_1
    move-object v10, v0

    move v0, p1

    move-object p1, v10

    const-string v2, "install "

    .line 55
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move-object v8, p1

    .line 56
    invoke-virtual {p0}, Lcom/byazt/qt/c;->sp()Ljava/lang/String;

    move-result-object v4

    const-string v7, "media_install"

    if-eqz v0, :cond_3

    const-string p1, "success"

    goto :goto_3

    :cond_3
    const-string p1, "failure"

    :goto_3
    move-object v9, p1

    move-object v5, p0

    invoke-static/range {v4 .. v9}, Lcom/byazt/yih/n;->c(Ljava/lang/String;Lcom/byazt/qt/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_4

    .line 57
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "event_type:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not support"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/byazt/qt/c;->sp()Ljava/lang/String;

    move-result-object v4

    const-string v0, "notSupport_"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "media_install"

    const-string v8, "error"

    const-string v9, "failure"

    move-object v5, p0

    invoke-static/range {v4 .. v9}, Lcom/byazt/yih/n;->c(Ljava/lang/String;Lcom/byazt/qt/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 59
    :goto_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v3, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    return-object v1
.end method

.method public static c()Lcom/byazt/ocd/tt;
    .locals 1

    .line 4
    sget-object v0, Lcom/byazt/dk/z;->x:Lcom/byazt/ocd/tt;

    return-object v0
.end method

.method private static c(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/byazt/zz/DownloaderBuilder;
    .locals 0

    .line 39
    new-instance p1, Lcom/byazt/zz/DownloaderBuilder;

    invoke-direct {p1, p0}, Lcom/byazt/zz/DownloaderBuilder;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/byazt/dk/z$11;

    invoke-direct {p0}, Lcom/byazt/dk/z$11;-><init>()V

    .line 40
    invoke-virtual {p1, p0}, Lcom/byazt/zz/DownloaderBuilder;->downloadSetting(Lcom/byazt/c/p;)Lcom/byazt/zz/DownloaderBuilder;

    move-result-object p0

    new-instance p1, Lcom/byazt/dk/z$a;

    invoke-direct {p1}, Lcom/byazt/dk/z$a;-><init>()V

    .line 41
    invoke-virtual {p0, p1}, Lcom/byazt/zz/DownloaderBuilder;->httpService(Lcom/byazt/hs/IDownloadHttpService;)Lcom/byazt/zz/DownloaderBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/e/ve;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/dk/z;->tt(Lcom/byazt/e/ve;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static c(I)V
    .locals 1

    .line 28
    sget-object v0, Lcom/byazt/dk/z;->sp:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 29
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static c(ILcom/byazt/dk/ve$c;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 30
    sget-object v0, Lcom/byazt/dk/z;->sp:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/byazt/dk/z;->sp:Ljava/util/Map;

    .line 32
    :cond_0
    sget-object v0, Lcom/byazt/dk/z;->sp:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 3

    if-nez p0, :cond_0

    .line 5
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object p0

    :cond_0
    if-nez p0, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-static {p0}, Lcom/byazt/nr/gt;->tt(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, ":downloader"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/byazt/omf/p;->uj:I

    const/16 v1, 0x1b58

    if-lt v0, v1, :cond_2

    .line 8
    new-instance v0, Lcom/byazt/dk/z$a;

    invoke-direct {v0}, Lcom/byazt/dk/z$a;-><init>()V

    invoke-static {v0}, Lcom/byazt/zz/ve;->c(Lcom/byazt/hs/IDownloadHttpService;)V

    .line 9
    :cond_2
    sget-object v0, Lcom/byazt/dk/z;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_5

    .line 10
    const-class v1, Lcom/byazt/dk/z;

    monitor-enter v1

    .line 11
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_4

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/byazt/dk/z;->a:Landroid/content/Context;

    .line 13
    invoke-static {}, Lcom/byazt/dk/z;->sp()Lcom/byazt/dk/uj;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 14
    invoke-static {}, Lcom/byazt/dk/z;->sp()Lcom/byazt/dk/uj;

    move-result-object p0

    sget-boolean v2, Lcom/byazt/dk/z;->tt:Z

    invoke-interface {p0, v2}, Lcom/byazt/dk/uj;->c(Z)Ljava/lang/String;

    move-result-object p0

    .line 15
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 16
    sput-object p0, Lcom/byazt/dk/z;->c:Ljava/lang/String;

    .line 17
    :cond_3
    sget-object p0, Lcom/byazt/dk/z;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/byazt/dk/z;->tt(Landroid/content/Context;)Z

    move-result p0

    .line 18
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 19
    :cond_4
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 20
    :cond_5
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_7

    sget-object p0, Lcom/byazt/dk/z;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 21
    invoke-static {}, Lcom/byazt/dk/z;->sp()Lcom/byazt/dk/uj;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/byazt/dk/z;->sp()Lcom/byazt/dk/uj;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/dk/uj;->tt()Lcom/byazt/dk/sp;

    move-result-object v0

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_7

    .line 22
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_7
    return-void
.end method

.method public static c(Lcom/byazt/ocd/tt;)V
    .locals 0

    .line 3
    sput-object p0, Lcom/byazt/dk/z;->x:Lcom/byazt/ocd/tt;

    return-void
.end method

.method public static synthetic c(Lcom/byazt/su/DownloadModel;)V
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/byazt/dk/z;->tt(Lcom/byazt/su/DownloadModel;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    .line 23
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    sput-object p0, Lcom/byazt/dk/z;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static c(Landroid/app/Activity;Lcom/byazt/ocd/c;)Z
    .locals 2

    .line 65
    invoke-static {}, Lcom/byazt/de/c;->c()Lcom/byazt/de/c;

    move-result-object v0

    new-instance v1, Lcom/byazt/dk/z$3;

    invoke-direct {v1, p1}, Lcom/byazt/dk/z$3;-><init>(Lcom/byazt/ocd/c;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/byazt/de/c;->c(Landroid/app/Activity;ZLcom/byazt/de/c$c;)Z

    move-result p0

    return p0
.end method

.method public static c(Landroid/content/Context;Landroid/net/Uri;Lcom/byazt/su/DownloadModel;Lcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;)Z
    .locals 7

    .line 26
    invoke-static {}, Lcom/byazt/dk/z;->tt()Lcom/byazt/di/da;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/di/da;->n()Lcom/byazt/pk/tt;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/byazt/pk/tt;->c(Landroid/content/Context;Landroid/net/Uri;Lcom/byazt/su/DownloadModel;Lcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;)Z

    move-result p0

    return p0
.end method

.method public static c(Landroid/content/Context;Landroid/net/Uri;Lcom/byazt/su/DownloadModel;Lcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;Lcom/byazt/ou/IDownloadButtonClickListener;)Z
    .locals 8

    .line 25
    invoke-static {}, Lcom/byazt/dk/z;->tt()Lcom/byazt/di/da;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/di/da;->n()Lcom/byazt/pk/tt;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/byazt/pk/tt;->c(Landroid/content/Context;Landroid/net/Uri;Lcom/byazt/su/DownloadModel;Lcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;Lcom/byazt/ou/IDownloadButtonClickListener;)Z

    move-result p0

    return p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 42
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    invoke-static {}, Lcom/byazt/z/uj;->sl()Lcom/byazt/z/uj;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/byazt/z/uj;->tt(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 44
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 45
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/t/DownloadInfo;

    if-eqz v1, :cond_1

    .line 46
    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static c(Landroid/net/Uri;)Z
    .locals 0

    .line 27
    invoke-static {p0}, Lcom/byazt/us/da;->c(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)Z
    .locals 10

    .line 33
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 34
    :cond_0
    invoke-static {}, Lcom/byazt/dk/z;->uj()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 35
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 36
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 37
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/byazt/dk/ve$c;

    if-eqz v4, :cond_1

    .line 38
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, p0

    move-object v8, p1

    move-object v9, p3

    invoke-interface/range {v4 .. v9}, Lcom/byazt/dk/ve$c;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method private static getContext()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/dk/z;->a:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method private static i()Lorg/json/JSONObject;
    .locals 3

    .line 1
    const-string v0, "enable_app_install_receiver"

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Lcom/byazt/dk/z;->sp()Lcom/byazt/dk/uj;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-interface {v1}, Lcom/byazt/dk/uj;->c()Lorg/json/JSONObject;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    :cond_0
    return-object v1

    .line 25
    :catch_0
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    .line 26
    .line 27
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method public static synthetic n()Lcom/byazt/dk/uj;
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/dk/z;->sp()Lcom/byazt/dk/uj;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static sp()Lcom/byazt/dk/uj;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/dk/z;->ve:Lcom/byazt/dk/uj;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/byazt/dk/u;->uj()Lcom/byazt/dk/uj;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/byazt/dk/z;->ve:Lcom/byazt/dk/uj;

    .line 10
    .line 11
    :cond_0
    sget-object v0, Lcom/byazt/dk/z;->ve:Lcom/byazt/dk/uj;

    .line 12
    .line 13
    return-object v0
.end method

.method public static tt()Lcom/byazt/di/da;
    .locals 1

    .line 2
    invoke-static {}, Lcom/byazt/dk/z;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/dk/z;->c(Landroid/content/Context;)V

    .line 3
    invoke-static {}, Lcom/byazt/dk/z;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/di/da;->c(Landroid/content/Context;)Lcom/byazt/di/da;

    move-result-object v0

    return-object v0
.end method

.method private static tt(Lcom/byazt/e/ve;)Lorg/json/JSONObject;
    .locals 4

    .line 45
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "category"

    .line 46
    invoke-virtual {p0}, Lcom/byazt/e/ve;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "tag"

    .line 47
    invoke-virtual {p0}, Lcom/byazt/e/ve;->tt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "label"

    .line 48
    invoke-virtual {p0}, Lcom/byazt/e/ve;->ve()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "isAd"

    .line 49
    invoke-virtual {p0}, Lcom/byazt/e/ve;->uj()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "adId"

    .line 50
    invoke-virtual {p0}, Lcom/byazt/e/ve;->n()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "logExtra"

    .line 51
    invoke-virtual {p0}, Lcom/byazt/e/ve;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "extValue"

    .line 52
    invoke-virtual {p0}, Lcom/byazt/e/ve;->sp()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "extJson"

    .line 53
    invoke-virtual {p0}, Lcom/byazt/e/ve;->x()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "paramsJson"

    .line 54
    invoke-virtual {p0}, Lcom/byazt/e/ve;->i()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "eventSource"

    .line 55
    invoke-virtual {p0}, Lcom/byazt/e/ve;->sl()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "extraObject"

    .line 56
    invoke-virtual {p0}, Lcom/byazt/e/ve;->t()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "clickTrackUrl"

    .line 57
    invoke-virtual {p0}, Lcom/byazt/e/ve;->da()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "isV3"

    .line 58
    invoke-virtual {p0}, Lcom/byazt/e/ve;->u()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "V3EventName"

    .line 59
    invoke-virtual {p0}, Lcom/byazt/e/ve;->yp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "V3EventParams"

    .line 60
    invoke-virtual {p0}, Lcom/byazt/e/ve;->z()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 61
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method private static tt(Lcom/byazt/su/DownloadModel;)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    .line 37
    :cond_0
    invoke-interface {p0}, Lcom/byazt/su/DownloadModel;->getExtra()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "open_ad_sdk_download_extra"

    .line 38
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string v1, "material_meta"

    .line 39
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tag"

    .line 40
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "self_reward_callback"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p0}, Lcom/byazt/hu/u;->c(Lcom/byazt/su/DownloadModel;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 42
    invoke-static {}, Lcom/byazt/omf/tt;->c()Lcom/byazt/it/ve;

    move-result-object p0

    const-string v2, "save_jump_success_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {p0, v2, v3, v4}, Lcom/byazt/it/c;->put(Ljava/lang/String;J)V

    .line 43
    invoke-static {}, Lcom/byazt/omf/tt;->c()Lcom/byazt/it/ve;

    move-result-object p0

    const-string v2, "save_jump_success_ad_tag"

    invoke-interface {p0, v2, v0}, Lcom/byazt/it/c;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/byazt/omf/tt;->c()Lcom/byazt/it/ve;

    move-result-object p0

    const-string v0, "save_download_open_app_success_meta"

    invoke-interface {p0, v0, v1}, Lcom/byazt/it/c;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static synthetic tt(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/dk/z;->ve(Ljava/lang/String;)V

    return-void
.end method

.method private static tt(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, ""

    .line 7
    :cond_1
    invoke-static {}, Lcom/byazt/dk/z;->x()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8
    :try_start_0
    invoke-static {v1}, Lcom/byazt/di/da;->c(Landroid/content/Context;)Lcom/byazt/di/da;

    move-result-object v3

    const-string v4, "pangolin"

    invoke-virtual {v3, v4}, Lcom/byazt/di/da;->c(Ljava/lang/String;)Lcom/byazt/d/c;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 9
    :catchall_0
    :cond_2
    invoke-static {v1}, Lcom/byazt/di/da;->c(Landroid/content/Context;)Lcom/byazt/di/da;

    move-result-object v3

    invoke-virtual {v3}, Lcom/byazt/di/da;->c()Lcom/byazt/d/c;

    move-result-object v3

    :goto_0
    if-nez v3, :cond_3

    return v0

    .line 10
    :cond_3
    new-instance v0, Lcom/byazt/e/c$c;

    invoke-direct {v0}, Lcom/byazt/e/c$c;-><init>()V

    const-string v4, "143"

    .line 11
    invoke-virtual {v0, v4}, Lcom/byazt/e/c$c;->tt(Ljava/lang/String;)Lcom/byazt/e/c$c;

    move-result-object v0

    const-string v4, "open_news"

    .line 12
    invoke-virtual {v0, v4}, Lcom/byazt/e/c$c;->c(Ljava/lang/String;)Lcom/byazt/e/c$c;

    move-result-object v0

    sget-object v4, Lcom/byazt/omf/p;->n:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v4}, Lcom/byazt/e/c$c;->ve(Ljava/lang/String;)Lcom/byazt/e/c$c;

    move-result-object v0

    sget v4, Lcom/byazt/omf/p;->uj:I

    .line 14
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/byazt/e/c$c;->uj(Ljava/lang/String;)Lcom/byazt/e/c$c;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/byazt/e/c$c;->c()Lcom/byazt/e/c;

    move-result-object v0

    .line 16
    new-instance v4, Lcom/byazt/dk/z$uj;

    invoke-direct {v4}, Lcom/byazt/dk/z$uj;-><init>()V

    invoke-interface {v3, v4}, Lcom/byazt/d/c;->c(Lcom/byazt/ou/i;)Lcom/byazt/d/c;

    move-result-object v3

    new-instance v4, Lcom/byazt/dk/z$tt;

    invoke-direct {v4}, Lcom/byazt/dk/z$tt;-><init>()V

    .line 17
    invoke-interface {v3, v4}, Lcom/byazt/d/c;->c(Lcom/byazt/ou/sp;)Lcom/byazt/d/c;

    move-result-object v3

    new-instance v4, Lcom/byazt/dk/z$n;

    invoke-direct {v4, v1}, Lcom/byazt/dk/z$n;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-interface {v3, v4}, Lcom/byazt/d/c;->c(Lcom/byazt/ou/u;)Lcom/byazt/d/c;

    move-result-object v3

    new-instance v4, Lcom/byazt/dk/z$ve;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/byazt/dk/z$ve;-><init>(Lcom/byazt/dk/z$1;)V

    .line 19
    invoke-interface {v3, v4}, Lcom/byazt/d/c;->c(Lcom/byazt/ou/x;)Lcom/byazt/d/c;

    move-result-object v3

    new-instance v4, Lcom/byazt/dk/z$9;

    invoke-direct {v4, p0}, Lcom/byazt/dk/z$9;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-interface {v3, v4}, Lcom/byazt/d/c;->c(Lcom/byazt/s/sp;)Lcom/byazt/d/c;

    move-result-object v3

    new-instance v4, Lcom/byazt/dk/z$8;

    invoke-direct {v4, p0}, Lcom/byazt/dk/z$8;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-interface {v3, v4}, Lcom/byazt/d/c;->c(Lcom/byazt/s/ve;)Lcom/byazt/d/c;

    move-result-object p0

    new-instance v3, Lcom/byazt/dk/z$7;

    invoke-direct {v3}, Lcom/byazt/dk/z$7;-><init>()V

    .line 22
    invoke-interface {p0, v3}, Lcom/byazt/d/c;->c(Lcom/byazt/ou/sl;)Lcom/byazt/d/c;

    move-result-object p0

    new-instance v3, Lcom/byazt/dk/z$c;

    invoke-direct {v3, v5}, Lcom/byazt/dk/z$c;-><init>(Lcom/byazt/dk/z$1;)V

    .line 23
    invoke-interface {p0, v3}, Lcom/byazt/d/c;->c(Lcom/byazt/ou/da;)Lcom/byazt/d/c;

    move-result-object p0

    new-instance v3, Lcom/byazt/dk/z$6;

    invoke-direct {v3}, Lcom/byazt/dk/z$6;-><init>()V

    .line 24
    invoke-interface {p0, v3}, Lcom/byazt/d/c;->c(Lcom/byazt/ou/tt;)Lcom/byazt/d/c;

    move-result-object p0

    .line 25
    invoke-interface {p0, v0}, Lcom/byazt/d/c;->c(Lcom/byazt/e/c;)Lcom/byazt/d/c;

    move-result-object p0

    new-instance v0, Lcom/byazt/dk/z$5;

    invoke-direct {v0}, Lcom/byazt/dk/z$5;-><init>()V

    .line 26
    invoke-interface {p0, v0}, Lcom/byazt/d/c;->c(Lcom/byazt/ou/rh;)Lcom/byazt/d/c;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".TTFileProvider"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-interface {p0, v0}, Lcom/byazt/d/c;->c(Ljava/lang/String;)Lcom/byazt/d/c;

    move-result-object p0

    new-instance v0, Lcom/byazt/dk/z$4;

    invoke-direct {v0}, Lcom/byazt/dk/z$4;-><init>()V

    .line 28
    invoke-interface {p0, v0}, Lcom/byazt/d/c;->c(Lcom/byazt/ou/gt;)Lcom/byazt/d/c;

    move-result-object p0

    new-instance v0, Lcom/byazt/dk/z$1;

    invoke-direct {v0}, Lcom/byazt/dk/z$1;-><init>()V

    .line 29
    invoke-interface {p0, v0}, Lcom/byazt/d/c;->c(Lcom/byazt/ou/ve;)Lcom/byazt/d/c;

    move-result-object p0

    .line 30
    invoke-static {}, Lcom/byazt/dk/z;->i()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/byazt/dk/z;->c(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/byazt/zz/DownloaderBuilder;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/byazt/d/c;->c(Lcom/byazt/zz/DownloaderBuilder;)Lcom/byazt/d/c;

    move-result-object p0

    .line 31
    invoke-interface {p0}, Lcom/byazt/d/c;->c()V

    .line 32
    invoke-static {}, Lcom/byazt/hu/c;->c()V

    .line 33
    sget-object p0, Lcom/byazt/omf/p;->x:Ljava/lang/String;

    const-string v0, "internal"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_4

    .line 34
    invoke-static {v1}, Lcom/byazt/di/da;->c(Landroid/content/Context;)Lcom/byazt/di/da;

    move-result-object p0

    invoke-virtual {p0}, Lcom/byazt/di/da;->uj()Lcom/byazt/pk/c;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/byazt/pk/c;->c(I)V

    .line 35
    invoke-static {v1}, Lcom/byazt/di/da;->c(Landroid/content/Context;)Lcom/byazt/di/da;

    move-result-object p0

    sget-object v1, Lcom/byazt/dk/z;->i:Lcom/byazt/yq/c;

    invoke-virtual {p0, v1}, Lcom/byazt/di/da;->c(Lcom/byazt/yq/c;)V

    .line 36
    invoke-static {}, Lcom/byazt/z/uj;->sl()Lcom/byazt/z/uj;

    move-result-object p0

    new-instance v1, Lcom/byazt/dk/z$10;

    invoke-direct {v1}, Lcom/byazt/dk/z$10;-><init>()V

    invoke-virtual {p0, v1}, Lcom/byazt/z/uj;->c(Lcom/byazt/c/h;)V

    :cond_4
    return v0
.end method

.method public static uj()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/byazt/dk/ve$c;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/byazt/dk/z;->sp:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public static ve()V
    .locals 2

    .line 6
    invoke-static {}, Lcom/byazt/dk/z;->tt()Lcom/byazt/di/da;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/di/da;->sp()V

    .line 7
    invoke-static {}, Lcom/byazt/dk/z;->sp()Lcom/byazt/dk/uj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    invoke-static {}, Lcom/byazt/dk/z;->sp()Lcom/byazt/dk/uj;

    move-result-object v0

    sget-object v1, Lcom/byazt/dk/z;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/byazt/dk/uj;->tt(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static ve(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/byazt/nn/a;->c(Ljava/lang/String;)Lcom/byazt/dd/tt;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {v0}, Lcom/byazt/dd/tt;->sp()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-static {}, Lcom/byazt/dk/z;->sp()Lcom/byazt/dk/uj;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 5
    invoke-static {}, Lcom/byazt/dk/z;->sp()Lcom/byazt/dk/uj;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Lcom/byazt/dk/uj;->c(Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private static x()Z
    .locals 2

    .line 1
    const-string v0, "internal"

    .line 2
    .line 3
    sget-object v1, Lcom/byazt/omf/p;->x:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method
