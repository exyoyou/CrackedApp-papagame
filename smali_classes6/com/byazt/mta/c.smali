.class public Lcom/byazt/mta/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x7a7,
        0x14
    }
.end annotation


# static fields
.field public static volatile c:Lcom/byazt/mta/c;


# instance fields
.field public tt:I


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

.method public static c()Lcom/byazt/mta/c;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/mta/c;->c:Lcom/byazt/mta/c;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/byazt/mta/c;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/byazt/mta/c;->c:Lcom/byazt/mta/c;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/byazt/mta/c;

    invoke-direct {v1}, Lcom/byazt/mta/c;-><init>()V

    sput-object v1, Lcom/byazt/mta/c;->c:Lcom/byazt/mta/c;

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
    sget-object v0, Lcom/byazt/mta/c;->c:Lcom/byazt/mta/c;

    return-object v0
.end method


# virtual methods
.method public c(I)V
    .locals 0

    if-gtz p1, :cond_0

    return-void

    .line 7
    :cond_0
    iput p1, p0, Lcom/byazt/mta/c;->tt:I

    return-void
.end method

.method public tt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/mta/c;->tt:I

    .line 2
    .line 3
    return v0
.end method
