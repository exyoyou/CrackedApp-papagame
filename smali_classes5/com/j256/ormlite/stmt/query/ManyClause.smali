.class public Lcom/j256/ormlite/stmt/query/ManyClause;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/j256/ormlite/stmt/query/Clause;
.implements Lcom/j256/ormlite/stmt/query/NeedsFutureClause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/j256/ormlite/stmt/query/ManyClause$Operation;
    }
.end annotation


# instance fields
.field private final first:Lcom/j256/ormlite/stmt/query/Clause;

.field private final operation:Lcom/j256/ormlite/stmt/query/ManyClause$Operation;

.field private final others:[Lcom/j256/ormlite/stmt/query/Clause;

.field private second:Lcom/j256/ormlite/stmt/query/Clause;

.field private final startOthersAt:I


# direct methods
.method public constructor <init>(Lcom/j256/ormlite/stmt/query/Clause;Lcom/j256/ormlite/stmt/query/Clause;[Lcom/j256/ormlite/stmt/query/Clause;Lcom/j256/ormlite/stmt/query/ManyClause$Operation;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->first:Lcom/j256/ormlite/stmt/query/Clause;

    .line 9
    iput-object p2, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->second:Lcom/j256/ormlite/stmt/query/Clause;

    .line 10
    iput-object p3, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->others:[Lcom/j256/ormlite/stmt/query/Clause;

    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->startOthersAt:I

    .line 12
    iput-object p4, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->operation:Lcom/j256/ormlite/stmt/query/ManyClause$Operation;

    return-void
.end method

.method public constructor <init>(Lcom/j256/ormlite/stmt/query/Clause;Lcom/j256/ormlite/stmt/query/ManyClause$Operation;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->first:Lcom/j256/ormlite/stmt/query/Clause;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->second:Lcom/j256/ormlite/stmt/query/Clause;

    .line 4
    iput-object p1, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->others:[Lcom/j256/ormlite/stmt/query/Clause;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->startOthersAt:I

    .line 6
    iput-object p2, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->operation:Lcom/j256/ormlite/stmt/query/ManyClause$Operation;

    return-void
.end method

.method public constructor <init>([Lcom/j256/ormlite/stmt/query/Clause;Lcom/j256/ormlite/stmt/query/ManyClause$Operation;)V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->first:Lcom/j256/ormlite/stmt/query/Clause;

    .line 15
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->second:Lcom/j256/ormlite/stmt/query/Clause;

    .line 17
    array-length v0, p1

    iput v0, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->startOthersAt:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 18
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->second:Lcom/j256/ormlite/stmt/query/Clause;

    .line 19
    iput v1, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->startOthersAt:I

    .line 20
    :goto_0
    iput-object p1, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->others:[Lcom/j256/ormlite/stmt/query/Clause;

    .line 21
    iput-object p2, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->operation:Lcom/j256/ormlite/stmt/query/ManyClause$Operation;

    return-void
.end method


# virtual methods
.method public appendSql(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/List;Lcom/j256/ormlite/stmt/query/Clause;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Lcom/j256/ormlite/stmt/ArgumentHolder;",
            ">;",
            "Lcom/j256/ormlite/stmt/query/Clause;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    instance-of v0, p5, Lcom/j256/ormlite/stmt/query/ManyClause;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p5, Lcom/j256/ormlite/stmt/query/ManyClause;

    .line 7
    .line 8
    iget-object p5, p5, Lcom/j256/ormlite/stmt/query/ManyClause;->operation:Lcom/j256/ormlite/stmt/query/ManyClause$Operation;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->operation:Lcom/j256/ormlite/stmt/query/ManyClause$Operation;

    .line 11
    .line 12
    if-ne p5, v0, :cond_0

    .line 13
    .line 14
    const/4 p5, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p5, 0x0

    .line 17
    :goto_0
    if-nez p5, :cond_1

    .line 18
    .line 19
    const/16 v0, 0x28

    .line 20
    .line 21
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object v2, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->first:Lcom/j256/ormlite/stmt/query/Clause;

    .line 25
    .line 26
    move-object v3, p1

    .line 27
    move-object v4, p2

    .line 28
    move-object v5, p3

    .line 29
    move-object v6, p4

    .line 30
    move-object v7, p0

    .line 31
    invoke-interface/range {v2 .. v7}, Lcom/j256/ormlite/stmt/query/Clause;->appendSql(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/List;Lcom/j256/ormlite/stmt/query/Clause;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->second:Lcom/j256/ormlite/stmt/query/Clause;

    .line 35
    .line 36
    const/16 v2, 0x20

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-object v0, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->operation:Lcom/j256/ormlite/stmt/query/ManyClause$Operation;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/j256/ormlite/stmt/query/ManyClause$Operation;->sql:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object v3, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->second:Lcom/j256/ormlite/stmt/query/Clause;

    .line 51
    .line 52
    move-object v4, p1

    .line 53
    move-object v5, p2

    .line 54
    move-object v6, p3

    .line 55
    move-object v7, p4

    .line 56
    move-object v8, p0

    .line 57
    invoke-interface/range {v3 .. v8}, Lcom/j256/ormlite/stmt/query/Clause;->appendSql(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/List;Lcom/j256/ormlite/stmt/query/Clause;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    iget-object v0, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->others:[Lcom/j256/ormlite/stmt/query/Clause;

    .line 61
    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    iget v0, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->startOthersAt:I

    .line 65
    .line 66
    :goto_1
    iget-object v3, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->others:[Lcom/j256/ormlite/stmt/query/Clause;

    .line 67
    .line 68
    array-length v3, v3

    .line 69
    if-ge v0, v3, :cond_3

    .line 70
    .line 71
    iget-object v3, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->operation:Lcom/j256/ormlite/stmt/query/ManyClause$Operation;

    .line 72
    .line 73
    iget-object v3, v3, Lcom/j256/ormlite/stmt/query/ManyClause$Operation;->sql:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-object v3, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->others:[Lcom/j256/ormlite/stmt/query/Clause;

    .line 82
    .line 83
    aget-object v4, v3, v0

    .line 84
    .line 85
    move-object v5, p1

    .line 86
    move-object v6, p2

    .line 87
    move-object v7, p3

    .line 88
    move-object v8, p4

    .line 89
    move-object v9, p0

    .line 90
    invoke-interface/range {v4 .. v9}, Lcom/j256/ormlite/stmt/query/Clause;->appendSql(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/List;Lcom/j256/ormlite/stmt/query/Clause;)V

    .line 91
    .line 92
    .line 93
    add-int/lit8 v0, v0, 0x1

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    if-nez p5, :cond_5

    .line 97
    .line 98
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-lez p1, :cond_4

    .line 103
    .line 104
    sub-int/2addr p1, v1

    .line 105
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    if-ne p2, v2, :cond_4

    .line 110
    .line 111
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 112
    .line 113
    .line 114
    :cond_4
    const-string p1, ") "

    .line 115
    .line 116
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    :cond_5
    return-void
.end method

.method public setMissingClause(Lcom/j256/ormlite/stmt/query/Clause;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->second:Lcom/j256/ormlite/stmt/query/Clause;

    .line 2
    .line 3
    return-void
.end method
