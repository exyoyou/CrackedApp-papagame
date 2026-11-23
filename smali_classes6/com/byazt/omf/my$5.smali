.class public Lcom/byazt/omf/my$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/nat/c$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f,
        0x93e
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/omf/my;->c(Lcom/byazt/hkv/tt;Landroid/view/ViewGroup;Landroid/view/View;Lcom/byazt/lsp/c;Lcom/byazt/lsp/c;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/hkv/tt;

.field public final synthetic n:Lcom/byazt/omf/my;

.field public final synthetic tt:Lcom/byazt/lsp/c;

.field public final synthetic uj:I

.field public final synthetic ve:Lcom/byazt/lsp/c;


# direct methods
.method public constructor <init>(Lcom/byazt/omf/my;Lcom/byazt/hkv/tt;Lcom/byazt/lsp/c;Lcom/byazt/lsp/c;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/omf/my$5;->n:Lcom/byazt/omf/my;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/omf/my$5;->c:Lcom/byazt/hkv/tt;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/omf/my$5;->tt:Lcom/byazt/lsp/c;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/omf/my$5;->ve:Lcom/byazt/lsp/c;

    .line 8
    .line 9
    iput p5, p0, Lcom/byazt/omf/my$5;->uj:I

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/byazt/omf/my$5;->n:Lcom/byazt/omf/my;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/byazt/omf/my;->nu(Lcom/byazt/omf/my;)Lcom/byazt/nc/u;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    iget-object p2, p0, Lcom/byazt/omf/my$5;->n:Lcom/byazt/omf/my;

    .line 10
    .line 11
    invoke-static {p2}, Lcom/byazt/omf/my;->nu(Lcom/byazt/omf/my;)Lcom/byazt/nc/u;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p2}, Lcom/byazt/nc/u;->getLifecycleId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p2, 0x0

    .line 21
    :goto_0
    invoke-static {p2}, Lcom/byazt/rgb/tt;->ve(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object p2, p0, Lcom/byazt/omf/my$5;->c:Lcom/byazt/hkv/tt;

    .line 25
    .line 26
    instance-of p2, p2, Lcom/byazt/hkv/c;

    .line 27
    .line 28
    if-eqz p2, :cond_2

    .line 29
    .line 30
    iget-object p2, p0, Lcom/byazt/omf/my$5;->tt:Lcom/byazt/lsp/c;

    .line 31
    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/byazt/omf/my$5;->n:Lcom/byazt/omf/my;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/byazt/omf/my;->nu(Lcom/byazt/omf/my;)Lcom/byazt/nc/u;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p2, p1, v0}, Lcom/byazt/lsp/c;->tt(Landroid/view/View;Lcom/byazt/nc/u;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-object p2, p0, Lcom/byazt/omf/my$5;->ve:Lcom/byazt/lsp/c;

    .line 44
    .line 45
    if-eqz p2, :cond_4

    .line 46
    .line 47
    iget-object v0, p0, Lcom/byazt/omf/my$5;->n:Lcom/byazt/omf/my;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/byazt/omf/my;->nu(Lcom/byazt/omf/my;)Lcom/byazt/nc/u;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p2, p1, v0}, Lcom/byazt/lsp/c;->tt(Landroid/view/View;Lcom/byazt/nc/u;)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    iget-object p2, p0, Lcom/byazt/omf/my$5;->tt:Lcom/byazt/lsp/c;

    .line 58
    .line 59
    if-eqz p2, :cond_3

    .line 60
    .line 61
    iget-object v0, p0, Lcom/byazt/omf/my$5;->n:Lcom/byazt/omf/my;

    .line 62
    .line 63
    invoke-static {v0}, Lcom/byazt/omf/my;->nu(Lcom/byazt/omf/my;)Lcom/byazt/nc/u;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {p2, p1, v0}, Lcom/byazt/lsp/c;->c(Landroid/view/View;Lcom/byazt/nc/u;)V

    .line 68
    .line 69
    .line 70
    :cond_3
    iget-object p2, p0, Lcom/byazt/omf/my$5;->ve:Lcom/byazt/lsp/c;

    .line 71
    .line 72
    if-eqz p2, :cond_4

    .line 73
    .line 74
    iget-object v0, p0, Lcom/byazt/omf/my$5;->n:Lcom/byazt/omf/my;

    .line 75
    .line 76
    invoke-static {v0}, Lcom/byazt/omf/my;->nu(Lcom/byazt/omf/my;)Lcom/byazt/nc/u;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {p2, p1, v0}, Lcom/byazt/lsp/c;->c(Landroid/view/View;Lcom/byazt/nc/u;)V

    .line 81
    .line 82
    .line 83
    :cond_4
    :goto_1
    iget p1, p0, Lcom/byazt/omf/my$5;->uj:I

    .line 84
    .line 85
    const/4 p2, 0x2

    .line 86
    if-ne p1, p2, :cond_5

    .line 87
    .line 88
    iget-object p1, p0, Lcom/byazt/omf/my$5;->n:Lcom/byazt/omf/my;

    .line 89
    .line 90
    invoke-static {p1}, Lcom/byazt/omf/my;->ve(Lcom/byazt/omf/my;)Lcom/byazt/ete/ic;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    if-eqz p1, :cond_5

    .line 95
    .line 96
    iget-object p1, p0, Lcom/byazt/omf/my$5;->n:Lcom/byazt/omf/my;

    .line 97
    .line 98
    invoke-static {p1}, Lcom/byazt/omf/my;->ve(Lcom/byazt/omf/my;)Lcom/byazt/ete/ic;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    const/4 p2, 0x1

    .line 103
    invoke-virtual {p1, p2}, Lcom/byazt/ete/ic;->ve(Z)V

    .line 104
    .line 105
    .line 106
    :cond_5
    return-void
.end method
