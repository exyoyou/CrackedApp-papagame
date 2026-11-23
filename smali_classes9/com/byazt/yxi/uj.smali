.class public Lcom/byazt/yxi/uj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x46d,
        0xf
    }
.end annotation


# instance fields
.field public final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/byazt/yxi/uj;->c:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Lcom/byazt/mta/c;->c()Lcom/byazt/mta/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/mta/c;->tt()I

    move-result v0

    const/16 v1, 0x1a93

    if-ge v0, v1, :cond_0

    .line 5
    new-instance v0, Lcom/byazt/yxi/c;

    invoke-direct {v0, p1}, Lcom/byazt/yxi/c;-><init>(Landroid/util/SparseArray;)V

    move-object p1, v0

    :cond_0
    iput-object p1, p0, Lcom/byazt/yxi/uj;->c:Landroid/util/SparseArray;

    return-void
.end method

.method public static c()Lcom/byazt/yxi/uj;
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/yxi/uj;

    invoke-direct {v0}, Lcom/byazt/yxi/uj;-><init>()V

    return-object v0
.end method

.method public static c(Landroid/util/SparseArray;)Lcom/byazt/yxi/uj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/byazt/yxi/uj;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/byazt/yxi/uj;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    :goto_0
    invoke-direct {v0, p0}, Lcom/byazt/yxi/uj;-><init>(Landroid/util/SparseArray;)V

    return-object v0
.end method


# virtual methods
.method public c(I)Lcom/byazt/yxi/uj;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/byazt/yxi/uj;->c:Landroid/util/SparseArray;

    const v1, -0x5f5e0f3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/byazt/yxi/uj;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/byazt/yxi/uj;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/byazt/yxi/uj;->c:Landroid/util/SparseArray;

    const v1, -0x5f5e0f1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public tt()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/yxi/uj;->c:Landroid/util/SparseArray;

    .line 2
    .line 3
    return-object v0
.end method
