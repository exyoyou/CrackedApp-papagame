.class public Lcom/byazt/qe/tt$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2b9,
        0xc2
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/qe/tt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/qe/tt;

.field public final tt:Lcom/byazt/yf/n;

.field public final uj:Lorg/json/JSONObject;

.field public ve:I


# direct methods
.method public constructor <init>(Lcom/byazt/qe/tt;Lcom/byazt/yf/n;ILorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/qe/tt$c;->c:Lcom/byazt/qe/tt;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/qe/tt$c;->tt:Lcom/byazt/yf/n;

    .line 7
    .line 8
    iput p3, p0, Lcom/byazt/qe/tt$c;->ve:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/byazt/qe/tt$c;->uj:Lorg/json/JSONObject;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/qe/tt$c;->c:Lcom/byazt/qe/tt;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/qe/tt;->ve(Lcom/byazt/qe/tt;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/byazt/vx/qy;->c(Landroid/content/Context;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/qe/tt$c;->c:Lcom/byazt/qe/tt;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/byazt/qe/tt;->tt(Lcom/byazt/qe/tt;)Lcom/byazt/qe/c;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-interface {v0, v1, v2}, Lcom/byazt/qe/c;->c(ZLorg/json/JSONObject;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/byazt/qe/tt$c;->c:Lcom/byazt/qe/tt;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/byazt/qe/tt;->c(Lcom/byazt/qe/tt;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/byazt/qe/ve;->pf()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-static {}, Lcom/byazt/qe/tt;->uj()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_1

    .line 48
    .line 49
    invoke-static {v1}, Lcom/byazt/qe/tt;->tt(Z)Z

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Lcom/byazt/sx/uj;->c(Z)V

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-static {}, Lcom/byazt/jj/tt;->c()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_2

    .line 60
    .line 61
    iget-object v1, p0, Lcom/byazt/qe/tt$c;->c:Lcom/byazt/qe/tt;

    .line 62
    .line 63
    iget-object v2, p0, Lcom/byazt/qe/tt$c;->tt:Lcom/byazt/yf/n;

    .line 64
    .line 65
    iget v3, p0, Lcom/byazt/qe/tt$c;->ve:I

    .line 66
    .line 67
    iget-object v4, p0, Lcom/byazt/qe/tt$c;->uj:Lorg/json/JSONObject;

    .line 68
    .line 69
    invoke-static {v1, v0, v2, v3, v4}, Lcom/byazt/qe/tt;->c(Lcom/byazt/qe/tt;ZLcom/byazt/yf/n;ILorg/json/JSONObject;)V

    .line 70
    .line 71
    .line 72
    :cond_2
    return-void
.end method
