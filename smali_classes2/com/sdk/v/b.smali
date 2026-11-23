.class public Lcom/sdk/v/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/sdk/v/c;

.field public static b:Lcom/sdk/v/d;

.field public static c:Lcom/sdk/v/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/sdk/v/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/sdk/v/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/sdk/v/b;->a:Lcom/sdk/v/c;

    .line 7
    .line 8
    new-instance v0, Lcom/sdk/v/d;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/sdk/v/d;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/sdk/v/b;->b:Lcom/sdk/v/d;

    .line 14
    .line 15
    new-instance v0, Lcom/sdk/v/e;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/sdk/v/e;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/sdk/v/b;->c:Lcom/sdk/v/e;

    .line 21
    .line 22
    return-void
.end method

.method public static a([B)[B
    .locals 4

    sget-object v0, Lcom/sdk/v/b;->b:Lcom/sdk/v/d;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p0, :cond_1

    array-length v0, p0

    if-lez v0, :cond_0

    const/16 v0, 0x20

    new-array v0, v0, [B

    new-instance v1, Lorg/bouncycastle/crypto/digests/SM3Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/SM3Digest;-><init>()V

    array-length v2, p0

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3, v2}, Lorg/bouncycastle/crypto/digests/SM3Digest;->update([BII)V

    invoke-virtual {v1, v0, v3}, Lorg/bouncycastle/crypto/digests/SM3Digest;->doFinal([BI)I

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/digests/SM3Digest;->reset()V

    return-object v0

    :cond_0
    new-instance p0, Lcom/sdk/v/f;

    sget-object v0, Lcom/sdk/v/a;->t:Lcom/sdk/v/a;

    invoke-direct {p0, v0}, Lcom/sdk/v/f;-><init>(Lcom/sdk/v/a;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/sdk/v/f;

    sget-object v0, Lcom/sdk/v/a;->l:Lcom/sdk/v/a;

    invoke-direct {p0, v0}, Lcom/sdk/v/f;-><init>(Lcom/sdk/v/a;)V

    throw p0
.end method

.method public static a([B[B[BI)[B
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p3, v0, :cond_4

    if-eq p3, v1, :cond_3

    const/4 v0, 0x3

    if-eq p3, v0, :cond_2

    const/4 v0, 0x4

    if-eq p3, v0, :cond_1

    const/4 v0, 0x5

    if-eq p3, v0, :cond_0

    sget-object p3, Lcom/sdk/v/b;->c:Lcom/sdk/v/e;

    .line 2
    invoke-virtual {p3, p1, p2, p0, v1}, Lcom/sdk/v/e;->a([B[B[BI)[B

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    sget-object p3, Lcom/sdk/v/b;->c:Lcom/sdk/v/e;

    .line 4
    invoke-virtual {p3, p1, p2, p0, v1}, Lcom/sdk/v/e;->a([B[B[BI)[B

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    sget-object p3, Lcom/sdk/v/b;->c:Lcom/sdk/v/e;

    .line 6
    invoke-virtual {p3, p1, p2, p0, v1}, Lcom/sdk/v/e;->a([B[B[BI)[B

    move-result-object p0

    return-object p0

    .line 7
    :cond_2
    sget-object p3, Lcom/sdk/v/b;->c:Lcom/sdk/v/e;

    .line 8
    invoke-virtual {p3, p1, p2, p0, v1}, Lcom/sdk/v/e;->a([B[B[BI)[B

    move-result-object p0

    return-object p0

    .line 9
    :cond_3
    sget-object p3, Lcom/sdk/v/b;->c:Lcom/sdk/v/e;

    .line 10
    invoke-virtual {p3, p1, p2, p0, v1}, Lcom/sdk/v/e;->a([B[B[BI)[B

    move-result-object p0

    return-object p0

    .line 11
    :cond_4
    sget-object p2, Lcom/sdk/v/b;->c:Lcom/sdk/v/e;

    .line 12
    invoke-virtual {p2, p1, p0, v1}, Lcom/sdk/v/e;->a([B[BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static b([B[B[BI)[B
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p3, v0, :cond_4

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    if-eq p3, v1, :cond_3

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    if-eq p3, v1, :cond_2

    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    if-eq p3, v1, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x5

    .line 14
    if-eq p3, v1, :cond_0

    .line 15
    .line 16
    sget-object p3, Lcom/sdk/v/b;->c:Lcom/sdk/v/e;

    .line 17
    .line 18
    invoke-virtual {p3, p1, p2, p0, v0}, Lcom/sdk/v/e;->a([B[B[BI)[B

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_0
    sget-object p3, Lcom/sdk/v/b;->c:Lcom/sdk/v/e;

    .line 24
    .line 25
    invoke-virtual {p3, p1, p2, p0, v0}, Lcom/sdk/v/e;->a([B[B[BI)[B

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_1
    sget-object p3, Lcom/sdk/v/b;->c:Lcom/sdk/v/e;

    .line 31
    .line 32
    invoke-virtual {p3, p1, p2, p0, v0}, Lcom/sdk/v/e;->a([B[B[BI)[B

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :cond_2
    sget-object p3, Lcom/sdk/v/b;->c:Lcom/sdk/v/e;

    .line 38
    .line 39
    invoke-virtual {p3, p1, p2, p0, v0}, Lcom/sdk/v/e;->a([B[B[BI)[B

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    :cond_3
    sget-object p3, Lcom/sdk/v/b;->c:Lcom/sdk/v/e;

    .line 45
    .line 46
    invoke-virtual {p3, p1, p2, p0, v0}, Lcom/sdk/v/e;->a([B[B[BI)[B

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :cond_4
    sget-object p2, Lcom/sdk/v/b;->c:Lcom/sdk/v/e;

    .line 52
    .line 53
    invoke-virtual {p2, p1, p0, v0}, Lcom/sdk/v/e;->a([B[BI)[B

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0
.end method
