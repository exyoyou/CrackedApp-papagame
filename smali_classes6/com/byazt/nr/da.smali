.class public Lcom/byazt/nr/da;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x274,
        0x48
    }
.end annotation


# static fields
.field public static volatile c:Landroid/os/Handler;

.field public static volatile tt:Landroid/os/Handler;

.field public static volatile ve:Landroid/os/Handler;


# direct methods
.method public static c()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/nr/da;->tt:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "thread_service"

    .line 6
    .line 7
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/byazt/dna/qp;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/byazt/dna/qp;->getIOHandler()Landroid/os/Handler;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/byazt/nr/da;->tt:Landroid/os/Handler;

    .line 18
    .line 19
    :cond_0
    sget-object v0, Lcom/byazt/nr/da;->tt:Landroid/os/Handler;

    .line 20
    .line 21
    return-object v0
.end method

.method public static tt()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/nr/da;->c:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "thread_service"

    .line 6
    .line 7
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/byazt/dna/qp;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/byazt/dna/qp;->getMainHandler()Landroid/os/Handler;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/byazt/nr/da;->c:Landroid/os/Handler;

    .line 18
    .line 19
    :cond_0
    sget-object v0, Lcom/byazt/nr/da;->c:Landroid/os/Handler;

    .line 20
    .line 21
    return-object v0
.end method

.method public static ve()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/nr/da;->ve:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "thread_service"

    .line 6
    .line 7
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/byazt/dna/qp;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/byazt/dna/qp;->getCsjMainHandler()Landroid/os/Handler;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/byazt/nr/da;->ve:Landroid/os/Handler;

    .line 18
    .line 19
    :cond_0
    sget-object v0, Lcom/byazt/nr/da;->ve:Landroid/os/Handler;

    .line 20
    .line 21
    return-object v0
.end method
