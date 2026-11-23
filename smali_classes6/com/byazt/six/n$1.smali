.class public Lcom/byazt/six/n$1;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f6,
        0xdb
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/six/n;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/six/n;


# direct methods
.method public constructor <init>(Lcom/byazt/six/n;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/six/n$1;->c:Lcom/byazt/six/n;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/six/x;->c()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/six/n$1;->c:Lcom/byazt/six/n;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/byazt/six/n;->c(Lcom/byazt/six/n;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/six/n$1;->c:Lcom/byazt/six/n;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/byazt/six/n;->ve()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/byazt/six/n$1;->c:Lcom/byazt/six/n;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/byazt/six/n;->a()V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/byazt/mf/c;->c()Lcom/byazt/mf/c;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/byazt/mf/c;->ve()Lcom/byazt/mf/ve;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-static {}, Lcom/byazt/mf/c;->c()Lcom/byazt/mf/c;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/byazt/mf/c;->ve()Lcom/byazt/mf/ve;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {v0}, Lcom/byazt/mf/ve;->getContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0}, Lcom/byazt/nr/gt;->c(Landroid/content/Context;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    invoke-static {}, Lcom/byazt/mf/c;->c()Lcom/byazt/mf/c;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/byazt/mf/c;->ve()Lcom/byazt/mf/ve;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-interface {v0}, Lcom/byazt/mf/ve;->tt()Landroid/os/Handler;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    new-instance v1, Lcom/byazt/six/n$1$1;

    .line 65
    .line 66
    invoke-direct {v1, p0}, Lcom/byazt/six/n$1$1;-><init>(Lcom/byazt/six/n$1;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 70
    .line 71
    .line 72
    :cond_0
    return-void
.end method
