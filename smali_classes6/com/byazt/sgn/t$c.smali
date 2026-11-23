.class public Lcom/byazt/sgn/t$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xd3,
        0x7d
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/sgn/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:I

.field public c:I

.field public i:I

.field public n:Landroid/graphics/LinearGradient;

.field public sp:I

.field public tt:I

.field public uj:[F

.field public ve:[I

.field public x:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x2a90d7

    .line 5
    .line 6
    .line 7
    iput v0, p0, Lcom/byazt/sgn/t$c;->c:I

    .line 8
    .line 9
    iput v0, p0, Lcom/byazt/sgn/t$c;->tt:I

    .line 10
    .line 11
    const/16 v0, 0xa

    .line 12
    .line 13
    iput v0, p0, Lcom/byazt/sgn/t$c;->a:I

    .line 14
    .line 15
    const/16 v0, 0x10

    .line 16
    .line 17
    iput v0, p0, Lcom/byazt/sgn/t$c;->sp:I

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/byazt/sgn/t$c;->x:I

    .line 21
    .line 22
    iput v0, p0, Lcom/byazt/sgn/t$c;->i:I

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public c(I)Lcom/byazt/sgn/t$c;
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/sgn/t$c;->c:I

    return-object p0
.end method

.method public c([I)Lcom/byazt/sgn/t$c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/sgn/t$c;->ve:[I

    return-object p0
.end method

.method public c()Lcom/byazt/sgn/t;
    .locals 11

    .line 3
    new-instance v10, Lcom/byazt/sgn/t;

    iget v1, p0, Lcom/byazt/sgn/t$c;->c:I

    iget-object v2, p0, Lcom/byazt/sgn/t$c;->ve:[I

    iget-object v3, p0, Lcom/byazt/sgn/t$c;->uj:[F

    iget v4, p0, Lcom/byazt/sgn/t$c;->tt:I

    iget-object v5, p0, Lcom/byazt/sgn/t$c;->n:Landroid/graphics/LinearGradient;

    iget v6, p0, Lcom/byazt/sgn/t$c;->a:I

    iget v7, p0, Lcom/byazt/sgn/t$c;->sp:I

    iget v8, p0, Lcom/byazt/sgn/t$c;->x:I

    iget v9, p0, Lcom/byazt/sgn/t$c;->i:I

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/byazt/sgn/t;-><init>(I[I[FILandroid/graphics/LinearGradient;IIII)V

    return-object v10
.end method

.method public n(I)Lcom/byazt/sgn/t$c;
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/sgn/t$c;->i:I

    .line 2
    .line 3
    return-object p0
.end method

.method public tt(I)Lcom/byazt/sgn/t$c;
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/sgn/t$c;->tt:I

    .line 2
    .line 3
    return-object p0
.end method

.method public uj(I)Lcom/byazt/sgn/t$c;
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/sgn/t$c;->x:I

    .line 2
    .line 3
    return-object p0
.end method

.method public ve(I)Lcom/byazt/sgn/t$c;
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/sgn/t$c;->a:I

    .line 2
    .line 3
    return-object p0
.end method
