.class public Lcn/fly/commons/cc/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/fly/commons/cc/ab$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Lcn/fly/commons/cc/t;

.field private d:I

.field private e:I

.field private f:Lcn/fly/commons/cc/u;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcn/fly/commons/cc/u;IILcn/fly/commons/cc/t;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcn/fly/commons/cc/ab;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lcn/fly/commons/cc/ab;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lcn/fly/commons/cc/ab;->f:Lcn/fly/commons/cc/u;

    .line 9
    .line 10
    iput p4, p0, Lcn/fly/commons/cc/ab;->d:I

    .line 11
    .line 12
    iput p5, p0, Lcn/fly/commons/cc/ab;->e:I

    .line 13
    .line 14
    iput-object p6, p0, Lcn/fly/commons/cc/ab;->c:Lcn/fly/commons/cc/t;

    .line 15
    .line 16
    return-void
.end method

.method public static a(Ljava/lang/String;ILcn/fly/commons/cc/t;)Lcn/fly/commons/cc/ab;
    .locals 8

    .line 6
    new-instance v7, Lcn/fly/commons/cc/ab$1;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcn/fly/commons/cc/ab$1;-><init>(Ljava/lang/String;ILcn/fly/commons/cc/u;IILcn/fly/commons/cc/t;)V

    return-object v7
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)Lcn/fly/commons/cc/ab$a;
    .locals 2

    .line 1
    new-instance v0, Lcn/fly/commons/cc/ab$a;

    invoke-direct {v0}, Lcn/fly/commons/cc/ab$a;-><init>()V

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcn/fly/commons/cc/ab;->b([Ljava/lang/Object;)Ljava/util/LinkedList;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcn/fly/commons/cc/ab$a;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    iput-object p1, v0, Lcn/fly/commons/cc/ab$a;->a:Ljava/lang/Throwable;

    :cond_0
    :goto_0
    return-object v0
.end method

.method public varargs b([Ljava/lang/Object;)Ljava/util/LinkedList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/fly/commons/cc/ab;->c:Lcn/fly/commons/cc/t;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcn/fly/commons/cc/t;->c()Lcn/fly/commons/cc/t;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcn/fly/commons/cc/ab;->b:I

    .line 8
    .line 9
    if-eqz v1, :cond_4

    .line 10
    .line 11
    array-length v2, p1

    .line 12
    if-ne v2, v1, :cond_0

    .line 13
    .line 14
    array-length v1, p1

    .line 15
    add-int/lit8 v1, v1, -0x1

    .line 16
    .line 17
    :goto_0
    if-ltz v1, :cond_4

    .line 18
    .line 19
    aget-object v2, p1, v1

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v1, v1, -0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    array-length v2, p1

    .line 28
    if-ge v2, v1, :cond_2

    .line 29
    .line 30
    array-length v1, p1

    .line 31
    :goto_1
    iget v2, p0, Lcn/fly/commons/cc/ab;->b:I

    .line 32
    .line 33
    if-ge v1, v2, :cond_1

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-virtual {v0, v2}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    array-length v1, p1

    .line 43
    add-int/lit8 v1, v1, -0x1

    .line 44
    .line 45
    :goto_2
    if-ltz v1, :cond_4

    .line 46
    .line 47
    aget-object v2, p1, v1

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    add-int/lit8 v1, v1, -0x1

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    .line 60
    .line 61
    iget v2, p0, Lcn/fly/commons/cc/ab;->b:I

    .line 62
    .line 63
    add-int/lit8 v2, v2, -0x1

    .line 64
    .line 65
    :goto_3
    array-length v3, p1

    .line 66
    if-ge v2, v3, :cond_3

    .line 67
    .line 68
    aget-object v3, p1, v2

    .line 69
    .line 70
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    add-int/lit8 v2, v2, 0x1

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_3
    invoke-virtual {v0, v1}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    iget v1, p0, Lcn/fly/commons/cc/ab;->b:I

    .line 80
    .line 81
    add-int/lit8 v1, v1, -0x2

    .line 82
    .line 83
    :goto_4
    if-ltz v1, :cond_4

    .line 84
    .line 85
    aget-object v2, p1, v1

    .line 86
    .line 87
    invoke-virtual {v0, v2}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    add-int/lit8 v1, v1, -0x1

    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_4
    new-instance p1, Ljava/util/LinkedList;

    .line 94
    .line 95
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Lcn/fly/commons/cc/ab;->f:Lcn/fly/commons/cc/u;

    .line 99
    .line 100
    iget v2, p0, Lcn/fly/commons/cc/ab;->d:I

    .line 101
    .line 102
    iget v3, p0, Lcn/fly/commons/cc/ab;->e:I

    .line 103
    .line 104
    invoke-virtual {v1, v2, v3, v0, p1}, Lcn/fly/commons/cc/u;->a(IILcn/fly/commons/cc/t;Ljava/util/List;)V

    .line 105
    .line 106
    .line 107
    return-object p1
.end method
