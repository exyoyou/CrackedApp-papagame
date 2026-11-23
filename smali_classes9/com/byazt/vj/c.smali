.class public final Lcom/byazt/vj/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x7e6,
        0x14
    }
.end annotation


# static fields
.field public static volatile tt:Lcom/byazt/vj/c;


# instance fields
.field public volatile c:Lcom/byazt/vj/tt;


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

.method public static c()Lcom/byazt/vj/c;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/vj/c;->tt:Lcom/byazt/vj/c;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/byazt/vj/c;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/byazt/vj/c;->tt:Lcom/byazt/vj/c;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/byazt/vj/c;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/byazt/vj/c;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/byazt/vj/c;->tt:Lcom/byazt/vj/c;

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
    sget-object v0, Lcom/byazt/vj/c;->tt:Lcom/byazt/vj/c;

    .line 25
    .line 26
    return-object v0
.end method


# virtual methods
.method public tt()Lcom/byazt/vj/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/vj/c;->c:Lcom/byazt/vj/tt;

    .line 2
    .line 3
    return-object v0
.end method
