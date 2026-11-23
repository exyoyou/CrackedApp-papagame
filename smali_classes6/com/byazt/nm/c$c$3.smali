.class public Lcom/byazt/nm/c$c$3;
.super Lcom/byazt/lsp/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x249,
        0x681
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/nm/c$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/nm/c$c;


# direct methods
.method public constructor <init>(Lcom/byazt/nm/c$c;Ljava/util/function/Function;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/nm/c$c$3;->c:Lcom/byazt/nm/c$c;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/byazt/lsp/c;-><init>(Ljava/util/function/Function;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;Lcom/byazt/nc/u;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/byazt/nm/c$c$3;->c:Lcom/byazt/nm/c$c;

    invoke-static {p2}, Lcom/byazt/nm/c$c;->n(Lcom/byazt/nm/c$c;)Lcom/byazt/zq/a;

    move-result-object p2

    instance-of p2, p2, Lcom/byazt/zq/c;

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/byazt/nm/c$c$3;->c:Lcom/byazt/nm/c$c;

    invoke-static {p2}, Lcom/byazt/nm/c$c;->ve(Lcom/byazt/nm/c$c;)Lcom/byazt/zq/c;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/byazt/oc/c;->c(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/nc/u;)V
    .locals 1

    .line 3
    iget-object p1, p0, Lcom/byazt/nm/c$c$3;->c:Lcom/byazt/nm/c$c;

    invoke-static {p1}, Lcom/byazt/nm/c$c;->sp(Lcom/byazt/nm/c$c;)Lcom/byazt/zq/a;

    move-result-object p1

    instance-of p1, p1, Lcom/byazt/zq/c;

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/byazt/nm/c$c$3;->c:Lcom/byazt/nm/c$c;

    invoke-static {p1}, Lcom/byazt/nm/c$c;->ve(Lcom/byazt/nm/c$c;)Lcom/byazt/zq/c;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/byazt/oc/c;->tt(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public tt(Landroid/view/View;Lcom/byazt/nc/u;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/byazt/nm/c$c$3;->c:Lcom/byazt/nm/c$c;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/byazt/nm/c$c;->a(Lcom/byazt/nm/c$c;)Lcom/byazt/zq/a;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    instance-of p2, p2, Lcom/byazt/zq/c;

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    iget-object p2, p0, Lcom/byazt/nm/c$c$3;->c:Lcom/byazt/nm/c$c;

    .line 12
    .line 13
    invoke-static {p2}, Lcom/byazt/nm/c$c;->ve(Lcom/byazt/nm/c$c;)Lcom/byazt/zq/c;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-interface {p2, p1}, Lcom/byazt/oc/c;->c(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
