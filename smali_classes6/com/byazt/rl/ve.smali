.class public Lcom/byazt/rl/ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x75,
        0x36
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/rl/ve$tt;,
        Lcom/byazt/rl/ve$c;,
        Lcom/byazt/rl/ve$ve;
    }
.end annotation


# static fields
.field public static final c:Lcom/bykv/vk/openvk/api/proto/ValueSet;

.field public static final tt:Lcom/bykv/vk/openvk/api/proto/Bridge;

.field public static final ve:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public n:Lcom/bykv/vk/openvk/api/proto/ValueSet;

.field public final uj:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/byazt/rl/ve;->c(I)Lcom/byazt/rl/ve;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/byazt/rl/ve;->tt()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/byazt/rl/ve;->c:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    .line 11
    .line 12
    new-instance v0, Lcom/byazt/rl/ve$c;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-direct {v0, v1}, Lcom/byazt/rl/ve$c;-><init>(Lcom/byazt/rl/ve$1;)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lcom/byazt/rl/ve;->tt:Lcom/bykv/vk/openvk/api/proto/Bridge;

    .line 19
    .line 20
    new-instance v0, Lcom/byazt/rl/ve$tt;

    .line 21
    .line 22
    invoke-direct {v0, v1}, Lcom/byazt/rl/ve$tt;-><init>(Lcom/byazt/rl/ve$1;)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lcom/byazt/rl/ve;->ve:Ljava/util/function/Function;

    .line 26
    .line 27
    return-void
.end method

.method private constructor <init>(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 10
    .line 11
    .line 12
    :goto_0
    iput-object p1, p0, Lcom/byazt/rl/ve;->uj:Landroid/util/SparseArray;

    .line 13
    .line 14
    return-void
.end method

.method public static final c()Lcom/byazt/rl/ve;
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/rl/ve;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-direct {v0, v1}, Lcom/byazt/rl/ve;-><init>(Landroid/util/SparseArray;)V

    return-object v0
.end method

.method public static final c(I)Lcom/byazt/rl/ve;
    .locals 2

    .line 2
    new-instance v0, Lcom/byazt/rl/ve;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, p0}, Landroid/util/SparseArray;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/byazt/rl/ve;-><init>(Landroid/util/SparseArray;)V

    return-object v0
.end method

.method public static final c(Landroid/util/SparseArray;)Lcom/byazt/rl/ve;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/byazt/rl/ve;"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/byazt/rl/ve;

    invoke-direct {v0, p0}, Lcom/byazt/rl/ve;-><init>(Landroid/util/SparseArray;)V

    return-object v0
.end method


# virtual methods
.method public c(ID)Lcom/byazt/rl/ve;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/byazt/rl/ve;->uj:Landroid/util/SparseArray;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public c(IF)Lcom/byazt/rl/ve;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/byazt/rl/ve;->uj:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public c(II)Lcom/byazt/rl/ve;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/byazt/rl/ve;->uj:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public c(IJ)Lcom/byazt/rl/ve;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/byazt/rl/ve;->uj:Landroid/util/SparseArray;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public c(ILjava/lang/Object;)Lcom/byazt/rl/ve;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/byazt/rl/ve;->uj:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public c(ILjava/lang/String;)Lcom/byazt/rl/ve;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/byazt/rl/ve;->uj:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public c(IZ)Lcom/byazt/rl/ve;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/byazt/rl/ve;->uj:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public tt()Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 4

    .line 1
    new-instance v0, Lcom/byazt/rl/ve$ve;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/rl/ve;->uj:Landroid/util/SparseArray;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/byazt/rl/ve;->n:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lcom/byazt/rl/ve$ve;-><init>(Landroid/util/SparseArray;Lcom/bykv/vk/openvk/api/proto/ValueSet;Lcom/byazt/rl/ve$1;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
