.class public Lcom/byazt/nm/i$c$2;
.super Lcom/byazt/ft/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x249,
        0x4eb
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/nm/i$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/nm/i$c;


# direct methods
.method public constructor <init>(Lcom/byazt/nm/i$c;Ljava/util/function/Function;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/nm/i$c$2;->c:Lcom/byazt/nm/i$c;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/byazt/ft/tt;-><init>(Ljava/util/function/Function;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;FF)V
    .locals 0

    .line 5
    iget-object p1, p0, Lcom/byazt/nm/i$c$2;->c:Lcom/byazt/nm/i$c;

    invoke-static {p1}, Lcom/byazt/nm/i$c;->sp(Lcom/byazt/nm/i$c;)Lcom/byazt/me/tt;

    move-result-object p1

    instance-of p1, p1, Lcom/byazt/me/a;

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/byazt/nm/i$c$2;->c:Lcom/byazt/nm/i$c;

    invoke-static {p1}, Lcom/byazt/nm/i$c;->x(Lcom/byazt/nm/i$c;)Lcom/byazt/me/tt;

    move-result-object p1

    check-cast p1, Lcom/byazt/me/a;

    invoke-interface {p1, p2, p3}, Lcom/byazt/me/a;->c(FF)V

    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/byazt/nm/i$c$2;->c:Lcom/byazt/nm/i$c;

    invoke-static {p2}, Lcom/byazt/nm/i$c;->c(Lcom/byazt/nm/i$c;)Lcom/byazt/me/tt;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/byazt/nm/i$c$2;->c:Lcom/byazt/nm/i$c;

    invoke-static {p2}, Lcom/byazt/nm/i$c;->tt(Lcom/byazt/nm/i$c;)Lcom/byazt/me/tt;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/byazt/me/tt;->c(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;Ljava/lang/String;I)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/nm/i$c$2;->c:Lcom/byazt/nm/i$c;

    invoke-static {v0}, Lcom/byazt/nm/i$c;->n(Lcom/byazt/nm/i$c;)Lcom/byazt/me/tt;

    move-result-object v0

    instance-of v0, v0, Lcom/byazt/me/a;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/byazt/nm/i$c$2;->c:Lcom/byazt/nm/i$c;

    invoke-static {v0}, Lcom/byazt/nm/i$c;->a(Lcom/byazt/nm/i$c;)Lcom/byazt/me/tt;

    move-result-object v0

    check-cast v0, Lcom/byazt/me/a;

    invoke-interface {v0, p1, p2, p3}, Lcom/byazt/me/a;->c(Landroid/view/View;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public tt(Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/byazt/nm/i$c$2;->c:Lcom/byazt/nm/i$c;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/byazt/nm/i$c;->ve(Lcom/byazt/nm/i$c;)Lcom/byazt/me/tt;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/byazt/nm/i$c$2;->c:Lcom/byazt/nm/i$c;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/byazt/nm/i$c;->uj(Lcom/byazt/nm/i$c;)Lcom/byazt/me/tt;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/byazt/me/tt;->c()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
