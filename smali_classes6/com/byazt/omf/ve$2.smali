.class public Lcom/byazt/omf/ve$2;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f,
        0x15a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/omf/ve;->init(Landroid/content/Context;Lcom/bykv/vk/openvk/api/proto/PluginValueSet;Lcom/byazt/fb/ve;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/content/Context;

.field public final synthetic tt:Lcom/byazt/omf/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/omf/ve;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/omf/ve$2;->tt:Lcom/byazt/omf/ve;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/omf/ve$2;->c:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/omf/ve$2;->tt:Lcom/byazt/omf/ve;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/omf/ve;->c(Lcom/byazt/omf/ve;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/byazt/omf/ve$2;->tt:Lcom/byazt/omf/ve;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/byazt/omf/ve;->c(Lcom/byazt/omf/ve;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/byazt/omf/a;->c()Lcom/byazt/omf/a;

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lcom/byazt/aas/DeviceUtils;->ve()V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-static {v0}, Lcom/byazt/lkt/c;->c(Z)Lcom/byazt/lkt/c;

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/byazt/omf/ve$2;->c:Landroid/content/Context;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/byazt/qh/tt;->c(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lcom/byazt/qh/tt;->c()V

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lcom/byazt/fj/c;->c()Lcom/byazt/fj/c;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/byazt/omf/ve$2;->c:Landroid/content/Context;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/byazt/fj/c;->registerReceiver(Landroid/content/Context;)V

    .line 49
    .line 50
    .line 51
    invoke-static {}, Lcom/byazt/qw/ve;->ve()Lcom/byazt/qw/ve;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/byazt/qw/ve;->uj()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const-string v1, "Init sync exception: "

    .line 65
    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {v0}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method
