.class public Lcom/byazt/cc/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1c0,
        0x188
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/cc/a;->c(Lcom/byazt/im/x;Lcom/byazt/im/a;Lcom/byazt/cc/a$c;Lcom/byazt/nc/tt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Z

.field public final synthetic n:Lcom/byazt/cc/a;

.field public final synthetic tt:J

.field public final synthetic uj:Lcom/byazt/im/x;

.field public final synthetic ve:Lcom/byazt/cc/a$c;


# direct methods
.method public constructor <init>(Lcom/byazt/cc/a;ZJLcom/byazt/cc/a$c;Lcom/byazt/im/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/cc/a$3;->n:Lcom/byazt/cc/a;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/byazt/cc/a$3;->c:Z

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/byazt/cc/a$3;->tt:J

    .line 6
    .line 7
    iput-object p5, p0, Lcom/byazt/cc/a$3;->ve:Lcom/byazt/cc/a$c;

    .line 8
    .line 9
    iput-object p6, p0, Lcom/byazt/cc/a$3;->uj:Lcom/byazt/im/x;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/byazt/cc/a$3;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/cc/a$3;->n:Lcom/byazt/cc/a;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/byazt/cc/a;->z(Lcom/byazt/cc/a;)Lcom/byazt/ete/y;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/byazt/cc/a$3;->n:Lcom/byazt/cc/a;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/byazt/cc/a;->qy(Lcom/byazt/cc/a;)Lcom/byazt/ete/y;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_0
    iget-wide v1, p0, Lcom/byazt/cc/a$3;->tt:J

    .line 19
    .line 20
    invoke-static {v0, v1, v2}, Lcom/byazt/cc/sp;->uj(Lcom/byazt/ete/y;J)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/byazt/cc/a$3;->ve:Lcom/byazt/cc/a$c;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/byazt/cc/a$3;->uj:Lcom/byazt/im/x;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/byazt/cc/a$c;->c(Lcom/byazt/im/x;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/byazt/cc/a$3;->n:Lcom/byazt/cc/a;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/byazt/cc/a;->eo(Lcom/byazt/cc/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    iget-object v0, p0, Lcom/byazt/cc/a$3;->ve:Lcom/byazt/cc/a$c;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/byazt/cc/a$3;->n:Lcom/byazt/cc/a;

    .line 45
    .line 46
    invoke-static {v1}, Lcom/byazt/cc/a;->zb(Lcom/byazt/cc/a;)Lcom/byazt/im/i;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Lcom/byazt/cc/a$c;->c(Lcom/byazt/im/i;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void
.end method
