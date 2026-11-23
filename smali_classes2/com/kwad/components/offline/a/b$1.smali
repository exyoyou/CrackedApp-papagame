.class final Lcom/kwad/components/offline/a/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/offline/api/InitCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/offline/a/b;->a(Landroid/content/Context;Lcom/kwad/components/offline/api/adInnerEc/IAdInnerEcOfflineCompo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic awI:Lcom/kwad/components/offline/api/adInnerEc/IAdInnerEcOfflineCompo;

.field final synthetic awJ:Lcom/kwad/components/offline/a/b;


# direct methods
.method constructor <init>(Lcom/kwad/components/offline/a/b;Lcom/kwad/components/offline/api/adInnerEc/IAdInnerEcOfflineCompo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/offline/a/b$1;->awJ:Lcom/kwad/components/offline/a/b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/offline/a/b$1;->awI:Lcom/kwad/components/offline/api/adInnerEc/IAdInnerEcOfflineCompo;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onError(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/offline/a/b$1;->awJ:Lcom/kwad/components/offline/a/b;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/kwad/components/offline/a/b;->a(Lcom/kwad/components/offline/a/b;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onSuccess(Z)V
    .locals 5

    .line 1
    const-string p1, "AdInnerEcInitModule"

    .line 2
    .line 3
    :try_start_0
    const-string v0, "onOfflineCompoLoaded: \u7535\u5546\u5185\u5faa\u73af\u79bb\u7ebf\u7ec4\u4ef6\u521d\u59cb\u5316\u6210\u529f"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/kwad/components/offline/a/a;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/kwad/components/offline/a/b$1;->awI:Lcom/kwad/components/offline/api/adInnerEc/IAdInnerEcOfflineCompo;

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/kwad/components/offline/a/a;-><init>(Lcom/kwad/components/offline/api/adInnerEc/IAdInnerEcOfflineCompo;)V

    .line 13
    .line 14
    .line 15
    const-class v1, Lcom/kwad/components/core/offline/a/a/a;

    .line 16
    .line 17
    invoke-static {v1, v0}, Lcom/kwad/sdk/components/d;->a(Ljava/lang/Class;Lcom/kwad/sdk/components/b;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/kwad/components/offline/a/b$1;->awJ:Lcom/kwad/components/offline/a/b;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/kwad/components/offline/a/b;->a(Lcom/kwad/components/offline/a/b;)V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/kwad/components/offline/a/b;->Ak()Landroid/os/Handler;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    new-instance v1, Landroid/os/Handler;

    .line 32
    .line 33
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v1}, Lcom/kwad/components/offline/a/b;->a(Landroid/os/Handler;)Landroid/os/Handler;

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-static {}, Lcom/kwad/components/offline/a/b;->Ak()Landroid/os/Handler;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    new-instance v2, Lcom/kwad/components/offline/a/b$1$1;

    .line 48
    .line 49
    invoke-direct {v2, p0, v0}, Lcom/kwad/components/offline/a/b$1$1;-><init>(Lcom/kwad/components/offline/a/b$1;Lcom/kwad/components/offline/a/a;)V

    .line 50
    .line 51
    .line 52
    const-wide/16 v3, 0xbb8

    .line 53
    .line 54
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 55
    .line 56
    .line 57
    const-string v0, "onOfflineCompoLoaded: \u7535\u5546\u5185\u5faa\u73af\u79bb\u7ebf\u7ec4\u4ef6 \u6ce8\u518c \u5b8c\u6210\uff1a"

    .line 58
    .line 59
    invoke-static {p1, v0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v2, "onOfflineCompoLoaded: \u7535\u5546\u5185\u5faa\u73af\u79bb\u7ebf\u7ec4\u4ef6 \u5f02\u5e38\uff1a"

    .line 67
    .line 68
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-static {p1, v1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method
