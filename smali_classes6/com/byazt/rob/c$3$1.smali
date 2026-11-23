.class public Lcom/byazt/rob/c$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4bb,
        0x40b
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/rob/c$3;->c(Lcom/byazt/nc/z;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/nc/z;

.field public final synthetic tt:Lcom/byazt/rob/c$3;


# direct methods
.method public constructor <init>(Lcom/byazt/rob/c$3;Lcom/byazt/nc/z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/rob/c$3$1;->tt:Lcom/byazt/rob/c$3;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/rob/c$3$1;->c:Lcom/byazt/nc/z;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/rob/c$3$1;->c:Lcom/byazt/nc/z;

    .line 2
    .line 3
    instance-of v0, v0, Lcom/byazt/yi/ve;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/rob/c$3$1;->tt:Lcom/byazt/rob/c$3;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/byazt/rob/c$3;->ve:Lcom/byazt/rob/c;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/byazt/rob/c;->tt(Lcom/byazt/rob/c;)Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    instance-of v0, v0, Landroid/app/Activity;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/byazt/rob/c$3$1;->c:Lcom/byazt/nc/z;

    .line 22
    .line 23
    check-cast v0, Lcom/byazt/yi/ve;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/byazt/yi/ve;->setSecondAdPage(Z)V

    .line 26
    .line 27
    .line 28
    iget-object v3, p0, Lcom/byazt/rob/c$3$1;->tt:Lcom/byazt/rob/c$3;

    .line 29
    .line 30
    iget-object v3, v3, Lcom/byazt/rob/c$3;->ve:Lcom/byazt/rob/c;

    .line 31
    .line 32
    invoke-static {v3}, Lcom/byazt/rob/c;->tt(Lcom/byazt/rob/c;)Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Landroid/app/Activity;

    .line 37
    .line 38
    invoke-virtual {v0, v3}, Lcom/byazt/yi/ve;->showRewardVideoAd(Landroid/app/Activity;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/byazt/rob/c$3$1;->tt:Lcom/byazt/rob/c$3;

    .line 42
    .line 43
    iget-object v3, v0, Lcom/byazt/rob/c$3;->c:Lcom/byazt/ete/ic;

    .line 44
    .line 45
    iget v0, v0, Lcom/byazt/rob/c$3;->tt:I

    .line 46
    .line 47
    invoke-static {v3, v1, v0, v2}, Lcom/byazt/rob/ve;->tt(Lcom/byazt/ete/ic;ZII)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/byazt/rob/c$3$1;->tt:Lcom/byazt/rob/c$3;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/byazt/rob/c$3;->ve:Lcom/byazt/rob/c;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/byazt/rob/c;->c()V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/byazt/rob/c$3$1;->tt:Lcom/byazt/rob/c$3;

    .line 59
    .line 60
    iget-object v1, v0, Lcom/byazt/rob/c$3;->c:Lcom/byazt/ete/ic;

    .line 61
    .line 62
    iget v0, v0, Lcom/byazt/rob/c$3;->tt:I

    .line 63
    .line 64
    const/4 v3, 0x3

    .line 65
    invoke-static {v1, v2, v0, v3}, Lcom/byazt/rob/ve;->tt(Lcom/byazt/ete/ic;ZII)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/byazt/rob/c$3$1;->tt:Lcom/byazt/rob/c$3;

    .line 70
    .line 71
    iget-object v0, v0, Lcom/byazt/rob/c$3;->ve:Lcom/byazt/rob/c;

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/byazt/rob/c;->c()V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/byazt/rob/c$3$1;->tt:Lcom/byazt/rob/c$3;

    .line 77
    .line 78
    iget-object v3, v0, Lcom/byazt/rob/c$3;->c:Lcom/byazt/ete/ic;

    .line 79
    .line 80
    iget v0, v0, Lcom/byazt/rob/c$3;->tt:I

    .line 81
    .line 82
    invoke-static {v3, v2, v0, v1}, Lcom/byazt/rob/ve;->tt(Lcom/byazt/ete/ic;ZII)V

    .line 83
    .line 84
    .line 85
    :goto_0
    iget-object v0, p0, Lcom/byazt/rob/c$3$1;->tt:Lcom/byazt/rob/c$3;

    .line 86
    .line 87
    iget-object v0, v0, Lcom/byazt/rob/c$3;->ve:Lcom/byazt/rob/c;

    .line 88
    .line 89
    invoke-static {v0}, Lcom/byazt/rob/c;->c(Lcom/byazt/rob/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 94
    .line 95
    .line 96
    return-void
.end method
