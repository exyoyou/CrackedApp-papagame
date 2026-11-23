.class public Lcom/byazt/pvs/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2c1,
        0x14
    }
.end annotation


# static fields
.field public static volatile c:Lcom/byazt/pvs/tt;


# direct methods
.method public static c(Lcom/byazt/vb/n;)Lcom/byazt/pvs/tt;
    .locals 3

    .line 1
    sget-object v0, Lcom/byazt/pvs/c;->c:Lcom/byazt/pvs/tt;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/byazt/pvs/tt;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/byazt/pvs/c;->c:Lcom/byazt/pvs/tt;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/byazt/pvs/ve;

    .line 13
    .line 14
    new-instance v2, Lcom/byazt/pvs/a;

    .line 15
    .line 16
    invoke-direct {v2, p0}, Lcom/byazt/pvs/a;-><init>(Lcom/byazt/vb/n;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v2, p0}, Lcom/byazt/pvs/ve;-><init>(Lcom/byazt/pvs/n;Lcom/byazt/vb/n;)V

    .line 20
    .line 21
    .line 22
    sput-object v1, Lcom/byazt/pvs/c;->c:Lcom/byazt/pvs/tt;

    .line 23
    .line 24
    :cond_0
    monitor-exit v0

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0

    .line 29
    :cond_1
    :goto_0
    sget-object p0, Lcom/byazt/pvs/c;->c:Lcom/byazt/pvs/tt;

    .line 30
    .line 31
    return-object p0
.end method
