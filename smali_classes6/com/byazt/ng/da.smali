.class public Lcom/byazt/ng/da;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/vb/uj;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xf8,
        0x48
    }
.end annotation


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

.method public static ve(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    invoke-static {}, Lcom/byazt/vx/tt;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/byazt/vx/c;->tt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c(Lorg/json/JSONObject;)Lcom/byazt/vb/tt;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 5
    invoke-static {p1}, Lcom/byazt/ng/da;->ve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 0

    .line 2
    return-void
.end method

.method public c()Z
    .locals 1

    .line 3
    const/4 v0, 0x0

    return v0
.end method

.method public c(Landroid/content/Context;)Z
    .locals 0

    .line 4
    invoke-static {p1}, Lcom/byazt/vx/qy;->c(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public da()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public i()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/eu/n;->a()Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    const-string v0, "gromore-no-webview"

    return-object v0
.end method

.method public sl()Lcom/byazt/epi/ve;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public sp()Lcom/byazt/gs/tt;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public t()Lcom/byazt/vb/x;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public tt()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "mediation_log"

    return-object v0
.end method

.method public tt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    invoke-static {}, Lcom/byazt/vx/tt;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/byazt/vx/c;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public u()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public uj()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public ve()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public x()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/eu/n;->a()Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public yp()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public z()Landroid/os/Looper;
    .locals 1

    .line 1
    const-string v0, "thread_service"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/byazt/dna/qp;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/byazt/dna/qp;->getIOHandler()Landroid/os/Handler;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method
