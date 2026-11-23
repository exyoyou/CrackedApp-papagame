.class public Lcn/fly/commons/cc/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/fly/commons/cc/u$a;,
        Lcn/fly/commons/cc/u$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[B>;"
        }
    .end annotation
.end field

.field private static final b:[Ljava/lang/Object;

.field private static final c:[I


# instance fields
.field private final d:[B

.field private final e:[I

.field private final f:[Ljava/lang/Object;

.field private final g:[Ljava/lang/String;

.field private final h:[B

.field private final i:[I

.field private final j:[I

.field private final k:[I

.field private final l:[I

.field private final m:[I

.field private final n:[I

.field private final o:[I

.field private final p:[I

.field private final q:[I

.field private final r:[I

.field private final s:[Ljava/lang/String;

.field private final t:[I

.field private final u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcn/fly/commons/cc/u;->a:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    new-array v1, v0, [Ljava/lang/Object;

    .line 10
    .line 11
    sput-object v1, Lcn/fly/commons/cc/u;->b:[Ljava/lang/Object;

    .line 12
    .line 13
    new-array v0, v0, [I

    .line 14
    .line 15
    sput-object v0, Lcn/fly/commons/cc/u;->c:[I

    .line 16
    .line 17
    return-void
.end method

.method private constructor <init>(Lcn/fly/commons/cc/u$a;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcn/fly/commons/cc/u$a;->a(Lcn/fly/commons/cc/u$a;)V

    .line 4
    invoke-static {p1}, Lcn/fly/commons/cc/u$a;->b(Lcn/fly/commons/cc/u$a;)I

    move-result v0

    .line 5
    invoke-static {p1}, Lcn/fly/commons/cc/u$a;->c(Lcn/fly/commons/cc/u$a;)[B

    move-result-object v1

    invoke-static {v1, v0}, Lcn/fly/commons/cc/u;->b([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcn/fly/commons/cc/u;->d:[B

    .line 6
    invoke-static {p1}, Lcn/fly/commons/cc/u$a;->d(Lcn/fly/commons/cc/u$a;)[I

    move-result-object v1

    invoke-static {v1, v0}, Lcn/fly/commons/cc/u;->a([II)[I

    move-result-object v1

    iput-object v1, p0, Lcn/fly/commons/cc/u;->e:[I

    .line 7
    invoke-static {p1}, Lcn/fly/commons/cc/u$a;->e(Lcn/fly/commons/cc/u$a;)[I

    move-result-object v1

    invoke-static {v1, v0}, Lcn/fly/commons/cc/u;->a([II)[I

    move-result-object v1

    iput-object v1, p0, Lcn/fly/commons/cc/u;->p:[I

    .line 8
    invoke-static {p1}, Lcn/fly/commons/cc/u$a;->f(Lcn/fly/commons/cc/u$a;)I

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcn/fly/commons/cc/u;->c:[I

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcn/fly/commons/cc/u$a;->g(Lcn/fly/commons/cc/u$a;)[I

    move-result-object v1

    invoke-static {p1}, Lcn/fly/commons/cc/u$a;->f(Lcn/fly/commons/cc/u$a;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcn/fly/commons/cc/u;->q:[I

    .line 9
    invoke-static {p1}, Lcn/fly/commons/cc/u$a;->f(Lcn/fly/commons/cc/u$a;)I

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcn/fly/commons/cc/u;->c:[I

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcn/fly/commons/cc/u$a;->h(Lcn/fly/commons/cc/u$a;)[I

    move-result-object v1

    invoke-static {p1}, Lcn/fly/commons/cc/u$a;->f(Lcn/fly/commons/cc/u$a;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcn/fly/commons/cc/u;->r:[I

    .line 10
    invoke-static {p1}, Lcn/fly/commons/cc/u$a;->i(Lcn/fly/commons/cc/u$a;)Z

    move-result v1

    iput-boolean v1, p0, Lcn/fly/commons/cc/u;->u:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 11
    invoke-static {p1}, Lcn/fly/commons/cc/u$a;->j(Lcn/fly/commons/cc/u$a;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcn/fly/commons/cc/u;->a([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v2

    :goto_2
    iput-object v3, p0, Lcn/fly/commons/cc/u;->s:[Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 12
    invoke-static {p1}, Lcn/fly/commons/cc/u$a;->k(Lcn/fly/commons/cc/u$a;)[I

    move-result-object v1

    invoke-static {v1, v0}, Lcn/fly/commons/cc/u;->a([II)[I

    move-result-object v2

    :cond_3
    iput-object v2, p0, Lcn/fly/commons/cc/u;->t:[I

    .line 13
    invoke-static {p1}, Lcn/fly/commons/cc/u$a;->l(Lcn/fly/commons/cc/u$a;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1}, Lcn/fly/commons/cc/u$a;->m(Lcn/fly/commons/cc/u$a;)I

    move-result v1

    invoke-static {v0, v1}, Lcn/fly/commons/cc/u;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcn/fly/commons/cc/u;->f:[Ljava/lang/Object;

    .line 14
    invoke-static {p1}, Lcn/fly/commons/cc/u$a;->n(Lcn/fly/commons/cc/u$a;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcn/fly/commons/cc/u$a;->o(Lcn/fly/commons/cc/u$a;)I

    move-result v1

    invoke-static {v0, v1}, Lcn/fly/commons/cc/u;->a([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/fly/commons/cc/u;->g:[Ljava/lang/String;

    .line 15
    invoke-static {p1}, Lcn/fly/commons/cc/u$a;->p(Lcn/fly/commons/cc/u$a;)[B

    move-result-object v0

    invoke-static {p1}, Lcn/fly/commons/cc/u$a;->q(Lcn/fly/commons/cc/u$a;)I

    move-result v1

    invoke-static {v0, v1}, Lcn/fly/commons/cc/u;->b([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcn/fly/commons/cc/u;->h:[B

    .line 16
    invoke-static {p1}, Lcn/fly/commons/cc/u$a;->r(Lcn/fly/commons/cc/u$a;)[I

    move-result-object v0

    invoke-static {p1}, Lcn/fly/commons/cc/u$a;->o(Lcn/fly/commons/cc/u$a;)I

    move-result v1

    invoke-static {v0, v1}, Lcn/fly/commons/cc/u;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lcn/fly/commons/cc/u;->i:[I

    .line 17
    invoke-static {p1}, Lcn/fly/commons/cc/u$a;->s(Lcn/fly/commons/cc/u$a;)[I

    move-result-object v0

    invoke-static {p1}, Lcn/fly/commons/cc/u$a;->o(Lcn/fly/commons/cc/u$a;)I

    move-result v1

    invoke-static {v0, v1}, Lcn/fly/commons/cc/u;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lcn/fly/commons/cc/u;->j:[I

    .line 18
    invoke-static {p1}, Lcn/fly/commons/cc/u$a;->t(Lcn/fly/commons/cc/u$a;)[I

    move-result-object v0

    invoke-static {p1}, Lcn/fly/commons/cc/u$a;->o(Lcn/fly/commons/cc/u$a;)I

    move-result v1

    invoke-static {v0, v1}, Lcn/fly/commons/cc/u;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lcn/fly/commons/cc/u;->k:[I

    .line 19
    invoke-static {p1}, Lcn/fly/commons/cc/u$a;->u(Lcn/fly/commons/cc/u$a;)[I

    move-result-object v0

    invoke-static {p1}, Lcn/fly/commons/cc/u$a;->v(Lcn/fly/commons/cc/u$a;)I

    move-result v1

    invoke-static {v0, v1}, Lcn/fly/commons/cc/u;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lcn/fly/commons/cc/u;->l:[I

    .line 20
    invoke-static {p1}, Lcn/fly/commons/cc/u$a;->w(Lcn/fly/commons/cc/u$a;)[I

    move-result-object v0

    invoke-static {p1}, Lcn/fly/commons/cc/u$a;->x(Lcn/fly/commons/cc/u$a;)I

    move-result v1

    invoke-static {v0, v1}, Lcn/fly/commons/cc/u;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lcn/fly/commons/cc/u;->m:[I

    .line 21
    invoke-static {p1}, Lcn/fly/commons/cc/u$a;->y(Lcn/fly/commons/cc/u$a;)[I

    move-result-object v0

    invoke-static {p1}, Lcn/fly/commons/cc/u$a;->x(Lcn/fly/commons/cc/u$a;)I

    move-result v1

    invoke-static {v0, v1}, Lcn/fly/commons/cc/u;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lcn/fly/commons/cc/u;->n:[I

    .line 22
    invoke-static {p1}, Lcn/fly/commons/cc/u$a;->z(Lcn/fly/commons/cc/u$a;)[I

    move-result-object v0

    invoke-static {p1}, Lcn/fly/commons/cc/u$a;->A(Lcn/fly/commons/cc/u$a;)I

    move-result p1

    invoke-static {v0, p1}, Lcn/fly/commons/cc/u;->a([II)[I

    move-result-object p1

    iput-object p1, p0, Lcn/fly/commons/cc/u;->o:[I

    return-void
.end method

.method synthetic constructor <init>(Lcn/fly/commons/cc/u$a;Lcn/fly/commons/cc/u$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/fly/commons/cc/u;-><init>(Lcn/fly/commons/cc/u$a;)V

    return-void
.end method

.method static synthetic a([B)I
    .locals 0

    .line 2
    invoke-static {p0}, Lcn/fly/commons/cc/u;->b([B)I

    move-result p0

    return p0
.end method

.method private a(I)Ljava/lang/String;
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcn/fly/commons/cc/u;->u:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/fly/commons/cc/u;->s:[Ljava/lang/String;

    aget-object p1, v0, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private a(Lcn/fly/commons/cc/u$b;)V
    .locals 7

    .line 81
    invoke-virtual {p1}, Lcn/fly/commons/cc/u$b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 82
    invoke-virtual {p1}, Lcn/fly/commons/cc/u$b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 83
    instance-of v2, v0, Ljava/util/List;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    .line 84
    check-cast v0, Ljava/util/List;

    .line 85
    instance-of v2, v1, Lcn/fly/commons/cc/c;

    if-eqz v2, :cond_2

    .line 86
    check-cast v1, Lcn/fly/commons/cc/c;

    invoke-virtual {v1}, Lcn/fly/commons/cc/c;->b()[Ljava/lang/Number;

    move-result-object v1

    .line 87
    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-gez v2, :cond_0

    .line 88
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v2, v4

    .line 89
    :cond_0
    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-gez v1, :cond_1

    .line 90
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v1, v3

    .line 91
    :cond_1
    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_1

    .line 92
    :cond_2
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_3

    .line 93
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 94
    :cond_3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1

    .line 95
    :cond_4
    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_5

    .line 96
    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1

    .line 97
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 98
    instance-of v2, v1, Lcn/fly/commons/cc/c;

    if-eqz v2, :cond_8

    .line 99
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    .line 100
    check-cast v1, Lcn/fly/commons/cc/c;

    invoke-virtual {v1}, Lcn/fly/commons/cc/c;->b()[Ljava/lang/Number;

    move-result-object v1

    .line 101
    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-gez v5, :cond_6

    add-int/2addr v5, v2

    .line 102
    :cond_6
    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-gez v1, :cond_7

    add-int/2addr v1, v2

    .line 103
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    sub-int/2addr v1, v5

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    .line 104
    invoke-static {v0, v5, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v2

    goto :goto_1

    .line 105
    :cond_8
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_9

    .line 106
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 107
    :cond_9
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 108
    :cond_a
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_e

    .line 109
    check-cast v0, Ljava/lang/String;

    .line 110
    instance-of v2, v1, Lcn/fly/commons/cc/c;

    if-eqz v2, :cond_b

    .line 111
    check-cast v1, Lcn/fly/commons/cc/c;

    invoke-virtual {v1}, Lcn/fly/commons/cc/c;->b()[Ljava/lang/Number;

    move-result-object v1

    .line 112
    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 113
    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    goto :goto_0

    .line 114
    :cond_b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 115
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v6, v2

    move v2, v1

    move v1, v6

    :goto_0
    if-gez v2, :cond_c

    .line 116
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    :cond_c
    if-gez v1, :cond_d

    .line 117
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    .line 118
    :cond_d
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 119
    :goto_1
    invoke-virtual {p1, v0}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    return-void

    .line 120
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not entry"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lcn/fly/commons/cc/u$b;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcn/fly/commons/cc/u;->d:[B

    aget-byte v0, v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 35
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad opcode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/fly/commons/cc/u;->d:[B

    aget-byte p2, v1, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :sswitch_0
    invoke-direct {p0, p2}, Lcn/fly/commons/cc/u;->f(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/fly/commons/cc/u;->p:[I

    aget v1, v1, p2

    invoke-direct {p0, p1, v0, v1, p2}, Lcn/fly/commons/cc/u;->a(Lcn/fly/commons/cc/u$b;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 37
    :sswitch_1
    invoke-direct {p0, p2}, Lcn/fly/commons/cc/u;->f(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcn/fly/commons/cc/u$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, p2}, Lcn/fly/commons/cc/u;->a(Lcn/fly/commons/cc/u$b;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 38
    :sswitch_2
    invoke-direct {p0, p2}, Lcn/fly/commons/cc/u;->f(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/fly/commons/cc/u$b;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 39
    :sswitch_3
    invoke-direct {p0, p1, p2}, Lcn/fly/commons/cc/u;->b(Lcn/fly/commons/cc/u$b;I)V

    goto/16 :goto_0

    .line 40
    :sswitch_4
    iget-object v0, p0, Lcn/fly/commons/cc/u;->p:[I

    aget p2, v0, p2

    iput p2, p1, Lcn/fly/commons/cc/u$b;->a:I

    goto/16 :goto_0

    .line 41
    :sswitch_5
    invoke-direct {p0, p1}, Lcn/fly/commons/cc/u;->a(Lcn/fly/commons/cc/u$b;)V

    goto/16 :goto_0

    .line 42
    :sswitch_6
    invoke-direct {p0, p2}, Lcn/fly/commons/cc/u;->f(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcn/fly/commons/cc/u$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, p2}, Lcn/fly/commons/cc/u;->b(Lcn/fly/commons/cc/u$b;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 43
    :sswitch_7
    invoke-direct {p0, p2, v1}, Lcn/fly/commons/cc/u;->c(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v2}, Lcn/fly/commons/cc/u;->c(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p2}, Lcn/fly/commons/cc/u;->a(Lcn/fly/commons/cc/u$b;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 44
    :sswitch_8
    iget-object v0, p0, Lcn/fly/commons/cc/u;->p:[I

    aget v0, v0, p2

    invoke-direct {p0, p1, v0, p2}, Lcn/fly/commons/cc/u;->c(Lcn/fly/commons/cc/u$b;II)V

    goto/16 :goto_0

    .line 45
    :sswitch_9
    invoke-direct {p0, p2}, Lcn/fly/commons/cc/u;->f(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcn/fly/commons/cc/u$b;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    iget-object v0, p0, Lcn/fly/commons/cc/u;->p:[I

    aget v5, v0, p2

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcn/fly/commons/cc/u;->a(Lcn/fly/commons/cc/u$b;Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 46
    :sswitch_a
    iget-object v0, p0, Lcn/fly/commons/cc/u;->p:[I

    aget v0, v0, p2

    invoke-direct {p0, p1, v0, p2}, Lcn/fly/commons/cc/u;->a(Lcn/fly/commons/cc/u$b;II)V

    goto/16 :goto_0

    .line 47
    :sswitch_b
    invoke-direct {p0, p1, p2}, Lcn/fly/commons/cc/u;->c(Lcn/fly/commons/cc/u$b;I)V

    goto/16 :goto_0

    .line 48
    :sswitch_c
    invoke-direct {p0, p1}, Lcn/fly/commons/cc/u;->b(Lcn/fly/commons/cc/u$b;)V

    goto/16 :goto_0

    .line 49
    :sswitch_d
    invoke-direct {p0, p2}, Lcn/fly/commons/cc/u;->f(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 50
    :sswitch_e
    iget-object p2, p1, Lcn/fly/commons/cc/u$b;->c:Ljava/util/List;

    if-eqz p2, :cond_0

    .line 51
    invoke-virtual {p1}, Lcn/fly/commons/cc/u$b;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_0
    iput-boolean v2, p1, Lcn/fly/commons/cc/u$b;->d:Z

    .line 53
    iput-boolean v2, p1, Lcn/fly/commons/cc/u$b;->e:Z

    goto/16 :goto_0

    .line 54
    :sswitch_f
    invoke-direct {p0, p2, v1}, Lcn/fly/commons/cc/u;->c(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p2, v2}, Lcn/fly/commons/cc/u;->c(II)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcn/fly/commons/cc/u;->p:[I

    aget v7, v0, p2

    move-object v3, p0

    move-object v4, p1

    move v8, p2

    invoke-direct/range {v3 .. v8}, Lcn/fly/commons/cc/u;->a(Lcn/fly/commons/cc/u$b;Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 55
    :sswitch_10
    iget-object p2, p1, Lcn/fly/commons/cc/u$b;->b:Lcn/fly/commons/cc/t;

    invoke-virtual {p2}, Lcn/fly/commons/cc/t;->c()Lcn/fly/commons/cc/t;

    move-result-object p2

    iput-object p2, p1, Lcn/fly/commons/cc/u$b;->b:Lcn/fly/commons/cc/t;

    goto/16 :goto_0

    .line 56
    :sswitch_11
    invoke-direct {p0, p2}, Lcn/fly/commons/cc/u;->f(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcn/fly/commons/cc/u$b;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 57
    :sswitch_12
    iget-object v0, p0, Lcn/fly/commons/cc/u;->p:[I

    aget v0, v0, p2

    invoke-direct {p0, p1, v0, p2}, Lcn/fly/commons/cc/u;->b(Lcn/fly/commons/cc/u$b;II)V

    goto/16 :goto_0

    .line 58
    :sswitch_13
    invoke-direct {p0, p1, p2}, Lcn/fly/commons/cc/u;->d(Lcn/fly/commons/cc/u$b;I)V

    goto/16 :goto_0

    .line 59
    :sswitch_14
    invoke-direct {p0, p2}, Lcn/fly/commons/cc/u;->f(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcn/fly/commons/cc/u;->b(Lcn/fly/commons/cc/u$b;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 60
    :sswitch_15
    invoke-direct {p0, p2, v1}, Lcn/fly/commons/cc/u;->c(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v2}, Lcn/fly/commons/cc/u;->c(II)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcn/fly/commons/cc/u;->a(Lcn/fly/commons/cc/u$b;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 61
    :sswitch_16
    invoke-direct {p0, p1, p2}, Lcn/fly/commons/cc/u;->g(Lcn/fly/commons/cc/u$b;I)V

    goto/16 :goto_0

    .line 62
    :sswitch_17
    invoke-virtual {p1}, Lcn/fly/commons/cc/u$b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 63
    invoke-virtual {p1}, Lcn/fly/commons/cc/u$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, p2}, Lcn/fly/commons/cc/u;->a(Lcn/fly/commons/cc/u$b;Ljava/lang/Object;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 64
    :sswitch_18
    invoke-direct {p0, p2}, Lcn/fly/commons/cc/u;->f(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcn/fly/commons/cc/u$b;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcn/fly/commons/cc/u$b;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 65
    :sswitch_19
    iget-object p2, p1, Lcn/fly/commons/cc/u$b;->b:Lcn/fly/commons/cc/t;

    invoke-virtual {p2}, Lcn/fly/commons/cc/t;->d()Lcn/fly/commons/cc/t;

    move-result-object p2

    iput-object p2, p1, Lcn/fly/commons/cc/u$b;->b:Lcn/fly/commons/cc/t;

    goto/16 :goto_0

    .line 66
    :sswitch_1a
    iget-object v0, p0, Lcn/fly/commons/cc/u;->p:[I

    aget p2, v0, p2

    invoke-direct {p0, p1, p2}, Lcn/fly/commons/cc/u;->e(Lcn/fly/commons/cc/u$b;I)V

    goto/16 :goto_0

    .line 67
    :sswitch_1b
    invoke-virtual {p1}, Lcn/fly/commons/cc/u$b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 68
    invoke-virtual {p1}, Lcn/fly/commons/cc/u$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, p2}, Lcn/fly/commons/cc/u;->b(Lcn/fly/commons/cc/u$b;Ljava/lang/Object;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 69
    :sswitch_1c
    invoke-direct {p0, p2}, Lcn/fly/commons/cc/u;->f(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcn/fly/commons/cc/u;->a(Lcn/fly/commons/cc/u$b;Ljava/lang/String;I)V

    goto :goto_0

    .line 70
    :sswitch_1d
    iput-boolean v2, p1, Lcn/fly/commons/cc/u$b;->e:Z

    goto :goto_0

    .line 71
    :sswitch_1e
    invoke-virtual {p1}, Lcn/fly/commons/cc/u$b;->a()Ljava/lang/Object;

    move-result-object v3

    .line 72
    invoke-virtual {p1}, Lcn/fly/commons/cc/u$b;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    iget-object v0, p0, Lcn/fly/commons/cc/u;->p:[I

    aget v5, v0, p2

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcn/fly/commons/cc/u;->a(Lcn/fly/commons/cc/u$b;Ljava/lang/Object;Ljava/lang/String;II)V

    goto :goto_0

    .line 73
    :sswitch_1f
    invoke-direct {p0, p2}, Lcn/fly/commons/cc/u;->d(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 74
    :sswitch_20
    invoke-direct {p0, p2, v1}, Lcn/fly/commons/cc/u;->c(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v2}, Lcn/fly/commons/cc/u;->c(II)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcn/fly/commons/cc/u;->b(Lcn/fly/commons/cc/u$b;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :sswitch_21
    invoke-virtual {p1}, Lcn/fly/commons/cc/u$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    iget-object v0, p0, Lcn/fly/commons/cc/u;->p:[I

    aget p2, v0, p2

    iput p2, p1, Lcn/fly/commons/cc/u$b;->a:I

    goto :goto_0

    .line 77
    :sswitch_22
    iget-object v0, p0, Lcn/fly/commons/cc/u;->p:[I

    aget p2, v0, p2

    invoke-direct {p0, p1, p2}, Lcn/fly/commons/cc/u;->f(Lcn/fly/commons/cc/u$b;I)V

    goto :goto_0

    .line 78
    :sswitch_23
    invoke-direct {p0, p2, v1}, Lcn/fly/commons/cc/u;->c(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v2}, Lcn/fly/commons/cc/u;->c(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p2}, Lcn/fly/commons/cc/u;->b(Lcn/fly/commons/cc/u$b;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 79
    :sswitch_24
    invoke-direct {p0, p2}, Lcn/fly/commons/cc/u;->f(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/fly/commons/cc/u;->p:[I

    aget v1, v1, p2

    invoke-direct {p0, p1, v0, v1, p2}, Lcn/fly/commons/cc/u;->b(Lcn/fly/commons/cc/u$b;Ljava/lang/String;II)V

    :cond_1
    :goto_0
    :sswitch_25
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_24
        0x5 -> :sswitch_23
        0xa -> :sswitch_22
        0xd -> :sswitch_21
        0x10 -> :sswitch_20
        0x12 -> :sswitch_1f
        0x15 -> :sswitch_1e
        0x18 -> :sswitch_1d
        0x1d -> :sswitch_1c
        0x20 -> :sswitch_1b
        0x25 -> :sswitch_1a
        0x28 -> :sswitch_25
        0x2b -> :sswitch_19
        0x2d -> :sswitch_18
        0x30 -> :sswitch_17
        0x33 -> :sswitch_16
        0x38 -> :sswitch_15
        0x3b -> :sswitch_14
        0x3e -> :sswitch_13
        0x40 -> :sswitch_12
        0x43 -> :sswitch_11
        0x46 -> :sswitch_10
        0x4b -> :sswitch_f
        0x4e -> :sswitch_e
        0x53 -> :sswitch_d
        0x56 -> :sswitch_c
        0x59 -> :sswitch_b
        0x5b -> :sswitch_a
        0x5e -> :sswitch_9
        0x61 -> :sswitch_8
        0x66 -> :sswitch_7
        0x69 -> :sswitch_6
        0x6e -> :sswitch_5
        0x71 -> :sswitch_4
        0x74 -> :sswitch_3
        0x76 -> :sswitch_2
        0x79 -> :sswitch_1
        0x7c -> :sswitch_0
    .end sparse-switch
.end method

.method private a(Lcn/fly/commons/cc/u$b;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 80
    invoke-direct {p0, p3}, Lcn/fly/commons/cc/u;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3}, Lcn/fly/commons/cc/u;->b(I)I

    move-result p3

    invoke-static {p1, p2, v0, p3}, Lcn/fly/commons/cc/w;->a(Lcn/fly/commons/cc/u$b;ILjava/lang/String;I)V

    return-void
.end method

.method private a(Lcn/fly/commons/cc/u$b;Ljava/lang/Object;ILjava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 158
    instance-of v0, p2, Lcn/fly/commons/cc/ab;

    if-eqz v0, :cond_0

    .line 159
    check-cast p2, Lcn/fly/commons/cc/ab;

    .line 160
    invoke-direct {p0, p1, p3}, Lcn/fly/commons/cc/u;->h(Lcn/fly/commons/cc/u$b;I)[Ljava/lang/Object;

    move-result-object p3

    .line 161
    invoke-virtual {p2, p3}, Lcn/fly/commons/cc/ab;->b([Ljava/lang/Object;)Ljava/util/LinkedList;

    move-result-object p2

    .line 162
    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result p3

    if-lez p3, :cond_1

    const/4 p3, 0x0

    .line 163
    invoke-virtual {p2, p3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 164
    :cond_0
    instance-of v0, p2, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    .line 165
    iget-object p1, p1, Lcn/fly/commons/cc/u$b;->b:Lcn/fly/commons/cc/t;

    check-cast p2, Ljava/lang/reflect/Method;

    invoke-virtual {p1, p2, p3}, Lcn/fly/commons/cc/t;->a(Ljava/lang/reflect/Method;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string p1, ")"

    const-string p2, "("

    if-eqz p4, :cond_3

    .line 166
    new-instance p3, Ljava/lang/NoSuchMethodException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " at: "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p5}, Lcn/fly/commons/cc/u;->a(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p5}, Lcn/fly/commons/cc/u;->b(I)I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 167
    :cond_3
    new-instance p3, Ljava/lang/RuntimeException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "at: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p5}, Lcn/fly/commons/cc/u;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p5}, Lcn/fly/commons/cc/u;->b(I)I

    move-result p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method private a(Lcn/fly/commons/cc/u$b;Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 122
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 123
    check-cast p2, Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "006ihgKgl4kj"

    .line 124
    invoke-static {v0}, Lcn/fly/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    return-void

    .line 126
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 127
    :try_start_0
    invoke-virtual {v0, p3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    .line 128
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 129
    invoke-virtual {v2, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 130
    invoke-virtual {v2, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    return-void

    .line 131
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 132
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "003Cgl6hk"

    .line 133
    invoke-static {v2}, Lcn/fly/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcn/fly/commons/cc/u;->b:[Ljava/lang/Object;

    iget-object v4, p1, Lcn/fly/commons/cc/u$b;->b:Lcn/fly/commons/cc/t;

    .line 134
    invoke-direct {p0, p4}, Lcn/fly/commons/cc/u;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p4}, Lcn/fly/commons/cc/u;->b(I)I

    move-result v6

    move-object v1, p2

    .line 135
    invoke-static/range {v1 .. v6}, Lcn/fly/commons/cc/u;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Lcn/fly/commons/cc/t;Ljava/lang/String;I)V

    return-void
.end method

.method private a(Lcn/fly/commons/cc/u$b;Ljava/lang/Object;Ljava/lang/String;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 168
    invoke-direct {p0, p1, p4}, Lcn/fly/commons/cc/u;->h(Lcn/fly/commons/cc/u$b;I)[Ljava/lang/Object;

    move-result-object v2

    .line 169
    iget-object v3, p1, Lcn/fly/commons/cc/u$b;->b:Lcn/fly/commons/cc/t;

    invoke-direct {p0, p5}, Lcn/fly/commons/cc/u;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p5}, Lcn/fly/commons/cc/u;->b(I)I

    move-result v5

    move-object v0, p2

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Lcn/fly/commons/cc/u;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Lcn/fly/commons/cc/t;Ljava/lang/String;I)V

    return-void
.end method

.method private a(Lcn/fly/commons/cc/u$b;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 121
    invoke-virtual {p1}, Lcn/fly/commons/cc/u$b;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcn/fly/commons/cc/u;->a(Lcn/fly/commons/cc/u$b;Ljava/lang/Object;Ljava/lang/String;I)V

    return-void
.end method

.method private a(Lcn/fly/commons/cc/u$b;Ljava/lang/String;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 156
    invoke-virtual {p1, p2}, Lcn/fly/commons/cc/u$b;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p2

    move v5, p4

    .line 157
    invoke-direct/range {v0 .. v5}, Lcn/fly/commons/cc/u;->a(Lcn/fly/commons/cc/u$b;Ljava/lang/Object;ILjava/lang/String;I)V

    return-void
.end method

.method private a(Lcn/fly/commons/cc/u$b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 155
    :try_start_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private a(Lcn/fly/commons/cc/u$b;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 136
    invoke-virtual {p1, p2}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    move-object v1, v0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    const-string v3, "class"

    .line 137
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 138
    invoke-virtual {p1, v1}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    return-void

    .line 139
    :cond_1
    const-class v3, Lcn/fly/commons/cc/aa;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "007%ffJhEflhkfkfmAg"

    invoke-static {v3}, Lcn/fly/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 p2, 0x46

    .line 140
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    return-void

    .line 141
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 142
    invoke-virtual {v1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 143
    array-length v3, v2

    :goto_1
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 144
    move-object v5, v4

    check-cast v5, Ljava/lang/Enum;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 145
    invoke-virtual {p1, v4}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    return-void

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 146
    :try_start_0
    invoke-virtual {v1, p3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    nop

    move-object v3, v0

    :goto_2
    if-eqz v3, :cond_5

    .line 147
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 148
    invoke-virtual {v3, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 149
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    return-void

    .line 150
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 151
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "003@gl:hk"

    .line 152
    invoke-static {v4}, Lcn/fly/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    sget-object v5, Lcn/fly/commons/cc/u;->b:[Ljava/lang/Object;

    iget-object v6, p1, Lcn/fly/commons/cc/u$b;->b:Lcn/fly/commons/cc/t;

    .line 153
    invoke-direct {p0, p4}, Lcn/fly/commons/cc/u;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p4}, Lcn/fly/commons/cc/u;->b(I)I

    move-result v8

    move-object v2, p2

    .line 154
    invoke-static/range {v1 .. v8}, Lcn/fly/commons/cc/u;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Object;Lcn/fly/commons/cc/t;Ljava/lang/String;I)V

    return-void
.end method

.method private a(Lcn/fly/commons/cc/u$b;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 170
    invoke-virtual {p1, p2}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 171
    invoke-direct {p0, p1, p4}, Lcn/fly/commons/cc/u;->h(Lcn/fly/commons/cc/u$b;I)[Ljava/lang/Object;

    move-result-object v4

    .line 172
    iget-object v5, p1, Lcn/fly/commons/cc/u$b;->b:Lcn/fly/commons/cc/t;

    .line 173
    invoke-direct {p0, p5}, Lcn/fly/commons/cc/u;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p5}, Lcn/fly/commons/cc/u;->b(I)I

    move-result v7

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    .line 174
    invoke-static/range {v0 .. v7}, Lcn/fly/commons/cc/u;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Object;Lcn/fly/commons/cc/t;Ljava/lang/String;I)V

    return-void
.end method

.method static a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Object;Lcn/fly/commons/cc/t;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/Object;",
            "Lcn/fly/commons/cc/t;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 176
    invoke-static/range {p0 .. p7}, Lcn/fly/commons/cc/v;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Object;Lcn/fly/commons/cc/t;Ljava/lang/String;I)V

    return-void
.end method

.method static a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Lcn/fly/commons/cc/t;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 177
    invoke-static/range {p0 .. p5}, Lcn/fly/commons/cc/v;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Lcn/fly/commons/cc/t;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a([BI)V
    .locals 0

    .line 3
    invoke-static {p0, p1}, Lcn/fly/commons/cc/u;->c([BI)V

    return-void
.end method

.method private static a([BII)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 175
    aget-byte v1, p0, v0

    mul-int/lit8 v2, v0, 0x1f

    add-int/2addr v2, p1

    int-to-byte v2, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(II)Z
    .locals 4

    .line 1
    if-lez p1, :cond_0

    int-to-long v0, p0

    const-wide/16 v2, 0x64

    mul-long v0, v0, v2

    int-to-long p0, p1

    const-wide/16 v2, 0x55

    mul-long p0, p0, v2

    cmp-long v2, v0, p0

    if-ltz v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static a([II)[I
    .locals 1

    .line 4
    array-length v0, p0

    if-eq p1, v0, :cond_1

    array-length v0, p0

    invoke-static {p1, v0}, Lcn/fly/commons/cc/u;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method private static a([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 1

    .line 6
    array-length v0, p0

    if-eq p1, v0, :cond_1

    array-length v0, p0

    invoke-static {p1, v0}, Lcn/fly/commons/cc/u;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method private static a([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1

    .line 8
    array-length v0, p0

    if-eq p1, v0, :cond_1

    array-length v0, p0

    invoke-static {p1, v0}, Lcn/fly/commons/cc/u;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    :cond_1
    :goto_0
    return-object p0
.end method

.method private b(I)I
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcn/fly/commons/cc/u;->u:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/fly/commons/cc/u;->t:[I

    aget p1, v0, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static b([B)I
    .locals 4

    .line 58
    array-length v0, p0

    const v1, 0x6d2b79f5

    xor-int/2addr v0, v1

    const/4 v1, 0x0

    .line 59
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 60
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    const v3, -0x61c88647

    add-int/2addr v2, v3

    shl-int/lit8 v3, v0, 0x6

    add-int/2addr v2, v3

    ushr-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    xor-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const v0, 0x13579bdf

    :cond_1
    return v0
.end method

.method private b(II)Ljava/lang/String;
    .locals 4

    .line 4
    invoke-static {p2}, Lcn/fly/commons/cc/u;->h(I)[B

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcn/fly/commons/cc/u;->h:[B

    iget-object v3, p0, Lcn/fly/commons/cc/u;->i:[I

    aget v3, v3, p1

    invoke-static {v2, v3, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget-object v2, p0, Lcn/fly/commons/cc/u;->k:[I

    aget p1, v2, p1

    invoke-static {v0, p1, p2}, Lcn/fly/commons/cc/u;->a([BII)V

    .line 7
    new-instance p1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {p1, v0, v1, p2, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-static {v0, v1, p2, v1}, Ljava/util/Arrays;->fill([BIIB)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {v0, v1, p2, v1}, Ljava/util/Arrays;->fill([BIIB)V

    .line 9
    throw p1
.end method

.method private b(Lcn/fly/commons/cc/u$b;)V
    .locals 3

    .line 15
    invoke-virtual {p1}, Lcn/fly/commons/cc/u$b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 16
    invoke-virtual {p1}, Lcn/fly/commons/cc/u$b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lcn/fly/commons/cc/u$b;->a()Ljava/lang/Object;

    move-result-object p1

    .line 18
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_1

    .line 19
    check-cast v0, Ljava/util/List;

    .line 20
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_0

    .line 21
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 22
    :cond_0
    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 23
    :cond_1
    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_2

    .line 24
    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 25
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 26
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_3

    .line 27
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 28
    :cond_3
    invoke-static {v0, v1, p1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    :goto_0
    return-void

    .line 29
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not entry"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(Lcn/fly/commons/cc/u$b;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcn/fly/commons/cc/u;->e:[I

    aget p2, v0, p2

    .line 11
    iget-object v0, p0, Lcn/fly/commons/cc/u;->m:[I

    aget v0, v0, p2

    .line 12
    iget-object v1, p0, Lcn/fly/commons/cc/u;->n:[I

    aget p2, v1, p2

    add-int/2addr p2, v0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 13
    iget-object v1, p0, Lcn/fly/commons/cc/u;->l:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcn/fly/commons/cc/u;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/fly/commons/cc/u$b;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcn/fly/commons/cc/u$b;->b(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(Lcn/fly/commons/cc/u$b;II)V
    .locals 1

    .line 14
    invoke-direct {p0, p3}, Lcn/fly/commons/cc/u;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3}, Lcn/fly/commons/cc/u;->b(I)I

    move-result p3

    invoke-static {p1, p2, v0, p3}, Lcn/fly/commons/cc/w;->b(Lcn/fly/commons/cc/u$b;ILjava/lang/String;I)V

    return-void
.end method

.method private b(Lcn/fly/commons/cc/u$b;Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 31
    invoke-virtual {p1}, Lcn/fly/commons/cc/u$b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 32
    instance-of v1, p2, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 33
    check-cast p2, Ljava/util/Map;

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 34
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 35
    :try_start_0
    invoke-virtual {v1, p3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_1

    .line 36
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 37
    invoke-virtual {v3, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 38
    invoke-virtual {v3, p2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 39
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 40
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    .line 41
    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v0, v6, v3

    iget-object v7, p1, Lcn/fly/commons/cc/u$b;->b:Lcn/fly/commons/cc/t;

    .line 42
    invoke-direct {p0, p4}, Lcn/fly/commons/cc/u;->a(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p4}, Lcn/fly/commons/cc/u;->b(I)I

    move-result v9

    move-object v4, p2

    .line 43
    invoke-static/range {v4 .. v9}, Lcn/fly/commons/cc/u;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Lcn/fly/commons/cc/t;Ljava/lang/String;I)V

    return-void
.end method

.method private b(Lcn/fly/commons/cc/u$b;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 30
    invoke-virtual {p1}, Lcn/fly/commons/cc/u$b;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcn/fly/commons/cc/u;->b(Lcn/fly/commons/cc/u$b;Ljava/lang/Object;Ljava/lang/String;I)V

    return-void
.end method

.method private b(Lcn/fly/commons/cc/u$b;Ljava/lang/String;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 56
    invoke-virtual {p1}, Lcn/fly/commons/cc/u$b;->a()Ljava/lang/Object;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 57
    invoke-direct/range {v0 .. v5}, Lcn/fly/commons/cc/u;->a(Lcn/fly/commons/cc/u$b;Ljava/lang/Object;Ljava/lang/String;II)V

    return-void
.end method

.method private b(Lcn/fly/commons/cc/u$b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 55
    :try_start_0
    invoke-virtual {p1, p2}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private b(Lcn/fly/commons/cc/u$b;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 44
    invoke-virtual {p1, p2}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 45
    invoke-virtual {p1}, Lcn/fly/commons/cc/u$b;->a()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v0

    :goto_0
    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/4 v4, 0x0

    .line 46
    :try_start_0
    invoke-virtual {v2, p3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    nop

    move-object v5, v4

    :goto_1
    if-eqz v5, :cond_0

    .line 47
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 48
    invoke-virtual {v5, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 49
    invoke-virtual {v5, v4, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 50
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    .line 51
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    .line 52
    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 p3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v1, v5, v4

    iget-object p1, p1, Lcn/fly/commons/cc/u$b;->b:Lcn/fly/commons/cc/t;

    .line 53
    invoke-direct {p0, p4}, Lcn/fly/commons/cc/u;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p4}, Lcn/fly/commons/cc/u;->b(I)I

    move-result v7

    move-object v1, p2

    move v3, p3

    move-object v4, v5

    move-object v5, p1

    .line 54
    invoke-static/range {v0 .. v7}, Lcn/fly/commons/cc/u;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Object;Lcn/fly/commons/cc/t;Ljava/lang/String;I)V

    return-void
.end method

.method private static b([BI)[B
    .locals 1

    .line 1
    array-length v0, p0

    if-eq p1, v0, :cond_1

    array-length v0, p0

    invoke-static {p1, v0}, Lcn/fly/commons/cc/u;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method private c(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/fly/commons/cc/u;->q:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_2

    sub-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v1

    .line 2
    iget-object v3, p0, Lcn/fly/commons/cc/u;->q:[I

    aget v3, v3, v2

    if-ge v3, p1, :cond_0

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_0

    :cond_0
    if-le v3, p1, :cond_1

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcn/fly/commons/cc/u;->r:[I

    aget p1, p1, v2

    :cond_2
    return p1
.end method

.method private c(II)Ljava/lang/String;
    .locals 2

    .line 4
    iget-object v0, p0, Lcn/fly/commons/cc/u;->e:[I

    aget p1, v0, p1

    if-ltz p2, :cond_0

    .line 5
    iget-object v0, p0, Lcn/fly/commons/cc/u;->n:[I

    aget v0, v0, p1

    if-ge p2, v0, :cond_0

    .line 6
    iget-object v0, p0, Lcn/fly/commons/cc/u;->l:[I

    iget-object v1, p0, Lcn/fly/commons/cc/u;->m:[I

    aget p1, v1, p1

    add-int/2addr p1, p2

    aget p1, v0, p1

    invoke-direct {p0, p1}, Lcn/fly/commons/cc/u;->g(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad string sequence index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c(Lcn/fly/commons/cc/u$b;I)V
    .locals 2

    .line 8
    iget-object v0, p0, Lcn/fly/commons/cc/u;->e:[I

    aget v0, v0, p2

    .line 9
    iget-object v1, p0, Lcn/fly/commons/cc/u;->p:[I

    aget p2, v1, p2

    add-int/2addr p2, v0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 10
    iget-object v1, p0, Lcn/fly/commons/cc/u;->o:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcn/fly/commons/cc/u;->e(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c(Lcn/fly/commons/cc/u$b;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 11
    invoke-virtual {p1}, Lcn/fly/commons/cc/u$b;->a()Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcn/fly/commons/cc/u;->a(Lcn/fly/commons/cc/u$b;Ljava/lang/Object;ILjava/lang/String;I)V

    return-void
.end method

.method private static c([BI)V
    .locals 1

    .line 12
    array-length v0, p0

    invoke-static {p0, p1, v0}, Lcn/fly/commons/cc/u;->a([BII)V

    return-void
.end method

.method private d(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/fly/commons/cc/u;->e:[I

    aget p1, v0, p1

    invoke-direct {p0, p1}, Lcn/fly/commons/cc/u;->e(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private d(Lcn/fly/commons/cc/u$b;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcn/fly/commons/cc/u;->e:[I

    aget p2, v0, p2

    .line 3
    iget-object v0, p0, Lcn/fly/commons/cc/u;->m:[I

    aget v0, v0, p2

    .line 4
    iget-object v1, p0, Lcn/fly/commons/cc/u;->n:[I

    aget p2, v1, p2

    add-int/2addr p2, v0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 5
    iget-object v1, p0, Lcn/fly/commons/cc/u;->l:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcn/fly/commons/cc/u;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/fly/commons/cc/u$b;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private e(I)Ljava/lang/Object;
    .locals 1

    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    .line 1
    invoke-direct {p0, p1}, Lcn/fly/commons/cc/u;->g(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/fly/commons/cc/u;->f:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method private e(Lcn/fly/commons/cc/u$b;I)V
    .locals 4

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcn/fly/commons/cc/u$b;->a()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_2

    .line 7
    invoke-static {p2, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    :goto_1
    if-ge v2, p2, :cond_2

    .line 9
    invoke-virtual {p1}, Lcn/fly/commons/cc/u$b;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 10
    :cond_2
    :goto_2
    invoke-virtual {p1, v0}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private f(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/fly/commons/cc/u;->e:[I

    aget p1, v0, p1

    invoke-direct {p0, p1}, Lcn/fly/commons/cc/u;->g(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private f(Lcn/fly/commons/cc/u$b;I)V
    .locals 4

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 3
    invoke-virtual {p1}, Lcn/fly/commons/cc/u$b;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lcn/fly/commons/cc/u$b;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1, v0}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private g(I)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    iget-object v0, p0, Lcn/fly/commons/cc/u;->g:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    return-object v0

    .line 2
    :cond_1
    iget-object v0, p0, Lcn/fly/commons/cc/u;->j:[I

    aget v0, v0, p1

    .line 3
    invoke-direct {p0, p1, v0}, Lcn/fly/commons/cc/u;->b(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private g(Lcn/fly/commons/cc/u$b;I)V
    .locals 9

    .line 4
    invoke-direct {p0, p2}, Lcn/fly/commons/cc/u;->c(I)I

    move-result v5

    .line 5
    iput v5, p1, Lcn/fly/commons/cc/u$b;->a:I

    .line 6
    invoke-direct {p0, p2}, Lcn/fly/commons/cc/u;->f(I)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v4, p2, 0x1

    if-ne v4, v5, :cond_0

    .line 7
    iget-object v0, p0, Lcn/fly/commons/cc/u;->p:[I

    aget p2, v0, p2

    iget-object v0, p1, Lcn/fly/commons/cc/u$b;->b:Lcn/fly/commons/cc/t;

    invoke-static {v7, p2, v0}, Lcn/fly/commons/cc/ab;->a(Ljava/lang/String;ILcn/fly/commons/cc/t;)Lcn/fly/commons/cc/ab;

    move-result-object p2

    goto :goto_0

    .line 8
    :cond_0
    new-instance v8, Lcn/fly/commons/cc/ab;

    iget-object v0, p0, Lcn/fly/commons/cc/u;->p:[I

    aget v2, v0, p2

    iget-object v6, p1, Lcn/fly/commons/cc/u$b;->b:Lcn/fly/commons/cc/t;

    move-object v0, v8

    move-object v1, v7

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lcn/fly/commons/cc/ab;-><init>(Ljava/lang/String;ILcn/fly/commons/cc/u;IILcn/fly/commons/cc/t;)V

    move-object p2, v8

    :goto_0
    if-eqz v7, :cond_1

    .line 9
    invoke-virtual {p1, v7, p2}, Lcn/fly/commons/cc/u$b;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {p1, p2}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private static h(I)[B
    .locals 3

    const/16 v0, 0x2000

    if-le p0, v0, :cond_0

    .line 6
    new-array p0, p0, [B

    return-object p0

    .line 7
    :cond_0
    sget-object v0, Lcn/fly/commons/cc/u;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-eqz v1, :cond_1

    .line 8
    array-length v2, v1

    if-ge v2, p0, :cond_2

    .line 9
    :cond_1
    new-array v1, p0, [B

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_2
    return-object v1
.end method

.method private h(Lcn/fly/commons/cc/u$b;I)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    sget-object p1, Lcn/fly/commons/cc/u;->b:[Ljava/lang/Object;

    return-object p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    new-array p2, v1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcn/fly/commons/cc/u$b;->a()Ljava/lang/Object;

    move-result-object p1

    aput-object p1, p2, v0

    return-object p2

    :cond_1
    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    new-array p2, v2, [Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lcn/fly/commons/cc/u$b;->a()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p2, v0

    invoke-virtual {p1}, Lcn/fly/commons/cc/u$b;->a()Ljava/lang/Object;

    move-result-object p1

    aput-object p1, p2, v1

    return-object p2

    .line 4
    :cond_2
    new-array v1, p2, [Ljava/lang/Object;

    :goto_0
    if-ge v0, p2, :cond_3

    .line 5
    invoke-virtual {p1}, Lcn/fly/commons/cc/u$b;->a()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method


# virtual methods
.method public a(IILcn/fly/commons/cc/t;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcn/fly/commons/cc/t;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 13
    new-instance v0, Lcn/fly/commons/cc/u$b;

    invoke-direct {v0}, Lcn/fly/commons/cc/u$b;-><init>()V

    .line 14
    iput p1, v0, Lcn/fly/commons/cc/u$b;->a:I

    .line 15
    iput-object p3, v0, Lcn/fly/commons/cc/u$b;->b:Lcn/fly/commons/cc/t;

    .line 16
    iput-object p4, v0, Lcn/fly/commons/cc/u$b;->c:Ljava/util/List;

    :goto_0
    const/4 p1, 0x1

    .line 17
    :try_start_0
    iget p3, v0, Lcn/fly/commons/cc/u$b;->a:I

    if-ge p3, p2, :cond_2

    .line 18
    iget-object p3, v0, Lcn/fly/commons/cc/u$b;->b:Lcn/fly/commons/cc/t;

    invoke-virtual {p3}, Lcn/fly/commons/cc/t;->g()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 19
    iput-boolean p1, v0, Lcn/fly/commons/cc/u$b;->d:Z

    goto :goto_1

    .line 20
    :cond_0
    iget p3, v0, Lcn/fly/commons/cc/u$b;->a:I

    .line 21
    invoke-direct {p0, v0, p3}, Lcn/fly/commons/cc/u;->a(Lcn/fly/commons/cc/u$b;I)V

    .line 22
    iget-boolean p3, v0, Lcn/fly/commons/cc/u$b;->e:Z

    if-eqz p3, :cond_1

    goto :goto_1

    .line 23
    :cond_1
    iget p3, v0, Lcn/fly/commons/cc/u$b;->a:I

    add-int/2addr p3, p1

    iput p3, v0, Lcn/fly/commons/cc/u$b;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 24
    :cond_2
    :goto_1
    iget-boolean p1, v0, Lcn/fly/commons/cc/u$b;->d:Z

    if-nez p1, :cond_3

    iget-object p1, v0, Lcn/fly/commons/cc/u$b;->b:Lcn/fly/commons/cc/t;

    invoke-virtual {p1}, Lcn/fly/commons/cc/t;->e()I

    move-result p1

    if-lez p1, :cond_3

    if-eqz p4, :cond_3

    .line 25
    :try_start_1
    iget-object p1, v0, Lcn/fly/commons/cc/u$b;->b:Lcn/fly/commons/cc/t;

    invoke-virtual {p1}, Lcn/fly/commons/cc/t;->b()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_3
    return-void

    :catchall_1
    move-exception p2

    .line 26
    instance-of p3, p2, Lcn/fly/commons/cc/x;

    if-eqz p3, :cond_5

    .line 27
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    .line 28
    :goto_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    goto :goto_4

    .line 29
    :cond_5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "SS Runtime Error: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_6

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    goto :goto_3

    :cond_6
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p4

    :goto_3
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 30
    :goto_4
    iget p4, v0, Lcn/fly/commons/cc/u$b;->a:I

    iget-object v0, p0, Lcn/fly/commons/cc/u;->d:[B

    array-length v1, v0

    if-ge p4, v1, :cond_7

    goto :goto_5

    :cond_7
    array-length p4, v0

    sub-int/2addr p4, p1

    :goto_5
    if-ltz p4, :cond_8

    .line 31
    invoke-direct {p0, p4}, Lcn/fly/commons/cc/u;->a(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_8
    const/4 p1, 0x0

    :goto_6
    if-ltz p4, :cond_9

    .line 32
    invoke-direct {p0, p4}, Lcn/fly/commons/cc/u;->b(I)I

    move-result p4

    goto :goto_7

    :cond_9
    const/4 p4, 0x0

    .line 33
    :goto_7
    new-instance v0, Lcn/fly/commons/cc/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\r\n\tat "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcn/fly/commons/cc/x;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public a(Lcn/fly/commons/cc/t;Lcn/fly/commons/cc/z;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 10
    invoke-virtual {p1}, Lcn/fly/commons/cc/t;->a()V

    .line 11
    iget-object p2, p0, Lcn/fly/commons/cc/u;->d:[B

    array-length p2, p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2, p1, v0}, Lcn/fly/commons/cc/u;->a(IILcn/fly/commons/cc/t;Ljava/util/List;)V

    return-void
.end method
