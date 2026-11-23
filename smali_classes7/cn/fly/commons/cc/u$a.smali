.class final Lcn/fly/commons/cc/u$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/fly/commons/cc/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private A:I

.field private B:I

.field private C:Z

.field private D:Z

.field private a:[B

.field private b:[I

.field private c:[I

.field private d:[I

.field private e:[I

.field private f:I

.field private g:[Ljava/lang/String;

.field private h:[I

.field private i:[Ljava/lang/Object;

.field private final j:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private l:[B

.field private m:I

.field private n:[I

.field private o:[I

.field private p:[I

.field private q:[Ljava/lang/String;

.field private r:[I

.field private s:I

.field private final t:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private u:[I

.field private v:I

.field private w:[I

.field private x:[I

.field private y:I

.field private z:[I


# direct methods
.method constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x400

    .line 5
    .line 6
    new-array v1, v0, [B

    .line 7
    .line 8
    iput-object v1, p0, Lcn/fly/commons/cc/u$a;->a:[B

    .line 9
    .line 10
    new-array v1, v0, [I

    .line 11
    .line 12
    iput-object v1, p0, Lcn/fly/commons/cc/u$a;->b:[I

    .line 13
    .line 14
    new-array v1, v0, [I

    .line 15
    .line 16
    iput-object v1, p0, Lcn/fly/commons/cc/u$a;->c:[I

    .line 17
    .line 18
    const/16 v1, 0x10

    .line 19
    .line 20
    new-array v2, v1, [I

    .line 21
    .line 22
    iput-object v2, p0, Lcn/fly/commons/cc/u$a;->d:[I

    .line 23
    .line 24
    new-array v1, v1, [I

    .line 25
    .line 26
    iput-object v1, p0, Lcn/fly/commons/cc/u$a;->e:[I

    .line 27
    .line 28
    const/16 v1, 0x100

    .line 29
    .line 30
    new-array v2, v1, [Ljava/lang/Object;

    .line 31
    .line 32
    iput-object v2, p0, Lcn/fly/commons/cc/u$a;->i:[Ljava/lang/Object;

    .line 33
    .line 34
    new-instance v2, Ljava/util/IdentityHashMap;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/util/IdentityHashMap;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v2, p0, Lcn/fly/commons/cc/u$a;->j:Ljava/util/IdentityHashMap;

    .line 40
    .line 41
    new-array v2, v0, [B

    .line 42
    .line 43
    iput-object v2, p0, Lcn/fly/commons/cc/u$a;->l:[B

    .line 44
    .line 45
    new-array v2, v1, [I

    .line 46
    .line 47
    iput-object v2, p0, Lcn/fly/commons/cc/u$a;->n:[I

    .line 48
    .line 49
    new-array v2, v1, [I

    .line 50
    .line 51
    iput-object v2, p0, Lcn/fly/commons/cc/u$a;->o:[I

    .line 52
    .line 53
    new-array v2, v1, [I

    .line 54
    .line 55
    iput-object v2, p0, Lcn/fly/commons/cc/u$a;->p:[I

    .line 56
    .line 57
    new-array v2, v1, [Ljava/lang/String;

    .line 58
    .line 59
    iput-object v2, p0, Lcn/fly/commons/cc/u$a;->q:[Ljava/lang/String;

    .line 60
    .line 61
    new-array v2, v1, [I

    .line 62
    .line 63
    iput-object v2, p0, Lcn/fly/commons/cc/u$a;->r:[I

    .line 64
    .line 65
    const/4 v2, 0x1

    .line 66
    iput v2, p0, Lcn/fly/commons/cc/u$a;->s:I

    .line 67
    .line 68
    new-instance v2, Ljava/util/HashMap;

    .line 69
    .line 70
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object v2, p0, Lcn/fly/commons/cc/u$a;->t:Ljava/util/HashMap;

    .line 74
    .line 75
    new-array v2, v0, [I

    .line 76
    .line 77
    iput-object v2, p0, Lcn/fly/commons/cc/u$a;->u:[I

    .line 78
    .line 79
    new-array v2, v1, [I

    .line 80
    .line 81
    iput-object v2, p0, Lcn/fly/commons/cc/u$a;->w:[I

    .line 82
    .line 83
    new-array v1, v1, [I

    .line 84
    .line 85
    iput-object v1, p0, Lcn/fly/commons/cc/u$a;->x:[I

    .line 86
    .line 87
    new-array v0, v0, [I

    .line 88
    .line 89
    iput-object v0, p0, Lcn/fly/commons/cc/u$a;->z:[I

    .line 90
    .line 91
    return-void
.end method

.method static synthetic A(Lcn/fly/commons/cc/u$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/fly/commons/cc/u$a;->A:I

    .line 2
    .line 3
    return p0
.end method

.method private a(I)I
    .locals 3

    .line 69
    iget v0, p0, Lcn/fly/commons/cc/u$a;->y:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcn/fly/commons/cc/u$a;->j(I)V

    .line 70
    iget v0, p0, Lcn/fly/commons/cc/u$a;->v:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcn/fly/commons/cc/u$a;->k(I)V

    .line 71
    iget v0, p0, Lcn/fly/commons/cc/u$a;->y:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/fly/commons/cc/u$a;->y:I

    .line 72
    iget-object v1, p0, Lcn/fly/commons/cc/u$a;->w:[I

    iget v2, p0, Lcn/fly/commons/cc/u$a;->v:I

    aput v2, v1, v0

    .line 73
    iget-object v1, p0, Lcn/fly/commons/cc/u$a;->x:[I

    aput p1, v1, v0

    add-int/2addr v2, p1

    .line 74
    iput v2, p0, Lcn/fly/commons/cc/u$a;->v:I

    return v0
.end method

.method private static a(III)I
    .locals 0

    .line 81
    div-int/2addr p0, p1

    const/16 p1, 0x100

    if-ge p0, p1, :cond_0

    return p1

    .line 82
    :cond_0
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/Object;)I
    .locals 2

    .line 54
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 55
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcn/fly/commons/cc/u$a;->b(Ljava/lang/String;)I

    move-result p1

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    return p1

    .line 56
    :cond_0
    iget-object v0, p0, Lcn/fly/commons/cc/u$a;->j:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 58
    :cond_1
    iget v0, p0, Lcn/fly/commons/cc/u$a;->k:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcn/fly/commons/cc/u$a;->g(I)V

    .line 59
    iget-object v0, p0, Lcn/fly/commons/cc/u$a;->i:[Ljava/lang/Object;

    iget v1, p0, Lcn/fly/commons/cc/u$a;->k:I

    aput-object p1, v0, v1

    .line 60
    iget-object v0, p0, Lcn/fly/commons/cc/u$a;->j:Ljava/util/IdentityHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget p1, p0, Lcn/fly/commons/cc/u$a;->k:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcn/fly/commons/cc/u$a;->k:I

    return p1
.end method

.method private a(Ljava/lang/String;)I
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 63
    :cond_0
    invoke-direct {p0, p1}, Lcn/fly/commons/cc/u$a;->b(Ljava/lang/String;)I

    move-result v0

    .line 64
    iget-object v1, p0, Lcn/fly/commons/cc/u$a;->q:[Ljava/lang/String;

    aget-object v2, v1, v0

    if-eqz v2, :cond_1

    return v0

    .line 65
    :cond_1
    iget-object v2, p0, Lcn/fly/commons/cc/u$a;->r:[I

    aget v3, v2, v0

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x3

    if-lt v3, v4, :cond_2

    .line 66
    aput-object p1, v1, v0

    .line 67
    aput v4, v2, v0

    goto :goto_0

    .line 68
    :cond_2
    aput v3, v2, v0

    :goto_0
    return v0
.end method

.method private a(II)V
    .locals 2

    .line 77
    iget v0, p0, Lcn/fly/commons/cc/u$a;->f:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcn/fly/commons/cc/u$a;->e(I)V

    .line 78
    iget-object v0, p0, Lcn/fly/commons/cc/u$a;->d:[I

    iget v1, p0, Lcn/fly/commons/cc/u$a;->f:I

    aput p1, v0, v1

    .line 79
    iget-object p1, p0, Lcn/fly/commons/cc/u$a;->e:[I

    aput p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 80
    iput v1, p0, Lcn/fly/commons/cc/u$a;->f:I

    return-void
.end method

.method private a(IILjava/lang/String;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcn/fly/commons/cc/u$a;->w:[I

    aget p1, v0, p1

    add-int/2addr p1, p2

    .line 76
    iget-object p2, p0, Lcn/fly/commons/cc/u$a;->u:[I

    invoke-direct {p0, p3}, Lcn/fly/commons/cc/u$a;->a(Ljava/lang/String;)I

    move-result p3

    aput p3, p2, p1

    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcn/fly/commons/cc/u$a;->b:[I

    invoke-direct {p0, p2}, Lcn/fly/commons/cc/u$a;->a(Ljava/lang/String;)I

    move-result p2

    aput p2, v0, p1

    return-void
.end method

.method private a(Lcn/fly/commons/cc/aa$a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 51
    invoke-virtual {p1}, Lcn/fly/commons/cc/aa$a;->d()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcn/fly/commons/cc/u$a;->a(ILjava/lang/String;)V

    return-void
.end method

.method private a(Lcn/fly/commons/cc/aa$a;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 52
    invoke-virtual {p1}, Lcn/fly/commons/cc/aa$a;->d()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p2, p3}, Lcn/fly/commons/cc/u$a;->a(ILjava/lang/String;)V

    .line 53
    :cond_0
    iget-object p3, p0, Lcn/fly/commons/cc/u$a;->c:[I

    invoke-virtual {p1}, Lcn/fly/commons/cc/aa$a;->c()I

    move-result p1

    aput p1, p3, p2

    return-void
.end method

.method static synthetic a(Lcn/fly/commons/cc/u$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/fly/commons/cc/u$a;->c()V

    return-void
.end method

.method private static b(II)I
    .locals 2

    :goto_0
    if-ge p0, p1, :cond_0

    ushr-int/lit8 v0, p0, 0x1

    const/4 v1, 0x1

    .line 23
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr p0, v0

    goto :goto_0

    :cond_0
    return p0
.end method

.method static synthetic b(Lcn/fly/commons/cc/u$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/fly/commons/cc/u$a;->B:I

    return p0
.end method

.method private b(Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 7
    :cond_0
    iget-object v1, p0, Lcn/fly/commons/cc/u$a;->t:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 9
    :cond_1
    iget v1, p0, Lcn/fly/commons/cc/u$a;->s:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcn/fly/commons/cc/u$a;->i(I)V

    const-string v1, "UTF-8"

    .line 10
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 11
    iget v2, p0, Lcn/fly/commons/cc/u$a;->m:I

    array-length v3, v1

    add-int/2addr v2, v3

    invoke-direct {p0, v2}, Lcn/fly/commons/cc/u$a;->h(I)V

    .line 12
    iget v2, p0, Lcn/fly/commons/cc/u$a;->s:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcn/fly/commons/cc/u$a;->s:I

    .line 13
    invoke-static {v1}, Lcn/fly/commons/cc/u;->a([B)I

    move-result v3

    .line 14
    iget-object v4, p0, Lcn/fly/commons/cc/u$a;->n:[I

    iget v5, p0, Lcn/fly/commons/cc/u$a;->m:I

    aput v5, v4, v2

    .line 15
    iget-object v4, p0, Lcn/fly/commons/cc/u$a;->o:[I

    array-length v5, v1

    aput v5, v4, v2

    .line 16
    iget-object v4, p0, Lcn/fly/commons/cc/u$a;->p:[I

    aput v3, v4, v2

    .line 17
    invoke-static {v1, v3}, Lcn/fly/commons/cc/u;->a([BI)V

    .line 18
    iget-object v3, p0, Lcn/fly/commons/cc/u$a;->l:[B

    iget v4, p0, Lcn/fly/commons/cc/u$a;->m:I

    array-length v5, v1

    invoke-static {v1, v0, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    iget v0, p0, Lcn/fly/commons/cc/u$a;->m:I

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcn/fly/commons/cc/u$a;->m:I

    .line 20
    iget-object v0, p0, Lcn/fly/commons/cc/u$a;->t:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2
.end method

.method private b(I)V
    .locals 2

    .line 21
    iget-object v0, p0, Lcn/fly/commons/cc/u$a;->a:[B

    array-length v1, v0

    if-gt p1, v1, :cond_0

    return-void

    .line 22
    :cond_0
    array-length v0, v0

    invoke-static {v0, p1}, Lcn/fly/commons/cc/u$a;->b(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcn/fly/commons/cc/u$a;->d(I)V

    return-void
.end method

.method private b(Lcn/fly/commons/cc/aa$a;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x2

    .line 3
    invoke-direct {p0, v0}, Lcn/fly/commons/cc/u$a;->a(I)I

    move-result v0

    .line 4
    invoke-virtual {p1}, Lcn/fly/commons/cc/aa$a;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcn/fly/commons/cc/u$a;->a(IILjava/lang/String;)V

    const/4 v1, 0x1

    .line 5
    invoke-virtual {p1}, Lcn/fly/commons/cc/aa$a;->d()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcn/fly/commons/cc/u$a;->a(IILjava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcn/fly/commons/cc/u$a;->b:[I

    aput v0, p1, p2

    return-void
.end method

.method private c()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcn/fly/commons/cc/u$a;->d()V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcn/fly/commons/cc/u$a;->D:Z

    return-void
.end method

.method private c(I)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcn/fly/commons/cc/u$a;->a:[B

    array-length v0, v0

    if-le p1, v0, :cond_0

    .line 5
    invoke-direct {p0, p1}, Lcn/fly/commons/cc/u$a;->d(I)V

    :cond_0
    return-void
.end method

.method private c(Lcn/fly/commons/cc/aa$a;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Lcn/fly/commons/cc/u$a;->b(Lcn/fly/commons/cc/aa$a;I)V

    .line 3
    iget-object v0, p0, Lcn/fly/commons/cc/u$a;->c:[I

    invoke-virtual {p1}, Lcn/fly/commons/cc/aa$a;->c()I

    move-result p1

    aput p1, v0, p2

    return-void
.end method

.method static synthetic c(Lcn/fly/commons/cc/u$a;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/fly/commons/cc/u$a;->a:[B

    return-object p0
.end method

.method private d()V
    .locals 2

    .line 9
    iget-boolean v0, p0, Lcn/fly/commons/cc/u$a;->D:Z

    if-nez v0, :cond_0

    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already built"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private d(I)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcn/fly/commons/cc/u$a;->a:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcn/fly/commons/cc/u$a;->a:[B

    .line 4
    iget-object v0, p0, Lcn/fly/commons/cc/u$a;->b:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcn/fly/commons/cc/u$a;->b:[I

    .line 5
    iget-object v0, p0, Lcn/fly/commons/cc/u$a;->c:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcn/fly/commons/cc/u$a;->c:[I

    .line 6
    iget-object v0, p0, Lcn/fly/commons/cc/u$a;->g:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 7
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcn/fly/commons/cc/u$a;->g:[Ljava/lang/String;

    .line 8
    iget-object v0, p0, Lcn/fly/commons/cc/u$a;->h:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcn/fly/commons/cc/u$a;->h:[I

    :cond_0
    return-void
.end method

.method private d(Lcn/fly/commons/cc/aa$a;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcn/fly/commons/cc/u$a;->c:[I

    invoke-virtual {p1}, Lcn/fly/commons/cc/aa$a;->c()I

    move-result p1

    aput p1, v0, p2

    return-void
.end method

.method static synthetic d(Lcn/fly/commons/cc/u$a;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/fly/commons/cc/u$a;->b:[I

    return-object p0
.end method

.method private e(I)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcn/fly/commons/cc/u$a;->d:[I

    array-length v1, v0

    if-le p1, v1, :cond_0

    .line 5
    array-length v0, v0

    invoke-static {v0, p1}, Lcn/fly/commons/cc/u$a;->b(II)I

    move-result p1

    .line 6
    iget-object v0, p0, Lcn/fly/commons/cc/u$a;->d:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcn/fly/commons/cc/u$a;->d:[I

    .line 7
    iget-object v0, p0, Lcn/fly/commons/cc/u$a;->e:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcn/fly/commons/cc/u$a;->e:[I

    :cond_0
    return-void
.end method

.method private e(Lcn/fly/commons/cc/aa$a;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcn/fly/commons/cc/aa$a;->c()I

    move-result p1

    .line 3
    iget-object v0, p0, Lcn/fly/commons/cc/u$a;->c:[I

    add-int/lit8 p1, p1, -0xc

    mul-int/lit8 p1, p1, 0xd

    add-int/lit8 p1, p1, 0xa

    rem-int/lit8 p1, p1, 0xf

    add-int/lit8 p1, p1, 0x1

    aput p1, v0, p2

    return-void
.end method

.method static synthetic e(Lcn/fly/commons/cc/u$a;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/fly/commons/cc/u$a;->c:[I

    return-object p0
.end method

.method static synthetic f(Lcn/fly/commons/cc/u$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/fly/commons/cc/u$a;->f:I

    return p0
.end method

.method private f(I)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcn/fly/commons/cc/u$a;->g:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 5
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcn/fly/commons/cc/u$a;->g:[Ljava/lang/String;

    .line 6
    new-array p1, p1, [I

    iput-object p1, p0, Lcn/fly/commons/cc/u$a;->h:[I

    goto :goto_0

    .line 7
    :cond_0
    array-length v1, v0

    if-le p1, v1, :cond_1

    .line 8
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcn/fly/commons/cc/u$a;->g:[Ljava/lang/String;

    .line 9
    iget-object v0, p0, Lcn/fly/commons/cc/u$a;->h:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcn/fly/commons/cc/u$a;->h:[I

    :cond_1
    :goto_0
    return-void
.end method

.method private f(Lcn/fly/commons/cc/aa$a;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcn/fly/commons/cc/aa$a;->a()V

    .line 3
    iget-object v0, p0, Lcn/fly/commons/cc/u$a;->c:[I

    invoke-virtual {p1}, Lcn/fly/commons/cc/aa$a;->c()I

    move-result v1

    invoke-virtual {p1}, Lcn/fly/commons/cc/aa$a;->h()I

    move-result p1

    add-int/2addr v1, p1

    aput v1, v0, p2

    return-void
.end method

.method private g(I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcn/fly/commons/cc/u$a;->i:[Ljava/lang/Object;

    array-length v1, v0

    if-le p1, v1, :cond_0

    .line 3
    array-length v1, v0

    invoke-static {v1, p1}, Lcn/fly/commons/cc/u$a;->b(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcn/fly/commons/cc/u$a;->i:[Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method static synthetic g(Lcn/fly/commons/cc/u$a;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/fly/commons/cc/u$a;->d:[I

    return-object p0
.end method

.method private h(I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcn/fly/commons/cc/u$a;->l:[B

    array-length v1, v0

    if-le p1, v1, :cond_0

    .line 3
    array-length v1, v0

    invoke-static {v1, p1}, Lcn/fly/commons/cc/u$a;->b(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcn/fly/commons/cc/u$a;->l:[B

    :cond_0
    return-void
.end method

.method static synthetic h(Lcn/fly/commons/cc/u$a;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/fly/commons/cc/u$a;->e:[I

    return-object p0
.end method

.method private i(I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcn/fly/commons/cc/u$a;->n:[I

    array-length v1, v0

    if-le p1, v1, :cond_0

    .line 3
    array-length v0, v0

    invoke-static {v0, p1}, Lcn/fly/commons/cc/u$a;->b(II)I

    move-result p1

    .line 4
    iget-object v0, p0, Lcn/fly/commons/cc/u$a;->n:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcn/fly/commons/cc/u$a;->n:[I

    .line 5
    iget-object v0, p0, Lcn/fly/commons/cc/u$a;->o:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcn/fly/commons/cc/u$a;->o:[I

    .line 6
    iget-object v0, p0, Lcn/fly/commons/cc/u$a;->p:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcn/fly/commons/cc/u$a;->p:[I

    .line 7
    iget-object v0, p0, Lcn/fly/commons/cc/u$a;->q:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcn/fly/commons/cc/u$a;->q:[Ljava/lang/String;

    .line 8
    iget-object v0, p0, Lcn/fly/commons/cc/u$a;->r:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcn/fly/commons/cc/u$a;->r:[I

    :cond_0
    return-void
.end method

.method static synthetic i(Lcn/fly/commons/cc/u$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/fly/commons/cc/u$a;->C:Z

    return p0
.end method

.method private j(I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcn/fly/commons/cc/u$a;->w:[I

    array-length v1, v0

    if-le p1, v1, :cond_0

    .line 3
    array-length v0, v0

    invoke-static {v0, p1}, Lcn/fly/commons/cc/u$a;->b(II)I

    move-result p1

    .line 4
    iget-object v0, p0, Lcn/fly/commons/cc/u$a;->w:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcn/fly/commons/cc/u$a;->w:[I

    .line 5
    iget-object v0, p0, Lcn/fly/commons/cc/u$a;->x:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcn/fly/commons/cc/u$a;->x:[I

    :cond_0
    return-void
.end method

.method static synthetic j(Lcn/fly/commons/cc/u$a;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/fly/commons/cc/u$a;->g:[Ljava/lang/String;

    return-object p0
.end method

.method private k(I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcn/fly/commons/cc/u$a;->u:[I

    array-length v1, v0

    if-le p1, v1, :cond_0

    .line 3
    array-length v1, v0

    invoke-static {v1, p1}, Lcn/fly/commons/cc/u$a;->b(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcn/fly/commons/cc/u$a;->u:[I

    :cond_0
    return-void
.end method

.method static synthetic k(Lcn/fly/commons/cc/u$a;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/fly/commons/cc/u$a;->h:[I

    return-object p0
.end method

.method private l(I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcn/fly/commons/cc/u$a;->z:[I

    array-length v1, v0

    if-le p1, v1, :cond_0

    .line 3
    array-length v1, v0

    invoke-static {v1, p1}, Lcn/fly/commons/cc/u$a;->b(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcn/fly/commons/cc/u$a;->z:[I

    :cond_0
    return-void
.end method

.method static synthetic l(Lcn/fly/commons/cc/u$a;)[Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/fly/commons/cc/u$a;->i:[Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic m(Lcn/fly/commons/cc/u$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/fly/commons/cc/u$a;->k:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic n(Lcn/fly/commons/cc/u$a;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/fly/commons/cc/u$a;->q:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic o(Lcn/fly/commons/cc/u$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/fly/commons/cc/u$a;->s:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic p(Lcn/fly/commons/cc/u$a;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/fly/commons/cc/u$a;->l:[B

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic q(Lcn/fly/commons/cc/u$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/fly/commons/cc/u$a;->m:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic r(Lcn/fly/commons/cc/u$a;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/fly/commons/cc/u$a;->n:[I

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic s(Lcn/fly/commons/cc/u$a;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/fly/commons/cc/u$a;->o:[I

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic t(Lcn/fly/commons/cc/u$a;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/fly/commons/cc/u$a;->p:[I

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic u(Lcn/fly/commons/cc/u$a;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/fly/commons/cc/u$a;->u:[I

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic v(Lcn/fly/commons/cc/u$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/fly/commons/cc/u$a;->v:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic w(Lcn/fly/commons/cc/u$a;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/fly/commons/cc/u$a;->w:[I

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic x(Lcn/fly/commons/cc/u$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/fly/commons/cc/u$a;->y:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic y(Lcn/fly/commons/cc/u$a;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/fly/commons/cc/u$a;->x:[I

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic z(Lcn/fly/commons/cc/u$a;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/fly/commons/cc/u$a;->z:[I

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method a()I
    .locals 1

    .line 2
    iget v0, p0, Lcn/fly/commons/cc/u$a;->B:I

    return v0
.end method

.method a(BLcn/fly/commons/cc/aa$a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 11
    iget v0, p0, Lcn/fly/commons/cc/u$a;->B:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcn/fly/commons/cc/u$a;->b(I)V

    .line 12
    iget v0, p0, Lcn/fly/commons/cc/u$a;->B:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcn/fly/commons/cc/u$a;->B:I

    mul-int/lit8 p1, p1, 0x64

    add-int/lit8 p1, p1, 0x47

    .line 13
    rem-int/lit8 p1, p1, 0x7f

    add-int/2addr p1, v1

    .line 14
    iget-object v2, p0, Lcn/fly/commons/cc/u$a;->a:[B

    int-to-byte v3, p1

    aput-byte v3, v2, v0

    .line 15
    iget-boolean v3, p0, Lcn/fly/commons/cc/u$a;->C:Z

    if-eqz v3, :cond_0

    .line 16
    array-length v2, v2

    invoke-direct {p0, v2}, Lcn/fly/commons/cc/u$a;->f(I)V

    .line 17
    iget-object v2, p0, Lcn/fly/commons/cc/u$a;->g:[Ljava/lang/String;

    invoke-virtual {p2}, Lcn/fly/commons/cc/aa$a;->f()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 18
    iget-object v2, p0, Lcn/fly/commons/cc/u$a;->h:[I

    invoke-virtual {p2}, Lcn/fly/commons/cc/aa$a;->g()I

    move-result v3

    aput v3, v2, v0

    :cond_0
    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    .line 19
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 20
    :sswitch_0
    invoke-virtual {p2}, Lcn/fly/commons/cc/aa$a;->c()I

    move-result p1

    .line 21
    invoke-direct {p0, p1}, Lcn/fly/commons/cc/u$a;->a(I)I

    move-result v1

    :goto_0
    if-ge v2, p1, :cond_1

    .line 22
    invoke-virtual {p2}, Lcn/fly/commons/cc/aa$a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcn/fly/commons/cc/u$a;->a(IILjava/lang/String;)V

    .line 23
    invoke-virtual {p2}, Lcn/fly/commons/cc/aa$a;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 24
    :cond_1
    iget-object p1, p0, Lcn/fly/commons/cc/u$a;->b:[I

    aput v1, p1, v0

    goto/16 :goto_4

    .line 25
    :sswitch_1
    invoke-virtual {p2}, Lcn/fly/commons/cc/aa$a;->c()I

    move-result p1

    if-ltz p1, :cond_3

    .line 26
    iget v1, p0, Lcn/fly/commons/cc/u$a;->A:I

    const v3, 0x7fffffff

    sub-int/2addr v3, p1

    if-gt v1, v3, :cond_3

    add-int v3, v1, p1

    .line 27
    invoke-direct {p0, v3}, Lcn/fly/commons/cc/u$a;->l(I)V

    :goto_1
    if-ge v2, p1, :cond_2

    .line 28
    iget-object v4, p0, Lcn/fly/commons/cc/u$a;->z:[I

    add-int v5, v1, v2

    invoke-virtual {p2}, Lcn/fly/commons/cc/aa$a;->e()Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v6}, Lcn/fly/commons/cc/u$a;->a(Ljava/lang/Object;)I

    move-result v6

    aput v6, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 29
    :cond_2
    iget-object p2, p0, Lcn/fly/commons/cc/u$a;->b:[I

    aput v1, p2, v0

    .line 30
    iget-object p2, p0, Lcn/fly/commons/cc/u$a;->c:[I

    aput p1, p2, v0

    .line 31
    iput v3, p0, Lcn/fly/commons/cc/u$a;->A:I

    goto/16 :goto_4

    .line 32
    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid value sequence length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 33
    :sswitch_2
    invoke-direct {p0, p2, v0}, Lcn/fly/commons/cc/u$a;->c(Lcn/fly/commons/cc/aa$a;I)V

    goto/16 :goto_4

    .line 34
    :sswitch_3
    invoke-direct {p0, p2, v0}, Lcn/fly/commons/cc/u$a;->e(Lcn/fly/commons/cc/aa$a;I)V

    goto/16 :goto_4

    .line 35
    :sswitch_4
    invoke-virtual {p2}, Lcn/fly/commons/cc/aa$a;->c()I

    move-result p1

    .line 36
    invoke-direct {p0, p1}, Lcn/fly/commons/cc/u$a;->a(I)I

    move-result v1

    :goto_2
    if-ge v2, p1, :cond_4

    .line 37
    invoke-virtual {p2}, Lcn/fly/commons/cc/aa$a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcn/fly/commons/cc/u$a;->a(IILjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 38
    :cond_4
    iget-object p1, p0, Lcn/fly/commons/cc/u$a;->b:[I

    aput v1, p1, v0

    goto :goto_4

    .line 39
    :sswitch_5
    invoke-virtual {p2}, Lcn/fly/commons/cc/aa$a;->d()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcn/fly/commons/cc/u$a;->a(ILjava/lang/String;)V

    .line 40
    iget-object p1, p0, Lcn/fly/commons/cc/u$a;->c:[I

    invoke-virtual {p2}, Lcn/fly/commons/cc/aa$a;->c()I

    move-result v1

    aput v1, p1, v0

    .line 41
    invoke-virtual {p2}, Lcn/fly/commons/cc/aa$a;->c()I

    move-result p1

    invoke-virtual {p2}, Lcn/fly/commons/cc/aa$a;->h()I

    move-result p2

    add-int/2addr p1, p2

    invoke-direct {p0, v0, p1}, Lcn/fly/commons/cc/u$a;->a(II)V

    goto :goto_4

    .line 42
    :sswitch_6
    invoke-virtual {p2}, Lcn/fly/commons/cc/aa$a;->d()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcn/fly/commons/cc/u$a;->a(ILjava/lang/String;)V

    .line 43
    invoke-virtual {p2}, Lcn/fly/commons/cc/aa$a;->a()V

    goto :goto_4

    .line 44
    :sswitch_7
    invoke-virtual {p2}, Lcn/fly/commons/cc/aa$a;->a()V

    goto :goto_4

    .line 45
    :sswitch_8
    invoke-direct {p0, p2, v0}, Lcn/fly/commons/cc/u$a;->a(Lcn/fly/commons/cc/aa$a;I)V

    goto :goto_4

    .line 46
    :sswitch_9
    iget-object p1, p0, Lcn/fly/commons/cc/u$a;->b:[I

    invoke-virtual {p2}, Lcn/fly/commons/cc/aa$a;->e()Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p2}, Lcn/fly/commons/cc/u$a;->a(Ljava/lang/Object;)I

    move-result p2

    aput p2, p1, v0

    goto :goto_4

    .line 47
    :sswitch_a
    invoke-direct {p0, p2, v0}, Lcn/fly/commons/cc/u$a;->f(Lcn/fly/commons/cc/aa$a;I)V

    goto :goto_4

    .line 48
    :sswitch_b
    invoke-direct {p0, p2, v0}, Lcn/fly/commons/cc/u$a;->d(Lcn/fly/commons/cc/aa$a;I)V

    goto :goto_4

    .line 49
    :sswitch_c
    invoke-direct {p0, p2, v0}, Lcn/fly/commons/cc/u$a;->b(Lcn/fly/commons/cc/aa$a;I)V

    goto :goto_4

    :sswitch_d
    const/16 v3, 0x15

    if-eq p1, v3, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    .line 50
    :goto_3
    invoke-direct {p0, p2, v0, v1}, Lcn/fly/commons/cc/u$a;->a(Lcn/fly/commons/cc/aa$a;IZ)V

    :goto_4
    :sswitch_e
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_d
        0x5 -> :sswitch_c
        0xa -> :sswitch_b
        0xd -> :sswitch_a
        0x10 -> :sswitch_c
        0x12 -> :sswitch_9
        0x15 -> :sswitch_d
        0x18 -> :sswitch_e
        0x1d -> :sswitch_8
        0x20 -> :sswitch_e
        0x25 -> :sswitch_b
        0x28 -> :sswitch_7
        0x2b -> :sswitch_e
        0x2d -> :sswitch_6
        0x30 -> :sswitch_e
        0x33 -> :sswitch_5
        0x38 -> :sswitch_c
        0x3b -> :sswitch_8
        0x3e -> :sswitch_4
        0x40 -> :sswitch_3
        0x43 -> :sswitch_8
        0x46 -> :sswitch_e
        0x4b -> :sswitch_2
        0x4e -> :sswitch_e
        0x53 -> :sswitch_8
        0x56 -> :sswitch_e
        0x59 -> :sswitch_1
        0x5b -> :sswitch_3
        0x5e -> :sswitch_d
        0x61 -> :sswitch_b
        0x66 -> :sswitch_c
        0x69 -> :sswitch_8
        0x6e -> :sswitch_e
        0x71 -> :sswitch_a
        0x74 -> :sswitch_0
        0x76 -> :sswitch_8
        0x79 -> :sswitch_8
        0x7c -> :sswitch_d
    .end sparse-switch
.end method

.method a(IZ)V
    .locals 3

    if-gtz p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcn/fly/commons/cc/u$a;->d()V

    .line 4
    iput-boolean p2, p0, Lcn/fly/commons/cc/u$a;->C:Z

    .line 5
    iget p2, p0, Lcn/fly/commons/cc/u$a;->B:I

    add-int/2addr p2, p1

    invoke-direct {p0, p2}, Lcn/fly/commons/cc/u$a;->c(I)V

    const/16 p2, 0x10

    const/16 v0, 0x1000

    .line 6
    invoke-static {p1, p2, v0}, Lcn/fly/commons/cc/u$a;->a(III)I

    move-result v1

    invoke-direct {p0, v1}, Lcn/fly/commons/cc/u$a;->g(I)V

    const/4 v1, 0x4

    const/16 v2, 0x4000

    .line 7
    invoke-static {p1, v1, v2}, Lcn/fly/commons/cc/u$a;->a(III)I

    move-result v1

    invoke-direct {p0, v1}, Lcn/fly/commons/cc/u$a;->i(I)V

    .line 8
    invoke-static {p1, p2, v0}, Lcn/fly/commons/cc/u$a;->a(III)I

    move-result v1

    invoke-direct {p0, v1}, Lcn/fly/commons/cc/u$a;->j(I)V

    .line 9
    invoke-static {p1, p2, v0}, Lcn/fly/commons/cc/u$a;->a(III)I

    move-result v1

    invoke-direct {p0, v1}, Lcn/fly/commons/cc/u$a;->k(I)V

    .line 10
    invoke-static {p1, p2, v0}, Lcn/fly/commons/cc/u$a;->a(III)I

    move-result p1

    invoke-direct {p0, p1}, Lcn/fly/commons/cc/u$a;->l(I)V

    return-void
.end method

.method b()Lcn/fly/commons/cc/u;
    .locals 2

    .line 2
    new-instance v0, Lcn/fly/commons/cc/u;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/fly/commons/cc/u;-><init>(Lcn/fly/commons/cc/u$a;Lcn/fly/commons/cc/u$1;)V

    return-object v0
.end method
