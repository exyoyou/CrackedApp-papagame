.class public Lcom/byazt/atv/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/xl/sp;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x86,
        0xff
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/atv/a;->c(Lcom/byazt/xl/da$c;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/xl/da$c;

.field public final synthetic tt:Lcom/byazt/atv/a;


# direct methods
.method public constructor <init>(Lcom/byazt/atv/a;Lcom/byazt/xl/da$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/atv/a$1;->tt:Lcom/byazt/atv/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/atv/a$1;->c:Lcom/byazt/xl/da$c;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(ILjava/lang/String;)V
    .locals 1

    .line 9
    new-instance v0, Lcom/byazt/sz/rl;

    invoke-direct {v0}, Lcom/byazt/sz/rl;-><init>()V

    .line 10
    invoke-virtual {v0, p1}, Lcom/byazt/sz/rl;->c(I)V

    .line 11
    invoke-virtual {v0, p2}, Lcom/byazt/sz/rl;->c(Ljava/lang/String;)V

    .line 12
    iget-object p2, p0, Lcom/byazt/atv/a$1;->tt:Lcom/byazt/atv/a;

    invoke-static {p2}, Lcom/byazt/atv/a;->c(Lcom/byazt/atv/a;)Lcom/byazt/xl/u;

    move-result-object p2

    check-cast p2, Lcom/byazt/atv/tt;

    invoke-virtual {p2}, Lcom/byazt/atv/tt;->or()Lcom/byazt/sz/qy;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/byazt/sz/qy;->c(Lcom/byazt/sz/rl;)V

    .line 13
    iget-object p2, p0, Lcom/byazt/atv/a$1;->c:Lcom/byazt/xl/da$c;

    iget-object v0, p0, Lcom/byazt/atv/a$1;->tt:Lcom/byazt/atv/a;

    invoke-interface {p2, v0}, Lcom/byazt/xl/da$c;->tt(Lcom/byazt/xl/da;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 14
    iget-object p1, p0, Lcom/byazt/atv/a$1;->c:Lcom/byazt/xl/da$c;

    iget-object p2, p0, Lcom/byazt/atv/a$1;->tt:Lcom/byazt/atv/a;

    invoke-interface {p1, p2}, Lcom/byazt/xl/da$c;->c(Lcom/byazt/xl/da;)V

    return-void

    .line 15
    :cond_0
    iget-object p2, p0, Lcom/byazt/atv/a$1;->c:Lcom/byazt/xl/da$c;

    invoke-interface {p2}, Lcom/byazt/xl/da$c;->ve()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 16
    :cond_1
    iget-object p2, p0, Lcom/byazt/atv/a$1;->c:Lcom/byazt/xl/da$c;

    invoke-interface {p2}, Lcom/byazt/xl/da$c;->tt()Lcom/byazt/xl/z;

    move-result-object p2

    if-nez p2, :cond_2

    return-void

    .line 17
    :cond_2
    invoke-interface {p2, p1}, Lcom/byazt/xl/z;->a_(I)V

    return-void
.end method

.method public c(Landroid/view/View;Lcom/byazt/xl/yp;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/byazt/atv/a$1;->c:Lcom/byazt/xl/da$c;

    invoke-interface {p1}, Lcom/byazt/xl/da$c;->ve()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Lcom/byazt/sz/rl;

    invoke-direct {p1}, Lcom/byazt/sz/rl;-><init>()V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Lcom/byazt/sz/rl;->c(I)V

    .line 4
    iget-object v0, p0, Lcom/byazt/atv/a$1;->tt:Lcom/byazt/atv/a;

    invoke-static {v0}, Lcom/byazt/atv/a;->c(Lcom/byazt/atv/a;)Lcom/byazt/xl/u;

    move-result-object v0

    check-cast v0, Lcom/byazt/atv/tt;

    invoke-virtual {v0}, Lcom/byazt/atv/tt;->or()Lcom/byazt/sz/qy;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/byazt/sz/qy;->c(Lcom/byazt/sz/rl;)V

    .line 5
    iget-object p1, p0, Lcom/byazt/atv/a$1;->tt:Lcom/byazt/atv/a;

    invoke-static {p1}, Lcom/byazt/atv/a;->c(Lcom/byazt/atv/a;)Lcom/byazt/xl/u;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/xl/u;->sp()Lcom/byazt/xl/i;

    move-result-object p1

    invoke-interface {p1}, Lcom/byazt/xl/i;->u()V

    .line 6
    iget-object p1, p0, Lcom/byazt/atv/a$1;->c:Lcom/byazt/xl/da$c;

    invoke-interface {p1}, Lcom/byazt/xl/da$c;->tt()Lcom/byazt/xl/z;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/byazt/atv/a$1;->tt:Lcom/byazt/atv/a;

    invoke-static {v0}, Lcom/byazt/atv/a;->tt(Lcom/byazt/atv/a;)Lcom/byazt/atv/n;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/byazt/xl/z;->c(Lcom/byazt/xl/uj;Lcom/byazt/xl/yp;)V

    .line 8
    iget-object p1, p0, Lcom/byazt/atv/a$1;->c:Lcom/byazt/xl/da$c;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/byazt/xl/da$c;->c(Z)V

    return-void
.end method
