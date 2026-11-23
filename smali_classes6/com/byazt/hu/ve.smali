.class public Lcom/byazt/hu/ve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x565,
        0x36
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/hu/ve$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/hu/ve;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/hu/ve<",
            "TR;*>;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field

.field public n:Lcom/byazt/hu/ve;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/hu/ve<",
            "*TP;>;"
        }
    .end annotation
.end field

.field public tt:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field public uj:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/byazt/hu/ve$c<",
            "TP;TR;>;>;"
        }
    .end annotation
.end field

.field public ve:I


# direct methods
.method private constructor <init>(ILcom/byazt/hu/ve$c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/byazt/hu/ve$c<",
            "TP;TR;>;TP;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/byazt/hu/ve;->ve:I

    .line 5
    .line 6
    new-instance p1, Ljava/lang/ref/SoftReference;

    .line 7
    .line 8
    invoke-direct {p1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/byazt/hu/ve;->uj:Ljava/lang/ref/SoftReference;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/byazt/hu/ve;->c:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method

.method public static c(Lcom/byazt/hu/ve$c;Ljava/lang/Object;)Lcom/byazt/hu/ve;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/byazt/hu/ve$c<",
            "TP;TR;>;TP;)",
            "Lcom/byazt/hu/ve<",
            "TP;TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/byazt/hu/ve;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1}, Lcom/byazt/hu/ve;-><init>(ILcom/byazt/hu/ve$c;Ljava/lang/Object;)V

    return-object v0
.end method

.method private tt()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/hu/ve;->tt:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public c(ILcom/byazt/hu/ve$c;)Lcom/byazt/hu/ve;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<NR:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/byazt/hu/ve$c<",
            "TR;TNR;>;)",
            "Lcom/byazt/hu/ve<",
            "TR;TNR;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/byazt/hu/ve;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/byazt/hu/ve;-><init>(ILcom/byazt/hu/ve$c;Ljava/lang/Object;)V

    .line 3
    iput-object v0, p0, Lcom/byazt/hu/ve;->a:Lcom/byazt/hu/ve;

    .line 4
    iput-object p0, v0, Lcom/byazt/hu/ve;->n:Lcom/byazt/hu/ve;

    return-object v0
.end method

.method public c(Lcom/byazt/hu/ve$c;)Lcom/byazt/hu/ve;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<NR:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/byazt/hu/ve$c<",
            "TR;TNR;>;)",
            "Lcom/byazt/hu/ve<",
            "TR;TNR;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/byazt/hu/ve;->c(ILcom/byazt/hu/ve$c;)Lcom/byazt/hu/ve;

    move-result-object p1

    return-object p1
.end method

.method public c()V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/byazt/hu/ve;->n:Lcom/byazt/hu/ve;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/byazt/hu/ve;->c()V

    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/hu/ve;->run()V

    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/hu/ve;->ve:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/byazt/hu/u;->tt()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/byazt/di/x;->c()Lcom/byazt/di/x;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/byazt/di/x;->tt()Landroid/os/Handler;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget v0, p0, Lcom/byazt/hu/ve;->ve:I

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    if-ne v0, v1, :cond_1

    .line 27
    .line 28
    invoke-static {}, Lcom/byazt/hu/u;->tt()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-static {}, Lcom/byazt/di/n;->c()Lcom/byazt/di/n;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0, p0}, Lcom/byazt/di/n;->c(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    iget v0, p0, Lcom/byazt/hu/ve;->ve:I

    .line 43
    .line 44
    const/4 v1, 0x2

    .line 45
    if-ne v0, v1, :cond_2

    .line 46
    .line 47
    invoke-static {}, Lcom/byazt/hu/u;->tt()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    invoke-static {}, Lcom/byazt/di/n;->c()Lcom/byazt/di/n;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0, p0}, Lcom/byazt/di/n;->tt(Ljava/lang/Runnable;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/byazt/hu/ve;->c:Ljava/lang/Object;

    .line 62
    .line 63
    if-nez v0, :cond_3

    .line 64
    .line 65
    iget-object v0, p0, Lcom/byazt/hu/ve;->n:Lcom/byazt/hu/ve;

    .line 66
    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    invoke-direct {v0}, Lcom/byazt/hu/ve;->tt()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iput-object v0, p0, Lcom/byazt/hu/ve;->c:Ljava/lang/Object;

    .line 74
    .line 75
    :cond_3
    iget-object v0, p0, Lcom/byazt/hu/ve;->uj:Ljava/lang/ref/SoftReference;

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Lcom/byazt/hu/ve$c;

    .line 82
    .line 83
    if-nez v0, :cond_4

    .line 84
    .line 85
    return-void

    .line 86
    :cond_4
    iget-object v1, p0, Lcom/byazt/hu/ve;->c:Ljava/lang/Object;

    .line 87
    .line 88
    invoke-interface {v0, v1}, Lcom/byazt/hu/ve$c;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iput-object v0, p0, Lcom/byazt/hu/ve;->tt:Ljava/lang/Object;

    .line 93
    .line 94
    iget-object v0, p0, Lcom/byazt/hu/ve;->a:Lcom/byazt/hu/ve;

    .line 95
    .line 96
    if-eqz v0, :cond_5

    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/byazt/hu/ve;->run()V

    .line 99
    .line 100
    .line 101
    :cond_5
    return-void
.end method
