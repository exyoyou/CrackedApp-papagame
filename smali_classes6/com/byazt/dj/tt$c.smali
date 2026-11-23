.class public Lcom/byazt/dj/tt$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x166,
        0xc2
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/dj/tt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final c:Lcom/byazt/rl/c;

.field public tt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/byazt/dj/tt;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iget-object v0, p1, Lcom/byazt/dj/tt;->c:Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    invoke-static {v0}, Lcom/byazt/rl/c;->c(Lcom/bykv/vk/openvk/api/proto/PluginValueSet;)Lcom/byazt/rl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/dj/tt$c;->c:Lcom/byazt/rl/c;

    .line 6
    invoke-static {p1}, Lcom/byazt/dj/tt;->tt(Lcom/byazt/dj/tt;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/dj/tt$c;->tt:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/byazt/rl/c;->c()Lcom/byazt/rl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/dj/tt$c;->c:Lcom/byazt/rl/c;

    .line 3
    iput-object p1, p0, Lcom/byazt/dj/tt$c;->tt:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/byazt/dj/tt$c;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/dj/tt$c;->c:Lcom/byazt/rl/c;

    const v1, 0x3f7b2

    invoke-virtual {v0, v1, p1}, Lcom/byazt/rl/c;->c(II)Lcom/byazt/rl/c;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/byazt/dj/tt$c;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/dj/tt$c;->c:Lcom/byazt/rl/c;

    const v1, 0x3f7ae

    invoke-virtual {v0, v1, p1}, Lcom/byazt/rl/c;->c(ILjava/lang/String;)Lcom/byazt/rl/c;

    return-object p0
.end method

.method public c(F)Lcom/byazt/dj/tt$c;
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/byazt/dj/tt$c;->c:Lcom/byazt/rl/c;

    const v1, 0x3f7a8

    invoke-virtual {v0, v1, p1}, Lcom/byazt/rl/c;->c(IF)Lcom/byazt/rl/c;

    return-object p0
.end method

.method public c(I)Lcom/byazt/dj/tt$c;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/byazt/dj/tt$c;->c:Lcom/byazt/rl/c;

    const v1, 0x3f7a6

    invoke-virtual {v0, v1, p1}, Lcom/byazt/rl/c;->c(II)Lcom/byazt/rl/c;

    return-object p0
.end method

.method public c(Ljava/lang/Object;)Lcom/byazt/dj/tt$c;
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/byazt/dj/tt$c;->c:Lcom/byazt/rl/c;

    const v1, 0x3f7b7

    invoke-virtual {v0, v1, p1}, Lcom/byazt/rl/c;->c(ILjava/lang/Object;)Lcom/byazt/rl/c;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/byazt/dj/tt$c;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/dj/tt$c;->c:Lcom/byazt/rl/c;

    const v1, 0x3f7a1

    invoke-virtual {v0, v1, p1}, Lcom/byazt/rl/c;->c(ILjava/lang/String;)Lcom/byazt/rl/c;

    return-object p0
.end method

.method public c(Ljava/util/Map;)Lcom/byazt/dj/tt$c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/byazt/dj/tt$c;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/byazt/dj/tt$c;->c:Lcom/byazt/rl/c;

    const v1, 0x7e09c0

    invoke-virtual {v0, v1, p1}, Lcom/byazt/rl/c;->c(ILjava/lang/Object;)Lcom/byazt/rl/c;

    return-object p0
.end method

.method public c(Z)Lcom/byazt/dj/tt$c;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/dj/tt$c;->c:Lcom/byazt/rl/c;

    const v1, 0x3f7a5

    invoke-virtual {v0, v1, p1}, Lcom/byazt/rl/c;->c(IZ)Lcom/byazt/rl/c;

    return-object p0
.end method

.method public c([I)Lcom/byazt/dj/tt$c;
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/byazt/dj/tt$c;->c:Lcom/byazt/rl/c;

    const v1, 0x3f7b1

    invoke-virtual {v0, v1, p1}, Lcom/byazt/rl/c;->c(ILjava/lang/Object;)Lcom/byazt/rl/c;

    return-object p0
.end method

.method public c()Lcom/byazt/dj/tt;
    .locals 3

    .line 8
    new-instance v0, Lcom/byazt/dj/tt;

    iget-object v1, p0, Lcom/byazt/dj/tt$c;->c:Lcom/byazt/rl/c;

    invoke-virtual {v1}, Lcom/byazt/rl/c;->tt()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    move-result-object v1

    invoke-interface {v1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->sparseArray()Landroid/util/SparseArray;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/dj/tt$c;->tt:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/byazt/dj/tt;-><init>(Landroid/util/SparseArray;Ljava/lang/String;)V

    return-object v0
.end method

.method public da(Ljava/lang/String;)Lcom/byazt/dj/tt$c;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/dj/tt$c;->c:Lcom/byazt/rl/c;

    .line 2
    .line 3
    const v1, 0x3f7b8

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1, p1}, Lcom/byazt/rl/c;->c(ILjava/lang/String;)Lcom/byazt/rl/c;

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public i(Ljava/lang/String;)Lcom/byazt/dj/tt$c;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/dj/tt$c;->c:Lcom/byazt/rl/c;

    .line 2
    .line 3
    const v1, 0x3f7b6

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1, p1}, Lcom/byazt/rl/c;->c(ILjava/lang/String;)Lcom/byazt/rl/c;

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public n(I)Lcom/byazt/dj/tt$c;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/dj/tt$c;->c:Lcom/byazt/rl/c;

    const v1, 0x3f7b0

    invoke-virtual {v0, v1, p1}, Lcom/byazt/rl/c;->c(II)Lcom/byazt/rl/c;

    return-object p0
.end method

.method public n(Ljava/lang/String;)Lcom/byazt/dj/tt$c;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/dj/tt$c;->c:Lcom/byazt/rl/c;

    const v1, 0x3f7ad

    invoke-virtual {v0, v1, p1}, Lcom/byazt/rl/c;->c(ILjava/lang/String;)Lcom/byazt/rl/c;

    return-object p0
.end method

.method public sp(I)Lcom/byazt/dj/tt$c;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/dj/tt$c;->c:Lcom/byazt/rl/c;

    const v1, 0x3f7b4

    invoke-virtual {v0, v1, p1}, Lcom/byazt/rl/c;->c(II)Lcom/byazt/rl/c;

    return-object p0
.end method

.method public sp(Ljava/lang/String;)Lcom/byazt/dj/tt$c;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/dj/tt$c;->c:Lcom/byazt/rl/c;

    const v1, 0x3f7b3

    invoke-virtual {v0, v1, p1}, Lcom/byazt/rl/c;->c(ILjava/lang/String;)Lcom/byazt/rl/c;

    return-object p0
.end method

.method public tt(F)Lcom/byazt/dj/tt$c;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/byazt/dj/tt$c;->c:Lcom/byazt/rl/c;

    const v1, 0x3f7a9

    invoke-virtual {v0, v1, p1}, Lcom/byazt/rl/c;->c(IF)Lcom/byazt/rl/c;

    return-object p0
.end method

.method public tt(I)Lcom/byazt/dj/tt$c;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/dj/tt$c;->c:Lcom/byazt/rl/c;

    const v1, 0x3f7a7

    invoke-virtual {v0, v1, p1}, Lcom/byazt/rl/c;->c(II)Lcom/byazt/rl/c;

    return-object p0
.end method

.method public tt(Ljava/lang/String;)Lcom/byazt/dj/tt$c;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/dj/tt$c;->c:Lcom/byazt/rl/c;

    const v1, 0x3f7a2

    invoke-virtual {v0, v1, p1}, Lcom/byazt/rl/c;->c(ILjava/lang/String;)Lcom/byazt/rl/c;

    return-object p0
.end method

.method public tt(Z)Lcom/byazt/dj/tt$c;
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/byazt/dj/tt$c;->c:Lcom/byazt/rl/c;

    const v1, 0x3f7aa

    invoke-virtual {v0, v1, p1}, Lcom/byazt/rl/c;->c(IZ)Lcom/byazt/rl/c;

    return-object p0
.end method

.method public uj(I)Lcom/byazt/dj/tt$c;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/dj/tt$c;->c:Lcom/byazt/rl/c;

    const v1, 0x3f7af

    invoke-virtual {v0, v1, p1}, Lcom/byazt/rl/c;->c(II)Lcom/byazt/rl/c;

    return-object p0
.end method

.method public uj(Ljava/lang/String;)Lcom/byazt/dj/tt$c;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/dj/tt$c;->c:Lcom/byazt/rl/c;

    const v1, 0x3f7a4

    invoke-virtual {v0, v1, p1}, Lcom/byazt/rl/c;->c(ILjava/lang/String;)Lcom/byazt/rl/c;

    return-object p0
.end method

.method public uj(Z)Lcom/byazt/dj/tt$c;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/byazt/dj/tt$c;->c:Lcom/byazt/rl/c;

    const v1, 0x3f7ba

    invoke-virtual {v0, v1, p1}, Lcom/byazt/rl/c;->c(IZ)Lcom/byazt/rl/c;

    return-object p0
.end method

.method public ve(I)Lcom/byazt/dj/tt$c;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/byazt/dj/tt$c;->c:Lcom/byazt/rl/c;

    const v1, 0x27ac4c

    invoke-virtual {v0, v1, p1}, Lcom/byazt/rl/c;->c(II)Lcom/byazt/rl/c;

    return-object p0
.end method

.method public ve(Ljava/lang/String;)Lcom/byazt/dj/tt$c;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/dj/tt$c;->c:Lcom/byazt/rl/c;

    const v1, 0x3f7a3

    invoke-virtual {v0, v1, p1}, Lcom/byazt/rl/c;->c(ILjava/lang/String;)Lcom/byazt/rl/c;

    return-object p0
.end method

.method public ve(Z)Lcom/byazt/dj/tt$c;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/dj/tt$c;->c:Lcom/byazt/rl/c;

    const v1, 0x3f7ab

    invoke-virtual {v0, v1, p1}, Lcom/byazt/rl/c;->c(IZ)Lcom/byazt/rl/c;

    return-object p0
.end method

.method public x(I)Lcom/byazt/dj/tt$c;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/dj/tt$c;->c:Lcom/byazt/rl/c;

    const v1, 0x3f7b9

    invoke-virtual {v0, v1, p1}, Lcom/byazt/rl/c;->c(II)Lcom/byazt/rl/c;

    return-object p0
.end method

.method public x(Ljava/lang/String;)Lcom/byazt/dj/tt$c;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/dj/tt$c;->c:Lcom/byazt/rl/c;

    const v1, 0x3f7b5

    invoke-virtual {v0, v1, p1}, Lcom/byazt/rl/c;->c(ILjava/lang/String;)Lcom/byazt/rl/c;

    return-object p0
.end method
