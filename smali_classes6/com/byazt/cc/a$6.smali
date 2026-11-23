.class public Lcom/byazt/cc/a$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/gat/uj;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1c0,
        0x18d
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/cc/a;->tt(Lcom/byazt/im/a;Lcom/byazt/im/x;Lcom/byazt/cc/a$c;)Lcom/byazt/gat/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/byazt/gat/uj<",
        "Lcom/byazt/im/i;",
        "Lcom/byazt/im/sp;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/im/a;

.field public final synthetic tt:Lcom/byazt/cc/a$c;

.field public final synthetic ve:Lcom/byazt/cc/a;


# direct methods
.method public constructor <init>(Lcom/byazt/cc/a;Lcom/byazt/im/a;Lcom/byazt/cc/a$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/cc/a$6;->ve:Lcom/byazt/cc/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/cc/a$6;->c:Lcom/byazt/im/a;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/cc/a$6;->tt:Lcom/byazt/cc/a$c;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/byazt/cc/a$6;->ve:Lcom/byazt/cc/a;

    iget-object v1, p0, Lcom/byazt/cc/a$6;->c:Lcom/byazt/im/a;

    invoke-static {v0, v1}, Lcom/byazt/cc/a;->uj(Lcom/byazt/cc/a;Lcom/byazt/im/a;)V

    return-void
.end method

.method public c(Lcom/byazt/im/i;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/cc/a$6;->ve:Lcom/byazt/cc/a;

    iget-object v1, p0, Lcom/byazt/cc/a$6;->c:Lcom/byazt/im/a;

    invoke-virtual {v1}, Lcom/byazt/im/a;->n()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/byazt/cc/a;->i(Lcom/byazt/cc/a;Z)V

    .line 3
    iget-object v0, p0, Lcom/byazt/cc/a$6;->ve:Lcom/byazt/cc/a;

    invoke-static {v0}, Lcom/byazt/cc/a;->gu(Lcom/byazt/cc/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/byazt/cc/a$6;->c:Lcom/byazt/im/a;

    invoke-virtual {v0}, Lcom/byazt/im/a;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/byazt/cc/a$6;->tt:Lcom/byazt/cc/a$c;

    invoke-virtual {v0, p1}, Lcom/byazt/cc/a$c;->c(Lcom/byazt/im/i;)V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/cc/a$6;->c:Lcom/byazt/im/a;

    invoke-virtual {v0}, Lcom/byazt/im/a;->n()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/byazt/cc/a$6;->tt:Lcom/byazt/cc/a$c;

    invoke-virtual {v0, p1}, Lcom/byazt/cc/a$c;->c(Lcom/byazt/im/i;)V

    :cond_1
    return-void
.end method

.method public c(Lcom/byazt/im/sp;)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/byazt/cc/a$6;->tt:Lcom/byazt/cc/a$c;

    invoke-virtual {v0, p1}, Lcom/byazt/cc/a$c;->ve(Lcom/byazt/im/sp;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/byazt/im/sp;

    invoke-virtual {p0, p1}, Lcom/byazt/cc/a$6;->c(Lcom/byazt/im/sp;)V

    return-void
.end method

.method public synthetic tt(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/byazt/im/i;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/byazt/cc/a$6;->c(Lcom/byazt/im/i;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
