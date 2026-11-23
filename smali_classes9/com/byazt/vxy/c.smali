.class public Lcom/byazt/vxy/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x92,
        0x14
    }
.end annotation


# static fields
.field public static c:Lcom/byazt/vxy/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static c()Lcom/byazt/vxy/c;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/vxy/c;->c:Lcom/byazt/vxy/c;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/byazt/vxy/c;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/byazt/vxy/c;->c:Lcom/byazt/vxy/c;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/byazt/vxy/c;

    invoke-direct {v1}, Lcom/byazt/vxy/c;-><init>()V

    sput-object v1, Lcom/byazt/vxy/c;->c:Lcom/byazt/vxy/c;

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
    sget-object v0, Lcom/byazt/vxy/c;->c:Lcom/byazt/vxy/c;

    return-object v0
.end method

.method public static n()Lcom/byazt/dna/c;
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/vxy/c;->uj()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/byazt/ut/uj;->getAppContext(Ljava/lang/String;)Lcom/byazt/dna/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static tt()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/omf/x;->rl()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static uj()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/omf/x;->rl()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static ve()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/omf/x;->rl()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method


# virtual methods
.method public c(Ljava/lang/String;)Lcom/byazt/dna/c;
    .locals 0

    .line 7
    invoke-static {p1}, Lcom/byazt/ut/uj;->getAppContext(Ljava/lang/String;)Lcom/byazt/dna/c;

    move-result-object p1

    return-object p1
.end method
