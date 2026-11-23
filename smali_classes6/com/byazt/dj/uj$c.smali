.class public Lcom/byazt/dj/uj$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x166,
        0x7b
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/dj/uj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final c:Lcom/byazt/rl/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/byazt/rl/c;->c()Lcom/byazt/rl/c;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/byazt/dj/uj$c;->c:Lcom/byazt/rl/c;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Z)Lcom/byazt/dj/uj$c;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/dj/uj$c;->c:Lcom/byazt/rl/c;

    .line 2
    .line 3
    const v1, 0x3ffde

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1, p1}, Lcom/byazt/rl/c;->c(IZ)Lcom/byazt/rl/c;

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public c(Lcom/byazt/dj/ve;)Lcom/byazt/dj/uj$c;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/dj/uj$c;->c:Lcom/byazt/rl/c;

    const v1, 0x3ffd6

    invoke-virtual {v0, v1, p1}, Lcom/byazt/rl/c;->c(ILjava/lang/Object;)Lcom/byazt/rl/c;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/byazt/dj/uj$c;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/byazt/dj/uj$c;->c:Lcom/byazt/rl/c;

    const v1, 0x3ffd9

    invoke-virtual {v0, v1, p1}, Lcom/byazt/rl/c;->c(ILjava/lang/String;)Lcom/byazt/rl/c;

    return-object p0
.end method

.method public c(Z)Lcom/byazt/dj/uj$c;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/dj/uj$c;->c:Lcom/byazt/rl/c;

    const v1, 0x3ffd5

    invoke-virtual {v0, v1, p1}, Lcom/byazt/rl/c;->c(IZ)Lcom/byazt/rl/c;

    return-object p0
.end method

.method public c()Lcom/byazt/dj/uj;
    .locals 2

    .line 4
    new-instance v0, Lcom/byazt/dj/uj;

    iget-object v1, p0, Lcom/byazt/dj/uj$c;->c:Lcom/byazt/rl/c;

    invoke-virtual {v1}, Lcom/byazt/rl/c;->tt()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    move-result-object v1

    invoke-interface {v1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->sparseArray()Landroid/util/SparseArray;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/byazt/dj/uj;-><init>(Landroid/util/SparseArray;)V

    return-object v0
.end method

.method public n(Z)Lcom/byazt/dj/uj$c;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/dj/uj$c;->c:Lcom/byazt/rl/c;

    .line 2
    .line 3
    const v1, 0x3ffdc

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1, p1}, Lcom/byazt/rl/c;->c(IZ)Lcom/byazt/rl/c;

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public sp(Z)Lcom/byazt/dj/uj$c;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/dj/uj$c;->c:Lcom/byazt/rl/c;

    .line 2
    .line 3
    const v1, 0x3ffdf

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1, p1}, Lcom/byazt/rl/c;->c(IZ)Lcom/byazt/rl/c;

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public tt(Ljava/lang/String;)Lcom/byazt/dj/uj$c;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/dj/uj$c;->c:Lcom/byazt/rl/c;

    const v1, 0x3ffdb

    invoke-virtual {v0, v1, p1}, Lcom/byazt/rl/c;->c(ILjava/lang/String;)Lcom/byazt/rl/c;

    return-object p0
.end method

.method public tt(Z)Lcom/byazt/dj/uj$c;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/dj/uj$c;->c:Lcom/byazt/rl/c;

    const v1, 0x3ffd7

    invoke-virtual {v0, v1, p1}, Lcom/byazt/rl/c;->c(IZ)Lcom/byazt/rl/c;

    return-object p0
.end method

.method public uj(Ljava/lang/String;)Lcom/byazt/dj/uj$c;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/dj/uj$c;->c:Lcom/byazt/rl/c;

    const v1, 0x3ffe0

    invoke-virtual {v0, v1, p1}, Lcom/byazt/rl/c;->c(ILjava/lang/String;)Lcom/byazt/rl/c;

    return-object p0
.end method

.method public uj(Z)Lcom/byazt/dj/uj$c;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/dj/uj$c;->c:Lcom/byazt/rl/c;

    const v1, 0x3ffda

    invoke-virtual {v0, v1, p1}, Lcom/byazt/rl/c;->c(IZ)Lcom/byazt/rl/c;

    return-object p0
.end method

.method public ve(Ljava/lang/String;)Lcom/byazt/dj/uj$c;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/dj/uj$c;->c:Lcom/byazt/rl/c;

    const v1, 0x3ffdd

    invoke-virtual {v0, v1, p1}, Lcom/byazt/rl/c;->c(ILjava/lang/String;)Lcom/byazt/rl/c;

    return-object p0
.end method

.method public ve(Z)Lcom/byazt/dj/uj$c;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/dj/uj$c;->c:Lcom/byazt/rl/c;

    const v1, 0x3ffd8

    invoke-virtual {v0, v1, p1}, Lcom/byazt/rl/c;->c(IZ)Lcom/byazt/rl/c;

    return-object p0
.end method
