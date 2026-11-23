.class public Lcom/byazt/dl/n;
.super Lcom/byazt/dl/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1d1,
        0x2e
    }
.end annotation


# static fields
.field public static volatile c:Lcom/byazt/dl/n;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/dl/tt;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static c()Lcom/byazt/dl/tt;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/dl/n;->c:Lcom/byazt/dl/n;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/byazt/dl/tt;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/byazt/dl/n;->c:Lcom/byazt/dl/n;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/byazt/dl/n;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/byazt/dl/n;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/byazt/dl/n;->c:Lcom/byazt/dl/n;

    .line 18
    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lcom/byazt/dl/n;->c:Lcom/byazt/dl/n;

    .line 25
    .line 26
    return-object v0
.end method


# virtual methods
.method public tt()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/by/n;->c()Lcom/byazt/by/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/by/n;->ve()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public ve()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/by/n;->c()Lcom/byazt/by/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/by/n;->tt()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method
