.class public Lcom/byazt/ysz/sp$3$1$1;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x24d,
        0x6ac
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ysz/sp$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ysz/sp$3$1;


# direct methods
.method public constructor <init>(Lcom/byazt/ysz/sp$3$1;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ysz/sp$3$1$1;->c:Lcom/byazt/ysz/sp$3$1;

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
    iget-object v0, p0, Lcom/byazt/ysz/sp$3$1$1;->c:Lcom/byazt/ysz/sp$3$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/ysz/sp$3$1;->c:Lcom/byazt/ysz/sp$3;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/byazt/ysz/sp$3;->c:Lcom/byazt/ysz/sp;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/byazt/ysz/sp;->ve(Lcom/byazt/ysz/sp;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, -0x3

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/byazt/ysz/sp$3$1$1;->c:Lcom/byazt/ysz/sp$3$1;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/byazt/ysz/sp$3$1;->c:Lcom/byazt/ysz/sp$3;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/byazt/ysz/sp$3;->c:Lcom/byazt/ysz/sp;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/byazt/ysz/sp;->uj(Lcom/byazt/ysz/sp;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/byazt/ysz/sp$3$1$1;->c:Lcom/byazt/ysz/sp$3$1;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/byazt/ysz/sp$3$1;->c:Lcom/byazt/ysz/sp$3;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/byazt/ysz/sp$3;->c:Lcom/byazt/ysz/sp;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/byazt/ysz/sp;->c()V

    .line 36
    .line 37
    .line 38
    return-void
.end method
