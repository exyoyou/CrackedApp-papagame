.class public Lcom/byazt/hkv/tt;
.super Lcom/byazt/hkv/uj;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x13,
        0xd
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/ete/ic;

.field public n:Lcom/byazt/zo/ve;

.field public final tt:Ljava/lang/String;

.field public uj:I

.field public final ve:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/hkv/uj;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput p1, p0, Lcom/byazt/hkv/tt;->uj:I

    .line 6
    .line 7
    iput-object p2, p0, Lcom/byazt/hkv/tt;->c:Lcom/byazt/ete/ic;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/byazt/hkv/tt;->tt:Ljava/lang/String;

    .line 10
    .line 11
    iput p4, p0, Lcom/byazt/hkv/tt;->ve:I

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/byazt/hkv/tt;->n()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private n()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/hkv/uj;->x:Lcom/byazt/zo/uj;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/hkv/tt;->c:Lcom/byazt/ete/ic;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/byazt/hkv/uj;->a:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/byazt/hkv/tt;->c()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/byazt/zo/uj;->c(Lcom/byazt/ete/ic;Landroid/content/Context;Lcom/byazt/hkv/uj;Z)Lcom/byazt/zo/ve;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/byazt/hkv/tt;->n:Lcom/byazt/zo/ve;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/byazt/hkv/uj;->sp:Lcom/byazt/ete/da;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/byazt/zo/ve;->c(Lcom/byazt/ete/da;)V

    .line 20
    .line 21
    .line 22
    const-class v0, Lcom/byazt/vis/c;

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/byazt/vis/c;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/byazt/hkv/tt;->tt:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/byazt/vis/c;->c(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-class v0, Lcom/byazt/nat/c;

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lcom/byazt/nat/c;

    .line 42
    .line 43
    iget-object v2, p0, Lcom/byazt/hkv/tt;->tt:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Lcom/byazt/nat/c;->c(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Lcom/byazt/nat/c;

    .line 53
    .line 54
    iget v2, p0, Lcom/byazt/hkv/tt;->ve:I

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Lcom/byazt/nat/c;->c(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/byazt/hkv/tt;->c()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_0

    .line 64
    .line 65
    invoke-virtual {p0, v0}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Lcom/byazt/nat/c;

    .line 70
    .line 71
    const/4 v1, 0x1

    .line 72
    invoke-virtual {v0, v1}, Lcom/byazt/nat/c;->uj(Z)V

    .line 73
    .line 74
    .line 75
    :cond_0
    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 1

    .line 2
    iput p1, p0, Lcom/byazt/hkv/tt;->uj:I

    .line 3
    iget-object v0, p0, Lcom/byazt/hkv/uj;->sp:Lcom/byazt/ete/da;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/byazt/ete/da;->c(I)V

    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/byazt/hkv/uj;->sp:Lcom/byazt/ete/da;

    invoke-virtual {v0, p1}, Lcom/byazt/ete/da;->tt(Landroid/view/View;)V

    return-void
.end method

.method public c(Landroid/view/View;Lcom/byazt/ete/da;)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/byazt/hkv/tt;->c:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/ic;->a(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 8
    :cond_0
    const-class v0, Lcom/byazt/nat/c;

    invoke-virtual {p0, v0}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object v0

    check-cast v0, Lcom/byazt/nat/c;

    const-class v1, Lcom/byazt/vis/c;

    invoke-virtual {p0, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object v1

    check-cast v1, Lcom/byazt/vis/c;

    invoke-virtual {v1}, Lcom/byazt/vis/c;->n()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/nat/c;->c(Ljava/util/Map;)V

    .line 9
    iget-object v0, p0, Lcom/byazt/hkv/tt;->n:Lcom/byazt/zo/ve;

    invoke-virtual {v0, p1}, Lcom/byazt/zo/ve;->c(Landroid/view/View;)V

    if-nez p2, :cond_1

    .line 10
    new-instance p2, Lcom/byazt/ete/da;

    invoke-direct {p2}, Lcom/byazt/ete/da;-><init>()V

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/byazt/hkv/tt;->n:Lcom/byazt/zo/ve;

    invoke-virtual {p1, p2}, Lcom/byazt/zo/ve;->c(Lcom/byazt/ete/da;)V

    .line 12
    iget-object p1, p0, Lcom/byazt/hkv/tt;->n:Lcom/byazt/zo/ve;

    invoke-virtual {p1}, Lcom/byazt/zo/ve;->tt()V

    .line 13
    iget-object p1, p0, Lcom/byazt/hkv/tt;->c:Lcom/byazt/ete/ic;

    invoke-static {p1}, Lcom/byazt/ete/ic;->sp(Lcom/byazt/ete/ic;)V

    return-void
.end method

.method public c(Lcom/byazt/ete/da;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/byazt/hkv/uj;->sp:Lcom/byazt/ete/da;

    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public tt()Lcom/byazt/ete/da;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/hkv/uj;->sp:Lcom/byazt/ete/da;

    return-object v0
.end method

.method public tt(I)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/hkv/uj;->sp:Lcom/byazt/ete/da;

    invoke-virtual {v0, p1}, Lcom/byazt/ete/da;->uj(I)V

    return-void
.end method

.method public tt(Landroid/view/View;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/hkv/uj;->sp:Lcom/byazt/ete/da;

    invoke-virtual {v0, p1}, Lcom/byazt/ete/da;->c(Landroid/view/View;)V

    return-void
.end method

.method public uj(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/hkv/uj;->sp:Lcom/byazt/ete/da;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/ete/da;->tt(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public ve(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/hkv/uj;->sp:Lcom/byazt/ete/da;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/ete/da;->ve(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
