.class public Lcom/byazt/whk/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x38c,
        0x2a
    }
.end annotation


# instance fields
.field public c:I

.field public tt:Lcom/byazt/yxi/tt;

.field public ve:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/util/SparseArray;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/byazt/whk/i;->c:I

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    move-object p2, p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p2, Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    .line 13
    .line 14
    .line 15
    :goto_0
    iput-object p2, p0, Lcom/byazt/whk/i;->ve:Landroid/util/SparseArray;

    .line 16
    .line 17
    new-instance p2, Lcom/byazt/yxi/tt;

    .line 18
    .line 19
    invoke-direct {p2, p1}, Lcom/byazt/yxi/tt;-><init>(Landroid/util/SparseArray;)V

    .line 20
    .line 21
    .line 22
    iput-object p2, p0, Lcom/byazt/whk/i;->tt:Lcom/byazt/yxi/tt;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/whk/i;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public setResult(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/byazt/yxi/tt;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/byazt/yxi/tt;-><init>(Landroid/util/SparseArray;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/byazt/whk/i;->tt:Lcom/byazt/yxi/tt;

    .line 7
    .line 8
    return-void
.end method

.method public uj()Landroid/util/SparseArray;
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
    iget-object v0, p0, Lcom/byazt/whk/i;->ve:Landroid/util/SparseArray;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()Lcom/byazt/yxi/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/whk/i;->tt:Lcom/byazt/yxi/tt;

    .line 2
    .line 3
    return-object v0
.end method
