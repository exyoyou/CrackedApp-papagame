.class public Lcom/byazt/hz/uj$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2bd,
        0x67
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/hz/uj;->qy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/app/Activity;

.field public final synthetic tt:Lcom/byazt/yl/ve;

.field public final synthetic uj:Lcom/byazt/hz/uj;

.field public final synthetic ve:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/byazt/hz/uj;Landroid/app/Activity;Lcom/byazt/yl/ve;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/hz/uj$3;->uj:Lcom/byazt/hz/uj;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/hz/uj$3;->c:Landroid/app/Activity;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/hz/uj$3;->tt:Lcom/byazt/yl/ve;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/hz/uj$3;->ve:Landroid/app/Activity;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/uj$3;->uj:Lcom/byazt/hz/uj;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/hz/uj$3;->c:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/hz/uj;->c(Lcom/byazt/hz/uj;Landroid/app/Activity;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/hz/uj$3;->uj:Lcom/byazt/hz/uj;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/byazt/hz/uj;->n(Lcom/byazt/hz/uj;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const-string v0, "--==--- \u63d2\u5168\u5c4f\u8f6e\u64ad \u5f00\u59cb\uff0c\u5148showingActivity finish"

    .line 18
    .line 19
    const-string v1, "TTMediationSDK"

    .line 20
    .line 21
    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/byazt/hz/uj$3;->uj:Lcom/byazt/hz/uj;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    iput-boolean v2, v0, Lcom/byazt/hz/uj;->m:Z

    .line 28
    .line 29
    iget-object v0, p0, Lcom/byazt/hz/uj$3;->c:Landroid/app/Activity;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/byazt/hz/uj$3;->tt:Lcom/byazt/yl/ve;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->onDestroy()V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/byazt/hz/uj$3;->uj:Lcom/byazt/hz/uj;

    .line 40
    .line 41
    new-instance v2, Ljava/lang/ref/SoftReference;

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-direct {v2, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v2}, Lcom/byazt/hz/uj;->c(Lcom/byazt/hz/uj;Ljava/lang/ref/SoftReference;)Ljava/lang/ref/SoftReference;

    .line 48
    .line 49
    .line 50
    const-string v0, "--==--- \u63d2\u5168\u5c4f\u8f6e\u64ad\u5f00\u59cb showingActivity finish end"

    .line 51
    .line 52
    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/byazt/hz/uj$3;->uj:Lcom/byazt/hz/uj;

    .line 56
    .line 57
    const/4 v1, 0x1

    .line 58
    invoke-static {v0, v1}, Lcom/byazt/hz/uj;->c(Lcom/byazt/hz/uj;Z)Z

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/byazt/hz/uj$3;->uj:Lcom/byazt/hz/uj;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/byazt/hz/uj$3;->ve:Landroid/app/Activity;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/byazt/hz/uj;->ve(Lcom/byazt/hz/uj;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    iget-object v3, p0, Lcom/byazt/hz/uj$3;->uj:Lcom/byazt/hz/uj;

    .line 70
    .line 71
    invoke-static {v3}, Lcom/byazt/hz/uj;->uj(Lcom/byazt/hz/uj;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v0, v1, v2, v3}, Lcom/byazt/hz/uj;->c(Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method
