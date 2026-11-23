.class public Lcom/byazt/rob/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4bb,
        0xd
    }
.end annotation


# static fields
.field public static c:Lcom/byazt/rob/tt;


# instance fields
.field public tt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/os/Bundle;",
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
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/byazt/rob/tt;->tt:Ljava/util/Map;

    .line 14
    .line 15
    return-void
.end method

.method public static declared-synchronized c()Lcom/byazt/rob/tt;
    .locals 2

    const-class v0, Lcom/byazt/rob/tt;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/byazt/rob/tt;->c:Lcom/byazt/rob/tt;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/byazt/rob/tt;

    invoke-direct {v1}, Lcom/byazt/rob/tt;-><init>()V

    sput-object v1, Lcom/byazt/rob/tt;->c:Lcom/byazt/rob/tt;

    .line 3
    :cond_0
    sget-object v1, Lcom/byazt/rob/tt;->c:Lcom/byazt/rob/tt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public c(I)Landroid/os/Bundle;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/byazt/rob/tt;->tt:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    return-object p1
.end method

.method public c(ILandroid/os/Bundle;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/byazt/rob/tt;->tt:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public tt(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/rob/tt;->tt:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void
.end method
