.class public Lcom/byazt/ts/uj$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x165,
        0x7b
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/ts/uj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ts/uj;

.field public tt:J

.field public ve:Z


# direct methods
.method public constructor <init>(Lcom/byazt/ts/uj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ts/uj$c;->c:Lcom/byazt/ts/uj;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/ts/uj$c;->tt:J

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/ts/uj$c;->ve:Z

    return-void
.end method

.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/ts/uj$c;->c:Lcom/byazt/ts/uj;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ts/uj;->c(Lcom/byazt/ts/uj;)Lcom/byazt/ts/ve;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    :try_start_0
    iget-boolean v0, p0, Lcom/byazt/ts/uj$c;->ve:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/ts/uj$c;->c:Lcom/byazt/ts/uj;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/byazt/ts/uj;->c(Lcom/byazt/ts/uj;)Lcom/byazt/ts/ve;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Lcom/byazt/ts/ve;->i()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    iget-object v2, p0, Lcom/byazt/ts/uj$c;->c:Lcom/byazt/ts/uj;

    .line 24
    .line 25
    iget-wide v3, p0, Lcom/byazt/ts/uj$c;->tt:J

    .line 26
    .line 27
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    invoke-static {v2, v0, v1}, Lcom/byazt/ts/uj;->uj(Lcom/byazt/ts/uj;J)J

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lcom/byazt/ts/uj$c;->c:Lcom/byazt/ts/uj;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/byazt/ts/uj;->sl(Lcom/byazt/ts/uj;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    nop

    .line 41
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/byazt/ts/uj$c;->c:Lcom/byazt/ts/uj;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/byazt/ts/uj;->x(Lcom/byazt/ts/uj;)Landroid/os/Handler;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    iget-object v0, p0, Lcom/byazt/ts/uj$c;->c:Lcom/byazt/ts/uj;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/byazt/ts/uj;->x(Lcom/byazt/ts/uj;)Landroid/os/Handler;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const/16 v1, 0x64

    .line 56
    .line 57
    const-wide/16 v2, 0x0

    .line 58
    .line 59
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 60
    .line 61
    .line 62
    :cond_2
    return-void
.end method
