.class public Lcom/alibaba/fastjson/parser/c;
.super Lcom/alibaba/fastjson/parser/a;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/parser/c$a;
    }
.end annotation


# static fields
.field private static final o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final p:I = 0x0

.field public static final q:I = 0x1

.field public static final r:I = 0x2


# instance fields
.field protected final b:Ljava/lang/Object;

.field protected final c:Lcom/alibaba/fastjson/parser/l;

.field protected d:Lcom/alibaba/fastjson/parser/k;

.field private e:Ljava/lang/String;

.field private f:Ljava/text/DateFormat;

.field protected final g:Lcom/alibaba/fastjson/parser/d;

.field protected h:Lcom/alibaba/fastjson/parser/j;

.field private i:[Lcom/alibaba/fastjson/parser/j;

.field private j:I

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/parser/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private l:I

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/parser/deserializer/q;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/parser/deserializer/p;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/alibaba/fastjson/parser/c;->o:Ljava/util/Set;

    .line 7
    .line 8
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 19
    .line 20
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 24
    .line 25
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 29
    .line 30
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 34
    .line 35
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 39
    .line 40
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    const-class v1, Ljava/lang/Boolean;

    .line 44
    .line 45
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    const-class v1, Ljava/lang/Byte;

    .line 49
    .line 50
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    const-class v1, Ljava/lang/Short;

    .line 54
    .line 55
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    const-class v1, Ljava/lang/Integer;

    .line 59
    .line 60
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    const-class v1, Ljava/lang/Long;

    .line 64
    .line 65
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    const-class v1, Ljava/lang/Float;

    .line 69
    .line 70
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    const-class v1, Ljava/lang/Double;

    .line 74
    .line 75
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    const-class v1, Ljava/math/BigInteger;

    .line 79
    .line 80
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    const-class v1, Ljava/math/BigDecimal;

    .line 84
    .line 85
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    const-class v1, Ljava/lang/String;

    .line 89
    .line 90
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/parser/d;)V
    .locals 1

    .line 5
    invoke-static {}, Lcom/alibaba/fastjson/parser/k;->k()Lcom/alibaba/fastjson/parser/k;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/c;-><init>(Lcom/alibaba/fastjson/parser/d;Lcom/alibaba/fastjson/parser/k;)V

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/parser/d;Lcom/alibaba/fastjson/parser/k;)V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0, p1, p2}, Lcom/alibaba/fastjson/parser/c;-><init>(Ljava/lang/Object;Lcom/alibaba/fastjson/parser/d;Lcom/alibaba/fastjson/parser/k;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/alibaba/fastjson/parser/d;Lcom/alibaba/fastjson/parser/k;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/a;-><init>()V

    .line 8
    sget-object v0, Lcom/alibaba/fastjson/a;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/c;->e:Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/alibaba/fastjson/parser/j;

    .line 9
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/c;->i:[Lcom/alibaba/fastjson/parser/j;

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/alibaba/fastjson/parser/c;->j:I

    .line 11
    iput v0, p0, Lcom/alibaba/fastjson/parser/c;->l:I

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/c;->m:Ljava/util/List;

    .line 13
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/c;->n:Ljava/util/List;

    .line 14
    iput-object p2, p0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 15
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/c;->b:Ljava/lang/Object;

    .line 16
    iput-object p3, p0, Lcom/alibaba/fastjson/parser/c;->d:Lcom/alibaba/fastjson/parser/k;

    .line 17
    invoke-virtual {p3}, Lcom/alibaba/fastjson/parser/k;->l()Lcom/alibaba/fastjson/parser/l;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson/parser/c;->c:Lcom/alibaba/fastjson/parser/l;

    const/16 p1, 0xc

    .line 18
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/alibaba/fastjson/parser/k;->k()Lcom/alibaba/fastjson/parser/k;

    move-result-object v0

    sget v1, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/fastjson/parser/c;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/k;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/k;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/alibaba/fastjson/parser/g;

    sget v1, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {v0, p1, v1}, Lcom/alibaba/fastjson/parser/g;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v0, p2}, Lcom/alibaba/fastjson/parser/c;-><init>(Ljava/lang/Object;Lcom/alibaba/fastjson/parser/d;Lcom/alibaba/fastjson/parser/k;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/k;I)V
    .locals 1

    .line 3
    new-instance v0, Lcom/alibaba/fastjson/parser/g;

    invoke-direct {v0, p1, p3}, Lcom/alibaba/fastjson/parser/g;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v0, p2}, Lcom/alibaba/fastjson/parser/c;-><init>(Ljava/lang/Object;Lcom/alibaba/fastjson/parser/d;Lcom/alibaba/fastjson/parser/k;)V

    return-void
.end method

