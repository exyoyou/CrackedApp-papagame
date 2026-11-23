.class public Lcom/byazt/cjm/tt$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4db,
        0x295
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/cjm/tt$3;->c(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/cjm/tt$3;


# direct methods
.method public constructor <init>(Lcom/byazt/cjm/tt$3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/cjm/tt$3$1;->c:Lcom/byazt/cjm/tt$3;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/cjm/tt$3$1;->c:Lcom/byazt/cjm/tt$3;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/cjm/tt$3;->c:Lcom/byazt/cjm/tt;

    .line 4
    .line 5
    const-string v1, "\u5f53\u524d\u65e0\u65b0\u89c6\u9891\uff0c\u8bf7\u70b9\u51fb\u91cd\u8bd5"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/byazt/cjm/tt;->c(Lcom/byazt/cjm/tt;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/byazt/cjm/tt$3$1;->c:Lcom/byazt/cjm/tt$3;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/byazt/cjm/tt$3;->c:Lcom/byazt/cjm/tt;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/byazt/cjm/tt;->uj(Lcom/byazt/cjm/tt;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/byazt/cjm/tt$3$1;->c:Lcom/byazt/cjm/tt$3;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/byazt/cjm/tt$3;->c:Lcom/byazt/cjm/tt;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/byazt/cjm/tt;->n(Lcom/byazt/cjm/tt;)Lcom/byazt/hc/c;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lcom/byazt/cjm/tt$3$1;->c:Lcom/byazt/cjm/tt$3;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/byazt/cjm/tt$3;->c:Lcom/byazt/cjm/tt;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/byazt/cjm/tt;->n(Lcom/byazt/cjm/tt;)Lcom/byazt/hc/c;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/byazt/qq/tt;->n()V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object v0, p0, Lcom/byazt/cjm/tt$3$1;->c:Lcom/byazt/cjm/tt$3;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/byazt/cjm/tt$3;->c:Lcom/byazt/cjm/tt;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/byazt/cjm/tt;->c(Lcom/byazt/cjm/tt;)Lcom/byazt/cjm/c$c;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const/16 v1, 0x8

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    invoke-interface {v0, v1, v2}, Lcom/byazt/cjm/c$c;->c(ILcom/byazt/ff/TTProgressBar;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method
