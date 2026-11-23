.class public Lcom/byazt/un/uj$1$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x60,
        0x7f7
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/un/uj$1;->onPrepared(Lcom/byazt/fk/sp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/un/uj$1;


# direct methods
.method public constructor <init>(Lcom/byazt/un/uj$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/un/uj$1$3;->c:Lcom/byazt/un/uj$1;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/un/uj$1$3;->c:Lcom/byazt/un/uj$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/byazt/un/uj;->gt(Lcom/byazt/un/uj;)Ljava/lang/ref/WeakReference;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/un/uj$1$3;->c:Lcom/byazt/un/uj$1;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/byazt/un/uj;->gt(Lcom/byazt/un/uj;)Ljava/lang/ref/WeakReference;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/byazt/un/uj$1$3;->c:Lcom/byazt/un/uj$1;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/byazt/un/uj;->gt(Lcom/byazt/un/uj;)Ljava/lang/ref/WeakReference;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/byazt/dh/ve$uj;

    .line 38
    .line 39
    invoke-interface {v0}, Lcom/byazt/dh/ve$uj;->onVideoLoad()V

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object v0, p0, Lcom/byazt/un/uj$1$3;->c:Lcom/byazt/un/uj$1;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/byazt/un/uj;->rl(Lcom/byazt/un/uj;)Lcom/byazt/un/a;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    iget-object v0, p0, Lcom/byazt/un/uj$1$3;->c:Lcom/byazt/un/uj$1;

    .line 53
    .line 54
    iget-object v0, v0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 55
    .line 56
    invoke-static {v0}, Lcom/byazt/un/uj;->a(Lcom/byazt/un/uj;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->pe()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_2

    .line 71
    .line 72
    :cond_1
    iget-object v0, p0, Lcom/byazt/un/uj$1$3;->c:Lcom/byazt/un/uj$1;

    .line 73
    .line 74
    iget-object v0, v0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 75
    .line 76
    invoke-static {v0}, Lcom/byazt/un/uj;->qy(Lcom/byazt/un/uj;)Lcom/byazt/un/a;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/byazt/un/a;->tt()V

    .line 81
    .line 82
    .line 83
    :cond_2
    iget-object v0, p0, Lcom/byazt/un/uj$1$3;->c:Lcom/byazt/un/uj$1;

    .line 84
    .line 85
    iget-object v0, v0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 86
    .line 87
    invoke-static {v0}, Lcom/byazt/un/uj;->gu(Lcom/byazt/un/uj;)Lcom/byazt/nr/d;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/byazt/un/uj$1$3;->c:Lcom/byazt/un/uj$1;

    .line 92
    .line 93
    iget-object v1, v1, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 94
    .line 95
    iget-object v1, v1, Lcom/byazt/un/uj;->p:Ljava/lang/Runnable;

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 98
    .line 99
    .line 100
    return-void
.end method
