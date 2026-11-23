.class public Lcom/byazt/kyz/ve$2;
.super Lcom/byazt/ft/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x222,
        0x15a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/kyz/ve;->ve()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/kyz/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/kyz/ve;Ljava/util/function/Function;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/kyz/ve$2;->c:Lcom/byazt/kyz/ve;

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
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/byazt/kyz/ve$2;->c:Lcom/byazt/kyz/ve;

    invoke-static {v0}, Lcom/byazt/kyz/ve;->t(Lcom/byazt/kyz/ve;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13
    iget-object v0, p0, Lcom/byazt/kyz/ve$2;->c:Lcom/byazt/kyz/ve;

    invoke-static {v0}, Lcom/byazt/kyz/ve;->z(Lcom/byazt/kyz/ve;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 14
    iget-object v0, p0, Lcom/byazt/kyz/ve$2;->c:Lcom/byazt/kyz/ve;

    invoke-static {v0, p1}, Lcom/byazt/kyz/ve;->n(Lcom/byazt/kyz/ve;Landroid/view/View;)Landroid/view/View;

    .line 15
    iget-object v0, p0, Lcom/byazt/kyz/ve$2;->c:Lcom/byazt/kyz/ve;

    invoke-static {v0, p2}, Lcom/byazt/kyz/ve;->c(Lcom/byazt/kyz/ve;F)F

    .line 16
    iget-object v0, p0, Lcom/byazt/kyz/ve$2;->c:Lcom/byazt/kyz/ve;

    invoke-static {v0, p3}, Lcom/byazt/kyz/ve;->tt(Lcom/byazt/kyz/ve;F)F

    .line 17
    iget-object v0, p0, Lcom/byazt/kyz/ve$2;->c:Lcom/byazt/kyz/ve;

    invoke-static {v0}, Lcom/byazt/kyz/ve;->yp(Lcom/byazt/kyz/ve;)Lcom/byazt/lsp/ve;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/byazt/kyz/ve$2;->c:Lcom/byazt/kyz/ve;

    invoke-static {v0}, Lcom/byazt/kyz/ve;->yp(Lcom/byazt/kyz/ve;)Lcom/byazt/lsp/ve;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/byazt/lsp/ve;->c(Landroid/view/View;FFZ)V

    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/byazt/kyz/ve$2;->c:Lcom/byazt/kyz/ve;

    invoke-virtual {p2}, Lcom/byazt/kyz/ve;->getLifecycleId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/byazt/rgb/tt;->ve(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/byazt/kyz/ve$2;->c:Lcom/byazt/kyz/ve;

    invoke-static {p2}, Lcom/byazt/kyz/ve;->uj(Lcom/byazt/kyz/ve;)Lcom/byazt/lsp/c;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/byazt/kyz/ve$2;->c:Lcom/byazt/kyz/ve;

    invoke-static {p2}, Lcom/byazt/kyz/ve;->uj(Lcom/byazt/kyz/ve;)Lcom/byazt/lsp/c;

    move-result-object p2

    iget-object v0, p0, Lcom/byazt/kyz/ve$2;->c:Lcom/byazt/kyz/ve;

    invoke-virtual {p2, p1, v0}, Lcom/byazt/lsp/c;->c(Landroid/view/View;Lcom/byazt/nc/u;)V

    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;Ljava/lang/String;I)V
    .locals 2

    .line 4
    iget-object p1, p0, Lcom/byazt/kyz/ve$2;->c:Lcom/byazt/kyz/ve;

    invoke-static {p1}, Lcom/byazt/kyz/ve;->t(Lcom/byazt/kyz/ve;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    iget-object p1, p0, Lcom/byazt/kyz/ve$2;->c:Lcom/byazt/kyz/ve;

    invoke-static {p1}, Lcom/byazt/kyz/ve;->tt(Lcom/byazt/kyz/ve;)Landroid/view/ViewGroup;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/byazt/kyz/ve;->n(Lcom/byazt/kyz/ve;Landroid/view/View;)Landroid/view/View;

    .line 6
    iget-object p1, p0, Lcom/byazt/kyz/ve$2;->c:Lcom/byazt/kyz/ve;

    invoke-static {p1}, Lcom/byazt/kyz/ve;->u(Lcom/byazt/kyz/ve;)Lcom/byazt/dj/tt;

    move-result-object p2

    invoke-virtual {p2}, Lcom/byazt/dj/tt;->x()F

    move-result p2

    invoke-static {p1, p2}, Lcom/byazt/kyz/ve;->c(Lcom/byazt/kyz/ve;F)F

    .line 7
    iget-object p1, p0, Lcom/byazt/kyz/ve$2;->c:Lcom/byazt/kyz/ve;

    invoke-static {p1}, Lcom/byazt/kyz/ve;->u(Lcom/byazt/kyz/ve;)Lcom/byazt/dj/tt;

    move-result-object p2

    invoke-virtual {p2}, Lcom/byazt/dj/tt;->i()F

    move-result p2

    invoke-static {p1, p2}, Lcom/byazt/kyz/ve;->tt(Lcom/byazt/kyz/ve;F)F

    .line 8
    iget-object p1, p0, Lcom/byazt/kyz/ve$2;->c:Lcom/byazt/kyz/ve;

    invoke-static {p1}, Lcom/byazt/kyz/ve;->yp(Lcom/byazt/kyz/ve;)Lcom/byazt/lsp/ve;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9
    iget-object p1, p0, Lcom/byazt/kyz/ve$2;->c:Lcom/byazt/kyz/ve;

    invoke-static {p1}, Lcom/byazt/kyz/ve;->yp(Lcom/byazt/kyz/ve;)Lcom/byazt/lsp/ve;

    move-result-object p1

    iget-object p2, p0, Lcom/byazt/kyz/ve$2;->c:Lcom/byazt/kyz/ve;

    invoke-static {p2}, Lcom/byazt/kyz/ve;->tt(Lcom/byazt/kyz/ve;)Landroid/view/ViewGroup;

    move-result-object p2

    iget-object p3, p0, Lcom/byazt/kyz/ve$2;->c:Lcom/byazt/kyz/ve;

    invoke-static {p3}, Lcom/byazt/kyz/ve;->u(Lcom/byazt/kyz/ve;)Lcom/byazt/dj/tt;

    move-result-object p3

    invoke-virtual {p3}, Lcom/byazt/dj/tt;->x()F

    move-result p3

    iget-object v0, p0, Lcom/byazt/kyz/ve$2;->c:Lcom/byazt/kyz/ve;

    .line 10
    invoke-static {v0}, Lcom/byazt/kyz/ve;->u(Lcom/byazt/kyz/ve;)Lcom/byazt/dj/tt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/dj/tt;->i()F

    move-result v0

    const/4 v1, 0x0

    .line 11
    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/byazt/lsp/ve;->c(Landroid/view/View;FFZ)V

    :cond_0
    return-void
.end method

.method public tt(Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/byazt/kyz/ve$2;->c:Lcom/byazt/kyz/ve;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/byazt/kyz/ve;->getLifecycleId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 p2, 0x0

    .line 8
    invoke-static {p1, p2}, Lcom/byazt/rgb/tt;->c(Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/byazt/kyz/ve$2;->c:Lcom/byazt/kyz/ve;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/byazt/kyz/ve;->uj(Lcom/byazt/kyz/ve;)Lcom/byazt/lsp/c;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/byazt/kyz/ve$2;->c:Lcom/byazt/kyz/ve;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/byazt/kyz/ve;->uj(Lcom/byazt/kyz/ve;)Lcom/byazt/lsp/c;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object p2, p0, Lcom/byazt/kyz/ve$2;->c:Lcom/byazt/kyz/ve;

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Lcom/byazt/lsp/c;->c(Lcom/byazt/nc/u;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object p1, p0, Lcom/byazt/kyz/ve$2;->c:Lcom/byazt/kyz/ve;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/byazt/kyz/ve;->sl(Lcom/byazt/kyz/ve;)Lcom/byazt/sy/n;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    iget-object p1, p0, Lcom/byazt/kyz/ve$2;->c:Lcom/byazt/kyz/ve;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/byazt/kyz/ve;->sl(Lcom/byazt/kyz/ve;)Lcom/byazt/sy/n;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lcom/byazt/sy/n;->c()Lcom/byazt/sy/sp;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    iget-object p1, p0, Lcom/byazt/kyz/ve$2;->c:Lcom/byazt/kyz/ve;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/byazt/kyz/ve;->sl(Lcom/byazt/kyz/ve;)Lcom/byazt/sy/n;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lcom/byazt/sy/n;->c()Lcom/byazt/sy/sp;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-interface {p1}, Lcom/byazt/sy/sp;->uj()V

    .line 61
    .line 62
    .line 63
    :cond_1
    iget-object p1, p0, Lcom/byazt/kyz/ve$2;->c:Lcom/byazt/kyz/ve;

    .line 64
    .line 65
    invoke-static {p1}, Lcom/byazt/kyz/ve;->n(Lcom/byazt/kyz/ve;)Lcom/byazt/ete/ic;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->yv()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_2

    .line 74
    .line 75
    iget-object p1, p0, Lcom/byazt/kyz/ve$2;->c:Lcom/byazt/kyz/ve;

    .line 76
    .line 77
    invoke-static {p1}, Lcom/byazt/kyz/ve;->n(Lcom/byazt/kyz/ve;)Lcom/byazt/ete/ic;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->yp()Lcom/byazt/ete/nu;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-eqz p1, :cond_2

    .line 86
    .line 87
    invoke-static {}, Lcom/byazt/yxu/c;->c()Lcom/byazt/yxu/c;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iget-object p2, p0, Lcom/byazt/kyz/ve$2;->c:Lcom/byazt/kyz/ve;

    .line 92
    .line 93
    invoke-static {p2}, Lcom/byazt/kyz/ve;->x(Lcom/byazt/kyz/ve;)Landroid/content/Context;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    iget-object v0, p0, Lcom/byazt/kyz/ve$2;->c:Lcom/byazt/kyz/ve;

    .line 98
    .line 99
    invoke-static {v0}, Lcom/byazt/kyz/ve;->n(Lcom/byazt/kyz/ve;)Lcom/byazt/ete/ic;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->yp()Lcom/byazt/ete/nu;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lcom/byazt/ete/nu;->tt()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {p1, p2, v0}, Lcom/byazt/yxu/c;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :cond_2
    return-void
.end method
