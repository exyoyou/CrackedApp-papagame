.class final Lcom/android/dx/merge/SortableType;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NULLS_LAST_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/dx/merge/SortableType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final classDef:Lcom/android/dex/ClassDef;

.field private depth:I

.field private final dex:Lcom/android/dex/Dex;

.field private final indexMap:Lcom/android/dx/merge/IndexMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/dx/merge/SortableType$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/dx/merge/SortableType$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/dx/merge/SortableType;->NULLS_LAST_ORDER:Ljava/util/Comparator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/android/dex/Dex;Lcom/android/dx/merge/IndexMap;Lcom/android/dex/ClassDef;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/dx/merge/SortableType;->depth:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/dx/merge/SortableType;->dex:Lcom/android/dex/Dex;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/android/dx/merge/SortableType;->indexMap:Lcom/android/dx/merge/IndexMap;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/android/dx/merge/SortableType;->classDef:Lcom/android/dex/ClassDef;

    .line 12
    .line 13
    return-void
.end method

.method static synthetic access$000(Lcom/android/dx/merge/SortableType;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/dx/merge/SortableType;->depth:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public getClassDef()Lcom/android/dex/ClassDef;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/dx/merge/SortableType;->classDef:Lcom/android/dex/ClassDef;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDex()Lcom/android/dex/Dex;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/dx/merge/SortableType;->dex:Lcom/android/dex/Dex;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIndexMap()Lcom/android/dx/merge/IndexMap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/dx/merge/SortableType;->indexMap:Lcom/android/dx/merge/IndexMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTypeIndex()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/dx/merge/SortableType;->classDef:Lcom/android/dex/ClassDef;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/dex/ClassDef;->getTypeIndex()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isDepthAssigned()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/dx/merge/SortableType;->depth:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
.end method

.method public tryAssignDepth([Lcom/android/dx/merge/SortableType;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/dx/merge/SortableType;->classDef:Lcom/android/dex/ClassDef;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/dex/ClassDef;->getSupertypeIndex()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, -0x1

    .line 10
    if-ne v0, v3, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/dx/merge/SortableType;->classDef:Lcom/android/dex/ClassDef;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/android/dex/ClassDef;->getSupertypeIndex()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object v4, p0, Lcom/android/dx/merge/SortableType;->classDef:Lcom/android/dex/ClassDef;

    .line 21
    .line 22
    invoke-virtual {v4}, Lcom/android/dex/ClassDef;->getTypeIndex()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eq v0, v4, :cond_6

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/dx/merge/SortableType;->classDef:Lcom/android/dex/ClassDef;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/android/dex/ClassDef;->getSupertypeIndex()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    aget-object v0, p1, v0

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget v0, v0, Lcom/android/dx/merge/SortableType;->depth:I

    .line 41
    .line 42
    if-ne v0, v3, :cond_2

    .line 43
    .line 44
    return v1

    .line 45
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/android/dx/merge/SortableType;->classDef:Lcom/android/dex/ClassDef;

    .line 46
    .line 47
    invoke-virtual {v4}, Lcom/android/dex/ClassDef;->getInterfaces()[S

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    array-length v5, v4

    .line 52
    const/4 v6, 0x0

    .line 53
    :goto_1
    if-ge v6, v5, :cond_5

    .line 54
    .line 55
    aget-short v7, v4, v6

    .line 56
    .line 57
    aget-object v7, p1, v7

    .line 58
    .line 59
    if-nez v7, :cond_3

    .line 60
    .line 61
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    goto :goto_2

    .line 66
    :cond_3
    iget v7, v7, Lcom/android/dx/merge/SortableType;->depth:I

    .line 67
    .line 68
    if-ne v7, v3, :cond_4

    .line 69
    .line 70
    return v1

    .line 71
    :cond_4
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_5
    add-int/2addr v0, v2

    .line 79
    iput v0, p0, Lcom/android/dx/merge/SortableType;->depth:I

    .line 80
    .line 81
    return v2

    .line 82
    :cond_6
    new-instance p1, Lcom/android/dex/DexException;

    .line 83
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string v1, "Class with type index "

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget-object v1, p0, Lcom/android/dx/merge/SortableType;->classDef:Lcom/android/dex/ClassDef;

    .line 95
    .line 96
    invoke-virtual {v1}, Lcom/android/dex/ClassDef;->getTypeIndex()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v1, " extends itself"

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-direct {p1, v0}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p1
.end method
