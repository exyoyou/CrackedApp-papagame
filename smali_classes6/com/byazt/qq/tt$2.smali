.class public Lcom/byazt/qq/tt$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ux/n$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x58,
        0x5c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/qq/tt;->ve(Lcom/byazt/qq/da;)Lcom/byazt/qq/tt$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic n:Lcom/byazt/qq/tt;

.field public final synthetic tt:Lcom/byazt/sgn/a;

.field public final synthetic uj:Lcom/byazt/qq/da;

.field public final synthetic ve:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/byazt/qq/tt;Ljava/util/concurrent/CountDownLatch;Lcom/byazt/sgn/a;Landroid/view/ViewGroup;Lcom/byazt/qq/da;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/qq/tt$2;->n:Lcom/byazt/qq/tt;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/qq/tt$2;->c:Ljava/util/concurrent/CountDownLatch;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/qq/tt$2;->tt:Lcom/byazt/sgn/a;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/qq/tt$2;->ve:Landroid/view/ViewGroup;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/byazt/qq/tt$2;->uj:Lcom/byazt/qq/da;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public c(Lorg/json/JSONObject;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/qq/tt$2;->n:Lcom/byazt/qq/tt;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/qq/tt;->yp:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    if-nez p1, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, Lcom/byazt/qq/tt$2;->n:Lcom/byazt/qq/tt;

    .line 15
    .line 16
    new-instance v0, Lcom/byazt/qq/tt$c;

    .line 17
    .line 18
    const-string v1, ""

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-direct {v0, v2, v2, v1}, Lcom/byazt/qq/tt$c;-><init>(ZILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p1, Lcom/byazt/qq/tt;->u:Lcom/byazt/qq/tt$c;

    .line 25
    .line 26
    iget-object p1, p0, Lcom/byazt/qq/tt$2;->c:Ljava/util/concurrent/CountDownLatch;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/byazt/qq/tt$2;->n:Lcom/byazt/qq/tt;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/byazt/qq/tt$2;->tt:Lcom/byazt/sgn/a;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/byazt/qq/tt$2;->ve:Landroid/view/ViewGroup;

    .line 37
    .line 38
    iget-object v3, p0, Lcom/byazt/qq/tt$2;->uj:Lcom/byazt/qq/da;

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/byazt/qq/tt;->c(Lcom/byazt/sgn/a;Landroid/view/ViewGroup;Lcom/byazt/qq/da;Lorg/json/JSONObject;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/byazt/qq/tt$2;->n:Lcom/byazt/qq/tt;

    .line 44
    .line 45
    new-instance v0, Lcom/byazt/qq/tt$c;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/byazt/qq/tt;->sp()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    iget-object v2, p0, Lcom/byazt/qq/tt$2;->n:Lcom/byazt/qq/tt;

    .line 52
    .line 53
    iget-object v2, v2, Lcom/byazt/qq/tt;->i:Lcom/byazt/ete/g;

    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/byazt/ete/g;->uj()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    iget-object v3, p0, Lcom/byazt/qq/tt$2;->tt:Lcom/byazt/sgn/a;

    .line 60
    .line 61
    const/4 v4, 0x1

    .line 62
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/byazt/qq/tt$c;-><init>(ZILjava/lang/String;Landroid/app/Dialog;)V

    .line 63
    .line 64
    .line 65
    iput-object v0, p1, Lcom/byazt/qq/tt;->u:Lcom/byazt/qq/tt$c;

    .line 66
    .line 67
    iget-object p1, p0, Lcom/byazt/qq/tt$2;->c:Ljava/util/concurrent/CountDownLatch;

    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 70
    .line 71
    .line 72
    return-void
.end method
