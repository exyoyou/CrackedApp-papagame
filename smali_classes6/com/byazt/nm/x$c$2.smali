.class public Lcom/byazt/nm/x$c$2;
.super Lcom/byazt/lsp/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x249,
        0x937
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/nm/x$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/nm/x$c;


# direct methods
.method public constructor <init>(Lcom/byazt/nm/x$c;Ljava/util/function/Function;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/nm/x$c$2;->c:Lcom/byazt/nm/x$c;

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
    iget-object p2, p0, Lcom/byazt/nm/x$c$2;->c:Lcom/byazt/nm/x$c;

    invoke-static {p2}, Lcom/byazt/nm/x$c;->ve(Lcom/byazt/nm/x$c;)Lcom/byazt/me/tt;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/byazt/nm/x$c$2;->c:Lcom/byazt/nm/x$c;

    invoke-static {p2}, Lcom/byazt/nm/x$c;->uj(Lcom/byazt/nm/x$c;)Lcom/byazt/me/tt;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/byazt/me/tt;->c(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/nc/u;)V
    .locals 0

    .line 3
    iget-object p1, p0, Lcom/byazt/nm/x$c$2;->c:Lcom/byazt/nm/x$c;

    invoke-static {p1}, Lcom/byazt/nm/x$c;->sp(Lcom/byazt/nm/x$c;)Lcom/byazt/me/tt;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/byazt/nm/x$c$2;->c:Lcom/byazt/nm/x$c;

    invoke-static {p1}, Lcom/byazt/nm/x$c;->x(Lcom/byazt/nm/x$c;)Lcom/byazt/me/tt;

    move-result-object p1

    invoke-interface {p1}, Lcom/byazt/me/tt;->c()V

    :cond_0
    return-void
.end method

.method public tt(Landroid/view/View;Lcom/byazt/nc/u;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/byazt/nm/x$c$2;->c:Lcom/byazt/nm/x$c;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/byazt/nm/x$c;->n(Lcom/byazt/nm/x$c;)Lcom/byazt/me/tt;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    iget-object p2, p0, Lcom/byazt/nm/x$c$2;->c:Lcom/byazt/nm/x$c;

    .line 10
    .line 11
    invoke-static {p2}, Lcom/byazt/nm/x$c;->a(Lcom/byazt/nm/x$c;)Lcom/byazt/me/tt;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-interface {p2, p1}, Lcom/byazt/me/tt;->c(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
