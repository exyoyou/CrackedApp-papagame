.class public Lcom/byazt/b/rh$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xdf,
        0x22d
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/b/rh;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/b/rh;


# direct methods
.method public constructor <init>(Lcom/byazt/b/rh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/b/rh$1;->c:Lcom/byazt/b/rh;

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
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/b/rh$1;->c:Lcom/byazt/b/rh;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/b/rh;->c(Lcom/byazt/b/rh;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/b/rh$1;->c:Lcom/byazt/b/rh;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/b/rh;->c(Lcom/byazt/b/rh;)Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "connectivity"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 26
    .line 27
    invoke-static {v0, v1}, Lcom/byazt/b/rh;->c(Lcom/byazt/b/rh;Landroid/net/ConnectivityManager;)Landroid/net/ConnectivityManager;

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/byazt/b/rh$1;->c:Lcom/byazt/b/rh;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/byazt/b/rh;->tt(Lcom/byazt/b/rh;)Landroid/net/ConnectivityManager;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    .line 37
    .line 38
    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    new-instance v2, Lcom/byazt/b/rh$1$1;

    .line 46
    .line 47
    invoke-direct {v2, p0}, Lcom/byazt/b/rh$1$1;-><init>(Lcom/byazt/b/rh$1;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    :cond_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method
