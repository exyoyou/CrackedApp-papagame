.class public Lcom/byazt/hw/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/dna/qp$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4d,
        0x14
    }
.end annotation


# static fields
.field public static i:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static x:Z


# instance fields
.field public a:J

.field public final c:Landroid/os/Handler;

.field public da:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public n:Z

.field public final sl:Landroid/content/Context;

.field public sp:J

.field public volatile t:Z

.field public final tt:Z

.field public u:Lcom/byazt/hm/c;

.field public uj:Z

.field public volatile ve:Z

.field public yp:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/byazt/hw/c;->ve:Z

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/byazt/hw/c;->uj:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/byazt/hw/c;->n:Z

    .line 11
    .line 12
    const-wide/16 v1, 0x0

    .line 13
    .line 14
    iput-wide v1, p0, Lcom/byazt/hw/c;->a:J

    .line 15
    .line 16
    iput-wide v1, p0, Lcom/byazt/hw/c;->sp:J

    .line 17
    .line 18
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/byazt/hw/c;->da:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    iput-boolean v0, p0, Lcom/byazt/hw/c;->t:Z

    .line 26
    .line 27
    const-string v0, "thread_service"

    .line 28
    .line 29
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/byazt/dna/qp;

    .line 34
    .line 35
    invoke-interface {v0}, Lcom/byazt/dna/qp;->getIOHandler()Landroid/os/Handler;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/byazt/hw/c;->c:Landroid/os/Handler;

    .line 40
    .line 41
    iput-object p1, p0, Lcom/byazt/hw/c;->sl:Landroid/content/Context;

    .line 42
    .line 43
    invoke-static {p1}, Lcom/byazt/nr/gt;->c(Landroid/content/Context;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    iput-boolean p1, p0, Lcom/byazt/hw/c;->tt:Z

    .line 48
    .line 49
    iput p2, p0, Lcom/byazt/hw/c;->yp:I

    .line 50
    .line 51
    return-void
.end method

.method public static synthetic c(Lcom/byazt/hw/c;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/byazt/hw/c;->sp:J

    return-wide p1
.end method

.method public static synthetic c(Lcom/byazt/hw/c;)Landroid/content/Context;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/hw/c;->sl:Landroid/content/Context;

    return-object p0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/get_domains/v4/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(I)V
    .locals 3

    .line 36
    invoke-virtual {p0}, Lcom/byazt/hw/c;->a()[Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x66

    if-eqz v0, :cond_3

    .line 37
    array-length v2, v0

    if-gt v2, p1, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    aget-object v0, v0, p1

    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 40
    invoke-direct {p0, v1}, Lcom/byazt/hw/c;->tt(I)V

    return-void

    .line 41
    :cond_1
    :try_start_0
    invoke-direct {p0, v0}, Lcom/byazt/hw/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 43
    invoke-direct {p0, v1}, Lcom/byazt/hw/c;->tt(I)V

    return-void

    .line 44
    :cond_2
    invoke-direct {p0}, Lcom/byazt/hw/c;->i()Lcom/byazt/hm/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/hm/c;->ve()Lcom/byazt/va/ve;

    move-result-object v1

    .line 45
    invoke-virtual {v1, v0}, Lcom/byazt/va/uj;->c(Ljava/lang/String;)V

    .line 46
    invoke-direct {p0, v1}, Lcom/byazt/hw/c;->c(Lcom/byazt/va/ve;)V

    .line 47
    new-instance v0, Lcom/byazt/hw/c$3;

    invoke-direct {v0, p0, p1}, Lcom/byazt/hw/c$3;-><init>(Lcom/byazt/hw/c;I)V

    invoke-virtual {v1, v0}, Lcom/byazt/va/ve;->c(Lcom/byazt/mh/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 48
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "try app config exception: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppConfig"

    invoke-static {v0, p1}, Lcom/byazt/lf/ve;->tt(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 49
    :cond_3
    :goto_0
    invoke-direct {p0, v1}, Lcom/byazt/hw/c;->tt(I)V

    return-void
.end method

.method public static c(Landroid/content/Context;I)V
    .locals 1

    .line 12
    sget-boolean v0, Lcom/byazt/hw/c;->x:Z

    if-nez v0, :cond_0

    return-void

    .line 13
    :cond_0
    invoke-static {}, Lcom/byazt/hw/sp;->c()Lcom/byazt/hw/sp;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/byazt/hw/sp;->c(ILandroid/content/Context;)Lcom/byazt/hw/c;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 14
    invoke-static {p0}, Lcom/byazt/nr/gt;->c(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    .line 15
    invoke-virtual {p1, p0}, Lcom/byazt/hw/c;->c(Z)V

    return-void

    .line 16
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/hw/c;->c()V

    :cond_2
    return-void
.end method

.method public static synthetic c(Lcom/byazt/hw/c;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/byazt/hw/c;->c(I)V

    return-void
.end method

.method private c(Lcom/byazt/va/ve;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 54
    :cond_0
    invoke-static {}, Lcom/byazt/hw/sp;->c()Lcom/byazt/hw/sp;

    move-result-object v0

    iget v1, p0, Lcom/byazt/hw/c;->yp:I

    invoke-virtual {v0, v1}, Lcom/byazt/hw/sp;->c(I)Lcom/byazt/hw/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/hw/n;->uj()Lcom/byazt/hw/tt;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 55
    invoke-static {}, Lcom/byazt/hw/sp;->c()Lcom/byazt/hw/sp;

    move-result-object v0

    iget v1, p0, Lcom/byazt/hw/c;->yp:I

    invoke-virtual {v0, v1}, Lcom/byazt/hw/sp;->c(I)Lcom/byazt/hw/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/hw/n;->uj()Lcom/byazt/hw/tt;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/hw/c;->sl:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/byazt/hw/tt;->c(Landroid/content/Context;)Landroid/location/Address;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 56
    invoke-virtual {v0}, Landroid/location/Address;->hasLatitude()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/location/Address;->hasLongitude()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/location/Address;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "latitude"

    invoke-virtual {p1, v2, v1}, Lcom/byazt/va/ve;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/location/Address;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "longitude"

    invoke-virtual {p1, v2, v1}, Lcom/byazt/va/ve;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "city"

    .line 61
    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/byazt/va/ve;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_2
    iget-boolean v0, p0, Lcom/byazt/hw/c;->ve:Z

    if-eqz v0, :cond_3

    const-string v0, "force"

    const-string v1, "1"

    .line 63
    invoke-virtual {p1, v0, v1}, Lcom/byazt/va/ve;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_3
    :try_start_0
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "abi"

    .line 65
    invoke-virtual {p1, v1, v0}, Lcom/byazt/va/ve;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 66
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 67
    :goto_1
    invoke-static {}, Lcom/byazt/hw/sp;->c()Lcom/byazt/hw/sp;

    move-result-object v0

    iget v1, p0, Lcom/byazt/hw/c;->yp:I

    invoke-virtual {v0, v1}, Lcom/byazt/hw/sp;->c(I)Lcom/byazt/hw/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/hw/n;->uj()Lcom/byazt/hw/tt;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/byazt/hw/sp;->c()Lcom/byazt/hw/sp;

    move-result-object v1

    iget v2, p0, Lcom/byazt/hw/c;->yp:I

    invoke-virtual {v1, v2}, Lcom/byazt/hw/sp;->c(I)Lcom/byazt/hw/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/hw/n;->uj()Lcom/byazt/hw/tt;

    move-result-object v1

    invoke-interface {v1}, Lcom/byazt/hw/tt;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "aid"

    invoke-virtual {p1, v1, v0}, Lcom/byazt/va/ve;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/byazt/hw/sp;->c()Lcom/byazt/hw/sp;

    move-result-object v0

    iget v1, p0, Lcom/byazt/hw/c;->yp:I

    invoke-virtual {v0, v1}, Lcom/byazt/hw/sp;->c(I)Lcom/byazt/hw/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/hw/n;->uj()Lcom/byazt/hw/tt;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/hw/tt;->ve()Ljava/lang/String;

    move-result-object v0

    const-string v1, "device_platform"

    invoke-virtual {p1, v1, v0}, Lcom/byazt/va/ve;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/byazt/hw/sp;->c()Lcom/byazt/hw/sp;

    move-result-object v0

    iget v1, p0, Lcom/byazt/hw/c;->yp:I

    invoke-virtual {v0, v1}, Lcom/byazt/hw/sp;->c(I)Lcom/byazt/hw/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/hw/n;->uj()Lcom/byazt/hw/tt;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/hw/tt;->tt()Ljava/lang/String;

    move-result-object v0

    const-string v1, "channel"

    invoke-virtual {p1, v1, v0}, Lcom/byazt/va/ve;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/byazt/hw/sp;->c()Lcom/byazt/hw/sp;

    move-result-object v1

    iget v2, p0, Lcom/byazt/hw/c;->yp:I

    invoke-virtual {v1, v2}, Lcom/byazt/hw/sp;->c(I)Lcom/byazt/hw/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/hw/n;->uj()Lcom/byazt/hw/tt;

    move-result-object v1

    invoke-interface {v1}, Lcom/byazt/hw/tt;->uj()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "version_code"

    invoke-virtual {p1, v1, v0}, Lcom/byazt/va/ve;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/byazt/hw/sp;->c()Lcom/byazt/hw/sp;

    move-result-object v0

    iget v1, p0, Lcom/byazt/hw/c;->yp:I

    invoke-virtual {v0, v1}, Lcom/byazt/hw/sp;->c(I)Lcom/byazt/hw/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/hw/n;->uj()Lcom/byazt/hw/tt;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/hw/tt;->n()Ljava/lang/String;

    move-result-object v0

    const-string v1, "custom_info_1"

    invoke-virtual {p1, v1, v0}, Lcom/byazt/va/ve;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public static c(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    .line 73
    sput-object p0, Lcom/byazt/hw/c;->i:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public static synthetic c(Lcom/byazt/hw/c;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1}, Lcom/byazt/hw/c;->c(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private c(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17
    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 18
    check-cast p1, Ljava/lang/String;

    .line 19
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 20
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "message"

    .line 21
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "success"

    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    .line 23
    :cond_1
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    .line 24
    move-object v0, p1

    check-cast v0, Lorg/json/JSONObject;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    if-nez v0, :cond_4

    return v1

    :cond_4
    const-string p1, "data"

    .line 25
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 26
    monitor-enter p0

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/byazt/hw/c;->sl:Landroid/content/Context;

    const-string v2, "ss_app_config"

    invoke-static {v0, v2, v1}, Lcom/byazt/nys/tt;->tt(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 28
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "last_refresh_time"

    .line 30
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 31
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 32
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-static {}, Lcom/byazt/hw/sp;->c()Lcom/byazt/hw/sp;

    move-result-object v0

    iget v1, p0, Lcom/byazt/hw/c;->yp:I

    invoke-virtual {v0, v1}, Lcom/byazt/hw/sp;->c(I)Lcom/byazt/hw/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/hw/n;->x()Lcom/byazt/hw/uj;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 34
    invoke-static {}, Lcom/byazt/hw/sp;->c()Lcom/byazt/hw/sp;

    move-result-object v0

    iget v1, p0, Lcom/byazt/hw/c;->yp:I

    invoke-virtual {v0, v1}, Lcom/byazt/hw/sp;->c(I)Lcom/byazt/hw/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/hw/n;->x()Lcom/byazt/hw/uj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/hw/uj;->c(Lorg/json/JSONObject;)V

    :cond_5
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 35
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private i()Lcom/byazt/hm/c;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/hw/c;->u:Lcom/byazt/hm/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/byazt/hm/c$c;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/byazt/hm/c$c;-><init>()V

    .line 8
    .line 9
    .line 10
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 11
    .line 12
    const-wide/16 v2, 0xa

    .line 13
    .line 14
    invoke-virtual {v0, v2, v3, v1}, Lcom/byazt/hm/c$c;->c(JLjava/util/concurrent/TimeUnit;)Lcom/byazt/hm/c$c;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, v2, v3, v1}, Lcom/byazt/hm/c$c;->tt(JLjava/util/concurrent/TimeUnit;)Lcom/byazt/hm/c$c;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, v2, v3, v1}, Lcom/byazt/hm/c$c;->ve(JLjava/util/concurrent/TimeUnit;)Lcom/byazt/hm/c$c;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/byazt/hm/c$c;->c()Lcom/byazt/hm/c;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/byazt/hw/c;->u:Lcom/byazt/hm/c;

    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lcom/byazt/hw/c;->u:Lcom/byazt/hm/c;

    .line 33
    .line 34
    return-object v0
.end method

.method public static sp()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 10

    .line 1
    sget-object v0, Lcom/byazt/hw/c;->i:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/byazt/hw/c;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/byazt/hw/c;->i:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/byazt/jtc/uj;

    .line 13
    .line 14
    const/4 v3, 0x2

    .line 15
    const/4 v4, 0x2

    .line 16
    const-wide/16 v5, 0x14

    .line 17
    .line 18
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 19
    .line 20
    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 21
    .line 22
    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v9, Lcom/byazt/bwm/x;

    .line 26
    .line 27
    const-string v2, "tnc/AppConfig"

    .line 28
    .line 29
    invoke-direct {v9, v2}, Lcom/byazt/bwm/x;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    move-object v2, v1

    .line 33
    invoke-direct/range {v2 .. v9}, Lcom/byazt/jtc/uj;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 34
    .line 35
    .line 36
    sput-object v1, Lcom/byazt/hw/c;->i:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 37
    .line 38
    const/4 v2, 0x1

    .line 39
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 40
    .line 41
    .line 42
    :cond_0
    monitor-exit v0

    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v1

    .line 45
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw v1

    .line 47
    :cond_1
    :goto_0
    sget-object v0, Lcom/byazt/hw/c;->i:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 48
    .line 49
    return-object v0
.end method

.method public static synthetic tt(Lcom/byazt/hw/c;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/hw/c;->da:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private tt(I)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/byazt/hw/c;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public static synthetic tt(Lcom/byazt/hw/c;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/hw/c;->tt(I)V

    return-void
.end method

.method public static tt(Z)V
    .locals 0

    .line 3
    sput-boolean p0, Lcom/byazt/hw/c;->x:Z

    return-void
.end method

.method private uj(Z)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/byazt/hw/c;->n:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/byazt/hw/c;->uj:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/byazt/hw/c;->uj:Z

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/byazt/hw/c;->a:J

    .line 5
    iput-wide v0, p0, Lcom/byazt/hw/c;->sp:J

    :cond_1
    if-eqz p1, :cond_2

    const-wide/32 v0, 0x57e40

    goto :goto_0

    :cond_2
    const-wide/32 v0, 0x2932e00

    .line 6
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 7
    iget-wide v4, p0, Lcom/byazt/hw/c;->a:J

    sub-long v4, v2, v4

    cmp-long p1, v4, v0

    if-lez p1, :cond_4

    .line 8
    iget-wide v0, p0, Lcom/byazt/hw/c;->sp:J

    sub-long/2addr v2, v0

    const-wide/32 v0, 0x1d4c0

    cmp-long p1, v2, v0

    if-gtz p1, :cond_3

    iget-boolean p1, p0, Lcom/byazt/hw/c;->t:Z

    if-nez p1, :cond_4

    .line 9
    :cond_3
    invoke-virtual {p0}, Lcom/byazt/hw/c;->ve()Z

    :cond_4
    return-void
.end method

.method private x()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/byazt/hw/c;->a()[Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    array-length v0, v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-direct {p0, v1}, Lcom/byazt/hw/c;->c(I)V

    .line 13
    .line 14
    .line 15
    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public a()[Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/hw/sp;->c()Lcom/byazt/hw/sp;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/byazt/hw/c;->yp:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/byazt/hw/sp;->c(I)Lcom/byazt/hw/n;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/byazt/hw/n;->uj()Lcom/byazt/hw/tt;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-static {}, Lcom/byazt/hw/sp;->c()Lcom/byazt/hw/sp;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget v1, p0, Lcom/byazt/hw/c;->yp:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/byazt/hw/sp;->c(I)Lcom/byazt/hw/n;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/byazt/hw/n;->uj()Lcom/byazt/hw/tt;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0}, Lcom/byazt/hw/tt;->a()[Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v0, 0x0

    .line 37
    :goto_0
    if-eqz v0, :cond_1

    .line 38
    .line 39
    array-length v1, v0

    .line 40
    if-gtz v1, :cond_2

    .line 41
    .line 42
    :cond_1
    const/4 v0, 0x0

    .line 43
    new-array v0, v0, [Ljava/lang/String;

    .line 44
    .line 45
    :cond_2
    return-object v0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/byazt/hw/c;->c(Z)V

    return-void
.end method

.method public declared-synchronized c(Z)V
    .locals 4

    monitor-enter p0

    .line 6
    :try_start_0
    iget-boolean v0, p0, Lcom/byazt/hw/c;->tt:Z

    if-eqz v0, :cond_0

    .line 7
    invoke-direct {p0, p1}, Lcom/byazt/hw/c;->uj(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-void

    .line 8
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/byazt/hw/c;->a:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_1

    .line 9
    :try_start_2
    invoke-static {}, Lcom/byazt/hw/c;->sp()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    new-instance v0, Lcom/byazt/hw/c$1;

    invoke-direct {v0, p0}, Lcom/byazt/hw/c$1;-><init>(Lcom/byazt/hw/c;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    .line 11
    :catchall_0
    :cond_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/hw/c;->sl:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public handleMsg(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v0, 0x65

    .line 4
    .line 5
    const-string v1, "TNCManager"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eq p1, v0, :cond_2

    .line 9
    .line 10
    const/16 v0, 0x66

    .line 11
    .line 12
    if-eq p1, v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iput-boolean v2, p0, Lcom/byazt/hw/c;->n:Z

    .line 16
    .line 17
    iget-boolean p1, p0, Lcom/byazt/hw/c;->uj:Z

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/byazt/hw/c;->c()V

    .line 22
    .line 23
    .line 24
    :cond_1
    const-string p1, "doRefresh, error"

    .line 25
    .line 26
    invoke-static {v1, p1}, Lcom/byazt/lf/ve;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/byazt/hw/c;->da:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    .line 31
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void

    .line 35
    :cond_2
    iput-boolean v2, p0, Lcom/byazt/hw/c;->n:Z

    .line 36
    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 38
    .line 39
    .line 40
    move-result-wide v3

    .line 41
    iput-wide v3, p0, Lcom/byazt/hw/c;->a:J

    .line 42
    .line 43
    const-string p1, "doRefresh, succ"

    .line 44
    .line 45
    invoke-static {v1, p1}, Lcom/byazt/lf/ve;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-boolean p1, p0, Lcom/byazt/hw/c;->uj:Z

    .line 49
    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/byazt/hw/c;->c()V

    .line 53
    .line 54
    .line 55
    :cond_3
    iget-object p1, p0, Lcom/byazt/hw/c;->da:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    .line 57
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public n()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/byazt/hw/c;->tt:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/byazt/hw/c;->uj()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/hw/c;->tt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    :catchall_0
    return-void
.end method

.method public declared-synchronized tt()V
    .locals 5

    monitor-enter p0

    .line 4
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/byazt/hw/c;->a:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/hw/c;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    invoke-static {}, Lcom/byazt/hw/sp;->c()Lcom/byazt/hw/sp;

    move-result-object v0

    iget v1, p0, Lcom/byazt/hw/c;->yp:I

    invoke-virtual {v0, v1}, Lcom/byazt/hw/sp;->c(I)Lcom/byazt/hw/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/hw/n;->x()Lcom/byazt/hw/uj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    invoke-static {}, Lcom/byazt/hw/sp;->c()Lcom/byazt/hw/sp;

    move-result-object v0

    iget v1, p0, Lcom/byazt/hw/c;->yp:I

    invoke-virtual {v0, v1}, Lcom/byazt/hw/sp;->c(I)Lcom/byazt/hw/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/hw/n;->x()Lcom/byazt/hw/uj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/hw/uj;->tt()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :cond_0
    monitor-exit p0

    return-void

    .line 10
    :catch_0
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized uj()V
    .locals 5

    monitor-enter p0

    .line 10
    :try_start_0
    iget-boolean v0, p0, Lcom/byazt/hw/c;->t:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 11
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 12
    :try_start_1
    iput-boolean v0, p0, Lcom/byazt/hw/c;->t:Z

    .line 13
    iget-object v0, p0, Lcom/byazt/hw/c;->sl:Landroid/content/Context;

    const-string v1, "ss_app_config"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/byazt/nys/tt;->tt(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_refresh_time"

    const-wide/16 v2, 0x0

    .line 14
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    move-wide v0, v2

    .line 16
    :cond_1
    iput-wide v0, p0, Lcom/byazt/hw/c;->a:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :try_start_2
    invoke-static {}, Lcom/byazt/hw/sp;->c()Lcom/byazt/hw/sp;

    move-result-object v0

    iget v1, p0, Lcom/byazt/hw/c;->yp:I

    invoke-virtual {v0, v1}, Lcom/byazt/hw/sp;->c(I)Lcom/byazt/hw/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/hw/n;->x()Lcom/byazt/hw/uj;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 18
    invoke-static {}, Lcom/byazt/hw/sp;->c()Lcom/byazt/hw/sp;

    move-result-object v0

    iget v1, p0, Lcom/byazt/hw/c;->yp:I

    invoke-virtual {v0, v1}, Lcom/byazt/hw/sp;->c(I)Lcom/byazt/hw/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/hw/n;->x()Lcom/byazt/hw/uj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/hw/uj;->c()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    :cond_2
    monitor-exit p0

    return-void

    .line 20
    :catch_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public ve(Z)V
    .locals 2

    const-string v0, "TNCManager"

    const-string v1, "doRefresh, actual request"

    .line 3
    invoke-static {v0, v1}, Lcom/byazt/lf/ve;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/byazt/hw/c;->uj()V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/byazt/hw/c;->n:Z

    if-nez p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/byazt/hw/c;->c:Landroid/os/Handler;

    const/16 v0, 0x66

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 7
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/byazt/hw/c;->x()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 8
    :catch_0
    iget-object p1, p0, Lcom/byazt/hw/c;->da:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public ve()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "doRefresh: updating state "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/byazt/hw/c;->da:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TNCManager"

    invoke-static {v1, v0}, Lcom/byazt/lf/ve;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/byazt/hw/c;->sp()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/byazt/hw/c$2;

    invoke-direct {v1, p0}, Lcom/byazt/hw/c$2;-><init>(Lcom/byazt/hw/c;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method
