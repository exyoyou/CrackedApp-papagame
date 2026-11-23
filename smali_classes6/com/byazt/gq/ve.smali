.class public Lcom/byazt/gq/ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x34,
        0x36
    }
.end annotation


# static fields
.field public static c:Ljava/lang/String; = "ve"

.field public static volatile tt:Lcom/byazt/gq/ve;


# instance fields
.field public ve:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/byazt/gq/ve;->ve:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/byazt/gq/ve;->ve:Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    .line 14
    return-void
.end method

.method public static c()Lcom/byazt/gq/ve;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/gq/ve;->tt:Lcom/byazt/gq/ve;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/byazt/gq/ve;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/byazt/gq/ve;->tt:Lcom/byazt/gq/ve;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/byazt/gq/ve;

    invoke-direct {v1}, Lcom/byazt/gq/ve;-><init>()V

    sput-object v1, Lcom/byazt/gq/ve;->tt:Lcom/byazt/gq/ve;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/byazt/gq/ve;->tt:Lcom/byazt/gq/ve;

    return-object v0
.end method

.method private c(JZI)V
    .locals 8

    .line 21
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/byazt/zn/c;->c(JZI)V

    if-eqz p3, :cond_0

    .line 22
    invoke-static {}, Lcom/byazt/gq/t;->rl()Lcom/byazt/ou/gt;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-interface/range {v1 .. v7}, Lcom/byazt/ou/gt;->c(Landroid/content/Context;Lcom/byazt/su/DownloadModel;Lcom/byazt/su/DownloadController;Lcom/byazt/su/DownloadEventConfig;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static c(Lcom/byazt/t/DownloadInfo;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 26
    invoke-virtual {p0}, Lcom/byazt/t/DownloadInfo;->getStatus()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/byazt/t/DownloadInfo;->getStatus()I

    move-result p0

    const/4 v0, -0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public c(Lcom/byazt/gq/n;ILcom/byazt/su/DownloadModel;)V
    .locals 2

    .line 23
    invoke-static {}, Lcom/byazt/us/n;->c()Lcom/byazt/us/n;

    move-result-object v0

    new-instance v1, Lcom/byazt/gq/ve$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/byazt/gq/ve$1;-><init>(Lcom/byazt/gq/ve;Lcom/byazt/gq/n;ILcom/byazt/su/DownloadModel;)V

    .line 24
    invoke-virtual {p0}, Lcom/byazt/gq/ve;->tt()J

    move-result-wide p1

    .line 25
    invoke-virtual {v0, v1, p1, p2}, Lcom/byazt/us/n;->c(Lcom/byazt/us/uj;J)V

    return-void
.end method

.method public c(Lcom/byazt/gq/n;ZILcom/byazt/su/DownloadModel;)V
    .locals 4

    .line 7
    instance-of v0, p4, Lcom/byazt/ar/AdDownloadModel;

    if-eqz v0, :cond_0

    .line 8
    move-object v0, p4

    check-cast v0, Lcom/byazt/ar/AdDownloadModel;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadModel;->setFunnelType(I)Lcom/byazt/ar/AdDownloadModel;

    .line 9
    :cond_0
    invoke-interface {p4}, Lcom/byazt/su/DownloadModel;->getId()J

    move-result-wide v0

    const/4 p4, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p3, p4, :cond_6

    const/4 p4, 0x5

    if-eq p3, p4, :cond_4

    const/4 p1, 0x7

    if-eq p3, p1, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/byazt/gq/ve;->ve:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    if-eqz p2, :cond_2

    .line 11
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    move-result-object p1

    invoke-virtual {p1, v0, v1, v3}, Lcom/byazt/zn/c;->c(JI)V

    .line 12
    invoke-direct {p0, v0, v1, v3, v3}, Lcom/byazt/gq/ve;->c(JZI)V

    return-void

    :cond_2
    if-eqz p1, :cond_3

    .line 13
    invoke-static {}, Lcom/byazt/di/x;->c()Lcom/byazt/di/x;

    move-result-object p2

    invoke-virtual {p2}, Lcom/byazt/di/x;->tt()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    :cond_3
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/byazt/gq/ve;->c(JZI)V

    :goto_0
    return-void

    :cond_4
    if-nez p2, :cond_5

    .line 15
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/byazt/gq/ve;->c(JZI)V

    .line 16
    invoke-virtual {p1, v2}, Lcom/byazt/gq/n;->ve(Z)V

    return-void

    .line 17
    :cond_5
    invoke-direct {p0, v0, v1, v3, v3}, Lcom/byazt/gq/ve;->c(JZI)V

    return-void

    :cond_6
    const/4 p3, 0x2

    if-nez p2, :cond_7

    .line 18
    invoke-direct {p0, v0, v1, v2, p3}, Lcom/byazt/gq/ve;->c(JZI)V

    .line 19
    invoke-virtual {p1, v2}, Lcom/byazt/gq/n;->tt(Z)V

    return-void

    .line 20
    :cond_7
    invoke-direct {p0, v0, v1, v3, p3}, Lcom/byazt/gq/ve;->c(JZI)V

    return-void
.end method

.method public tt()J
    .locals 4

    .line 1
    invoke-static {}, Lcom/byazt/gq/t;->i()Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "quick_app_check_internal"

    .line 6
    .line 7
    const-wide/16 v2, 0x4b0

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method
