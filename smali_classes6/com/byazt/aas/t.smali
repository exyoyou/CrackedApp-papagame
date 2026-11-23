.class public Lcom/byazt/aas/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x83,
        0x42
    }
.end annotation


# static fields
.field public static volatile c:Lcom/byazt/aas/t;


# instance fields
.field public tt:Lcom/byazt/iy/n;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

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

.method public static c()Lcom/byazt/aas/t;
    .locals 2

    .line 3
    sget-object v0, Lcom/byazt/aas/t;->c:Lcom/byazt/aas/t;

    if-nez v0, :cond_1

    .line 4
    const-class v0, Lcom/byazt/aas/t;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lcom/byazt/aas/t;->c:Lcom/byazt/aas/t;

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Lcom/byazt/aas/t;

    invoke-direct {v1}, Lcom/byazt/aas/t;-><init>()V

    sput-object v1, Lcom/byazt/aas/t;->c:Lcom/byazt/aas/t;

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/byazt/aas/t;->c:Lcom/byazt/aas/t;

    return-object v0
.end method

.method public static synthetic c(Lcom/byazt/aas/t;)Lcom/byazt/iy/n;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/aas/t;->tt()Lcom/byazt/iy/n;

    move-result-object p0

    return-object p0
.end method

.method private c(I)V
    .locals 2

    .line 11
    :try_start_0
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v0

    new-instance v1, Lcom/byazt/aas/t$2;

    invoke-direct {v1, p0, p1}, Lcom/byazt/aas/t$2;-><init>(Lcom/byazt/aas/t;I)V

    const-string p1, "hide_activity_record"

    invoke-virtual {v0, v1, p1}, Lcom/byazt/ukr/yp;->tt(Lcom/byazt/ee/c;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static synthetic c(Lcom/byazt/aas/t;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/aas/t;->c(I)V

    return-void
.end method

.method private tt()Lcom/byazt/iy/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/aas/t;->tt:Lcom/byazt/iy/n;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "hide_recent_activity_recorder"

    .line 6
    .line 7
    invoke-static {v0}, Lcom/byazt/aas/eo;->c(Ljava/lang/String;)Lcom/byazt/iy/n;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/byazt/aas/t;->tt:Lcom/byazt/iy/n;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/byazt/aas/t;->tt:Lcom/byazt/iy/n;

    .line 14
    .line 15
    return-object v0
.end method


# virtual methods
.method public c(Landroid/content/Intent;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p1

    const/high16 v0, 0x800000

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 10
    :goto_0
    invoke-static {}, Lcom/byazt/nr/da;->c()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/byazt/aas/t$1;

    invoke-direct {v1, p0, p1}, Lcom/byazt/aas/t$1;-><init>(Lcom/byazt/aas/t;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