.method public constructor <init>([CILcom/alibaba/fastjson/parser/k;I)V
    .locals 1

    .line 4
    new-instance v0, Lcom/alibaba/fastjson/parser/g;

    invoke-direct {v0, p1, p2, p4}, Lcom/alibaba/fastjson/parser/g;-><init>([CII)V

    invoke-direct {p0, p1, v0, p3}, Lcom/alibaba/fastjson/parser/c;-><init>(Ljava/lang/Object;Lcom/alibaba/fastjson/parser/d;Lcom/alibaba/fastjson/parser/k;)V

    return-void
.end method

.method private d(Lcom/alibaba/fastjson/parser/j;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/c;->j:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/alibaba/fastjson/parser/c;->j:I

    .line 6
    .line 7
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/c;->i:[Lcom/alibaba/fastjson/parser/j;

    .line 8
    .line 9
    array-length v2, v1

    .line 10
    if-lt v0, v2, :cond_0

    .line 11
    .line 12
    array-length v2, v1

    .line 13
    mul-int/lit8 v2, v2, 0x3

    .line 14
    .line 15
    div-int/lit8 v2, v2, 0x2

    .line 16
    .line 17
    new-array v2, v2, [Lcom/alibaba/fastjson/parser/j;

    .line 18
    .line 19
    array-length v3, v1

    .line 20
    const/4 v4, 0x0

    .line 21
    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    .line 23
    .line 24
    iput-object v2, p0, Lcom/alibaba/fastjson/parser/c;->i:[Lcom/alibaba/fastjson/parser/j;

    .line 25
    .line 26
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/c;->i:[Lcom/alibaba/fastjson/parser/j;

    .line 27
    .line 28
    aput-object p1, v1, v0

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public I(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson/parser/c;->j:I

    .line 3
    .line 4
    if-ge v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/c;->i:[Lcom/alibaba/fastjson/parser/j;

    .line 7
    .line 8
    aget-object v1, v1, v0

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/j;->c()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/c;->i:[Lcom/alibaba/fastjson/parser/j;

    .line 21
    .line 22
    aget-object p1, p1, v0

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/j;->a()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p1, 0x0

    .line 33
    return-object p1
.end method

.method public J()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/c;->l:I

    .line 2
    .line 3
    return v0
.end method

.method public K()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/parser/c$a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/c;->k:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/c;->k:Ljava/util/List;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/c;->k:Ljava/util/List;

    .line 14
    .line 15
    return-object v0
.end method

.method public L()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/parser/c$a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/c;->k:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public M()Lcom/alibaba/fastjson/parser/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/c;->c:Lcom/alibaba/fastjson/parser/l;

    .line 2
    .line 3
    return-object v0
.end method

.method public O(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/c;->k:Ljava/util/List;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-ge v0, p1, :cond_4

    .line 12
    .line 13
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/c;->k:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/alibaba/fastjson/parser/c$a;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/c$a;->a()Lcom/alibaba/fastjson/parser/deserializer/r;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    goto :goto_3

    .line 28
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/c$a;->b()Lcom/alibaba/fastjson/parser/j;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/c$a;->b()Lcom/alibaba/fastjson/parser/j;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/j;->a()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    const/4 v3, 0x0

    .line 44
    :goto_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/c$a;->c()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    const-string v5, "$"

    .line 49
    .line 50
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-eqz v5, :cond_3

    .line 55
    .line 56
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/c;->I(Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    goto :goto_2

    .line 61
    :cond_3
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/c$a;->getContext()Lcom/alibaba/fastjson/parser/j;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/j;->a()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    :goto_2
    invoke-virtual {v2, v3, v1}, Lcom/alibaba/fastjson/parser/deserializer/r;->j(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    return-void
.end method

.method public P(Lcom/alibaba/fastjson/parser/Feature;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/c;->z()Lcom/alibaba/fastjson/parser/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lcom/alibaba/fastjson/parser/d;->c(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public Q()Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/c;->R(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public R(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/c;->z()Lcom/alibaba/fastjson/parser/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x2

    .line 10
    if-eq v1, v2, :cond_8

    .line 11
    .line 12
    const/4 v3, 0x3

    .line 13
    if-eq v1, v3, :cond_7

    .line 14
    .line 15
    const/4 v3, 0x4

    .line 16
    if-eq v1, v3, :cond_4

    .line 17
    .line 18
    const/16 v3, 0xc

    .line 19
    .line 20
    if-eq v1, v3, :cond_3

    .line 21
    .line 22
    const/16 v3, 0xe

    .line 23
    .line 24
    if-eq v1, v3, :cond_2

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    packed-switch v1, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    packed-switch v1, :pswitch_data_1

    .line 31
    .line 32
    .line 33
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v2, "syntax error, pos "

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->f0()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1

    .line 60
    :pswitch_0
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->j()V

    .line 61
    .line 62
    .line 63
    return-object v3

    .line 64
    :pswitch_1
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->j()V

    .line 65
    .line 66
    .line 67
    new-instance v0, Ljava/util/TreeSet;

    .line 68
    .line 69
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/parser/c;->g0(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    return-object v0

    .line 76
    :pswitch_2
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->j()V

    .line 77
    .line 78
    .line 79
    new-instance v0, Ljava/util/HashSet;

    .line 80
    .line 81
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/parser/c;->g0(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    return-object v0

    .line 88
    :pswitch_3
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->P()Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_0

    .line 93
    .line 94
    return-object v3

    .line 95
    :cond_0
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 96
    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    const-string v2, "unterminated json string, pos "

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->f0()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw p1

    .line 122
    :pswitch_4
    const/16 p1, 0x12

    .line 123
    .line 124
    invoke-interface {v0, p1}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 125
    .line 126
    .line 127
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-ne v1, p1, :cond_1

    .line 132
    .line 133
    const/16 p1, 0xa

    .line 134
    .line 135
    invoke-interface {v0, p1}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/c;->a(I)V

    .line 139
    .line 140
    .line 141
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->a0()Ljava/lang/Number;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 146
    .line 147
    .line 148
    move-result-wide v0

    .line 149
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/c;->a(I)V

    .line 150
    .line 151
    .line 152
    const/16 p1, 0xb

    .line 153
    .line 154
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/c;->a(I)V

    .line 155
    .line 156
    .line 157
    new-instance p1, Ljava/util/Date;

    .line 158
    .line 159
    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 160
    .line 161
    .line 162
    return-object p1

    .line 163
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 164
    .line 165
    const-string v0, "syntax error"

    .line 166
    .line 167
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw p1

    .line 171
    :pswitch_5
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->j()V

    .line 172
    .line 173
    .line 174
    return-object v3

    .line 175
    :pswitch_6
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->j()V

    .line 176
    .line 177
    .line 178
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 179
    .line 180
    return-object p1

    .line 181
    :pswitch_7
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->j()V

    .line 182
    .line 183
    .line 184
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 185
    .line 186
    return-object p1

    .line 187
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    .line 188
    .line 189
    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/parser/c;->g0(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    return-object v0

    .line 196
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    .line 197
    .line 198
    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/parser/c;->p0(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    return-object p1

    .line 206
    :cond_4
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->R()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    const/16 v1, 0x10

    .line 211
    .line 212
    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 213
    .line 214
    .line 215
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    .line 216
    .line 217
    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/d;->c(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    if-eqz v0, :cond_6

    .line 222
    .line 223
    new-instance v0, Lcom/alibaba/fastjson/parser/g;

    .line 224
    .line 225
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/parser/g;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    :try_start_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/g;->V0()Z

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    if-eqz v1, :cond_5

    .line 233
    .line 234
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/e;->j0()Ljava/util/Calendar;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 239
    .line 240
    .line 241
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/e;->close()V

    .line 243
    .line 244
    .line 245
    return-object p1

    .line 246
    :cond_5
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/e;->close()V

    .line 247
    .line 248
    .line 249
    goto :goto_0

    .line 250
    :catchall_0
    move-exception p1

    .line 251
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/e;->close()V

    .line 252
    .line 253
    .line 254
    throw p1

    .line 255
    :cond_6
    :goto_0
    return-object p1

    .line 256
    :cond_7
    sget-object p1, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    .line 257
    .line 258
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/c;->P(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 259
    .line 260
    .line 261
    move-result p1

    .line 262
    invoke-interface {v0, p1}, Lcom/alibaba/fastjson/parser/d;->e0(Z)Ljava/lang/Number;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->j()V

    .line 267
    .line 268
    .line 269
    return-object p1

    .line 270
    :cond_8
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->a0()Ljava/lang/Number;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->j()V

    .line 275
    .line 276
    .line 277
    return-object p1

    .line 278
    nop

    .line 279
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/c;->z()Lcom/alibaba/fastjson/parser/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ne v1, p1, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->j()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v3, "syntax error, expect "

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/h;->a(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p1, ", actual "

    .line 35
    .line 36
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/h;->a(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-direct {v1, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v1
.end method

.method public a0(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/c;->c0(Ljava/lang/Class;Ljava/util/Collection;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public final b(II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/c;->z()Lcom/alibaba/fastjson/parser/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ne v1, p1, :cond_0

    .line 10
    .line 11
    invoke-interface {v0, p2}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v2, "syntax error, expect "

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/h;->a(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p1, ", actual "

    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/h;->a(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-direct {p2, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p2
.end method

.method public c(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->M()V

    .line 4
    .line 5
    .line 6
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x4

    .line 11
    const-string v3, "type not match error"

    .line 12
    .line 13
    if-ne v1, v2, :cond_2

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->R()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->j()V

    .line 26
    .line 27
    .line 28
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    const/16 v1, 0x10

    .line 33
    .line 34
    if-ne p1, v1, :cond_0

    .line 35
    .line 36
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->j()V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void

    .line 40
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 41
    .line 42
    invoke-direct {p1, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1

    .line 46
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 47
    .line 48
    invoke-direct {p1, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1
.end method

.method public c0(Ljava/lang/Class;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Collection;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/parser/c;->d0(Ljava/lang/reflect/Type;Ljava/util/Collection;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public close()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/c;->z()Lcom/alibaba/fastjson/parser/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->AutoCloseSource:Lcom/alibaba/fastjson/parser/Feature;

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/c;->P(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/16 v2, 0x14

    .line 18
    .line 19
    if-ne v1, v2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    .line 23
    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v3, "not close json text, token : "

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-static {v3}, Lcom/alibaba/fastjson/parser/h;->a(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_1
    :goto_0
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->close()V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :catchall_0
    move-exception v1

    .line 58
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->close()V

    .line 59
    .line 60
    .line 61
    throw v1
.end method

.method public d0(Ljava/lang/reflect/Type;Ljava/util/Collection;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/c;->e0(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public e(Lcom/alibaba/fastjson/parser/c$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/c;->k:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/c;->k:Ljava/util/List;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/c;->k:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public e0(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x15

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/16 v1, 0x16

    .line 18
    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 22
    .line 23
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->j()V

    .line 24
    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 27
    .line 28
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/16 v1, 0xe

    .line 33
    .line 34
    if-ne v0, v1, :cond_c

    .line 35
    .line 36
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 37
    .line 38
    const/4 v1, 0x4

    .line 39
    const-class v2, Ljava/lang/String;

    .line 40
    .line 41
    if-ne v0, p1, :cond_2

    .line 42
    .line 43
    sget-object v0, Lcom/alibaba/fastjson/serializer/q0;->a:Lcom/alibaba/fastjson/serializer/q0;

    .line 44
    .line 45
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 46
    .line 47
    const/4 v4, 0x2

    .line 48
    invoke-interface {v3, v4}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    if-ne v2, p1, :cond_3

    .line 53
    .line 54
    sget-object v0, Lcom/alibaba/fastjson/serializer/z1;->a:Lcom/alibaba/fastjson/serializer/z1;

    .line 55
    .line 56
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 57
    .line 58
    invoke-interface {v3, v1}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/c;->d:Lcom/alibaba/fastjson/parser/k;

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/parser/k;->g(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/x0;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 69
    .line 70
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/deserializer/x0;->b()I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    invoke-interface {v3, v4}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 75
    .line 76
    .line 77
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/c;->getContext()Lcom/alibaba/fastjson/parser/j;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {p0, p2, p3}, Lcom/alibaba/fastjson/parser/c;->u0(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/j;

    .line 82
    .line 83
    .line 84
    const/4 p3, 0x0

    .line 85
    :goto_1
    :try_start_0
    sget-object v4, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    .line 86
    .line 87
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/c;->P(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    const/16 v5, 0x10

    .line 92
    .line 93
    if-eqz v4, :cond_4

    .line 94
    .line 95
    :goto_2
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 96
    .line 97
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-ne v4, v5, :cond_4

    .line 102
    .line 103
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 104
    .line 105
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/d;->j()V

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_4
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 110
    .line 111
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 112
    .line 113
    .line 114
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    const/16 v6, 0xf

    .line 116
    .line 117
    if-ne v4, v6, :cond_5

    .line 118
    .line 119
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/c;->v0(Lcom/alibaba/fastjson/parser/j;)V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 123
    .line 124
    invoke-interface {p1, v5}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :cond_5
    :try_start_1
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 129
    .line 130
    const/4 v6, 0x0

    .line 131
    if-ne v4, p1, :cond_6

    .line 132
    .line 133
    sget-object v4, Lcom/alibaba/fastjson/serializer/q0;->a:Lcom/alibaba/fastjson/serializer/q0;

    .line 134
    .line 135
    invoke-virtual {v4, p0, v6, v6}, Lcom/alibaba/fastjson/serializer/q0;->c(Lcom/alibaba/fastjson/parser/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    invoke-interface {p2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    goto :goto_5

    .line 143
    :cond_6
    if-ne v2, p1, :cond_9

    .line 144
    .line 145
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 146
    .line 147
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    if-ne v4, v1, :cond_7

    .line 152
    .line 153
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 154
    .line 155
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/d;->R()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 160
    .line 161
    invoke-interface {v4, v5}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 162
    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/c;->Q()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    if-nez v4, :cond_8

    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_8
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v6

    .line 176
    :goto_3
    invoke-interface {p2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    goto :goto_5

    .line 180
    :cond_9
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 181
    .line 182
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    const/16 v7, 0x8

    .line 187
    .line 188
    if-ne v4, v7, :cond_a

    .line 189
    .line 190
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 191
    .line 192
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/d;->j()V

    .line 193
    .line 194
    .line 195
    goto :goto_4

    .line 196
    :cond_a
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    invoke-interface {v0, p0, p1, v4}, Lcom/alibaba/fastjson/parser/deserializer/x0;->c(Lcom/alibaba/fastjson/parser/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v6

    .line 204
    :goto_4
    invoke-interface {p2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/parser/c;->f(Ljava/util/Collection;)V

    .line 208
    .line 209
    .line 210
    :goto_5
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 211
    .line 212
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 213
    .line 214
    .line 215
    move-result v4

    .line 216
    if-ne v4, v5, :cond_b

    .line 217
    .line 218
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 219
    .line 220
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/deserializer/x0;->b()I

    .line 221
    .line 222
    .line 223
    move-result v5

    .line 224
    invoke-interface {v4, v5}, Lcom/alibaba/fastjson/parser/d;->l(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    .line 226
    .line 227
    :cond_b
    add-int/lit8 p3, p3, 0x1

    .line 228
    .line 229
    goto/16 :goto_1

    .line 230
    .line 231
    :catchall_0
    move-exception p1

    .line 232
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/c;->v0(Lcom/alibaba/fastjson/parser/j;)V

    .line 233
    .line 234
    .line 235
    throw p1

    .line 236
    :cond_c
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 237
    .line 238
    new-instance p2, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    .line 242
    .line 243
    const-string p3, "exepct \'[\', but "

    .line 244
    .line 245
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    iget-object p3, p0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 249
    .line 250
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 251
    .line 252
    .line 253
    move-result p3

    .line 254
    invoke-static {p3}, Lcom/alibaba/fastjson/parser/h;->a(I)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p3

    .line 258
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p2

    .line 265
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    throw p1
.end method

.method public f(Ljava/util/Collection;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/c;->l:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    instance-of v0, p1, Ljava/util/List;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sub-int/2addr v0, v1

    .line 16
    check-cast p1, Ljava/util/List;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/c;->y()Lcom/alibaba/fastjson/parser/c$a;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    new-instance v3, Lcom/alibaba/fastjson/parser/deserializer/s0;

    .line 23
    .line 24
    invoke-direct {v3, p0, p1, v0}, Lcom/alibaba/fastjson/parser/deserializer/s0;-><init>(Lcom/alibaba/fastjson/parser/c;Ljava/util/List;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/parser/c$a;->d(Lcom/alibaba/fastjson/parser/deserializer/r;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/c;->h:Lcom/alibaba/fastjson/parser/j;

    .line 31
    .line 32
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/parser/c$a;->e(Lcom/alibaba/fastjson/parser/j;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/c;->y0(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/c;->y()Lcom/alibaba/fastjson/parser/c$a;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    new-instance v1, Lcom/alibaba/fastjson/parser/deserializer/k;

    .line 44
    .line 45
    invoke-direct {v1, p0, p1}, Lcom/alibaba/fastjson/parser/deserializer/k;-><init>(Lcom/alibaba/fastjson/parser/c;Ljava/util/Collection;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/c$a;->d(Lcom/alibaba/fastjson/parser/deserializer/r;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/c;->h:Lcom/alibaba/fastjson/parser/j;

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/parser/c$a;->e(Lcom/alibaba/fastjson/parser/j;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/c;->y0(I)V

    .line 57
    .line 58
    .line 59
    :cond_1
    :goto_0
    return-void
.end method

.method public final f0(Ljava/util/Collection;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/c;->g0(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public g(Ljava/util/Map;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/c;->l:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/v0;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/v0;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/c;->y()Lcom/alibaba/fastjson/parser/c$a;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/c$a;->d(Lcom/alibaba/fastjson/parser/deserializer/r;)V

    .line 16
    .line 17
    .line 18
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/c;->h:Lcom/alibaba/fastjson/parser/j;

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/parser/c$a;->e(Lcom/alibaba/fastjson/parser/j;)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/c;->y0(I)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final g0(Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/c;->z()Lcom/alibaba/fastjson/parser/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/16 v2, 0x15

    .line 10
    .line 11
    if-eq v1, v2, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/16 v2, 0x16

    .line 18
    .line 19
    if-ne v1, v2, :cond_1

    .line 20
    .line 21
    :cond_0
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->j()V

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/16 v2, 0xe

    .line 29
    .line 30
    if-ne v1, v2, :cond_12

    .line 31
    .line 32
    const/4 v1, 0x4

    .line 33
    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/c;->getContext()Lcom/alibaba/fastjson/parser/j;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/parser/c;->u0(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/j;

    .line 41
    .line 42
    .line 43
    const/4 p2, 0x0

    .line 44
    const/4 v4, 0x0

    .line 45
    :goto_0
    :try_start_0
    sget-object v5, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    .line 46
    .line 47
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/c;->P(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    const/16 v6, 0x10

    .line 52
    .line 53
    if-eqz v5, :cond_2

    .line 54
    .line 55
    :goto_1
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-ne v5, v6, :cond_2

    .line 60
    .line 61
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->j()V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    const/4 v7, 0x2

    .line 70
    if-eq v5, v7, :cond_f

    .line 71
    .line 72
    const/4 v7, 0x3

    .line 73
    if-eq v5, v7, :cond_d

    .line 74
    .line 75
    if-eq v5, v1, :cond_b

    .line 76
    .line 77
    const/4 v7, 0x6

    .line 78
    if-eq v5, v7, :cond_a

    .line 79
    .line 80
    const/4 v7, 0x7

    .line 81
    if-eq v5, v7, :cond_9

    .line 82
    .line 83
    const/16 v7, 0x8

    .line 84
    .line 85
    const/4 v8, 0x0

    .line 86
    if-eq v5, v7, :cond_8

    .line 87
    .line 88
    const/16 v7, 0xc

    .line 89
    .line 90
    if-eq v5, v7, :cond_7

    .line 91
    .line 92
    const/16 v7, 0x14

    .line 93
    .line 94
    if-eq v5, v7, :cond_6

    .line 95
    .line 96
    const/16 v7, 0x17

    .line 97
    .line 98
    if-eq v5, v7, :cond_5

    .line 99
    .line 100
    if-eq v5, v2, :cond_4

    .line 101
    .line 102
    const/16 v7, 0xf

    .line 103
    .line 104
    if-eq v5, v7, :cond_3

    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/c;->Q()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    goto/16 :goto_3

    .line 111
    .line 112
    :cond_3
    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/parser/d;->l(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/c;->v0(Lcom/alibaba/fastjson/parser/j;)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :cond_4
    :try_start_1
    new-instance v8, Lcom/alibaba/fastjson/JSONArray;

    .line 120
    .line 121
    invoke-direct {v8}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-virtual {p0, v8, v5}, Lcom/alibaba/fastjson/parser/c;->g0(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    goto/16 :goto_3

    .line 132
    .line 133
    :cond_5
    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 134
    .line 135
    .line 136
    goto/16 :goto_3

    .line 137
    .line 138
    :cond_6
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 139
    .line 140
    const-string p2, "unclosed jsonArray"

    .line 141
    .line 142
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw p1

    .line 146
    :cond_7
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    .line 147
    .line 148
    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 149
    .line 150
    .line 151
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    invoke-virtual {p0, v5, v7}, Lcom/alibaba/fastjson/parser/c;->p0(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v8

    .line 159
    goto :goto_3

    .line 160
    :cond_8
    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 161
    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_9
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 165
    .line 166
    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 167
    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_a
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 171
    .line 172
    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 173
    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_b
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->R()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v8

    .line 180
    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 181
    .line 182
    .line 183
    sget-object v5, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    .line 184
    .line 185
    invoke-interface {v0, v5}, Lcom/alibaba/fastjson/parser/d;->c(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 186
    .line 187
    .line 188
    move-result v5

    .line 189
    if-eqz v5, :cond_10

    .line 190
    .line 191
    new-instance v5, Lcom/alibaba/fastjson/parser/g;

    .line 192
    .line 193
    invoke-direct {v5, v8}, Lcom/alibaba/fastjson/parser/g;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/g;->V0()Z

    .line 197
    .line 198
    .line 199
    move-result v7

    .line 200
    if-eqz v7, :cond_c

    .line 201
    .line 202
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/e;->j0()Ljava/util/Calendar;

    .line 203
    .line 204
    .line 205
    move-result-object v7

    .line 206
    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 207
    .line 208
    .line 209
    move-result-object v7

    .line 210
    move-object v8, v7

    .line 211
    :cond_c
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/e;->close()V

    .line 212
    .line 213
    .line 214
    goto :goto_3

    .line 215
    :cond_d
    sget-object v5, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    .line 216
    .line 217
    invoke-interface {v0, v5}, Lcom/alibaba/fastjson/parser/d;->c(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 218
    .line 219
    .line 220
    move-result v5

    .line 221
    if-eqz v5, :cond_e

    .line 222
    .line 223
    const/4 v5, 0x1

    .line 224
    invoke-interface {v0, v5}, Lcom/alibaba/fastjson/parser/d;->e0(Z)Ljava/lang/Number;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    goto :goto_2

    .line 229
    :cond_e
    invoke-interface {v0, p2}, Lcom/alibaba/fastjson/parser/d;->e0(Z)Ljava/lang/Number;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    :goto_2
    move-object v8, v5

    .line 234
    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 235
    .line 236
    .line 237
    goto :goto_3

    .line 238
    :cond_f
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->a0()Ljava/lang/Number;

    .line 239
    .line 240
    .line 241
    move-result-object v8

    .line 242
    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 243
    .line 244
    .line 245
    :cond_10
    :goto_3
    invoke-interface {p1, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/c;->f(Ljava/util/Collection;)V

    .line 249
    .line 250
    .line 251
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 252
    .line 253
    .line 254
    move-result v5

    .line 255
    if-ne v5, v6, :cond_11

    .line 256
    .line 257
    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/d;->l(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 258
    .line 259
    .line 260
    :cond_11
    add-int/lit8 v4, v4, 0x1

    .line 261
    .line 262
    goto/16 :goto_0

    .line 263
    .line 264
    :catchall_0
    move-exception p1

    .line 265
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/c;->v0(Lcom/alibaba/fastjson/parser/j;)V

    .line 266
    .line 267
    .line 268
    throw p1

    .line 269
    :cond_12
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 270
    .line 271
    new-instance p2, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    .line 275
    .line 276
    const-string v1, "syntax error, expect [, actual "

    .line 277
    .line 278
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/h;->a(I)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    const-string v1, ", pos "

    .line 293
    .line 294
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->v()I

    .line 298
    .line 299
    .line 300
    move-result v0

    .line 301
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object p2

    .line 308
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    throw p1
.end method

.method public getContext()Lcom/alibaba/fastjson/parser/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/c;->h:Lcom/alibaba/fastjson/parser/j;

    .line 2
    .line 3
    return-object v0
.end method

.method public h(Lcom/alibaba/fastjson/parser/Feature;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/c;->z()Lcom/alibaba/fastjson/parser/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2}, Lcom/alibaba/fastjson/parser/d;->f(Lcom/alibaba/fastjson/parser/Feature;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public i0([Ljava/lang/reflect/Type;)[Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 6
    .line 7
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    const/16 v4, 0x10

    .line 13
    .line 14
    const/16 v5, 0x8

    .line 15
    .line 16
    if-ne v2, v5, :cond_0

    .line 17
    .line 18
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 19
    .line 20
    invoke-interface {v1, v4}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 21
    .line 22
    .line 23
    return-object v3

    .line 24
    :cond_0
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 25
    .line 26
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const/16 v6, 0xe

    .line 31
    .line 32
    if-ne v2, v6, :cond_13

    .line 33
    .line 34
    array-length v2, v1

    .line 35
    new-array v2, v2, [Ljava/lang/Object;

    .line 36
    .line 37
    array-length v7, v1

    .line 38
    const-string v8, "syntax error"

    .line 39
    .line 40
    const/4 v9, 0x0

    .line 41
    const/16 v10, 0xf

    .line 42
    .line 43
    if-nez v7, :cond_2

    .line 44
    .line 45
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 46
    .line 47
    invoke-interface {v1, v10}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 48
    .line 49
    .line 50
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 51
    .line 52
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-ne v1, v10, :cond_1

    .line 57
    .line 58
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 59
    .line 60
    invoke-interface {v1, v4}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 61
    .line 62
    .line 63
    new-array v1, v9, [Ljava/lang/Object;

    .line 64
    .line 65
    return-object v1

    .line 66
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    .line 67
    .line 68
    invoke-direct {v1, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v1

    .line 72
    :cond_2
    iget-object v7, v0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 73
    .line 74
    const/4 v11, 0x2

    .line 75
    invoke-interface {v7, v11}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 76
    .line 77
    .line 78
    const/4 v7, 0x0

    .line 79
    :goto_0
    array-length v12, v1

    .line 80
    if-ge v7, v12, :cond_11

    .line 81
    .line 82
    iget-object v12, v0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 83
    .line 84
    invoke-interface {v12}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 85
    .line 86
    .line 87
    move-result v12

    .line 88
    const-string v13, "syntax error :"

    .line 89
    .line 90
    if-ne v12, v5, :cond_3

    .line 91
    .line 92
    iget-object v12, v0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 93
    .line 94
    invoke-interface {v12, v4}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 95
    .line 96
    .line 97
    move-object v12, v3

    .line 98
    goto/16 :goto_5

    .line 99
    .line 100
    :cond_3
    aget-object v12, v1, v7

    .line 101
    .line 102
    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 103
    .line 104
    if-eq v12, v14, :cond_c

    .line 105
    .line 106
    const-class v14, Ljava/lang/Integer;

    .line 107
    .line 108
    if-ne v12, v14, :cond_4

    .line 109
    .line 110
    goto/16 :goto_4

    .line 111
    .line 112
    :cond_4
    const-class v14, Ljava/lang/String;

    .line 113
    .line 114
    if-ne v12, v14, :cond_6

    .line 115
    .line 116
    iget-object v14, v0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 117
    .line 118
    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 119
    .line 120
    .line 121
    move-result v14

    .line 122
    const/4 v15, 0x4

    .line 123
    if-ne v14, v15, :cond_5

    .line 124
    .line 125
    iget-object v12, v0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 126
    .line 127
    invoke-interface {v12}, Lcom/alibaba/fastjson/parser/d;->R()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v12

    .line 131
    iget-object v14, v0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 132
    .line 133
    invoke-interface {v14, v4}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 134
    .line 135
    .line 136
    goto/16 :goto_5

    .line 137
    .line 138
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/c;->Q()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v14

    .line 142
    iget-object v15, v0, Lcom/alibaba/fastjson/parser/c;->d:Lcom/alibaba/fastjson/parser/k;

    .line 143
    .line 144
    invoke-static {v14, v12, v15}, Lcom/alibaba/fastjson/util/k;->e(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/k;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v12

    .line 148
    goto/16 :goto_5

    .line 149
    .line 150
    :cond_6
    array-length v14, v1

    .line 151
    add-int/lit8 v14, v14, -0x1

    .line 152
    .line 153
    if-ne v7, v14, :cond_7

    .line 154
    .line 155
    instance-of v14, v12, Ljava/lang/Class;

    .line 156
    .line 157
    if-eqz v14, :cond_7

    .line 158
    .line 159
    move-object v14, v12

    .line 160
    check-cast v14, Ljava/lang/Class;

    .line 161
    .line 162
    invoke-virtual {v14}, Ljava/lang/Class;->isArray()Z

    .line 163
    .line 164
    .line 165
    move-result v15

    .line 166
    invoke-virtual {v14}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    move-result-object v14

    .line 170
    goto :goto_1

    .line 171
    :cond_7
    move-object v14, v3

    .line 172
    const/4 v15, 0x0

    .line 173
    :goto_1
    if-eqz v15, :cond_b

    .line 174
    .line 175
    iget-object v15, v0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 176
    .line 177
    invoke-interface {v15}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 178
    .line 179
    .line 180
    move-result v15

    .line 181
    if-eq v15, v6, :cond_b

    .line 182
    .line 183
    new-instance v15, Ljava/util/ArrayList;

    .line 184
    .line 185
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .line 187
    .line 188
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/c;->d:Lcom/alibaba/fastjson/parser/k;

    .line 189
    .line 190
    invoke-virtual {v5, v14}, Lcom/alibaba/fastjson/parser/k;->g(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/x0;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/deserializer/x0;->b()I

    .line 195
    .line 196
    .line 197
    move-result v14

    .line 198
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 199
    .line 200
    invoke-interface {v6}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 201
    .line 202
    .line 203
    move-result v6

    .line 204
    if-eq v6, v10, :cond_a

    .line 205
    .line 206
    :goto_2
    invoke-interface {v5, v0, v12, v3}, Lcom/alibaba/fastjson/parser/deserializer/x0;->c(Lcom/alibaba/fastjson/parser/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v6

    .line 210
    invoke-interface {v15, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 214
    .line 215
    invoke-interface {v6}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 216
    .line 217
    .line 218
    move-result v6

    .line 219
    if-ne v6, v4, :cond_8

    .line 220
    .line 221
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 222
    .line 223
    invoke-interface {v6, v14}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 224
    .line 225
    .line 226
    goto :goto_2

    .line 227
    :cond_8
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 228
    .line 229
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 230
    .line 231
    .line 232
    move-result v5

    .line 233
    if-ne v5, v10, :cond_9

    .line 234
    .line 235
    goto :goto_3

    .line 236
    :cond_9
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    .line 237
    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 247
    .line 248
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 249
    .line 250
    .line 251
    move-result v3

    .line 252
    invoke-static {v3}, Lcom/alibaba/fastjson/parser/h;->a(I)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    throw v1

    .line 267
    :cond_a
    :goto_3
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/c;->d:Lcom/alibaba/fastjson/parser/k;

    .line 268
    .line 269
    invoke-static {v15, v12, v5}, Lcom/alibaba/fastjson/util/k;->e(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/k;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v12

    .line 273
    goto :goto_5

    .line 274
    :cond_b
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/c;->d:Lcom/alibaba/fastjson/parser/k;

    .line 275
    .line 276
    invoke-virtual {v5, v12}, Lcom/alibaba/fastjson/parser/k;->g(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/x0;

    .line 277
    .line 278
    .line 279
    move-result-object v5

    .line 280
    invoke-interface {v5, v0, v12, v3}, Lcom/alibaba/fastjson/parser/deserializer/x0;->c(Lcom/alibaba/fastjson/parser/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v12

    .line 284
    goto :goto_5

    .line 285
    :cond_c
    :goto_4
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 286
    .line 287
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 288
    .line 289
    .line 290
    move-result v5

    .line 291
    if-ne v5, v11, :cond_d

    .line 292
    .line 293
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 294
    .line 295
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/d;->I()I

    .line 296
    .line 297
    .line 298
    move-result v5

    .line 299
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 300
    .line 301
    .line 302
    move-result-object v12

    .line 303
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 304
    .line 305
    invoke-interface {v5, v4}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 306
    .line 307
    .line 308
    goto :goto_5

    .line 309
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/c;->Q()Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v5

    .line 313
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/c;->d:Lcom/alibaba/fastjson/parser/k;

    .line 314
    .line 315
    invoke-static {v5, v12, v6}, Lcom/alibaba/fastjson/util/k;->e(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/k;)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v12

    .line 319
    :goto_5
    aput-object v12, v2, v7

    .line 320
    .line 321
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 322
    .line 323
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 324
    .line 325
    .line 326
    move-result v5

    .line 327
    if-ne v5, v10, :cond_e

    .line 328
    .line 329
    goto :goto_7

    .line 330
    :cond_e
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 331
    .line 332
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 333
    .line 334
    .line 335
    move-result v5

    .line 336
    if-ne v5, v4, :cond_10

    .line 337
    .line 338
    array-length v5, v1

    .line 339
    add-int/lit8 v5, v5, -0x1

    .line 340
    .line 341
    if-ne v7, v5, :cond_f

    .line 342
    .line 343
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 344
    .line 345
    invoke-interface {v5, v10}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 346
    .line 347
    .line 348
    goto :goto_6

    .line 349
    :cond_f
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 350
    .line 351
    invoke-interface {v5, v11}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 352
    .line 353
    .line 354
    :goto_6
    add-int/lit8 v7, v7, 0x1

    .line 355
    .line 356
    const/16 v5, 0x8

    .line 357
    .line 358
    const/16 v6, 0xe

    .line 359
    .line 360
    goto/16 :goto_0

    .line 361
    .line 362
    :cond_10
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    .line 363
    .line 364
    new-instance v2, Ljava/lang/StringBuilder;

    .line 365
    .line 366
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 373
    .line 374
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 375
    .line 376
    .line 377
    move-result v3

    .line 378
    invoke-static {v3}, Lcom/alibaba/fastjson/parser/h;->a(I)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v3

    .line 382
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v2

    .line 389
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    throw v1

    .line 393
    :cond_11
    :goto_7
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 394
    .line 395
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 396
    .line 397
    .line 398
    move-result v1

    .line 399
    if-ne v1, v10, :cond_12

    .line 400
    .line 401
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 402
    .line 403
    invoke-interface {v1, v4}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 404
    .line 405
    .line 406
    return-object v2

    .line 407
    :cond_12
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    .line 408
    .line 409
    invoke-direct {v1, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    throw v1

    .line 413
    :cond_13
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    .line 414
    .line 415
    new-instance v2, Ljava/lang/StringBuilder;

    .line 416
    .line 417
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 418
    .line 419
    .line 420
    const-string v3, "syntax error : "

    .line 421
    .line 422
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 426
    .line 427
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->h()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v3

    .line 431
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v2

    .line 438
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    throw v1
.end method

.method public j()Lcom/alibaba/fastjson/parser/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/c;->d:Lcom/alibaba/fastjson/parser/k;

    .line 2
    .line 3
    return-object v0
.end method

.method public j0(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 12
    .line 13
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/d;->j()V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    return-object p1

    .line 18
    :cond_0
    move-object v0, p1

    .line 19
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    array-length v1, v0

    .line 26
    const/4 v2, 0x1

    .line 27
    if-ne v1, v2, :cond_8

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    aget-object v0, v0, v1

    .line 31
    .line 32
    instance-of v3, v0, Ljava/lang/Class;

    .line 33
    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    new-instance p1, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    check-cast v0, Ljava/lang/Class;

    .line 42
    .line 43
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/parser/c;->c0(Ljava/lang/Class;Ljava/util/Collection;)V

    .line 44
    .line 45
    .line 46
    return-object p1

    .line 47
    :cond_1
    instance-of v3, v0, Ljava/lang/reflect/WildcardType;

    .line 48
    .line 49
    if-eqz v3, :cond_4

    .line 50
    .line 51
    check-cast v0, Ljava/lang/reflect/WildcardType;

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    aget-object v1, v2, v1

    .line 58
    .line 59
    const-class v2, Ljava/lang/Object;

    .line 60
    .line 61
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_3

    .line 66
    .line 67
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    array-length v0, v0

    .line 72
    if-nez v0, :cond_2

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/c;->Q()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    return-object p1

    .line 79
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 80
    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    const-string v2, "not support type : "

    .line 87
    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw v0

    .line 102
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .line 106
    .line 107
    check-cast v1, Ljava/lang/Class;

    .line 108
    .line 109
    invoke-virtual {p0, v1, p1}, Lcom/alibaba/fastjson/parser/c;->c0(Ljava/lang/Class;Ljava/util/Collection;)V

    .line 110
    .line 111
    .line 112
    return-object p1

    .line 113
    :cond_4
    instance-of v3, v0, Ljava/lang/reflect/TypeVariable;

    .line 114
    .line 115
    if-eqz v3, :cond_6

    .line 116
    .line 117
    move-object v3, v0

    .line 118
    check-cast v3, Ljava/lang/reflect/TypeVariable;

    .line 119
    .line 120
    invoke-interface {v3}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    array-length v5, v4

    .line 125
    if-ne v5, v2, :cond_5

    .line 126
    .line 127
    aget-object v1, v4, v1

    .line 128
    .line 129
    instance-of v2, v1, Ljava/lang/Class;

    .line 130
    .line 131
    if-eqz v2, :cond_6

    .line 132
    .line 133
    new-instance p1, Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .line 137
    .line 138
    check-cast v1, Ljava/lang/Class;

    .line 139
    .line 140
    invoke-virtual {p0, v1, p1}, Lcom/alibaba/fastjson/parser/c;->c0(Ljava/lang/Class;Ljava/util/Collection;)V

    .line 141
    .line 142
    .line 143
    return-object p1

    .line 144
    :cond_5
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 145
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    const-string v1, "not support : "

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw p1

    .line 167
    :cond_6
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    .line 168
    .line 169
    if-eqz v1, :cond_7

    .line 170
    .line 171
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 172
    .line 173
    new-instance p1, Ljava/util/ArrayList;

    .line 174
    .line 175
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/parser/c;->d0(Ljava/lang/reflect/Type;Ljava/util/Collection;)V

    .line 179
    .line 180
    .line 181
    return-object p1

    .line 182
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 183
    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    const-string v2, "TODO : "

    .line 190
    .line 191
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    throw v0

    .line 205
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 206
    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    const-string v2, "not support type "

    .line 213
    .line 214
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    throw v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/c;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public k0()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x12

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->R()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 18
    .line 19
    const/16 v2, 0x10

    .line 20
    .line 21
    invoke-interface {v1, v2}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 22
    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/c;->R(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method

.method public l()Ljava/text/DateFormat;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/c;->f:Ljava/text/DateFormat;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/c;->e:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/c;->f:Ljava/text/DateFormat;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/c;->f:Ljava/text/DateFormat;

    .line 15
    .line 16
    return-object v0
.end method

.method public l0()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/c;->o0(Ljava/util/Map;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public m0(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/c;->n0(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public n0(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 13
    .line 14
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/d;->j()V

    .line 15
    .line 16
    .line 17
    return-object v2

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x4

    .line 25
    if-ne v0, v1, :cond_2

    .line 26
    .line 27
    invoke-static {p1}, Lcom/alibaba/fastjson/util/k;->M(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-class v0, [B

    .line 32
    .line 33
    if-ne p1, v0, :cond_1

    .line 34
    .line 35
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 36
    .line 37
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/d;->o()[B

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 42
    .line 43
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->j()V

    .line 44
    .line 45
    .line 46
    return-object p1

    .line 47
    :cond_1
    const-class v0, [C

    .line 48
    .line 49
    if-ne p1, v0, :cond_2

    .line 50
    .line 51
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 52
    .line 53
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/d;->R()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 58
    .line 59
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->j()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    return-object p1

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/c;->d:Lcom/alibaba/fastjson/parser/k;

    .line 68
    .line 69
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/parser/k;->g(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/x0;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    :try_start_0
    invoke-interface {v0, p0, p1, v2}, Lcom/alibaba/fastjson/parser/deserializer/x0;->c(Lcom/alibaba/fastjson/parser/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    return-object p1

    .line 78
    :catchall_0
    move-exception p1

    .line 79
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    throw v0

    .line 89
    :catch_0
    move-exception p1

    .line 90
    throw p1
.end method

.method public o()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/parser/deserializer/p;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/c;->n:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/c;->n:Ljava/util/List;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/c;->n:Ljava/util/List;

    .line 14
    .line 15
    return-object v0
.end method

.method public o0(Ljava/util/Map;)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/c;->p0(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public p()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/parser/deserializer/p;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/c;->n:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final p0(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 8
    .line 9
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    const/16 v5, 0x8

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    if-ne v4, v5, :cond_0

    .line 17
    .line 18
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->next()C

    .line 19
    .line 20
    .line 21
    return-object v6

    .line 22
    :cond_0
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    const/16 v5, 0xc

    .line 27
    .line 28
    const/16 v7, 0x10

    .line 29
    .line 30
    if-eq v4, v5, :cond_2

    .line 31
    .line 32
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-ne v4, v7, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 40
    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v4, "syntax error, expect {, actual "

    .line 47
    .line 48
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->h()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v0

    .line 66
    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/c;->getContext()Lcom/alibaba/fastjson/parser/j;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    const/4 v8, 0x0

    .line 71
    :goto_1
    :try_start_0
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->s()V

    .line 72
    .line 73
    .line 74
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->getCurrent()C

    .line 75
    .line 76
    .line 77
    move-result v9

    .line 78
    sget-object v10, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    .line 79
    .line 80
    invoke-virtual {v1, v10}, Lcom/alibaba/fastjson/parser/c;->P(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 81
    .line 82
    .line 83
    move-result v10

    .line 84
    const/16 v11, 0x2c

    .line 85
    .line 86
    if-eqz v10, :cond_3

    .line 87
    .line 88
    :goto_2
    if-ne v9, v11, :cond_3

    .line 89
    .line 90
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->next()C

    .line 91
    .line 92
    .line 93
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->s()V

    .line 94
    .line 95
    .line 96
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->getCurrent()C

    .line 97
    .line 98
    .line 99
    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    goto :goto_2

    .line 101
    :cond_3
    const/16 v15, 0x30

    .line 102
    .line 103
    const/16 v5, 0x7d

    .line 104
    .line 105
    const-string v7, ", name "

    .line 106
    .line 107
    const-string v10, "expect \':\' at "

    .line 108
    .line 109
    const/16 v12, 0x3a

    .line 110
    .line 111
    const/16 v6, 0x22

    .line 112
    .line 113
    const-string v14, "syntax error"

    .line 114
    .line 115
    const/4 v13, 0x1

    .line 116
    if-ne v9, v6, :cond_5

    .line 117
    .line 118
    :try_start_1
    iget-object v9, v1, Lcom/alibaba/fastjson/parser/c;->c:Lcom/alibaba/fastjson/parser/l;

    .line 119
    .line 120
    invoke-interface {v3, v9, v6}, Lcom/alibaba/fastjson/parser/d;->d(Lcom/alibaba/fastjson/parser/l;C)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v9

    .line 124
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->s()V

    .line 125
    .line 126
    .line 127
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->getCurrent()C

    .line 128
    .line 129
    .line 130
    move-result v6

    .line 131
    if-ne v6, v12, :cond_4

    .line 132
    .line 133
    :goto_3
    const/4 v6, 0x0

    .line 134
    goto/16 :goto_6

    .line 135
    .line 136
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 137
    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->v()I

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw v0

    .line 167
    :cond_5
    if-ne v9, v5, :cond_6

    .line 168
    .line 169
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->next()C

    .line 170
    .line 171
    .line 172
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->d0()V

    .line 173
    .line 174
    .line 175
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->j()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/parser/c;->v0(Lcom/alibaba/fastjson/parser/j;)V

    .line 179
    .line 180
    .line 181
    return-object v0

    .line 182
    :cond_6
    const/16 v6, 0x27

    .line 183
    .line 184
    if-ne v9, v6, :cond_9

    .line 185
    .line 186
    :try_start_2
    sget-object v9, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    .line 187
    .line 188
    invoke-virtual {v1, v9}, Lcom/alibaba/fastjson/parser/c;->P(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 189
    .line 190
    .line 191
    move-result v9

    .line 192
    if-eqz v9, :cond_8

    .line 193
    .line 194
    iget-object v9, v1, Lcom/alibaba/fastjson/parser/c;->c:Lcom/alibaba/fastjson/parser/l;

    .line 195
    .line 196
    invoke-interface {v3, v9, v6}, Lcom/alibaba/fastjson/parser/d;->d(Lcom/alibaba/fastjson/parser/l;C)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v9

    .line 200
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->s()V

    .line 201
    .line 202
    .line 203
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->getCurrent()C

    .line 204
    .line 205
    .line 206
    move-result v6

    .line 207
    if-ne v6, v12, :cond_7

    .line 208
    .line 209
    goto :goto_3

    .line 210
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 211
    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->v()I

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    throw v0

    .line 235
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 236
    .line 237
    invoke-direct {v0, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    throw v0

    .line 241
    :cond_9
    const/16 v6, 0x1a

    .line 242
    .line 243
    if-eq v9, v6, :cond_43

    .line 244
    .line 245
    if-eq v9, v11, :cond_42

    .line 246
    .line 247
    if-lt v9, v15, :cond_a

    .line 248
    .line 249
    const/16 v6, 0x39

    .line 250
    .line 251
    if-le v9, v6, :cond_b

    .line 252
    .line 253
    :cond_a
    const/16 v6, 0x2d

    .line 254
    .line 255
    if-ne v9, v6, :cond_e

    .line 256
    .line 257
    :cond_b
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->d0()V

    .line 258
    .line 259
    .line 260
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->J()V

    .line 261
    .line 262
    .line 263
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 264
    .line 265
    .line 266
    move-result v6

    .line 267
    const/4 v9, 0x2

    .line 268
    if-ne v6, v9, :cond_c

    .line 269
    .line 270
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->a0()Ljava/lang/Number;

    .line 271
    .line 272
    .line 273
    move-result-object v6

    .line 274
    goto :goto_4

    .line 275
    :cond_c
    invoke-interface {v3, v13}, Lcom/alibaba/fastjson/parser/d;->e0(Z)Ljava/lang/Number;

    .line 276
    .line 277
    .line 278
    move-result-object v6

    .line 279
    :goto_4
    move-object v9, v6

    .line 280
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->getCurrent()C

    .line 281
    .line 282
    .line 283
    move-result v6

    .line 284
    if-ne v6, v12, :cond_d

    .line 285
    .line 286
    goto/16 :goto_3

    .line 287
    .line 288
    :cond_d
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 289
    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->v()I

    .line 299
    .line 300
    .line 301
    move-result v3

    .line 302
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v2

    .line 315
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    throw v0

    .line 319
    :cond_e
    const/16 v6, 0x7b

    .line 320
    .line 321
    if-eq v9, v6, :cond_12

    .line 322
    .line 323
    const/16 v6, 0x5b

    .line 324
    .line 325
    if-ne v9, v6, :cond_f

    .line 326
    .line 327
    goto :goto_5

    .line 328
    :cond_f
    sget-object v6, Lcom/alibaba/fastjson/parser/Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    .line 329
    .line 330
    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/parser/c;->P(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 331
    .line 332
    .line 333
    move-result v6

    .line 334
    if-eqz v6, :cond_11

    .line 335
    .line 336
    iget-object v6, v1, Lcom/alibaba/fastjson/parser/c;->c:Lcom/alibaba/fastjson/parser/l;

    .line 337
    .line 338
    invoke-interface {v3, v6}, Lcom/alibaba/fastjson/parser/d;->K(Lcom/alibaba/fastjson/parser/l;)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v9

    .line 342
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->s()V

    .line 343
    .line 344
    .line 345
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->getCurrent()C

    .line 346
    .line 347
    .line 348
    move-result v6

    .line 349
    if-ne v6, v12, :cond_10

    .line 350
    .line 351
    goto/16 :goto_3

    .line 352
    .line 353
    :cond_10
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 354
    .line 355
    new-instance v2, Ljava/lang/StringBuilder;

    .line 356
    .line 357
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->v()I

    .line 364
    .line 365
    .line 366
    move-result v3

    .line 367
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    const-string v3, ", actual "

    .line 371
    .line 372
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    throw v0

    .line 386
    :cond_11
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 387
    .line 388
    invoke-direct {v0, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    throw v0

    .line 392
    :cond_12
    :goto_5
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->j()V

    .line 393
    .line 394
    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/c;->Q()Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v9

    .line 399
    const/4 v6, 0x1

    .line 400
    :goto_6
    if-nez v6, :cond_13

    .line 401
    .line 402
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->next()C

    .line 403
    .line 404
    .line 405
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->s()V

    .line 406
    .line 407
    .line 408
    :cond_13
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->getCurrent()C

    .line 409
    .line 410
    .line 411
    move-result v6

    .line 412
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->d0()V

    .line 413
    .line 414
    .line 415
    sget-object v10, Lcom/alibaba/fastjson/a;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    .line 416
    .line 417
    const/16 v12, 0xd

    .line 418
    .line 419
    if-ne v9, v10, :cond_1b

    .line 420
    .line 421
    iget-object v5, v1, Lcom/alibaba/fastjson/parser/c;->c:Lcom/alibaba/fastjson/parser/l;

    .line 422
    .line 423
    const/16 v6, 0x22

    .line 424
    .line 425
    invoke-interface {v3, v5, v6}, Lcom/alibaba/fastjson/parser/d;->d(Lcom/alibaba/fastjson/parser/l;C)Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v5

    .line 429
    invoke-static {v5}, Lcom/alibaba/fastjson/util/k;->K(Ljava/lang/String;)Ljava/lang/Class;

    .line 430
    .line 431
    .line 432
    move-result-object v6

    .line 433
    if-nez v6, :cond_14

    .line 434
    .line 435
    sget-object v6, Lcom/alibaba/fastjson/a;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    .line 436
    .line 437
    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    :goto_7
    const/4 v6, 0x0

    .line 441
    const/16 v7, 0x10

    .line 442
    .line 443
    goto/16 :goto_1

    .line 444
    .line 445
    :cond_14
    const/16 v0, 0x10

    .line 446
    .line 447
    invoke-interface {v3, v0}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 448
    .line 449
    .line 450
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 451
    .line 452
    .line 453
    move-result v5

    .line 454
    if-ne v5, v12, :cond_19

    .line 455
    .line 456
    invoke-interface {v3, v0}, Lcom/alibaba/fastjson/parser/d;->l(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 457
    .line 458
    .line 459
    :try_start_3
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/c;->d:Lcom/alibaba/fastjson/parser/k;

    .line 460
    .line 461
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/k;->g(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/x0;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    instance-of v2, v0, Lcom/alibaba/fastjson/parser/deserializer/b;

    .line 466
    .line 467
    if-eqz v2, :cond_15

    .line 468
    .line 469
    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/b;

    .line 470
    .line 471
    invoke-virtual {v0, v1, v6}, Lcom/alibaba/fastjson/parser/deserializer/b;->f(Lcom/alibaba/fastjson/parser/c;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object v0

    .line 475
    goto :goto_8

    .line 476
    :cond_15
    instance-of v2, v0, Lcom/alibaba/fastjson/parser/deserializer/v;

    .line 477
    .line 478
    if-eqz v2, :cond_16

    .line 479
    .line 480
    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/v;

    .line 481
    .line 482
    invoke-virtual {v0, v1, v6}, Lcom/alibaba/fastjson/parser/deserializer/v;->f(Lcom/alibaba/fastjson/parser/c;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    goto :goto_8

    .line 487
    :cond_16
    const/4 v0, 0x0

    .line 488
    :goto_8
    if-nez v0, :cond_18

    .line 489
    .line 490
    const-class v0, Ljava/lang/Cloneable;

    .line 491
    .line 492
    if-ne v6, v0, :cond_17

    .line 493
    .line 494
    new-instance v0, Ljava/util/HashMap;

    .line 495
    .line 496
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 497
    .line 498
    .line 499
    goto :goto_9

    .line 500
    :cond_17
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 504
    :cond_18
    :goto_9
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/parser/c;->v0(Lcom/alibaba/fastjson/parser/j;)V

    .line 505
    .line 506
    .line 507
    return-object v0

    .line 508
    :catch_0
    move-exception v0

    .line 509
    :try_start_4
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    .line 510
    .line 511
    const-string v3, "create instance error"

    .line 512
    .line 513
    invoke-direct {v2, v3, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 514
    .line 515
    .line 516
    throw v2

    .line 517
    :cond_19
    const/4 v0, 0x2

    .line 518
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/c;->y0(I)V

    .line 519
    .line 520
    .line 521
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/c;->h:Lcom/alibaba/fastjson/parser/j;

    .line 522
    .line 523
    if-eqz v0, :cond_1a

    .line 524
    .line 525
    instance-of v0, v2, Ljava/lang/Integer;

    .line 526
    .line 527
    if-nez v0, :cond_1a

    .line 528
    .line 529
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/c;->r0()V

    .line 530
    .line 531
    .line 532
    :cond_1a
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/c;->d:Lcom/alibaba/fastjson/parser/k;

    .line 533
    .line 534
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/k;->g(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/x0;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    invoke-interface {v0, v1, v6, v2}, Lcom/alibaba/fastjson/parser/deserializer/x0;->c(Lcom/alibaba/fastjson/parser/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    .line 540
    .line 541
    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 542
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/parser/c;->v0(Lcom/alibaba/fastjson/parser/j;)V

    .line 543
    .line 544
    .line 545
    return-object v0

    .line 546
    :cond_1b
    :try_start_5
    const-string v10, "$ref"

    .line 547
    .line 548
    if-ne v9, v10, :cond_27

    .line 549
    .line 550
    const/4 v0, 0x4

    .line 551
    invoke-interface {v3, v0}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 552
    .line 553
    .line 554
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 555
    .line 556
    .line 557
    move-result v2

    .line 558
    if-ne v2, v0, :cond_26

    .line 559
    .line 560
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->R()Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v0

    .line 564
    invoke-interface {v3, v12}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 565
    .line 566
    .line 567
    const-string v2, "@"

    .line 568
    .line 569
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 570
    .line 571
    .line 572
    move-result v2

    .line 573
    if-eqz v2, :cond_1e

    .line 574
    .line 575
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/c;->getContext()Lcom/alibaba/fastjson/parser/j;

    .line 576
    .line 577
    .line 578
    move-result-object v0

    .line 579
    if-eqz v0, :cond_24

    .line 580
    .line 581
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/c;->getContext()Lcom/alibaba/fastjson/parser/j;

    .line 582
    .line 583
    .line 584
    move-result-object v0

    .line 585
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/j;->a()Ljava/lang/Object;

    .line 586
    .line 587
    .line 588
    move-result-object v2

    .line 589
    instance-of v5, v2, [Ljava/lang/Object;

    .line 590
    .line 591
    if-nez v5, :cond_1d

    .line 592
    .line 593
    instance-of v5, v2, Ljava/util/Collection;

    .line 594
    .line 595
    if-eqz v5, :cond_1c

    .line 596
    .line 597
    goto :goto_a

    .line 598
    :cond_1c
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/j;->b()Lcom/alibaba/fastjson/parser/j;

    .line 599
    .line 600
    .line 601
    move-result-object v2

    .line 602
    if-eqz v2, :cond_24

    .line 603
    .line 604
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/j;->b()Lcom/alibaba/fastjson/parser/j;

    .line 605
    .line 606
    .line 607
    move-result-object v0

    .line 608
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/j;->a()Ljava/lang/Object;

    .line 609
    .line 610
    .line 611
    move-result-object v6

    .line 612
    goto :goto_d

    .line 613
    :cond_1d
    :goto_a
    move-object v6, v2

    .line 614
    goto :goto_d

    .line 615
    :cond_1e
    const-string v2, ".."

    .line 616
    .line 617
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 618
    .line 619
    .line 620
    move-result v2

    .line 621
    if-eqz v2, :cond_20

    .line 622
    .line 623
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/j;->b()Lcom/alibaba/fastjson/parser/j;

    .line 624
    .line 625
    .line 626
    move-result-object v2

    .line 627
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/j;->a()Ljava/lang/Object;

    .line 628
    .line 629
    .line 630
    move-result-object v5

    .line 631
    if-eqz v5, :cond_1f

    .line 632
    .line 633
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/j;->a()Ljava/lang/Object;

    .line 634
    .line 635
    .line 636
    move-result-object v6

    .line 637
    goto :goto_d

    .line 638
    :cond_1f
    new-instance v5, Lcom/alibaba/fastjson/parser/c$a;

    .line 639
    .line 640
    invoke-direct {v5, v2, v0}, Lcom/alibaba/fastjson/parser/c$a;-><init>(Lcom/alibaba/fastjson/parser/j;Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/parser/c;->e(Lcom/alibaba/fastjson/parser/c$a;)V

    .line 644
    .line 645
    .line 646
    invoke-virtual {v1, v13}, Lcom/alibaba/fastjson/parser/c;->y0(I)V

    .line 647
    .line 648
    .line 649
    goto :goto_c

    .line 650
    :cond_20
    const-string v2, "$"

    .line 651
    .line 652
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 653
    .line 654
    .line 655
    move-result v2

    .line 656
    if-eqz v2, :cond_23

    .line 657
    .line 658
    move-object v2, v4

    .line 659
    :goto_b
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/j;->b()Lcom/alibaba/fastjson/parser/j;

    .line 660
    .line 661
    .line 662
    move-result-object v5

    .line 663
    if-eqz v5, :cond_21

    .line 664
    .line 665
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/j;->b()Lcom/alibaba/fastjson/parser/j;

    .line 666
    .line 667
    .line 668
    move-result-object v2

    .line 669
    goto :goto_b

    .line 670
    :cond_21
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/j;->a()Ljava/lang/Object;

    .line 671
    .line 672
    .line 673
    move-result-object v5

    .line 674
    if-eqz v5, :cond_22

    .line 675
    .line 676
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/j;->a()Ljava/lang/Object;

    .line 677
    .line 678
    .line 679
    move-result-object v0

    .line 680
    move-object v6, v0

    .line 681
    goto :goto_d

    .line 682
    :cond_22
    new-instance v5, Lcom/alibaba/fastjson/parser/c$a;

    .line 683
    .line 684
    invoke-direct {v5, v2, v0}, Lcom/alibaba/fastjson/parser/c$a;-><init>(Lcom/alibaba/fastjson/parser/j;Ljava/lang/String;)V

    .line 685
    .line 686
    .line 687
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/parser/c;->e(Lcom/alibaba/fastjson/parser/c$a;)V

    .line 688
    .line 689
    .line 690
    invoke-virtual {v1, v13}, Lcom/alibaba/fastjson/parser/c;->y0(I)V

    .line 691
    .line 692
    .line 693
    goto :goto_c

    .line 694
    :cond_23
    new-instance v2, Lcom/alibaba/fastjson/parser/c$a;

    .line 695
    .line 696
    invoke-direct {v2, v4, v0}, Lcom/alibaba/fastjson/parser/c$a;-><init>(Lcom/alibaba/fastjson/parser/j;Ljava/lang/String;)V

    .line 697
    .line 698
    .line 699
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/parser/c;->e(Lcom/alibaba/fastjson/parser/c$a;)V

    .line 700
    .line 701
    .line 702
    invoke-virtual {v1, v13}, Lcom/alibaba/fastjson/parser/c;->y0(I)V

    .line 703
    .line 704
    .line 705
    :cond_24
    :goto_c
    const/4 v6, 0x0

    .line 706
    :goto_d
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 707
    .line 708
    .line 709
    move-result v0

    .line 710
    if-ne v0, v12, :cond_25

    .line 711
    .line 712
    const/16 v0, 0x10

    .line 713
    .line 714
    invoke-interface {v3, v0}, Lcom/alibaba/fastjson/parser/d;->l(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 715
    .line 716
    .line 717
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/parser/c;->v0(Lcom/alibaba/fastjson/parser/j;)V

    .line 718
    .line 719
    .line 720
    return-object v6

    .line 721
    :cond_25
    :try_start_6
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 722
    .line 723
    invoke-direct {v0, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 724
    .line 725
    .line 726
    throw v0

    .line 727
    :cond_26
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 728
    .line 729
    new-instance v2, Ljava/lang/StringBuilder;

    .line 730
    .line 731
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 732
    .line 733
    .line 734
    const-string v5, "illegal ref, "

    .line 735
    .line 736
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    .line 738
    .line 739
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 740
    .line 741
    .line 742
    move-result v3

    .line 743
    invoke-static {v3}, Lcom/alibaba/fastjson/parser/h;->a(I)Ljava/lang/String;

    .line 744
    .line 745
    .line 746
    move-result-object v3

    .line 747
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    .line 749
    .line 750
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 751
    .line 752
    .line 753
    move-result-object v2

    .line 754
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 755
    .line 756
    .line 757
    throw v0

    .line 758
    :cond_27
    if-nez v8, :cond_28

    .line 759
    .line 760
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/c;->u0(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/j;

    .line 761
    .line 762
    .line 763
    const/4 v8, 0x1

    .line 764
    :cond_28
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 765
    .line 766
    .line 767
    move-result-object v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 768
    const-class v13, Lcom/alibaba/fastjson/JSONObject;

    .line 769
    .line 770
    if-ne v10, v13, :cond_2a

    .line 771
    .line 772
    if-nez v9, :cond_29

    .line 773
    .line 774
    :try_start_7
    const-string v9, "null"

    .line 775
    .line 776
    goto :goto_e

    .line 777
    :cond_29
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 778
    .line 779
    .line 780
    move-result-object v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 781
    :cond_2a
    :goto_e
    const-string v10, "syntax error, position at "

    .line 782
    .line 783
    const/16 v12, 0x22

    .line 784
    .line 785
    if-ne v6, v12, :cond_2d

    .line 786
    .line 787
    :try_start_8
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->k()V

    .line 788
    .line 789
    .line 790
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->R()Ljava/lang/String;

    .line 791
    .line 792
    .line 793
    move-result-object v6

    .line 794
    sget-object v12, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    .line 795
    .line 796
    invoke-interface {v3, v12}, Lcom/alibaba/fastjson/parser/d;->c(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 797
    .line 798
    .line 799
    move-result v12

    .line 800
    if-eqz v12, :cond_2c

    .line 801
    .line 802
    new-instance v12, Lcom/alibaba/fastjson/parser/g;

    .line 803
    .line 804
    invoke-direct {v12, v6}, Lcom/alibaba/fastjson/parser/g;-><init>(Ljava/lang/String;)V

    .line 805
    .line 806
    .line 807
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/g;->V0()Z

    .line 808
    .line 809
    .line 810
    move-result v13

    .line 811
    if-eqz v13, :cond_2b

    .line 812
    .line 813
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/e;->j0()Ljava/util/Calendar;

    .line 814
    .line 815
    .line 816
    move-result-object v6

    .line 817
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 818
    .line 819
    .line 820
    move-result-object v6

    .line 821
    :cond_2b
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/e;->close()V

    .line 822
    .line 823
    .line 824
    :cond_2c
    invoke-interface {v0, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    .line 826
    .line 827
    goto :goto_10

    .line 828
    :cond_2d
    if-lt v6, v15, :cond_2e

    .line 829
    .line 830
    const/16 v12, 0x39

    .line 831
    .line 832
    if-le v6, v12, :cond_2f

    .line 833
    .line 834
    :cond_2e
    const/16 v12, 0x2d

    .line 835
    .line 836
    if-ne v6, v12, :cond_33

    .line 837
    .line 838
    :cond_2f
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->J()V

    .line 839
    .line 840
    .line 841
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 842
    .line 843
    .line 844
    move-result v6

    .line 845
    const/4 v12, 0x2

    .line 846
    if-ne v6, v12, :cond_30

    .line 847
    .line 848
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->a0()Ljava/lang/Number;

    .line 849
    .line 850
    .line 851
    move-result-object v6

    .line 852
    goto :goto_f

    .line 853
    :cond_30
    sget-object v6, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    .line 854
    .line 855
    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/parser/c;->P(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 856
    .line 857
    .line 858
    move-result v6

    .line 859
    invoke-interface {v3, v6}, Lcom/alibaba/fastjson/parser/d;->e0(Z)Ljava/lang/Number;

    .line 860
    .line 861
    .line 862
    move-result-object v6

    .line 863
    :goto_f
    invoke-interface {v0, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    .line 865
    .line 866
    :goto_10
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->s()V

    .line 867
    .line 868
    .line 869
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->getCurrent()C

    .line 870
    .line 871
    .line 872
    move-result v6

    .line 873
    if-ne v6, v11, :cond_31

    .line 874
    .line 875
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->next()C

    .line 876
    .line 877
    .line 878
    const/16 v6, 0x10

    .line 879
    .line 880
    goto/16 :goto_14

    .line 881
    .line 882
    :cond_31
    if-ne v6, v5, :cond_32

    .line 883
    .line 884
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->next()C

    .line 885
    .line 886
    .line 887
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->d0()V

    .line 888
    .line 889
    .line 890
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->j()V

    .line 891
    .line 892
    .line 893
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/c;->u0(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/j;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 894
    .line 895
    .line 896
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/parser/c;->v0(Lcom/alibaba/fastjson/parser/j;)V

    .line 897
    .line 898
    .line 899
    return-object v0

    .line 900
    :cond_32
    :try_start_9
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 901
    .line 902
    new-instance v2, Ljava/lang/StringBuilder;

    .line 903
    .line 904
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 905
    .line 906
    .line 907
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    .line 909
    .line 910
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->v()I

    .line 911
    .line 912
    .line 913
    move-result v3

    .line 914
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 915
    .line 916
    .line 917
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 918
    .line 919
    .line 920
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 921
    .line 922
    .line 923
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 924
    .line 925
    .line 926
    move-result-object v2

    .line 927
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 928
    .line 929
    .line 930
    throw v0

    .line 931
    :cond_33
    const/16 v5, 0x5b

    .line 932
    .line 933
    if-ne v6, v5, :cond_36

    .line 934
    .line 935
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->j()V

    .line 936
    .line 937
    .line 938
    new-instance v5, Lcom/alibaba/fastjson/JSONArray;

    .line 939
    .line 940
    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 941
    .line 942
    .line 943
    invoke-virtual {v1, v5, v9}, Lcom/alibaba/fastjson/parser/c;->g0(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 944
    .line 945
    .line 946
    invoke-interface {v0, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    .line 948
    .line 949
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 950
    .line 951
    .line 952
    move-result v5

    .line 953
    const/16 v6, 0xd

    .line 954
    .line 955
    if-ne v5, v6, :cond_34

    .line 956
    .line 957
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->j()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 958
    .line 959
    .line 960
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/parser/c;->v0(Lcom/alibaba/fastjson/parser/j;)V

    .line 961
    .line 962
    .line 963
    return-object v0

    .line 964
    :cond_34
    :try_start_a
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 965
    .line 966
    .line 967
    move-result v5

    .line 968
    const/16 v6, 0x10

    .line 969
    .line 970
    if-ne v5, v6, :cond_35

    .line 971
    .line 972
    goto/16 :goto_14

    .line 973
    .line 974
    :cond_35
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 975
    .line 976
    invoke-direct {v0, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 977
    .line 978
    .line 979
    throw v0

    .line 980
    :cond_36
    const/16 v5, 0x7b

    .line 981
    .line 982
    if-ne v6, v5, :cond_3e

    .line 983
    .line 984
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->j()V

    .line 985
    .line 986
    .line 987
    if-eqz v2, :cond_37

    .line 988
    .line 989
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 990
    .line 991
    .line 992
    move-result-object v5

    .line 993
    const-class v6, Ljava/lang/Integer;

    .line 994
    .line 995
    if-ne v5, v6, :cond_37

    .line 996
    .line 997
    const/16 v16, 0x1

    .line 998
    .line 999
    goto :goto_11

    .line 1000
    :cond_37
    const/16 v16, 0x0

    .line 1001
    .line 1002
    :goto_11
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    .line 1003
    .line 1004
    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1005
    .line 1006
    .line 1007
    if-nez v16, :cond_38

    .line 1008
    .line 1009
    invoke-virtual {v1, v4, v5, v9}, Lcom/alibaba/fastjson/parser/c;->t0(Lcom/alibaba/fastjson/parser/j;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/j;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v6

    .line 1013
    goto :goto_12

    .line 1014
    :cond_38
    const/4 v6, 0x0

    .line 1015
    :goto_12
    invoke-virtual {v1, v5, v9}, Lcom/alibaba/fastjson/parser/c;->p0(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v7

    .line 1019
    if-eqz v6, :cond_39

    .line 1020
    .line 1021
    if-eq v5, v7, :cond_39

    .line 1022
    .line 1023
    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson/parser/j;->d(Ljava/lang/Object;)V

    .line 1024
    .line 1025
    .line 1026
    :cond_39
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v5

    .line 1030
    invoke-virtual {v1, v0, v5}, Lcom/alibaba/fastjson/parser/c;->g(Ljava/util/Map;Ljava/lang/String;)V

    .line 1031
    .line 1032
    .line 1033
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v5

    .line 1037
    if-ne v5, v13, :cond_3a

    .line 1038
    .line 1039
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v5

    .line 1043
    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    .line 1045
    .line 1046
    goto :goto_13

    .line 1047
    :cond_3a
    invoke-interface {v0, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    .line 1049
    .line 1050
    :goto_13
    if-eqz v16, :cond_3b

    .line 1051
    .line 1052
    invoke-virtual {v1, v4, v7, v9}, Lcom/alibaba/fastjson/parser/c;->t0(Lcom/alibaba/fastjson/parser/j;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/j;

    .line 1053
    .line 1054
    .line 1055
    :cond_3b
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 1056
    .line 1057
    .line 1058
    move-result v5

    .line 1059
    const/16 v6, 0xd

    .line 1060
    .line 1061
    if-ne v5, v6, :cond_3c

    .line 1062
    .line 1063
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->j()V

    .line 1064
    .line 1065
    .line 1066
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/parser/c;->v0(Lcom/alibaba/fastjson/parser/j;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1067
    .line 1068
    .line 1069
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/parser/c;->v0(Lcom/alibaba/fastjson/parser/j;)V

    .line 1070
    .line 1071
    .line 1072
    return-object v0

    .line 1073
    :cond_3c
    :try_start_b
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 1074
    .line 1075
    .line 1076
    move-result v5

    .line 1077
    const/16 v6, 0x10

    .line 1078
    .line 1079
    if-ne v5, v6, :cond_3d

    .line 1080
    .line 1081
    goto :goto_14

    .line 1082
    :cond_3d
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 1083
    .line 1084
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1085
    .line 1086
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1087
    .line 1088
    .line 1089
    const-string v5, "syntax error, "

    .line 1090
    .line 1091
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1092
    .line 1093
    .line 1094
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->h()Ljava/lang/String;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v3

    .line 1098
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    .line 1100
    .line 1101
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v2

    .line 1105
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 1106
    .line 1107
    .line 1108
    throw v0

    .line 1109
    :cond_3e
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->j()V

    .line 1110
    .line 1111
    .line 1112
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/c;->Q()Ljava/lang/Object;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v5

    .line 1116
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1117
    .line 1118
    .line 1119
    move-result-object v6

    .line 1120
    if-ne v6, v13, :cond_3f

    .line 1121
    .line 1122
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v9

    .line 1126
    :cond_3f
    invoke-interface {v0, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1127
    .line 1128
    .line 1129
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 1130
    .line 1131
    .line 1132
    move-result v5

    .line 1133
    const/16 v6, 0xd

    .line 1134
    .line 1135
    if-ne v5, v6, :cond_40

    .line 1136
    .line 1137
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->j()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1138
    .line 1139
    .line 1140
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/parser/c;->v0(Lcom/alibaba/fastjson/parser/j;)V

    .line 1141
    .line 1142
    .line 1143
    return-object v0

    .line 1144
    :cond_40
    :try_start_c
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 1145
    .line 1146
    .line 1147
    move-result v5

    .line 1148
    const/16 v6, 0x10

    .line 1149
    .line 1150
    if-ne v5, v6, :cond_41

    .line 1151
    .line 1152
    :goto_14
    goto/16 :goto_7

    .line 1153
    .line 1154
    :cond_41
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 1155
    .line 1156
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1157
    .line 1158
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1159
    .line 1160
    .line 1161
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1162
    .line 1163
    .line 1164
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/d;->v()I

    .line 1165
    .line 1166
    .line 1167
    move-result v3

    .line 1168
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1169
    .line 1170
    .line 1171
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1172
    .line 1173
    .line 1174
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1175
    .line 1176
    .line 1177
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1178
    .line 1179
    .line 1180
    move-result-object v2

    .line 1181
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 1182
    .line 1183
    .line 1184
    throw v0

    .line 1185
    :cond_42
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 1186
    .line 1187
    invoke-direct {v0, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 1188
    .line 1189
    .line 1190
    throw v0

    .line 1191
    :cond_43
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 1192
    .line 1193
    invoke-direct {v0, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 1194
    .line 1195
    .line 1196
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1197
    :catchall_0
    move-exception v0

    .line 1198
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/parser/c;->v0(Lcom/alibaba/fastjson/parser/j;)V

    .line 1199
    .line 1200
    .line 1201
    throw v0
.end method

.method public q()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/parser/deserializer/q;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/c;->m:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/c;->m:Ljava/util/List;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/c;->m:Ljava/util/List;

    .line 14
    .line 15
    return-object v0
.end method

.method public q0(Ljava/lang/Object;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/c;->d:Lcom/alibaba/fastjson/parser/k;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/k;->j(Ljava/lang/Class;)Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 12
    .line 13
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/16 v3, 0xc

    .line 18
    .line 19
    const/16 v4, 0x10

    .line 20
    .line 21
    if-eq v2, v3, :cond_1

    .line 22
    .line 23
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 24
    .line 25
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-ne v2, v4, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 33
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v1, "syntax error, expect {, actual "

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 45
    .line 46
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/d;->h()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1

    .line 61
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 62
    .line 63
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/c;->c:Lcom/alibaba/fastjson/parser/l;

    .line 64
    .line 65
    invoke-interface {v2, v3}, Lcom/alibaba/fastjson/parser/d;->c0(Lcom/alibaba/fastjson/parser/l;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    const/16 v3, 0xd

    .line 70
    .line 71
    if-nez v2, :cond_3

    .line 72
    .line 73
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 74
    .line 75
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-ne v5, v3, :cond_2

    .line 80
    .line 81
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 82
    .line 83
    invoke-interface {p1, v4}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_2
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 88
    .line 89
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    if-ne v5, v4, :cond_3

    .line 94
    .line 95
    sget-object v5, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    .line 96
    .line 97
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/c;->P(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    if-eqz v5, :cond_3

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_3
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    check-cast v5, Lcom/alibaba/fastjson/parser/deserializer/r;

    .line 109
    .line 110
    if-nez v5, :cond_5

    .line 111
    .line 112
    if-eqz v2, :cond_5

    .line 113
    .line 114
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    .line 124
    .line 125
    move-result v7

    .line 126
    if-eqz v7, :cond_5

    .line 127
    .line 128
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    check-cast v7, Ljava/util/Map$Entry;

    .line 133
    .line 134
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v8

    .line 138
    check-cast v8, Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 141
    .line 142
    .line 143
    move-result v8

    .line 144
    if-eqz v8, :cond_4

    .line 145
    .line 146
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    check-cast v5, Lcom/alibaba/fastjson/parser/deserializer/r;

    .line 151
    .line 152
    :cond_5
    if-nez v5, :cond_7

    .line 153
    .line 154
    sget-object v5, Lcom/alibaba/fastjson/parser/Feature;->IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    .line 155
    .line 156
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/c;->P(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    if-eqz v5, :cond_6

    .line 161
    .line 162
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 163
    .line 164
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/d;->M()V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/c;->Q()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 171
    .line 172
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    if-ne v2, v3, :cond_1

    .line 177
    .line 178
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 179
    .line 180
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/d;->j()V

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :cond_6
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 185
    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    const-string v3, "setter not found, class "

    .line 192
    .line 193
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const-string v0, ", property "

    .line 204
    .line 205
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    throw p1

    .line 219
    :cond_7
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/deserializer/r;->c()Ljava/lang/Class;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/deserializer/r;->e()Ljava/lang/reflect/Type;

    .line 224
    .line 225
    .line 226
    move-result-object v6

    .line 227
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 228
    .line 229
    const/4 v8, 0x2

    .line 230
    const/4 v9, 0x0

    .line 231
    if-ne v2, v7, :cond_8

    .line 232
    .line 233
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 234
    .line 235
    invoke-interface {v2, v8}, Lcom/alibaba/fastjson/parser/d;->L(I)V

    .line 236
    .line 237
    .line 238
    sget-object v2, Lcom/alibaba/fastjson/serializer/q0;->a:Lcom/alibaba/fastjson/serializer/q0;

    .line 239
    .line 240
    invoke-virtual {v2, p0, v6, v9}, Lcom/alibaba/fastjson/serializer/q0;->c(Lcom/alibaba/fastjson/parser/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    goto :goto_1

    .line 245
    :cond_8
    const-class v7, Ljava/lang/String;

    .line 246
    .line 247
    if-ne v2, v7, :cond_9

    .line 248
    .line 249
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 250
    .line 251
    const/4 v6, 0x4

    .line 252
    invoke-interface {v2, v6}, Lcom/alibaba/fastjson/parser/d;->L(I)V

    .line 253
    .line 254
    .line 255
    invoke-static {p0}, Lcom/alibaba/fastjson/serializer/z1;->e(Lcom/alibaba/fastjson/parser/c;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    goto :goto_1

    .line 260
    :cond_9
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 261
    .line 262
    if-ne v2, v7, :cond_a

    .line 263
    .line 264
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 265
    .line 266
    invoke-interface {v2, v8}, Lcom/alibaba/fastjson/parser/d;->L(I)V

    .line 267
    .line 268
    .line 269
    sget-object v2, Lcom/alibaba/fastjson/serializer/d1;->a:Lcom/alibaba/fastjson/serializer/d1;

    .line 270
    .line 271
    invoke-virtual {v2, p0, v6, v9}, Lcom/alibaba/fastjson/serializer/d1;->c(Lcom/alibaba/fastjson/parser/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    goto :goto_1

    .line 276
    :cond_a
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/c;->d:Lcom/alibaba/fastjson/parser/k;

    .line 277
    .line 278
    invoke-virtual {v7, v2, v6}, Lcom/alibaba/fastjson/parser/k;->f(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/x0;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 283
    .line 284
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/deserializer/x0;->b()I

    .line 285
    .line 286
    .line 287
    move-result v8

    .line 288
    invoke-interface {v7, v8}, Lcom/alibaba/fastjson/parser/d;->L(I)V

    .line 289
    .line 290
    .line 291
    invoke-interface {v2, p0, v6, v9}, Lcom/alibaba/fastjson/parser/deserializer/x0;->c(Lcom/alibaba/fastjson/parser/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    :goto_1
    invoke-virtual {v5, p1, v2}, Lcom/alibaba/fastjson/parser/deserializer/r;->j(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 296
    .line 297
    .line 298
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 299
    .line 300
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 301
    .line 302
    .line 303
    move-result v2

    .line 304
    if-ne v2, v4, :cond_b

    .line 305
    .line 306
    goto/16 :goto_0

    .line 307
    .line 308
    :cond_b
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 309
    .line 310
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 311
    .line 312
    .line 313
    move-result v2

    .line 314
    if-ne v2, v3, :cond_1

    .line 315
    .line 316
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 317
    .line 318
    invoke-interface {p1, v4}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 319
    .line 320
    .line 321
    return-void
.end method

.method public r0()V
    .locals 4

    .line 1
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/c;->P(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/c;->h:Lcom/alibaba/fastjson/parser/j;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/j;->b()Lcom/alibaba/fastjson/parser/j;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/c;->h:Lcom/alibaba/fastjson/parser/j;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/c;->i:[Lcom/alibaba/fastjson/parser/j;

    .line 19
    .line 20
    iget v1, p0, Lcom/alibaba/fastjson/parser/c;->j:I

    .line 21
    .line 22
    add-int/lit8 v2, v1, -0x1

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    aput-object v3, v0, v2

    .line 26
    .line 27
    add-int/lit8 v1, v1, -0x1

    .line 28
    .line 29
    iput v1, p0, Lcom/alibaba/fastjson/parser/c;->j:I

    .line 30
    .line 31
    return-void
.end method

.method public s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/parser/deserializer/q;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/c;->m:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public s0(Lcom/alibaba/fastjson/parser/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/c;->d:Lcom/alibaba/fastjson/parser/k;

    .line 2
    .line 3
    return-void
.end method

.method public t0(Lcom/alibaba/fastjson/parser/j;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/j;
    .locals 1

    .line 1
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/c;->P(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/parser/j;

    .line 12
    .line 13
    invoke-direct {v0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/j;-><init>(Lcom/alibaba/fastjson/parser/j;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/c;->h:Lcom/alibaba/fastjson/parser/j;

    .line 17
    .line 18
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/parser/c;->d(Lcom/alibaba/fastjson/parser/j;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/c;->h:Lcom/alibaba/fastjson/parser/j;

    .line 22
    .line 23
    return-object p1
.end method

.method public u0(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/j;
    .locals 1

    .line 1
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/c;->P(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/c;->h:Lcom/alibaba/fastjson/parser/j;

    .line 12
    .line 13
    invoke-virtual {p0, v0, p1, p2}, Lcom/alibaba/fastjson/parser/c;->t0(Lcom/alibaba/fastjson/parser/j;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/j;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public v()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/c;->b:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, [C

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    new-instance v1, Ljava/lang/String;

    .line 8
    .line 9
    check-cast v0, [C

    .line 10
    .line 11
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    .line 12
    .line 13
    .line 14
    return-object v1

    .line 15
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public v0(Lcom/alibaba/fastjson/parser/j;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/c;->P(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/c;->h:Lcom/alibaba/fastjson/parser/j;

    .line 11
    .line 12
    return-void
.end method

.method public w0(Ljava/text/DateFormat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/c;->f:Ljava/text/DateFormat;

    .line 2
    .line 3
    return-void
.end method

.method public x0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/c;->e:Ljava/lang/String;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/c;->f:Ljava/text/DateFormat;

    .line 5
    .line 6
    return-void
.end method

.method public y()Lcom/alibaba/fastjson/parser/c$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/c;->k:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/alibaba/fastjson/parser/c$a;

    .line 14
    .line 15
    return-object v0
.end method

.method public y0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/alibaba/fastjson/parser/c;->l:I

    .line 2
    .line 3
    return-void
.end method

.method public z()Lcom/alibaba/fastjson/parser/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/c;->g:Lcom/alibaba/fastjson/parser/d;

    .line 2
    .line 3
    return-object v0
.end method
