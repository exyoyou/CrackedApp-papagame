.class public Lcom/byazt/hw/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4d,
        0x46
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/hw/c;->ve()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/hw/c;


# direct methods
.method public constructor <init>(Lcom/byazt/hw/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/hw/c$2;->c:Lcom/byazt/hw/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/hw/c$2;->c:Lcom/byazt/hw/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/hw/c;->c(Lcom/byazt/hw/c;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/byazt/lf/a;->c(Landroid/content/Context;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lcom/byazt/hw/c$2;->c:Lcom/byazt/hw/c;

    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    invoke-static {v1, v2, v3}, Lcom/byazt/hw/c;->c(Lcom/byazt/hw/c;J)J

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/byazt/hw/c$2;->c:Lcom/byazt/hw/c;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/byazt/hw/c;->tt(Lcom/byazt/hw/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v3, 0x1

    .line 30
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_0

    .line 35
    .line 36
    const-string v0, "TNCManager"

    .line 37
    .line 38
    const-string v1, "doRefresh, already running"

    .line 39
    .line 40
    invoke-static {v0, v1}, Lcom/byazt/lf/ve;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/byazt/hw/c$2;->c:Lcom/byazt/hw/c;

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Lcom/byazt/hw/c;->ve(Z)V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void
.end method
