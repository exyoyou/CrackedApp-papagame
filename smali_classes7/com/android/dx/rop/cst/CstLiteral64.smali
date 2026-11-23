.class public abstract Lcom/android/dx/rop/cst/CstLiteral64;
.super Lcom/android/dx/rop/cst/CstLiteralBits;
.source "SourceFile"


# instance fields
.field private final bits:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/dx/rop/cst/CstLiteralBits;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/android/dx/rop/cst/CstLiteral64;->bits:J

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected compareTo0(Lcom/android/dx/rop/cst/Constant;)I
    .locals 4

    .line 1
    check-cast p1, Lcom/android/dx/rop/cst/CstLiteral64;

    .line 2
    .line 3
    iget-wide v0, p1, Lcom/android/dx/rop/cst/CstLiteral64;->bits:J

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/android/dx/rop/cst/CstLiteral64;->bits:J

    .line 6
    .line 7
    cmp-long p1, v2, v0

    .line 8
    .line 9
    if-gez p1, :cond_0

    .line 10
    .line 11
    const/4 p1, -0x1

    .line 12
    return p1

    .line 13
    :cond_0
    cmp-long p1, v2, v0

    .line 14
    .line 15
    if-lez p1, :cond_1

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    return p1

    .line 19
    :cond_1
    const/4 p1, 0x0

    .line 20
    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget-wide v0, p0, Lcom/android/dx/rop/cst/CstLiteral64;->bits:J

    .line 14
    .line 15
    check-cast p1, Lcom/android/dx/rop/cst/CstLiteral64;

    .line 16
    .line 17
    iget-wide v2, p1, Lcom/android/dx/rop/cst/CstLiteral64;->bits:J

    .line 18
    .line 19
    cmp-long p1, v0, v2

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    :goto_0
    return p1
.end method

.method public final fitsInInt()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/android/dx/rop/cst/CstLiteral64;->bits:J

    .line 2
    .line 3
    long-to-int v2, v0

    .line 4
    int-to-long v2, v2

    .line 5
    cmp-long v4, v2, v0

    .line 6
    .line 7
    if-nez v4, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public final getIntBits()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/dx/rop/cst/CstLiteral64;->bits:J

    .line 2
    .line 3
    long-to-int v1, v0

    .line 4
    return v1
.end method

.method public final getLongBits()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/dx/rop/cst/CstLiteral64;->bits:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/dx/rop/cst/CstLiteral64;->bits:J

    .line 2
    .line 3
    long-to-int v2, v0

    .line 4
    const/16 v3, 0x20

    .line 5
    .line 6
    shr-long/2addr v0, v3

    .line 7
    long-to-int v1, v0

    .line 8
    xor-int v0, v2, v1

    .line 9
    .line 10
    return v0
.end method

.method public final isCategory2()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
