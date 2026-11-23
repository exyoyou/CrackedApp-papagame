.class public Lcom/byazt/ddx/tt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/whk/tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1e3,
        0xd
    }
.end annotation


# static fields
.field public static c:Lcom/byazt/ddx/tt;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static declared-synchronized c()Lcom/byazt/ddx/tt;
    .locals 2

    const-class v0, Lcom/byazt/ddx/tt;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/byazt/ddx/tt;->c:Lcom/byazt/ddx/tt;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/byazt/ddx/tt;

    invoke-direct {v1}, Lcom/byazt/ddx/tt;-><init>()V

    sput-object v1, Lcom/byazt/ddx/tt;->c:Lcom/byazt/ddx/tt;

    .line 5
    :cond_0
    sget-object v1, Lcom/byazt/ddx/tt;->c:Lcom/byazt/ddx/tt;
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
.method public c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    const-string p1, ""

    return-object p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    return-void
.end method

.method public tt()Ljava/lang/String;
    .locals 1

    const-string v0, "AdEventCollector"

    return-object v0
.end method
