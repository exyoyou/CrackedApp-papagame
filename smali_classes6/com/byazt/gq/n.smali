.class public Lcom/byazt/gq/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/gq/sp;
.implements Lcom/byazt/hu/yp$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x34,
        0x2e
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/gq/n$tt;,
        Lcom/byazt/gq/n$c;,
        Lcom/byazt/gq/n$ve;
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/String; = "n"


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final da:Lcom/byazt/c/IDownloadListener;

.field public final gt:Z

.field public i:Lcom/byazt/gq/n$ve;

.field public m:Lcom/byazt/su/DownloadEventConfig;

.field public my:Z

.field public n:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public nu:Lcom/byazt/su/DownloadController;

.field public rh:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/byazt/ou/OnItemClickListener;",
            ">;"
        }
    .end annotation
.end field

.field public rl:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/byazt/ou/IDownloadButtonClickListener;",
            ">;"
        }
    .end annotation
.end field

.field public sl:Z

.field public sp:Lcom/byazt/e/DownloadShortInfo;

.field public t:J

.field public final tt:Lcom/byazt/hu/yp;

.field public u:Ljava/lang/String;

.field public uj:Lcom/byazt/gq/uj;

.field public ve:Lcom/byazt/gq/x;

.field public x:Lcom/byazt/t/DownloadInfo;

.field public yp:J

