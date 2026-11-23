.class public Lcom/papa/controller/core/hardware/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final e:Ljava/lang/String; = "GB"

.field protected static final f:I = 0x10

.field public static final g:I = 0x1

.field public static final h:I = 0x2

.field public static final i:I = 0x8

.field public static final j:I = 0x3

.field public static final k:I = 0x5

.field public static final l:I = 0x6

.field public static final m:I = 0xf6

.field public static final n:I = 0x13

.field public static final o:I = 0x14


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:I

.field protected c:I

.field protected d:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    array-length v0, p1

    iput v0, p0, Lcom/papa/controller/core/hardware/a;->c:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 4
    aget-byte v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/papa/controller/core/hardware/a;->d(B)I

    move-result v2

    iput v2, p0, Lcom/papa/controller/core/hardware/a;->b:I

    const/4 v2, 0x4

    .line 5
    aget-byte v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/papa/controller/core/hardware/a;->d(B)I

    move-result v2

    iput v2, p0, Lcom/papa/controller/core/hardware/a;->d:I

    const/4 v2, 0x0

    .line 6
    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([B)V

    iput-object p1, p0, Lcom/papa/controller/core/hardware/a;->a:Ljava/lang/String;

    :cond_1
    return-void
.end method


# virtual methods
.method public a()[B
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected b([B)[B
    .locals 7

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const-string v0, "GB"

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    array-length v1, v0

    .line 14
    const/4 v2, 0x2

    .line 15
    add-int/2addr v1, v2

    .line 16
    array-length v3, p1

    .line 17
    add-int/2addr v1, v3

    .line 18
    new-array v3, v2, [B

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    const/16 v5, 0x10

    .line 22
    .line 23
    aput-byte v5, v3, v4

    .line 24
    .line 25
    const/4 v5, 0x1

    .line 26
    int-to-byte v6, v1

    .line 27
    aput-byte v6, v3, v5

    .line 28
    .line 29
    new-array v1, v1, [B

    .line 30
    .line 31
    array-length v5, v0

    .line 32
    invoke-static {v0, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    .line 34
    .line 35
    array-length v5, v0

    .line 36
    invoke-static {v3, v4, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    .line 38
    .line 39
    array-length v0, v0

    .line 40
    add-int/2addr v0, v2

    .line 41
    array-length v2, p1

    .line 42
    invoke-static {p1, v4, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    .line 44
    .line 45
    return-object v1

    .line 46
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 47
    return-object p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/hardware/a;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method protected d(B)I
    .locals 0

    .line 1
    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/controller/core/hardware/a;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/controller/core/hardware/a;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/hardware/a;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/controller/core/hardware/a;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public h(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/controller/core/hardware/a;->c:I

    .line 2
    .line 3
    return-void
.end method

.method public i(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/controller/core/hardware/a;->d:I

    .line 2
    .line 3
    return-void
.end method

.method public j(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/controller/core/hardware/a;->b:I

    .line 2
    .line 3
    return-void
.end method
