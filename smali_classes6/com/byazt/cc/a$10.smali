.class public Lcom/byazt/cc/a$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/gat/tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1c0,
        0x589
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/cc/a;->c(Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;Lcom/byazt/cc/a$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/byazt/gat/tt<",
        "Lcom/byazt/im/a;",
        "Lcom/byazt/im/sp;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/dj/tt;

.field public final synthetic tt:Lcom/byazt/cc/a$c;

.field public final synthetic ve:Lcom/byazt/cc/a;


# direct methods
.method public constructor <init>(Lcom/byazt/cc/a;Lcom/byazt/dj/tt;Lcom/byazt/cc/a$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/cc/a$10;->ve:Lcom/byazt/cc/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/cc/a$10;->c:Lcom/byazt/dj/tt;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/cc/a$10;->tt:Lcom/byazt/cc/a$c;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/im/a;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/byazt/cc/a$10;->ve:Lcom/byazt/cc/a;

    invoke-static {v0}, Lcom/byazt/cc/a;->c(Lcom/byazt/cc/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/cc/a$10;->c:Lcom/byazt/dj/tt;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/byazt/dj/tt;->rl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/byazt/im/c;->tt()Lcom/byazt/ete/ic;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/cc/a$10;->ve:Lcom/byazt/cc/a;

    invoke-static {v0}, Lcom/byazt/cc/a;->tt(Lcom/byazt/cc/a;)Lcom/byazt/lh/tt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/byazt/cc/a$10;->ve:Lcom/byazt/cc/a;

    invoke-static {v0}, Lcom/byazt/cc/a;->ve(Lcom/byazt/cc/a;)Lcom/byazt/lh/tt;

    move-result-object v1

    invoke-virtual {p1}, Lcom/byazt/im/c;->tt()Lcom/byazt/ete/ic;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/ete/ic;->qy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/ip/uj;->tt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/byazt/cc/a;->c(Lcom/byazt/cc/a;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_7

    .line 4
    invoke-virtual {p1}, Lcom/byazt/im/c;->tt()Lcom/byazt/ete/ic;

    move-result-object v2

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/im/c;->tt()Lcom/byazt/ete/ic;

    move-result-object v2

    .line 6
    invoke-virtual {p1}, Lcom/byazt/im/a;->n()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7
    iget-object v0, p0, Lcom/byazt/cc/a$10;->ve:Lcom/byazt/cc/a;

    invoke-static {v0}, Lcom/byazt/cc/a;->uj(Lcom/byazt/cc/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 8
    iget-object v0, p0, Lcom/byazt/cc/a$10;->ve:Lcom/byazt/cc/a;

    invoke-static {v0, p1}, Lcom/byazt/cc/a;->c(Lcom/byazt/cc/a;Lcom/byazt/im/a;)Lcom/byazt/im/a;

    .line 9
    iget-object v0, p0, Lcom/byazt/cc/a$10;->ve:Lcom/byazt/cc/a;

    invoke-static {v0}, Lcom/byazt/cc/a;->n(Lcom/byazt/cc/a;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/byazt/cc/a$10;->ve:Lcom/byazt/cc/a;

    invoke-static {v0, v1}, Lcom/byazt/cc/a;->c(Lcom/byazt/cc/a;Z)Z

    goto :goto_0

    .line 11
    :cond_2
    iget-object v3, p0, Lcom/byazt/cc/a$10;->ve:Lcom/byazt/cc/a;

    invoke-static {v3, p1}, Lcom/byazt/cc/a;->tt(Lcom/byazt/cc/a;Lcom/byazt/im/a;)Lcom/byazt/im/a;

    .line 12
    iget-object v3, p0, Lcom/byazt/cc/a$10;->ve:Lcom/byazt/cc/a;

    invoke-static {v3, v0}, Lcom/byazt/cc/a;->c(Lcom/byazt/cc/a;Z)Z

    .line 13
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/byazt/cc/a$10;->ve:Lcom/byazt/cc/a;

    invoke-static {v0}, Lcom/byazt/cc/a;->a(Lcom/byazt/cc/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/byazt/cc/a$10;->ve:Lcom/byazt/cc/a;

    invoke-static {v0}, Lcom/byazt/cc/a;->sp(Lcom/byazt/cc/a;)Lcom/byazt/cc/a$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/cc/a$c;->ve()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/byazt/cc/a$10;->ve:Lcom/byazt/cc/a;

    invoke-static {v0}, Lcom/byazt/cc/a;->x(Lcom/byazt/cc/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_4

    goto :goto_1

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/byazt/cc/a$10;->ve:Lcom/byazt/cc/a;

    invoke-static {v0, p1}, Lcom/byazt/cc/a;->ve(Lcom/byazt/cc/a;Lcom/byazt/im/a;)V

    .line 15
    iget-object v0, p0, Lcom/byazt/cc/a$10;->ve:Lcom/byazt/cc/a;

    invoke-virtual {p1}, Lcom/byazt/im/a;->n()Z

    move-result v1

    invoke-static {v0, v2, v1}, Lcom/byazt/cc/a;->c(Lcom/byazt/cc/a;Lcom/byazt/ete/ic;Z)Z

    move-result v0

    const-string v1, "Splash_FullLink"

    if-eqz v0, :cond_5

    const-string v0, "\u5f00\u59cb\u5e76\u53d1\u52a0\u8f7d\u7d20\u6750 "

    .line 16
    invoke-static {v1, v0}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/byazt/cc/a$10;->ve:Lcom/byazt/cc/a;

    iget-object v1, p0, Lcom/byazt/cc/a$10;->tt:Lcom/byazt/cc/a$c;

    invoke-static {v0, p1, v1}, Lcom/byazt/cc/a;->c(Lcom/byazt/cc/a;Lcom/byazt/im/a;Lcom/byazt/cc/a$c;)V

    return-void

    .line 18
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u5f00\u59cb\u4e32\u884c\u52a0\u8f7d\u7d20\u6750 getReqId "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/byazt/im/c;->tt()Lcom/byazt/ete/ic;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/ete/ic;->qy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/byazt/cc/a$10;->ve:Lcom/byazt/cc/a;

    iget-object v1, p0, Lcom/byazt/cc/a$10;->tt:Lcom/byazt/cc/a$c;

    invoke-static {v0, p1, v1}, Lcom/byazt/cc/a;->tt(Lcom/byazt/cc/a;Lcom/byazt/im/a;Lcom/byazt/cc/a$c;)V

    return-void

    .line 20
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/byazt/cc/a$10;->ve:Lcom/byazt/cc/a;

    invoke-virtual {p1}, Lcom/byazt/im/a;->n()Z

    move-result v2

    invoke-static {v0, p1, v2, v1}, Lcom/byazt/cc/a;->c(Lcom/byazt/cc/a;Lcom/byazt/im/a;ZZ)V

    return-void

    .line 21
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/byazt/cc/a$10;->tt:Lcom/byazt/cc/a$c;

    new-instance v2, Lcom/byazt/im/sp;

    const-string v3, "no ad model"

    invoke-direct {v2, v1, v3, v0}, Lcom/byazt/im/sp;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p1, v2}, Lcom/byazt/cc/a$c;->c(Lcom/byazt/im/sp;)V

    return-void
.end method

.method public c(Lcom/byazt/im/sp;)V
    .locals 4

    .line 22
    iget-object v0, p0, Lcom/byazt/cc/a$10;->ve:Lcom/byazt/cc/a;

    invoke-static {v0}, Lcom/byazt/cc/a;->i(Lcom/byazt/cc/a;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/byazt/cc/a$10;->ve:Lcom/byazt/cc/a;

    .line 23
    invoke-static {v0}, Lcom/byazt/cc/a;->da(Lcom/byazt/cc/a;)Lcom/byazt/cc/tt;

    move-result-object v0

    iget v0, v0, Lcom/byazt/cc/tt;->ve:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 24
    iget-object p1, p0, Lcom/byazt/cc/a$10;->ve:Lcom/byazt/cc/a;

    invoke-static {p1, v1}, Lcom/byazt/cc/a;->c(Lcom/byazt/cc/a;I)I

    .line 25
    iget-object p1, p0, Lcom/byazt/cc/a$10;->ve:Lcom/byazt/cc/a;

    iget-object v0, p0, Lcom/byazt/cc/a$10;->c:Lcom/byazt/dj/tt;

    invoke-static {p1}, Lcom/byazt/cc/a;->sl(Lcom/byazt/cc/a;)Lcom/byazt/ete/bm;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/cc/a$10;->ve:Lcom/byazt/cc/a;

    invoke-static {v2}, Lcom/byazt/cc/a;->i(Lcom/byazt/cc/a;)I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lcom/byazt/cc/a;->c(Lcom/byazt/cc/a;Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;I)V

    return-void

    .line 26
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/im/sp;->x()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 27
    iget-object v3, p0, Lcom/byazt/cc/a$10;->ve:Lcom/byazt/cc/a;

    invoke-static {v3}, Lcom/byazt/cc/a;->uj(Lcom/byazt/cc/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 28
    :cond_2
    iget-object v3, p0, Lcom/byazt/cc/a$10;->ve:Lcom/byazt/cc/a;

    invoke-static {v3, v0}, Lcom/byazt/cc/a;->tt(Lcom/byazt/cc/a;Z)Z

    move-result v0

    if-nez v0, :cond_6

    .line 29
    iget-object v0, p0, Lcom/byazt/cc/a$10;->ve:Lcom/byazt/cc/a;

    invoke-static {v0, p1}, Lcom/byazt/cc/a;->c(Lcom/byazt/cc/a;Lcom/byazt/im/sp;)Lcom/byazt/im/sp;

    .line 30
    iget-object v0, p0, Lcom/byazt/cc/a$10;->ve:Lcom/byazt/cc/a;

    invoke-static {v0}, Lcom/byazt/cc/a;->n(Lcom/byazt/cc/a;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 31
    iget-object v0, p0, Lcom/byazt/cc/a$10;->ve:Lcom/byazt/cc/a;

    invoke-static {v0}, Lcom/byazt/cc/a;->uj(Lcom/byazt/cc/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 32
    iget-object v0, p0, Lcom/byazt/cc/a$10;->tt:Lcom/byazt/cc/a$c;

    invoke-virtual {v0, p1}, Lcom/byazt/cc/a$c;->c(Lcom/byazt/im/sp;)V

    goto :goto_1

    .line 33
    :cond_3
    iget-object p1, p0, Lcom/byazt/cc/a$10;->ve:Lcom/byazt/cc/a;

    invoke-static {p1}, Lcom/byazt/cc/a;->uj(Lcom/byazt/cc/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 34
    iget-object p1, p0, Lcom/byazt/cc/a$10;->ve:Lcom/byazt/cc/a;

    invoke-static {p1}, Lcom/byazt/cc/a;->t(Lcom/byazt/cc/a;)V

    .line 35
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/byazt/cc/a$10;->ve:Lcom/byazt/cc/a;

    invoke-static {p1}, Lcom/byazt/cc/a;->u(Lcom/byazt/cc/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 36
    :cond_5
    iget-object v0, p0, Lcom/byazt/cc/a$10;->tt:Lcom/byazt/cc/a$c;

    invoke-virtual {v0, p1}, Lcom/byazt/cc/a$c;->c(Lcom/byazt/im/sp;)V

    return-void

    .line 37
    :cond_6
    iget-object p1, p0, Lcom/byazt/cc/a$10;->ve:Lcom/byazt/cc/a;

    invoke-static {p1}, Lcom/byazt/cc/a;->u(Lcom/byazt/cc/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 38
    iget-object p1, p0, Lcom/byazt/cc/a$10;->tt:Lcom/byazt/cc/a$c;

    iget-object v0, p0, Lcom/byazt/cc/a$10;->ve:Lcom/byazt/cc/a;

    invoke-static {v0}, Lcom/byazt/cc/a;->yp(Lcom/byazt/cc/a;)Lcom/byazt/im/sp;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/byazt/cc/a$c;->c(Lcom/byazt/im/sp;)V

    :cond_7
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/byazt/im/sp;

    invoke-virtual {p0, p1}, Lcom/byazt/cc/a$10;->c(Lcom/byazt/im/sp;)V

    return-void
.end method

.method public synthetic tt(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/byazt/im/a;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/byazt/cc/a$10;->c(Lcom/byazt/im/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
