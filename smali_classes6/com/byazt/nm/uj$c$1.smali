.class public Lcom/byazt/nm/uj$c$1;
.super Lcom/byazt/ft/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x249,
        0x31c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/nm/uj$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/nm/uj$c;


# direct methods
.method public constructor <init>(Lcom/byazt/nm/uj$c;Ljava/util/function/Function;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/nm/uj$c$1;->c:Lcom/byazt/nm/uj$c;

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
    iget-object p1, p0, Lcom/byazt/nm/uj$c$1;->c:Lcom/byazt/nm/uj$c;

    invoke-static {p1}, Lcom/byazt/nm/uj$c;->sp(Lcom/byazt/nm/uj$c;)Lcom/byazt/fy/c;

    move-result-object p1

    instance-of p1, p1, Lcom/byazt/fy/uj;

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/byazt/nm/uj$c$1;->c:Lcom/byazt/nm/uj$c;

    invoke-static {p1}, Lcom/byazt/nm/uj$c;->x(Lcom/byazt/nm/uj$c;)Lcom/byazt/fy/c;

    move-result-object p1

    check-cast p1, Lcom/byazt/fy/uj;

    invoke-interface {p1, p2, p3}, Lcom/byazt/fy/uj;->c(FF)V

    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/byazt/nm/uj$c$1;->c:Lcom/byazt/nm/uj$c;

    invoke-static {p2}, Lcom/byazt/nm/uj$c;->c(Lcom/byazt/nm/uj$c;)Lcom/byazt/fy/c;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/byazt/nm/uj$c$1;->c:Lcom/byazt/nm/uj$c;

    invoke-static {p2}, Lcom/byazt/nm/uj$c;->tt(Lcom/byazt/nm/uj$c;)Lcom/byazt/fy/c;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/byazt/fy/c;->c(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;Ljava/lang/String;I)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/nm/uj$c$1;->c:Lcom/byazt/nm/uj$c;

    invoke-static {v0}, Lcom/byazt/nm/uj$c;->n(Lcom/byazt/nm/uj$c;)Lcom/byazt/fy/c;

    move-result-object v0

    instance-of v0, v0, Lcom/byazt/fy/uj;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/byazt/nm/uj$c$1;->c:Lcom/byazt/nm/uj$c;

    invoke-static {v0}, Lcom/byazt/nm/uj$c;->a(Lcom/byazt/nm/uj$c;)Lcom/byazt/fy/c;

    move-result-object v0

    check-cast v0, Lcom/byazt/fy/uj;

    invoke-interface {v0, p1, p2, p3}, Lcom/byazt/fy/uj;->c(Landroid/view/View;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public tt(Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/byazt/nm/uj$c$1;->c:Lcom/byazt/nm/uj$c;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/byazt/nm/uj$c;->ve(Lcom/byazt/nm/uj$c;)Lcom/byazt/fy/c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/byazt/nm/uj$c$1;->c:Lcom/byazt/nm/uj$c;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/byazt/nm/uj$c;->uj(Lcom/byazt/nm/uj$c;)Lcom/byazt/fy/c;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/byazt/fy/c;->c()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