.field public z:Lcom/byazt/su/DownloadModel;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/byazt/hu/yp;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1, p0}, Lcom/byazt/hu/yp;-><init>(Landroid/os/Looper;Lcom/byazt/hu/yp$c;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/byazt/gq/n;->tt:Lcom/byazt/hu/yp;

    .line 14
    .line 15
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/byazt/gq/n;->a:Ljava/util/Map;

    .line 21
    .line 22
    new-instance v1, Lcom/byazt/gq/x$c;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Lcom/byazt/gq/x$c;-><init>(Lcom/byazt/hu/yp;)V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/byazt/gq/n;->da:Lcom/byazt/c/IDownloadListener;

    .line 28
    .line 29
    const-wide/16 v1, -0x1

    .line 30
    .line 31
    iput-wide v1, p0, Lcom/byazt/gq/n;->yp:J

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    iput-object v1, p0, Lcom/byazt/gq/n;->z:Lcom/byazt/su/DownloadModel;

    .line 35
    .line 36
    iput-object v1, p0, Lcom/byazt/gq/n;->m:Lcom/byazt/su/DownloadEventConfig;

    .line 37
    .line 38
    iput-object v1, p0, Lcom/byazt/gq/n;->nu:Lcom/byazt/su/DownloadController;

    .line 39
    .line 40
    new-instance v1, Lcom/byazt/gq/x;

    .line 41
    .line 42
    invoke-direct {v1, p0}, Lcom/byazt/gq/x;-><init>(Lcom/byazt/gq/n;)V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lcom/byazt/gq/n;->ve:Lcom/byazt/gq/x;

    .line 46
    .line 47
    new-instance v1, Lcom/byazt/gq/uj;

    .line 48
    .line 49
    invoke-direct {v1, v0}, Lcom/byazt/gq/uj;-><init>(Landroid/os/Handler;)V

    .line 50
    .line 51
    .line 52
    iput-object v1, p0, Lcom/byazt/gq/n;->uj:Lcom/byazt/gq/uj;

    .line 53
    .line 54
    invoke-static {}, Lcom/byazt/k/c;->ve()Lcom/byazt/k/c;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v1, "ttdownloader_callback_twice"

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lcom/byazt/k/c;->c(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iput-boolean v0, p0, Lcom/byazt/gq/n;->gt:Z

    .line 65
    .line 66
    return-void
.end method

.method public static synthetic a(Lcom/byazt/gq/n;)Lcom/byazt/gq/uj;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/gq/n;->uj:Lcom/byazt/gq/uj;

    return-object p0
.end method

.method private a(Z)V
    .locals 13

    .line 3
    sget-object v0, Lcom/byazt/gq/n;->c:Ljava/lang/String;

    const-string v1, "pBCD"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/byazt/hu/sl;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 4
    invoke-direct {p0}, Lcom/byazt/gq/n;->z()Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    .line 5
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object v0

    iget-wide v1, p0, Lcom/byazt/gq/n;->yp:J

    invoke-virtual {v0, v1, v2}, Lcom/byazt/nn/a;->n(J)Lcom/byazt/nn/n;

    move-result-object v0

    .line 6
    iget-boolean v1, p0, Lcom/byazt/gq/n;->my:Z

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/byazt/gq/n;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {p0, v3}, Lcom/byazt/gq/n;->uj(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    iget-object v0, v0, Lcom/byazt/nn/n;->uj:Lcom/byazt/su/DownloadController;

    if-eqz v0, :cond_0

    .line 10
    invoke-interface {v0}, Lcom/byazt/su/DownloadController;->isAutoDownloadOnCardShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p0, p1, v4}, Lcom/byazt/gq/n;->c(ZZ)V

    :cond_0
    return-void

    .line 12
    :cond_1
    invoke-virtual {p0, p1, v4}, Lcom/byazt/gq/n;->c(ZZ)V

    return-void

    .line 13
    :cond_2
    iget-object v1, p0, Lcom/byazt/gq/n;->z:Lcom/byazt/su/DownloadModel;

    invoke-interface {v1}, Lcom/byazt/su/DownloadModel;->isAd()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/byazt/nn/n;->uj:Lcom/byazt/su/DownloadController;

    if-eqz v1, :cond_3

    .line 14
    invoke-interface {v1}, Lcom/byazt/su/DownloadController;->enableShowComplianceDialog()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    if-eqz v1, :cond_3

    .line 15
    invoke-static {}, Lcom/byazt/lr/tt;->c()Lcom/byazt/lr/tt;

    move-result-object v1

    iget-object v2, v0, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    invoke-virtual {v1, v2}, Lcom/byazt/lr/tt;->c(Lcom/byazt/su/DownloadModel;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 16
    invoke-static {}, Lcom/byazt/lr/tt;->c()Lcom/byazt/lr/tt;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/byazt/lr/tt;->c(Lcom/byazt/nn/n;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 17
    :cond_3
    invoke-virtual {p0, p1, v4}, Lcom/byazt/gq/n;->c(ZZ)V

    return-void

    .line 18
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "pBCD continue download, status:"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/byazt/gq/n;->x:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v5}, Lcom/byazt/t/DownloadInfo;->getStatus()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/byazt/hu/sl;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 19
    iget-object v0, p0, Lcom/byazt/gq/n;->x:Lcom/byazt/t/DownloadInfo;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/byazt/gq/n;->z:Lcom/byazt/su/DownloadModel;

    if-eqz v1, :cond_5

    .line 20
    invoke-interface {v1}, Lcom/byazt/su/DownloadModel;->isNeedWifi()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/t/DownloadInfo;->setOnlyWifi(Z)V

    .line 21
    :cond_5
    iget-object v0, p0, Lcom/byazt/gq/n;->x:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getStatus()I

    move-result v0

    .line 22
    iget-object v1, p0, Lcom/byazt/gq/n;->x:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v1

    .line 23
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object v2

    iget-object v5, p0, Lcom/byazt/gq/n;->x:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v2, v5}, Lcom/byazt/nn/a;->c(Lcom/byazt/t/DownloadInfo;)Lcom/byazt/dd/tt;

    move-result-object v2

    const/4 v12, -0x2

    if-eq v0, v12, :cond_b

    const/4 v5, -0x1

    if-ne v0, v5, :cond_6

    goto/16 :goto_0

    .line 24
    :cond_6
    invoke-static {v0}, Lcom/byazt/gq/z;->c(I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 25
    iget-object v5, p0, Lcom/byazt/gq/n;->z:Lcom/byazt/su/DownloadModel;

    invoke-interface {v5}, Lcom/byazt/su/DownloadModel;->enablePause()Z

    move-result v5

    if-nez v5, :cond_7

    return-void

    .line 26
    :cond_7
    iget-object v5, p0, Lcom/byazt/gq/n;->uj:Lcom/byazt/gq/uj;

    invoke-virtual {v5, v4}, Lcom/byazt/gq/uj;->c(Z)V

    .line 27
    invoke-static {}, Lcom/byazt/sd/x;->c()Lcom/byazt/sd/x;

    move-result-object v5

    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object v6

    iget-wide v7, p0, Lcom/byazt/gq/n;->yp:J

    invoke-virtual {v6, v7, v8}, Lcom/byazt/nn/a;->uj(J)Lcom/byazt/dd/tt;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/byazt/sd/x;->tt(Lcom/byazt/dd/tt;)V

    .line 28
    invoke-static {v2}, Lcom/byazt/hu/n;->c(Lcom/byazt/dd/c;)Lcom/byazt/k/c;

    move-result-object v5

    const-string v6, "cancel_pause_optimise_switch"

    invoke-virtual {v5, v6, v3}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_8

    const/4 v3, 0x1

    :cond_8
    if-eqz v3, :cond_9

    .line 29
    new-instance v3, Lcom/byazt/gq/n$5;

    invoke-direct {v3, p0}, Lcom/byazt/gq/n$5;-><init>(Lcom/byazt/gq/n;)V

    .line 30
    invoke-static {}, Lcom/byazt/tg/uj;->c()Lcom/byazt/tg/uj;

    move-result-object v4

    new-instance v11, Lcom/byazt/gq/n$6;

    move-object v5, v11

    move-object v6, p0

    move v7, v1

    move v8, p1

    move-object v9, v2

    move v10, v0

    invoke-direct/range {v5 .. v10}, Lcom/byazt/gq/n$6;-><init>(Lcom/byazt/gq/n;IZLcom/byazt/dd/tt;I)V

    invoke-virtual {v4, v2, v0, v11, v3}, Lcom/byazt/tg/uj;->c(Lcom/byazt/dd/tt;ILcom/byazt/tg/x;Lcom/byazt/de/ve;)V

    return-void

    .line 31
    :cond_9
    invoke-static {}, Lcom/byazt/tg/sl;->c()Lcom/byazt/tg/sl;

    move-result-object v3

    new-instance v4, Lcom/byazt/gq/n$7;

    move-object v5, v4

    move-object v6, p0

    move v7, v1

    move v8, p1

    move-object v9, v2

    move v10, v0

    invoke-direct/range {v5 .. v10}, Lcom/byazt/gq/n$7;-><init>(Lcom/byazt/gq/n;IZLcom/byazt/dd/tt;I)V

    invoke-virtual {v3, v2, v0, v4}, Lcom/byazt/tg/sl;->c(Lcom/byazt/dd/tt;ILcom/byazt/tg/x;)V

    return-void

    .line 32
    :cond_a
    iget-object v2, p0, Lcom/byazt/gq/n;->ve:Lcom/byazt/gq/x;

    iget-object v3, p0, Lcom/byazt/gq/n;->x:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v2, v3, p1}, Lcom/byazt/gq/x;->c(Lcom/byazt/t/DownloadInfo;Z)V

    .line 33
    iget-object p1, p0, Lcom/byazt/gq/n;->x:Lcom/byazt/t/DownloadInfo;

    invoke-direct {p0, v1, v0, p1}, Lcom/byazt/gq/n;->c(IILcom/byazt/t/DownloadInfo;)V

    goto :goto_1

    .line 34
    :cond_b
    :goto_0
    iget-object v5, p0, Lcom/byazt/gq/n;->ve:Lcom/byazt/gq/x;

    iget-object v6, p0, Lcom/byazt/gq/n;->x:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v5, v6, p1}, Lcom/byazt/gq/x;->c(Lcom/byazt/t/DownloadInfo;Z)V

    if-eqz v2, :cond_c

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/byazt/dd/tt;->x(J)V

    .line 36
    iget-object p1, p0, Lcom/byazt/gq/n;->x:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getCurBytes()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/byazt/dd/tt;->i(J)V

    .line 37
    :cond_c
    iget-object p1, p0, Lcom/byazt/gq/n;->x:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {p1, v3}, Lcom/byazt/t/DownloadInfo;->setDownloadFromReserveWifi(Z)V

    .line 38
    iget-object p1, p0, Lcom/byazt/gq/n;->uj:Lcom/byazt/gq/uj;

    new-instance v11, Lcom/byazt/nn/n;

    iget-wide v6, p0, Lcom/byazt/gq/n;->yp:J

    iget-object v8, p0, Lcom/byazt/gq/n;->z:Lcom/byazt/su/DownloadModel;

    invoke-direct {p0}, Lcom/byazt/gq/n;->t()Lcom/byazt/su/DownloadEventConfig;

    move-result-object v9

    invoke-direct {p0}, Lcom/byazt/gq/n;->u()Lcom/byazt/su/DownloadController;

    move-result-object v10

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/byazt/nn/n;-><init>(JLcom/byazt/su/DownloadModel;Lcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;)V

    invoke-virtual {p1, v11}, Lcom/byazt/gq/uj;->c(Lcom/byazt/nn/n;)V

    .line 39
    iget-object v5, p0, Lcom/byazt/gq/n;->uj:Lcom/byazt/gq/uj;

    iget-object p1, p0, Lcom/byazt/gq/n;->x:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getCurBytes()J

    move-result-wide v7

    iget-object p1, p0, Lcom/byazt/gq/n;->x:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getTotalBytes()J

    move-result-wide v9

    new-instance v11, Lcom/byazt/gq/n$3;

    invoke-direct {v11, p0, v1, v0}, Lcom/byazt/gq/n$3;-><init>(Lcom/byazt/gq/n;II)V

    move v6, v1

    invoke-virtual/range {v5 .. v11}, Lcom/byazt/gq/uj;->c(IJJLcom/byazt/gq/n$c;)V

    if-ne v0, v12, :cond_d

    .line 40
    invoke-static {v2}, Lcom/byazt/hu/n;->c(Lcom/byazt/dd/c;)Lcom/byazt/k/c;

    move-result-object p1

    const-string v0, "show_pause_continue_toast"

    invoke-virtual {p1, v0, v3}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v4, :cond_d

    .line 41
    invoke-static {}, Lcom/byazt/di/x;->c()Lcom/byazt/di/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/di/x;->tt()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/byazt/gq/n$4;

    invoke-direct {v0, p0}, Lcom/byazt/gq/n$4;-><init>(Lcom/byazt/gq/n;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_d
    :goto_1
    return-void
.end method

.method public static synthetic c(Lcom/byazt/gq/n;)Landroid/content/Context;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/gq/n;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/gq/n;Lcom/byazt/t/DownloadInfo;)Lcom/byazt/t/DownloadInfo;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/gq/n;->x:Lcom/byazt/t/DownloadInfo;

    return-object p1
.end method

.method private c(IILcom/byazt/t/DownloadInfo;)V
    .locals 1
    .param p3    # Lcom/byazt/t/DownloadInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 96
    invoke-static {}, Lcom/byazt/k/c;->ve()Lcom/byazt/k/c;

    move-result-object p3

    const-string v0, "fix_click_start"

    invoke-virtual {p3, v0}, Lcom/byazt/k/c;->c(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, -0x3

    if-eq p2, p3, :cond_0

    .line 97
    invoke-static {}, Lcom/byazt/zz/uj;->c()Lcom/byazt/zz/uj;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/byazt/zz/uj;->n(I)Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    .line 98
    invoke-virtual {p0, p1, p1}, Lcom/byazt/gq/n;->c(ZZ)V

    return-void

    .line 99
    :cond_0
    invoke-static {}, Lcom/byazt/z/uj;->sl()Lcom/byazt/z/uj;

    move-result-object p3

    invoke-static {}, Lcom/byazt/gq/t;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p3, v0, p1, p2}, Lcom/byazt/z/uj;->c(Landroid/content/Context;II)V

    return-void

    .line 100
    :cond_1
    invoke-static {}, Lcom/byazt/z/uj;->sl()Lcom/byazt/z/uj;

    move-result-object p3

    invoke-static {}, Lcom/byazt/gq/t;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p3, v0, p1, p2}, Lcom/byazt/z/uj;->c(Landroid/content/Context;II)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/gq/n;IILcom/byazt/t/DownloadInfo;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/gq/n;->c(IILcom/byazt/t/DownloadInfo;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/gq/n;Z)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/byazt/gq/n;->sp(Z)V

    return-void
