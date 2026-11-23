.class public final Lcom/byazt/hw/sp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4d,
        0x5b
    }
.end annotation


# static fields
.field public static volatile c:Lcom/byazt/hw/sp;

.field public static tt:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/byazt/hw/n;",
            ">;"
        }
    .end annotation
.end field

.field public static ve:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/byazt/hw/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/byazt/hw/sp;->tt:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/byazt/hw/sp;->ve:Ljava/util/HashMap;

    .line 17
    .line 18
    return-void
.end method

.method public static declared-synchronized c()Lcom/byazt/hw/sp;
    .locals 3

    const-class v0, Lcom/byazt/hw/sp;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/byazt/hw/sp;->c:Lcom/byazt/hw/sp;

    if-nez v1, :cond_1

    .line 2
    const-class v1, Lcom/byazt/hw/sp;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    sget-object v2, Lcom/byazt/hw/sp;->c:Lcom/byazt/hw/sp;

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Lcom/byazt/hw/sp;

    invoke-direct {v2}, Lcom/byazt/hw/sp;-><init>()V

    sput-object v2, Lcom/byazt/hw/sp;->c:Lcom/byazt/hw/sp;

    .line 5
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    .line 6
    :cond_1
    :goto_0
    sget-object v1, Lcom/byazt/hw/sp;->c:Lcom/byazt/hw/sp;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public c(ILandroid/content/Context;)Lcom/byazt/hw/c;
    .locals 2

    .line 10
    sget-object v0, Lcom/byazt/hw/sp;->ve:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/hw/c;

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Lcom/byazt/hw/c;

    invoke-direct {v0, p2, p1}, Lcom/byazt/hw/c;-><init>(Landroid/content/Context;I)V

    .line 12
    sget-object p2, Lcom/byazt/hw/sp;->ve:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public c(I)Lcom/byazt/hw/n;
    .locals 2

    .line 7
    sget-object v0, Lcom/byazt/hw/sp;->tt:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/hw/n;

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Lcom/byazt/hw/n;

    invoke-direct {v0, p1}, Lcom/byazt/hw/n;-><init>(I)V

    .line 9
    sget-object v1, Lcom/byazt/hw/sp;->tt:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
