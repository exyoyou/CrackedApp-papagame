.class public final Lcom/byazt/jz/uj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xe8,
        0xf
    }
.end annotation


# instance fields
.field public c:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/jz/uj;->c:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, v0}, Lcom/byazt/jz/uj;->c(Landroid/content/Context;I)V

    return-void
.end method

.method public static c(Landroid/content/Context;I)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/byazt/uy/x;->c()Lcom/byazt/rx/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/rx/c;->uj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    return-void

    .line 2
    :catch_0
    :cond_0
    invoke-static {}, Lcom/byazt/rx/sp;->tt()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/byazt/jz/uj;

    invoke-direct {v1, p0}, Lcom/byazt/jz/uj;-><init>(Landroid/content/Context;)V

    int-to-long p0, p1

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/byazt/rx/ve;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/jz/uj;->c:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/byazt/rx/ve;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/byazt/jz/uj;->c:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/byazt/mg/i;->tt(Landroid/content/Context;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/byazt/rx/ve;->c(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-static {}, Lcom/byazt/rx/sp;->tt()Landroid/os/Handler;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/byazt/jz/uj;->c:Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/byazt/vr/ve;->c(Landroid/os/Handler;Landroid/content/Context;)Lcom/byazt/vr/ve;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/byazt/vr/ve;->c()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    :try_start_1
    invoke-static {v0}, Lcom/byazt/mg/da;->tt(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_1
    move-exception v0

    .line 37
    invoke-static {}, Lcom/byazt/rx/sp;->tt()Landroid/os/Handler;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-object v2, p0, Lcom/byazt/jz/uj;->c:Landroid/content/Context;

    .line 42
    .line 43
    invoke-static {v1, v2}, Lcom/byazt/vr/ve;->c(Landroid/os/Handler;Landroid/content/Context;)Lcom/byazt/vr/ve;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lcom/byazt/vr/ve;->c()V

    .line 48
    .line 49
    .line 50
    throw v0
.end method