.end method

.method private c(Lcom/byazt/t/DownloadInfo;)V
    .locals 2

    .line 101
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    .line 102
    iput v1, v0, Landroid/os/Message;->what:I

    .line 103
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 104
    iget-object p1, p0, Lcom/byazt/gq/n;->tt:Lcom/byazt/hu/yp;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static synthetic da(Lcom/byazt/gq/n;)Lcom/byazt/c/IDownloadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/gq/n;->da:Lcom/byazt/c/IDownloadListener;

    return-object p0
.end method

.method public static synthetic da()Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lcom/byazt/gq/n;->c:Ljava/lang/String;

    return-object v0
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/gq/n;->n:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/gq/n;->n:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/content/Context;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    invoke-static {}, Lcom/byazt/gq/t;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method

.method public static synthetic i(Lcom/byazt/gq/n;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/gq/n;->gt:Z

    return p0
.end method

.method private m()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/gq/n;->i:Lcom/byazt/gq/n$ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/gq/n;->i:Lcom/byazt/gq/n$ve;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    new-instance v0, Lcom/byazt/gq/n$ve;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-direct {v0, p0, v1}, Lcom/byazt/gq/n$ve;-><init>(Lcom/byazt/gq/n;Lcom/byazt/gq/n$1;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/byazt/gq/n;->i:Lcom/byazt/gq/n$ve;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/byazt/gq/n;->u:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/byazt/gq/n;->i:Lcom/byazt/gq/n$ve;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/byazt/gq/n;->z:Lcom/byazt/su/DownloadModel;

    .line 38
    .line 39
    invoke-interface {v1}, Lcom/byazt/su/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-object v2, p0, Lcom/byazt/gq/n;->z:Lcom/byazt/su/DownloadModel;

    .line 44
    .line 45
    invoke-interface {v2}, Lcom/byazt/su/DownloadModel;->getPackageName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    iget-object v3, p0, Lcom/byazt/gq/n;->u:Ljava/lang/String;

    .line 50
    .line 51
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v0, v1}, Lcom/byazt/hu/tt;->c(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/byazt/gq/n;->i:Lcom/byazt/gq/n$ve;

    .line 60
    .line 61
    iget-object v1, p0, Lcom/byazt/gq/n;->z:Lcom/byazt/su/DownloadModel;

    .line 62
    .line 63
    invoke-interface {v1}, Lcom/byazt/su/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iget-object v2, p0, Lcom/byazt/gq/n;->z:Lcom/byazt/su/DownloadModel;

    .line 68
    .line 69
    invoke-interface {v2}, Lcom/byazt/su/DownloadModel;->getPackageName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-static {v0, v1}, Lcom/byazt/hu/tt;->c(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public static synthetic n(Lcom/byazt/gq/n;)Lcom/byazt/e/DownloadShortInfo;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/gq/n;->nu()Lcom/byazt/e/DownloadShortInfo;

    move-result-object p0

    return-object p0
.end method

.method private n(Z)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/byazt/gq/n;->z:Lcom/byazt/su/DownloadModel;

    invoke-static {v0}, Lcom/byazt/hu/n;->tt(Lcom/byazt/su/DownloadModel;)Lcom/byazt/k/c;

    move-result-object v0

    const-string v1, "notification_opt_2"

    invoke-virtual {v0, v1}, Lcom/byazt/k/c;->tt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/byazt/gq/n;->x:Lcom/byazt/t/DownloadInfo;

    if-eqz v0, :cond_0

    .line 8
    invoke-static {}, Lcom/byazt/n/tt;->c()Lcom/byazt/n/tt;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/gq/n;->x:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/n/tt;->a(I)V

    .line 9
    :cond_0
    invoke-direct {p0, p1}, Lcom/byazt/gq/n;->a(Z)V

    return-void
.end method

.method private nu()Lcom/byazt/e/DownloadShortInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/gq/n;->sp:Lcom/byazt/e/DownloadShortInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/byazt/e/DownloadShortInfo;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/byazt/e/DownloadShortInfo;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/byazt/gq/n;->sp:Lcom/byazt/e/DownloadShortInfo;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/byazt/gq/n;->sp:Lcom/byazt/e/DownloadShortInfo;

    .line 13
    .line 14
    return-object v0
.end method

.method private sl()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/gq/n;->rh:Ljava/lang/ref/SoftReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/gq/n;->rh:Ljava/lang/ref/SoftReference;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/byazt/ou/OnItemClickListener;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/byazt/gq/n;->z:Lcom/byazt/su/DownloadModel;

    .line 20
    .line 21
    invoke-direct {p0}, Lcom/byazt/gq/n;->t()Lcom/byazt/su/DownloadEventConfig;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-direct {p0}, Lcom/byazt/gq/n;->u()Lcom/byazt/su/DownloadController;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-interface {v0, v1, v2, v3}, Lcom/byazt/ou/OnItemClickListener;->onItemClick(Lcom/byazt/su/DownloadModel;Lcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;)V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/byazt/gq/n;->rh:Ljava/lang/ref/SoftReference;

    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    invoke-static {}, Lcom/byazt/gq/t;->tt()Lcom/byazt/ou/ve;

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Lcom/byazt/gq/n;->getContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Lcom/byazt/gq/n;->u()Lcom/byazt/su/DownloadController;

    .line 43
    .line 44
    .line 45
    invoke-direct {p0}, Lcom/byazt/gq/n;->t()Lcom/byazt/su/DownloadEventConfig;

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public static synthetic sp(Lcom/byazt/gq/n;)Lcom/byazt/t/DownloadInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/gq/n;->x:Lcom/byazt/t/DownloadInfo;

    return-object p0
.end method

.method private sp(Z)V
    .locals 16

    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/byazt/gq/n;->uj:Lcom/byazt/gq/uj;

    new-instance v8, Lcom/byazt/nn/n;

    iget-wide v3, v0, Lcom/byazt/gq/n;->yp:J

    iget-object v5, v0, Lcom/byazt/gq/n;->z:Lcom/byazt/su/DownloadModel;

    invoke-direct/range {p0 .. p0}, Lcom/byazt/gq/n;->t()Lcom/byazt/su/DownloadEventConfig;

    move-result-object v6

    invoke-direct/range {p0 .. p0}, Lcom/byazt/gq/n;->u()Lcom/byazt/su/DownloadController;

    move-result-object v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/byazt/nn/n;-><init>(JLcom/byazt/su/DownloadModel;Lcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;)V

    invoke-virtual {v1, v8}, Lcom/byazt/gq/uj;->c(Lcom/byazt/nn/n;)V

    .line 3
    iget-object v9, v0, Lcom/byazt/gq/n;->uj:Lcom/byazt/gq/uj;

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    new-instance v15, Lcom/byazt/gq/n$9;

    move/from16 v1, p1

    invoke-direct {v15, v0, v1}, Lcom/byazt/gq/n$9;-><init>(Lcom/byazt/gq/n;Z)V

    invoke-virtual/range {v9 .. v15}, Lcom/byazt/gq/uj;->c(IJJLcom/byazt/gq/n$c;)V

    return-void
.end method

.method private t()Lcom/byazt/su/DownloadEventConfig;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/gq/n;->m:Lcom/byazt/su/DownloadEventConfig;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/byazt/su/uj$c;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/byazt/su/uj$c;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/byazt/su/uj$c;->c()Lcom/byazt/su/uj;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :cond_0
    return-object v0
.end method

.method public static synthetic tt(Lcom/byazt/gq/n;)Lcom/byazt/gq/x;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/byazt/gq/n;->ve:Lcom/byazt/gq/x;

    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/gq/n;Z)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/byazt/gq/n;->x(Z)V

    return-void
.end method

.method private u()Lcom/byazt/su/DownloadController;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/gq/n;->nu:Lcom/byazt/su/DownloadController;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/byazt/su/ve;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/byazt/su/ve;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/byazt/gq/n;->nu:Lcom/byazt/su/DownloadController;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/byazt/gq/n;->nu:Lcom/byazt/su/DownloadController;

    .line 13
    .line 14
    return-object v0
.end method

.method public static synthetic uj(Lcom/byazt/gq/n;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/gq/n;->a:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/gq/n;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/gq/n;->yp:J

    return-wide v0
.end method

.method private ve(I)Z
    .locals 5

    .line 3
    invoke-virtual {p0}, Lcom/byazt/gq/n;->n()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/byazt/gq/n;->z:Lcom/byazt/su/DownloadModel;

    invoke-interface {v0}, Lcom/byazt/su/DownloadModel;->getQuickAppModel()Lcom/byazt/e/uj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/e/uj;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    goto :goto_0

    :cond_2
    const/4 v2, 0x5

    .line 5
    :goto_0
    iget-object v3, p0, Lcom/byazt/gq/n;->z:Lcom/byazt/su/DownloadModel;

    instance-of v4, v3, Lcom/byazt/ar/AdDownloadModel;

    if-eqz v4, :cond_3

    .line 6
    check-cast v3, Lcom/byazt/ar/AdDownloadModel;

    const/4 v4, 0x3

    .line 7
    invoke-virtual {v3, v4}, Lcom/byazt/ar/AdDownloadModel;->setFunnelType(I)Lcom/byazt/ar/AdDownloadModel;

    .line 8
    :cond_3
    invoke-static {}, Lcom/byazt/gq/t;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/byazt/hu/i;->ve(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    move-result-object v1

    iget-wide v3, p0, Lcom/byazt/gq/n;->yp:J

    invoke-virtual {v1, v3, v4, p1}, Lcom/byazt/zn/c;->c(JI)V

    .line 10
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    .line 11
    iput v2, p1, Landroid/os/Message;->what:I

    .line 12
    iget-object v1, p0, Lcom/byazt/gq/n;->z:Lcom/byazt/su/DownloadModel;

    invoke-interface {v1}, Lcom/byazt/su/DownloadModel;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 13
    invoke-static {}, Lcom/byazt/gq/ve;->c()Lcom/byazt/gq/ve;

    move-result-object p1

    iget-object v1, p0, Lcom/byazt/gq/n;->z:Lcom/byazt/su/DownloadModel;

    invoke-virtual {p1, p0, v2, v1}, Lcom/byazt/gq/ve;->c(Lcom/byazt/gq/n;ILcom/byazt/su/DownloadModel;)V

    goto :goto_1

    .line 14
    :cond_4
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    move-result-object p1

    iget-wide v2, p0, Lcom/byazt/gq/n;->yp:J

    invoke-virtual {p1, v2, v3, v1, v1}, Lcom/byazt/zn/c;->c(JZI)V

    :goto_1
    return v0
.end method

.method public static synthetic x(Lcom/byazt/gq/n;)Lcom/byazt/su/DownloadModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/gq/n;->z:Lcom/byazt/su/DownloadModel;

    return-object p0
.end method

.method private x(Z)V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/byazt/gq/n;->a:Ljava/util/Map;

    invoke-static {v0}, Lcom/byazt/gq/x;->c(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/su/DownloadStatusChangeListener;

    .line 3
    iget-object v2, p0, Lcom/byazt/gq/n;->z:Lcom/byazt/su/DownloadModel;

    invoke-direct {p0}, Lcom/byazt/gq/n;->u()Lcom/byazt/su/DownloadController;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/byazt/su/DownloadStatusChangeListener;->onDownloadStart(Lcom/byazt/su/DownloadModel;Lcom/byazt/su/DownloadController;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/byazt/gq/n;->ve:Lcom/byazt/gq/x;

    invoke-static {}, Lcom/byazt/gq/t;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/gq/n;->da:Lcom/byazt/c/IDownloadListener;

    invoke-virtual {v0, v1, v2}, Lcom/byazt/gq/x;->c(Landroid/content/Context;Lcom/byazt/c/IDownloadListener;)I

    move-result v0

    .line 5
    sget-object v1, Lcom/byazt/gq/n;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "beginDown id:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/byazt/hu/sl;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    if-eqz v0, :cond_3

    .line 6
    iget-object v2, p0, Lcom/byazt/gq/n;->x:Lcom/byazt/t/DownloadInfo;

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/byazt/k/c;->ve()Lcom/byazt/k/c;

    move-result-object v2

    const-string v4, "fix_click_start"

    invoke-virtual {v2, v4}, Lcom/byazt/k/c;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/byazt/gq/n;->ve:Lcom/byazt/gq/x;

    iget-object v2, p0, Lcom/byazt/gq/n;->x:Lcom/byazt/t/DownloadInfo;

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Lcom/byazt/gq/x;->c(Lcom/byazt/t/DownloadInfo;Z)V

    goto :goto_2

    :cond_2
    :goto_1
    if-eqz p1, :cond_4

    .line 8
    iget-object p1, p0, Lcom/byazt/gq/n;->ve:Lcom/byazt/gq/x;

    invoke-virtual {p1}, Lcom/byazt/gq/x;->c()V

    goto :goto_2

    .line 9
    :cond_3
    new-instance p1, Lcom/byazt/t/DownloadInfo$c;

    iget-object v2, p0, Lcom/byazt/gq/n;->z:Lcom/byazt/su/DownloadModel;

    invoke-interface {v2}, Lcom/byazt/su/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/byazt/t/DownloadInfo$c;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo$c;->c()Lcom/byazt/t/DownloadInfo;

    move-result-object p1

    const/4 v2, -0x1

    .line 10
    invoke-virtual {p1, v2}, Lcom/byazt/t/DownloadInfo;->setStatus(I)V

    .line 11
    invoke-direct {p0, p1}, Lcom/byazt/gq/n;->c(Lcom/byazt/t/DownloadInfo;)V

    .line 12
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    move-result-object p1

    iget-wide v4, p0, Lcom/byazt/gq/n;->yp:J

    new-instance v2, Lcom/byazt/m/BaseException;

    const/4 v6, 0x2

    const-string v7, "start download failed, id=0"

    invoke-direct {v2, v6, v7}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v4, v5, v2}, Lcom/byazt/zn/c;->c(JLcom/byazt/m/BaseException;)V

    .line 13
    invoke-static {}, Lcom/byazt/dm/ve;->c()Lcom/byazt/dm/ve;

    move-result-object p1

    const-string v2, "beginDown"

    invoke-virtual {p1, v2}, Lcom/byazt/dm/ve;->tt(Ljava/lang/String;)V

    .line 14
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/byazt/gq/n;->ve:Lcom/byazt/gq/x;

    invoke-virtual {p0}, Lcom/byazt/gq/n;->ve()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/byazt/gq/x;->c(Z)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "beginDown IC id:"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v3}, Lcom/byazt/hu/sl;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 16
    invoke-direct {p0}, Lcom/byazt/gq/n;->sl()V

    :cond_5
    return-void
.end method

.method private yp()V
    .locals 4

    .line 1
    sget-object v0, Lcom/byazt/gq/n;->c:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "pICD"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v0, v1, v2}, Lcom/byazt/hu/sl;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/byazt/gq/n;->ve:Lcom/byazt/gq/x;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/byazt/gq/n;->x:Lcom/byazt/t/DownloadInfo;

    .line 12
    .line 13
    invoke-virtual {v1, v3}, Lcom/byazt/gq/x;->uj(Lcom/byazt/t/DownloadInfo;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const-string v1, "pICD BC"

    .line 20
    .line 21
    invoke-static {v0, v1, v2}, Lcom/byazt/hu/sl;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, v0}, Lcom/byazt/gq/n;->a(Z)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    const-string v1, "pICD IC"

    .line 30
    .line 31
    invoke-static {v0, v1, v2}, Lcom/byazt/hu/sl;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Lcom/byazt/gq/n;->sl()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method private z()Z
    .locals 8

    .line 1
    invoke-static {}, Lcom/byazt/k/c;->ve()Lcom/byazt/k/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "fix_click_start"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/byazt/k/c;->c(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, -0x3

    .line 13
    const/4 v3, 0x1

    .line 14
    if-eqz v0, :cond_5

    .line 15
    .line 16
    iget-object v0, p0, Lcom/byazt/gq/n;->x:Lcom/byazt/t/DownloadInfo;

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    return v3

    .line 21
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getStatus()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-ne v0, v2, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/byazt/gq/n;->x:Lcom/byazt/t/DownloadInfo;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getCurBytes()J

    .line 30
    .line 31
    .line 32
    move-result-wide v4

    .line 33
    const-wide/16 v6, 0x0

    .line 34
    .line 35
    cmp-long v0, v4, v6

    .line 36
    .line 37
    if-gtz v0, :cond_1

    .line 38
    .line 39
    return v3

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/byazt/gq/n;->x:Lcom/byazt/t/DownloadInfo;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getStatus()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_4

    .line 47
    .line 48
    iget-object v0, p0, Lcom/byazt/gq/n;->x:Lcom/byazt/t/DownloadInfo;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getStatus()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    const/4 v2, -0x4

    .line 55
    if-ne v0, v2, :cond_2

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/byazt/gq/n;->x:Lcom/byazt/t/DownloadInfo;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getStatus()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iget-object v2, p0, Lcom/byazt/gq/n;->x:Lcom/byazt/t/DownloadInfo;

    .line 65
    .line 66
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getSavePath()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    iget-object v4, p0, Lcom/byazt/gq/n;->x:Lcom/byazt/t/DownloadInfo;

    .line 71
    .line 72
    invoke-virtual {v4}, Lcom/byazt/t/DownloadInfo;->getName()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-static {v0, v2, v4}, Lcom/byazt/w/a;->c(ILjava/lang/String;Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    return v3

    .line 83
    :catch_0
    :cond_3
    return v1

    .line 84
    :cond_4
    :goto_0
    return v3

    .line 85
    :cond_5
    iget-object v0, p0, Lcom/byazt/gq/n;->x:Lcom/byazt/t/DownloadInfo;

    .line 86
    .line 87
    if-nez v0, :cond_6

    .line 88
    .line 89
    return v3

    .line 90
    :cond_6
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getStatus()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eq v0, v2, :cond_7

    .line 95
    .line 96
    invoke-static {}, Lcom/byazt/gq/t;->getContext()Landroid/content/Context;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {v0}, Lcom/byazt/zz/Downloader;->getInstance(Landroid/content/Context;)Lcom/byazt/zz/Downloader;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iget-object v2, p0, Lcom/byazt/gq/n;->x:Lcom/byazt/t/DownloadInfo;

    .line 105
    .line 106
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    invoke-virtual {v0, v2}, Lcom/byazt/zz/Downloader;->canResume(I)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-nez v0, :cond_7

    .line 115
    .line 116
    return v3

    .line 117
    :cond_7
    iget-object v0, p0, Lcom/byazt/gq/n;->x:Lcom/byazt/t/DownloadInfo;

    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getStatus()I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-nez v0, :cond_8

    .line 124
    .line 125
    return v3

    .line 126
    :cond_8
    return v1
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/gq/n;->tt:Lcom/byazt/hu/yp;

    new-instance v1, Lcom/byazt/gq/n$2;

    invoke-direct {v1, p0}, Lcom/byazt/gq/n$2;-><init>(Lcom/byazt/gq/n;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(ILcom/byazt/su/DownloadStatusChangeListener;)Lcom/byazt/gq/n;
    .locals 3

    if-eqz p2, :cond_2

    .line 7
    invoke-static {}, Lcom/byazt/gq/t;->i()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "back_use_softref_listener"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 8
    iget-object v0, p0, Lcom/byazt/gq/n;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Lcom/byazt/gq/t;->i()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "use_weakref_listener"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 10
    iget-object v0, p0, Lcom/byazt/gq/n;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/byazt/gq/n;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public c(Landroid/content/Context;)Lcom/byazt/gq/n;
    .locals 1

    if-eqz p1, :cond_0

    .line 5
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/byazt/gq/n;->n:Ljava/lang/ref/WeakReference;

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/byazt/gq/t;->tt(Landroid/content/Context;)V

    return-object p0
.end method

.method public c(Lcom/byazt/su/DownloadController;)Lcom/byazt/gq/n;
    .locals 3

    .line 28
    iput-object p1, p0, Lcom/byazt/gq/n;->nu:Lcom/byazt/su/DownloadController;

    .line 29
    iget-object p1, p0, Lcom/byazt/gq/n;->z:Lcom/byazt/su/DownloadModel;

    invoke-static {p1}, Lcom/byazt/hu/n;->tt(Lcom/byazt/su/DownloadModel;)Lcom/byazt/k/c;

    move-result-object p1

    const-string v0, "force_auto_open"

    invoke-virtual {p1, v0}, Lcom/byazt/k/c;->tt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 30
    invoke-direct {p0}, Lcom/byazt/gq/n;->u()Lcom/byazt/su/DownloadController;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/byazt/su/DownloadController;->setLinkMode(I)V

    .line 31
    :cond_0
    invoke-static {}, Lcom/byazt/k/c;->ve()Lcom/byazt/k/c;

    move-result-object p1

    const-string v0, "fix_show_dialog"

    invoke-virtual {p1, v0}, Lcom/byazt/k/c;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 32
    iget-object p1, p0, Lcom/byazt/gq/n;->z:Lcom/byazt/su/DownloadModel;

    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getExtra()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "subprocess"

    .line 33
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1

    .line 34
    invoke-direct {p0}, Lcom/byazt/gq/n;->u()Lcom/byazt/su/DownloadController;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/byazt/su/DownloadController;->setEnableNewActivity(Z)V

    .line 35
    :cond_1
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object p1

    iget-wide v0, p0, Lcom/byazt/gq/n;->yp:J

    invoke-direct {p0}, Lcom/byazt/gq/n;->u()Lcom/byazt/su/DownloadController;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/byazt/nn/a;->c(JLcom/byazt/su/DownloadController;)V

    return-object p0
.end method

.method public c(Lcom/byazt/su/DownloadEventConfig;)Lcom/byazt/gq/n;
    .locals 3

    .line 36
    iput-object p1, p0, Lcom/byazt/gq/n;->m:Lcom/byazt/su/DownloadEventConfig;

    .line 37
    invoke-direct {p0}, Lcom/byazt/gq/n;->t()Lcom/byazt/su/DownloadEventConfig;

    move-result-object p1

    invoke-interface {p1}, Lcom/byazt/su/DownloadEventConfig;->getDownloadScene()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/byazt/gq/n;->my:Z

    .line 38
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object p1

    iget-wide v0, p0, Lcom/byazt/gq/n;->yp:J

    invoke-direct {p0}, Lcom/byazt/gq/n;->t()Lcom/byazt/su/DownloadEventConfig;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/byazt/nn/a;->c(JLcom/byazt/su/DownloadEventConfig;)V

    return-object p0
.end method

.method public c(Lcom/byazt/su/DownloadModel;)Lcom/byazt/gq/n;
    .locals 5

    if-eqz p1, :cond_3

    .line 12
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->isAd()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    .line 13
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getId()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getLogExtra()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    :cond_0
    invoke-static {}, Lcom/byazt/dm/ve;->c()Lcom/byazt/dm/ve;

    move-result-object v0

    const-string v1, "setDownloadModel ad error"

    invoke-virtual {v0, v1}, Lcom/byazt/dm/ve;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_1
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getId()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/byazt/ar/AdDownloadModel;

    if-eqz v0, :cond_2

    .line 16
    invoke-static {}, Lcom/byazt/dm/ve;->c()Lcom/byazt/dm/ve;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "setDownloadModel id=0"

    invoke-virtual {v0, v1, v2}, Lcom/byazt/dm/ve;->c(ZLjava/lang/String;)V

    .line 17
    invoke-static {}, Lcom/byazt/k/c;->ve()Lcom/byazt/k/c;

    move-result-object v0

    const-string v1, "fix_model_id"

    invoke-virtual {v0, v1}, Lcom/byazt/k/c;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18
    move-object v0, p1

    check-cast v0, Lcom/byazt/ar/AdDownloadModel;

    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/byazt/ar/AdDownloadModel;->setId(J)Lcom/byazt/ar/AdDownloadModel;

    .line 19
    :cond_2
    :goto_0
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/nn/a;->c(Lcom/byazt/su/DownloadModel;)V

    .line 20
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/gq/n;->yp:J

    .line 21
    iput-object p1, p0, Lcom/byazt/gq/n;->z:Lcom/byazt/su/DownloadModel;

    .line 22
    invoke-static {p1}, Lcom/byazt/gq/i;->c(Lcom/byazt/su/DownloadModel;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 23
    check-cast p1, Lcom/byazt/ar/AdDownloadModel;

    const-wide/16 v0, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/byazt/ar/AdDownloadModel;->setExtraValue(J)V

    .line 24
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object p1

    iget-wide v2, p0, Lcom/byazt/gq/n;->yp:J

    invoke-virtual {p1, v2, v3}, Lcom/byazt/nn/a;->uj(J)Lcom/byazt/dd/tt;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 25
    invoke-virtual {p1}, Lcom/byazt/dd/tt;->t()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-eqz v4, :cond_3

    .line 26
    invoke-virtual {p1, v0, v1}, Lcom/byazt/dd/tt;->n(J)V

    .line 27
    invoke-static {}, Lcom/byazt/nn/i;->c()Lcom/byazt/nn/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/nn/i;->c(Lcom/byazt/dd/tt;)V

    :cond_3
    return-object p0
.end method

.method public c(J)Lcom/byazt/gq/sp;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 73
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/byazt/nn/a;->c(J)Lcom/byazt/su/DownloadModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 74
    iput-object v0, p0, Lcom/byazt/gq/n;->z:Lcom/byazt/su/DownloadModel;

    .line 75
    iput-wide p1, p0, Lcom/byazt/gq/n;->yp:J

    .line 76
    iget-object v0, p0, Lcom/byazt/gq/n;->ve:Lcom/byazt/gq/x;

    invoke-virtual {v0, p1, p2}, Lcom/byazt/gq/x;->c(J)V

    goto :goto_0

    .line 77
    :cond_0
    invoke-static {}, Lcom/byazt/dm/ve;->c()Lcom/byazt/dm/ve;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "setModelId"

    invoke-virtual {p1, p2, v0}, Lcom/byazt/dm/ve;->c(ZLjava/lang/String;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public c(Lcom/byazt/ou/IDownloadButtonClickListener;)Lcom/byazt/gq/sp;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 107
    iput-object p1, p0, Lcom/byazt/gq/n;->rl:Ljava/lang/ref/SoftReference;

    goto :goto_0

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/byazt/gq/n;->rl:Ljava/lang/ref/SoftReference;

    :goto_0
    return-object p0
.end method

.method public c(Lcom/byazt/ou/OnItemClickListener;)Lcom/byazt/gq/sp;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcom/byazt/gq/n;->rh:Ljava/lang/ref/SoftReference;

    goto :goto_0

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/byazt/gq/n;->rh:Ljava/lang/ref/SoftReference;

    :goto_0
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/byazt/gq/sp;
    .locals 1

    .line 105
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iput-object p1, p0, Lcom/byazt/gq/n;->u:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public c()V
    .locals 5

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/byazt/gq/n;->sl:Z

    .line 42
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object v1

    iget-wide v2, p0, Lcom/byazt/gq/n;->yp:J

    invoke-direct {p0}, Lcom/byazt/gq/n;->t()Lcom/byazt/su/DownloadEventConfig;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/byazt/nn/a;->c(JLcom/byazt/su/DownloadEventConfig;)V

    .line 43
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object v1

    iget-wide v2, p0, Lcom/byazt/gq/n;->yp:J

    invoke-direct {p0}, Lcom/byazt/gq/n;->u()Lcom/byazt/su/DownloadController;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/byazt/nn/a;->c(JLcom/byazt/su/DownloadController;)V

    .line 44
    iget-object v1, p0, Lcom/byazt/gq/n;->ve:Lcom/byazt/gq/x;

    iget-wide v2, p0, Lcom/byazt/gq/n;->yp:J

    invoke-virtual {v1, v2, v3}, Lcom/byazt/gq/x;->c(J)V

    .line 45
    invoke-direct {p0}, Lcom/byazt/gq/n;->m()V

    .line 46
    invoke-static {}, Lcom/byazt/gq/t;->i()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "enable_empty_listener"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/byazt/gq/n;->a:Ljava/util/Map;

    const/high16 v1, -0x80000000

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/byazt/ou/c;

    invoke-direct {v0}, Lcom/byazt/ou/c;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/byazt/gq/n;->c(ILcom/byazt/su/DownloadStatusChangeListener;)Lcom/byazt/gq/n;

    :cond_0
    return-void
.end method

.method public c(Landroid/os/Message;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 78
    iget-boolean v0, p0, Lcom/byazt/gq/n;->sl:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 80
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/byazt/t/DownloadInfo;

    iput-object v0, p0, Lcom/byazt/gq/n;->x:Lcom/byazt/t/DownloadInfo;

    .line 81
    iget-object v0, p0, Lcom/byazt/gq/n;->ve:Lcom/byazt/gq/x;

    invoke-direct {p0}, Lcom/byazt/gq/n;->nu()Lcom/byazt/e/DownloadShortInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/gq/n;->a:Ljava/util/Map;

    invoke-virtual {v0, p1, v1, v2}, Lcom/byazt/gq/x;->c(Landroid/os/Message;Lcom/byazt/e/DownloadShortInfo;Ljava/util/Map;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public c(Z)V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/byazt/gq/n;->x:Lcom/byazt/t/DownloadInfo;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 66
    invoke-static {}, Lcom/byazt/z/uj;->sl()Lcom/byazt/z/uj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/z/uj;->ve()Lcom/byazt/s/n;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/byazt/gq/n;->x:Lcom/byazt/t/DownloadInfo;

    invoke-interface {p1, v0}, Lcom/byazt/s/n;->c(Lcom/byazt/t/DownloadInfo;)V

    .line 68
    :cond_0
    invoke-static {}, Lcom/byazt/zz/ve;->ic()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/zz/Downloader;->getInstance(Landroid/content/Context;)Lcom/byazt/zz/Downloader;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/gq/n;->x:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/byazt/zz/Downloader;->cancel(IZ)V

    return-void

    .line 69
    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lcom/byazt/gq/t;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/byazt/z/DownloadHandlerService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "android.ss.intent.action.DOWNLOAD_DELETE"

    .line 70
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    iget-object v0, p0, Lcom/byazt/gq/n;->x:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v0

    const-string v1, "extra_click_download_ids"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 72
    invoke-static {}, Lcom/byazt/gq/t;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_2
    return-void
.end method

.method public c(ZZ)V
    .locals 3

    if-eqz p1, :cond_0

    .line 82
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    move-result-object p1

    iget-wide v0, p0, Lcom/byazt/gq/n;->yp:J

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/byazt/zn/c;->c(JI)V

    .line 83
    :cond_0
    invoke-static {}, Lcom/byazt/hu/u;->c()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 84
    invoke-static {p1}, Lcom/byazt/hu/da;->tt(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 85
    invoke-direct {p0}, Lcom/byazt/gq/n;->u()Lcom/byazt/su/DownloadController;

    move-result-object p1

    invoke-interface {p1}, Lcom/byazt/su/DownloadController;->enableNewActivity()Z

    move-result p1

    if-nez p1, :cond_2

    .line 86
    iget-object p1, p0, Lcom/byazt/gq/n;->z:Lcom/byazt/su/DownloadModel;

    iget-object v0, p0, Lcom/byazt/gq/n;->ve:Lcom/byazt/gq/x;

    invoke-virtual {v0}, Lcom/byazt/gq/x;->tt()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/byazt/su/DownloadModel;->setFilePath(Ljava/lang/String;)Lcom/byazt/su/DownloadModel;

    goto :goto_0

    :cond_1
    const-string p1, "android.permission.READ_MEDIA_IMAGES"

    .line 87
    invoke-static {p1}, Lcom/byazt/hu/da;->tt(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "android.permission.READ_MEDIA_AUDIO"

    .line 88
    invoke-static {p1}, Lcom/byazt/hu/da;->tt(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "android.permission.READ_MEDIA_VIDEO"

    .line 89
    invoke-static {p1}, Lcom/byazt/hu/da;->tt(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 90
    invoke-direct {p0}, Lcom/byazt/gq/n;->u()Lcom/byazt/su/DownloadController;

    move-result-object p1

    invoke-interface {p1}, Lcom/byazt/su/DownloadController;->enableNewActivity()Z

    move-result p1

    if-nez p1, :cond_2

    .line 91
    iget-object p1, p0, Lcom/byazt/gq/n;->z:Lcom/byazt/su/DownloadModel;

    iget-object v0, p0, Lcom/byazt/gq/n;->ve:Lcom/byazt/gq/x;

    invoke-virtual {v0}, Lcom/byazt/gq/x;->tt()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/byazt/su/DownloadModel;->setFilePath(Ljava/lang/String;)Lcom/byazt/su/DownloadModel;

    .line 92
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/byazt/gq/n;->z:Lcom/byazt/su/DownloadModel;

    invoke-static {p1}, Lcom/byazt/hu/n;->ve(Lcom/byazt/su/DownloadModel;)I

    move-result p1

    if-nez p1, :cond_3

    .line 93
    sget-object p1, Lcom/byazt/gq/n;->c:Ljava/lang/String;

    const-string v0, "pBCD not start"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/byazt/hu/sl;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 94
    iget-object p1, p0, Lcom/byazt/gq/n;->ve:Lcom/byazt/gq/x;

    new-instance v0, Lcom/byazt/gq/n$8;

    invoke-direct {v0, p0, p2}, Lcom/byazt/gq/n$8;-><init>(Lcom/byazt/gq/n;Z)V

    invoke-virtual {p1, v0}, Lcom/byazt/gq/x;->c(Lcom/byazt/ou/rl;)V

    return-void

    .line 95
    :cond_3
    invoke-direct {p0, p2}, Lcom/byazt/gq/n;->sp(Z)V

    return-void
.end method

.method public c(I)Z
    .locals 4

    if-nez p1, :cond_0

    .line 49
    iget-object p1, p0, Lcom/byazt/gq/n;->a:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/byazt/gq/n;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :goto_0
    iget-object p1, p0, Lcom/byazt/gq/n;->a:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    .line 52
    iput-boolean v0, p0, Lcom/byazt/gq/n;->sl:Z

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/byazt/gq/n;->t:J

    .line 54
    iget-object p1, p0, Lcom/byazt/gq/n;->x:Lcom/byazt/t/DownloadInfo;

    if-eqz p1, :cond_1

    .line 55
    invoke-static {}, Lcom/byazt/gq/t;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/zz/Downloader;->getInstance(Landroid/content/Context;)Lcom/byazt/zz/Downloader;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/gq/n;->x:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/byazt/zz/Downloader;->removeTaskMainListener(I)V

    .line 56
    :cond_1
    iget-object p1, p0, Lcom/byazt/gq/n;->i:Lcom/byazt/gq/n$ve;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object p1

    sget-object v0, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq p1, v0, :cond_2

    .line 57
    iget-object p1, p0, Lcom/byazt/gq/n;->i:Lcom/byazt/gq/n$ve;

    invoke-virtual {p1, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 58
    :cond_2
    iget-object p1, p0, Lcom/byazt/gq/n;->ve:Lcom/byazt/gq/x;

    iget-object v0, p0, Lcom/byazt/gq/n;->x:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {p1, v0}, Lcom/byazt/gq/x;->c(Lcom/byazt/t/DownloadInfo;)V

    .line 59
    sget-object p1, Lcom/byazt/gq/n;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onUnbind removeCallbacksAndMessages, downloadUrl:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/byazt/gq/n;->x:Lcom/byazt/t/DownloadInfo;

    if-nez v2, :cond_3

    const-string v2, ""

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Lcom/byazt/hu/sl;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 60
    iget-object p1, p0, Lcom/byazt/gq/n;->tt:Lcom/byazt/hu/yp;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 61
    iput-object v2, p0, Lcom/byazt/gq/n;->sp:Lcom/byazt/e/DownloadShortInfo;

    .line 62
    iput-object v2, p0, Lcom/byazt/gq/n;->x:Lcom/byazt/t/DownloadInfo;

    return v1

    .line 63
    :cond_4
    iget-object p1, p0, Lcom/byazt/gq/n;->a:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-ne p1, v1, :cond_5

    iget-object p1, p0, Lcom/byazt/gq/n;->a:Ljava/util/Map;

    const/high16 v1, -0x80000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 64
    iget-object p1, p0, Lcom/byazt/gq/n;->ve:Lcom/byazt/gq/x;

    iget-object v1, p0, Lcom/byazt/gq/n;->x:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {p1, v1}, Lcom/byazt/gq/x;->tt(Lcom/byazt/t/DownloadInfo;)V

    :cond_5
    return v0
.end method

.method public i()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/gq/n;->rl:Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/byazt/gq/n;->z:Lcom/byazt/su/DownloadModel;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/ou/IDownloadButtonClickListener;

    invoke-static {v1, v0}, Lcom/byazt/gq/i;->c(Lcom/byazt/su/DownloadModel;Lcom/byazt/ou/IDownloadButtonClickListener;)Z

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 5

    .line 2
    invoke-static {}, Lcom/byazt/gq/t;->i()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "quick_app_enable_switch"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/gq/n;->z:Lcom/byazt/su/DownloadModel;

    invoke-interface {v0}, Lcom/byazt/su/DownloadModel;->getQuickAppModel()Lcom/byazt/e/uj;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/byazt/gq/n;->z:Lcom/byazt/su/DownloadModel;

    .line 4
    invoke-interface {v0}, Lcom/byazt/su/DownloadModel;->getQuickAppModel()Lcom/byazt/e/uj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/e/uj;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/byazt/gq/n;->x:Lcom/byazt/t/DownloadInfo;

    .line 5
    invoke-static {v0}, Lcom/byazt/gq/ve;->c(Lcom/byazt/t/DownloadInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/byazt/gq/n;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/byazt/gq/n;->z:Lcom/byazt/su/DownloadModel;

    invoke-interface {v3}, Lcom/byazt/su/DownloadModel;->getQuickAppModel()Lcom/byazt/e/uj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/byazt/e/uj;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v0, v1}, Lcom/byazt/hu/u;->c(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v2
.end method

.method public sp()V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/byazt/gq/n;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/byazt/gq/n;->a:Ljava/util/Map;

    invoke-static {v0}, Lcom/byazt/gq/x;->c(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/su/DownloadStatusChangeListener;

    .line 6
    invoke-interface {v1}, Lcom/byazt/su/DownloadStatusChangeListener;->onIdle()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/byazt/gq/n;->x:Lcom/byazt/t/DownloadInfo;

    if-eqz v0, :cond_2

    const/4 v1, -0x4

    .line 8
    invoke-virtual {v0, v1}, Lcom/byazt/t/DownloadInfo;->setStatus(I)V

    :cond_2
    return-void
.end method

.method public synthetic tt(ILcom/byazt/su/DownloadStatusChangeListener;)Lcom/byazt/gq/sp;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/byazt/gq/n;->c(ILcom/byazt/su/DownloadStatusChangeListener;)Lcom/byazt/gq/n;

    move-result-object p1

    return-object p1
.end method

.method public synthetic tt(Landroid/content/Context;)Lcom/byazt/gq/sp;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/byazt/gq/n;->c(Landroid/content/Context;)Lcom/byazt/gq/n;

    move-result-object p1

    return-object p1
.end method

.method public synthetic tt(Lcom/byazt/su/DownloadController;)Lcom/byazt/gq/sp;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/byazt/gq/n;->c(Lcom/byazt/su/DownloadController;)Lcom/byazt/gq/n;

    move-result-object p1

    return-object p1
.end method

.method public synthetic tt(Lcom/byazt/su/DownloadEventConfig;)Lcom/byazt/gq/sp;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/byazt/gq/n;->c(Lcom/byazt/su/DownloadEventConfig;)Lcom/byazt/gq/n;

    move-result-object p1

    return-object p1
.end method

.method public synthetic tt(Lcom/byazt/su/DownloadModel;)Lcom/byazt/gq/sp;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/byazt/gq/n;->c(Lcom/byazt/su/DownloadModel;)Lcom/byazt/gq/n;

    move-result-object p1

    return-object p1
.end method

.method public tt(I)V
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "error actionType"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/byazt/gq/n;->ve:Lcom/byazt/gq/x;

    iget-wide v3, p0, Lcom/byazt/gq/n;->yp:J

    invoke-virtual {v2, v3, v4}, Lcom/byazt/gq/x;->c(J)V

    .line 11
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object v2

    iget-wide v3, p0, Lcom/byazt/gq/n;->yp:J

    invoke-virtual {v2, v3, v4}, Lcom/byazt/nn/a;->n(J)Lcom/byazt/nn/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/nn/n;->zm()Z

    move-result v2

    if-nez v2, :cond_2

    .line 12
    invoke-static {}, Lcom/byazt/dm/ve;->c()Lcom/byazt/dm/ve;

    move-result-object v2

    const-string v3, "handleDownload ModelBox !isStrictValid"

    invoke-virtual {v2, v3}, Lcom/byazt/dm/ve;->c(Ljava/lang/String;)V

    .line 13
    :cond_2
    iget-object v2, p0, Lcom/byazt/gq/n;->ve:Lcom/byazt/gq/x;

    iget-object v3, p0, Lcom/byazt/gq/n;->z:Lcom/byazt/su/DownloadModel;

    invoke-virtual {v2, p1, v3}, Lcom/byazt/gq/x;->c(ILcom/byazt/su/DownloadModel;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 14
    invoke-static {}, Lcom/byazt/lr/a;->c()Lcom/byazt/lr/a;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/gq/n;->ve:Lcom/byazt/gq/x;

    iget-object v1, v1, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    new-instance v2, Lcom/byazt/gq/n$1;

    invoke-direct {v2, p0, p1}, Lcom/byazt/gq/n$1;-><init>(Lcom/byazt/gq/n;I)V

    invoke-virtual {v0, v1, v2}, Lcom/byazt/lr/a;->c(Lcom/byazt/nn/n;Lcom/byazt/lr/x;)V

    return-void

    .line 15
    :cond_3
    iget-object v2, p0, Lcom/byazt/gq/n;->ve:Lcom/byazt/gq/x;

    invoke-direct {p0}, Lcom/byazt/gq/n;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-boolean v4, p0, Lcom/byazt/gq/n;->my:Z

    invoke-virtual {v2, v3, p1, v4}, Lcom/byazt/gq/x;->c(Landroid/content/Context;IZ)Z

    move-result v2

    if-nez v2, :cond_6

    .line 16
    invoke-direct {p0, p1}, Lcom/byazt/gq/n;->ve(I)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "handleDownload id:"

    if-eq p1, v1, :cond_5

    if-eq p1, v0, :cond_4

    goto :goto_1

    :cond_4
    if-nez v2, :cond_6

    .line 17
    sget-object p1, Lcom/byazt/gq/n;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/byazt/gq/n;->yp:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",pBC:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Lcom/byazt/hu/sl;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 18
    invoke-virtual {p0, v1}, Lcom/byazt/gq/n;->tt(Z)V

    return-void

    :cond_5
    if-nez v2, :cond_6

    .line 19
    sget-object p1, Lcom/byazt/gq/n;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/byazt/gq/n;->yp:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",pIC:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Lcom/byazt/hu/sl;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 20
    invoke-virtual {p0, v1}, Lcom/byazt/gq/n;->ve(Z)V

    :cond_6
    :goto_1
    return-void
.end method

.method public tt(Z)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/byazt/gq/n;->n(Z)V

    return-void
.end method

.method public tt()Z
    .locals 1

    .line 8
    iget-boolean v0, p0, Lcom/byazt/gq/n;->sl:Z

    return v0
.end method

.method public uj()J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/byazt/gq/n;->t:J

    return-wide v0
.end method

.method public uj(Z)Z
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/byazt/gq/n;->rl:Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    const-string v2, "mDownloadButtonClickListener has recycled"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 4
    :try_start_0
    iget-object p1, p0, Lcom/byazt/gq/n;->rl:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/ou/IDownloadButtonClickListener;

    invoke-interface {p1, v0}, Lcom/byazt/ou/IDownloadButtonClickListener;->handleComplianceDialog(Z)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/byazt/gq/n;->rl:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/ou/IDownloadButtonClickListener;

    invoke-interface {p1}, Lcom/byazt/ou/IDownloadButtonClickListener;->handleMarketFailedComplianceDialog()V

    :goto_0
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/byazt/gq/n;->rl:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 7
    :catch_0
    invoke-static {}, Lcom/byazt/dm/ve;->c()Lcom/byazt/dm/ve;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/byazt/dm/ve;->tt(Ljava/lang/String;)V

    return v1

    .line 8
    :cond_1
    invoke-static {}, Lcom/byazt/dm/ve;->c()Lcom/byazt/dm/ve;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/byazt/dm/ve;->tt(Ljava/lang/String;)V

    return v1
.end method

.method public ve(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 15
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    move-result-object p1

    iget-wide v0, p0, Lcom/byazt/gq/n;->yp:J

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/byazt/zn/c;->c(JI)V

    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/byazt/gq/n;->yp()V

    return-void
.end method

.method public ve()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/gq/n;->x:Lcom/byazt/t/DownloadInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getStatus()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public x()V
    .locals 3

    .line 17
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object v0

    iget-wide v1, p0, Lcom/byazt/gq/n;->yp:J

    invoke-virtual {v0, v1, v2}, Lcom/byazt/nn/a;->a(J)V

    return-void
.end method
