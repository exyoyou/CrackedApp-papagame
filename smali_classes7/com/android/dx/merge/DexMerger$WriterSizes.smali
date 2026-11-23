.class Lcom/android/dx/merge/DexMerger$WriterSizes;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/merge/DexMerger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WriterSizes"
.end annotation


# instance fields
.field private annotation:I

.field private annotationsDirectory:I

.field private annotationsSet:I

.field private annotationsSetRefList:I

.field private classData:I

.field private code:I

.field private debugInfo:I

.field private encodedArray:I

.field private header:I

.field private idsDefs:I

.field private mapList:I

.field private stringData:I

.field private typeList:I


# direct methods
.method public constructor <init>(Lcom/android/dx/merge/DexMerger;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x70

    .line 7
    iput v0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->header:I

    .line 8
    invoke-static {p1}, Lcom/android/dx/merge/DexMerger;->access$2000(Lcom/android/dx/merge/DexMerger;)Lcom/android/dex/Dex$Section;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dex/Dex$Section;->used()I

    move-result v0

    iput v0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->header:I

    .line 9
    invoke-static {p1}, Lcom/android/dx/merge/DexMerger;->access$1700(Lcom/android/dx/merge/DexMerger;)Lcom/android/dex/Dex$Section;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dex/Dex$Section;->used()I

    move-result v0

    iput v0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->idsDefs:I

    .line 10
    invoke-static {p1}, Lcom/android/dx/merge/DexMerger;->access$2100(Lcom/android/dx/merge/DexMerger;)Lcom/android/dex/Dex$Section;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dex/Dex$Section;->used()I

    move-result v0

    iput v0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->mapList:I

    .line 11
    invoke-static {p1}, Lcom/android/dx/merge/DexMerger;->access$1800(Lcom/android/dx/merge/DexMerger;)Lcom/android/dex/Dex$Section;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dex/Dex$Section;->used()I

    move-result v0

    iput v0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->typeList:I

    .line 12
    invoke-static {p1}, Lcom/android/dx/merge/DexMerger;->access$2200(Lcom/android/dx/merge/DexMerger;)Lcom/android/dex/Dex$Section;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dex/Dex$Section;->used()I

    move-result v0

    iput v0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->classData:I

    .line 13
    invoke-static {p1}, Lcom/android/dx/merge/DexMerger;->access$2300(Lcom/android/dx/merge/DexMerger;)Lcom/android/dex/Dex$Section;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dex/Dex$Section;->used()I

    move-result v0

    iput v0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->code:I

    .line 14
    invoke-static {p1}, Lcom/android/dx/merge/DexMerger;->access$1600(Lcom/android/dx/merge/DexMerger;)Lcom/android/dex/Dex$Section;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dex/Dex$Section;->used()I

    move-result v0

    iput v0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->stringData:I

    .line 15
    invoke-static {p1}, Lcom/android/dx/merge/DexMerger;->access$2400(Lcom/android/dx/merge/DexMerger;)Lcom/android/dex/Dex$Section;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dex/Dex$Section;->used()I

    move-result v0

    iput v0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->debugInfo:I

    .line 16
    invoke-static {p1}, Lcom/android/dx/merge/DexMerger;->access$2500(Lcom/android/dx/merge/DexMerger;)Lcom/android/dex/Dex$Section;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dex/Dex$Section;->used()I

    move-result v0

    iput v0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->encodedArray:I

    .line 17
    invoke-static {p1}, Lcom/android/dx/merge/DexMerger;->access$2600(Lcom/android/dx/merge/DexMerger;)Lcom/android/dex/Dex$Section;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dex/Dex$Section;->used()I

    move-result v0

    iput v0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->annotationsDirectory:I

    .line 18
    invoke-static {p1}, Lcom/android/dx/merge/DexMerger;->access$2700(Lcom/android/dx/merge/DexMerger;)Lcom/android/dex/Dex$Section;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dex/Dex$Section;->used()I

    move-result v0

    iput v0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->annotationsSet:I

    .line 19
    invoke-static {p1}, Lcom/android/dx/merge/DexMerger;->access$2800(Lcom/android/dx/merge/DexMerger;)Lcom/android/dex/Dex$Section;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dex/Dex$Section;->used()I

    move-result v0

    iput v0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->annotationsSetRefList:I

    .line 20
    invoke-static {p1}, Lcom/android/dx/merge/DexMerger;->access$1900(Lcom/android/dx/merge/DexMerger;)Lcom/android/dex/Dex$Section;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->used()I

    move-result p1

    iput p1, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->annotation:I

    .line 21
    invoke-direct {p0}, Lcom/android/dx/merge/DexMerger$WriterSizes;->fourByteAlign()V

    return-void
.end method

.method public constructor <init>([Lcom/android/dex/Dex;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x70

    .line 2
    iput v0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->header:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 4
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lcom/android/dex/Dex;->getTableOfContents()Lcom/android/dex/TableOfContents;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/android/dx/merge/DexMerger$WriterSizes;->plus(Lcom/android/dex/TableOfContents;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/android/dx/merge/DexMerger$WriterSizes;->fourByteAlign()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/dx/merge/DexMerger$WriterSizes;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->header:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$100(Lcom/android/dx/merge/DexMerger$WriterSizes;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->idsDefs:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1000(Lcom/android/dx/merge/DexMerger$WriterSizes;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->annotation:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1100(Lcom/android/dx/merge/DexMerger$WriterSizes;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->encodedArray:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1200(Lcom/android/dx/merge/DexMerger$WriterSizes;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->annotationsDirectory:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$200(Lcom/android/dx/merge/DexMerger$WriterSizes;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->mapList:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$300(Lcom/android/dx/merge/DexMerger$WriterSizes;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->typeList:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$400(Lcom/android/dx/merge/DexMerger$WriterSizes;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->annotationsSetRefList:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$500(Lcom/android/dx/merge/DexMerger$WriterSizes;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->annotationsSet:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$600(Lcom/android/dx/merge/DexMerger$WriterSizes;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->classData:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$700(Lcom/android/dx/merge/DexMerger$WriterSizes;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->code:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$800(Lcom/android/dx/merge/DexMerger$WriterSizes;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->stringData:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$900(Lcom/android/dx/merge/DexMerger$WriterSizes;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->debugInfo:I

    .line 2
    .line 3
    return p0
.end method

.method private static fourByteAlign(I)I
    .locals 0

    .line 1
    add-int/lit8 p0, p0, 0x3

    and-int/lit8 p0, p0, -0x4

    return p0
.end method

.method private fourByteAlign()V
    .locals 1

    .line 2
    iget v0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->header:I

    invoke-static {v0}, Lcom/android/dx/merge/DexMerger$WriterSizes;->fourByteAlign(I)I

    move-result v0

    iput v0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->header:I

    .line 3
    iget v0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->idsDefs:I

    invoke-static {v0}, Lcom/android/dx/merge/DexMerger$WriterSizes;->fourByteAlign(I)I

    move-result v0

    iput v0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->idsDefs:I

    .line 4
    iget v0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->mapList:I

    invoke-static {v0}, Lcom/android/dx/merge/DexMerger$WriterSizes;->fourByteAlign(I)I

    move-result v0

    iput v0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->mapList:I

    .line 5
    iget v0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->typeList:I

    invoke-static {v0}, Lcom/android/dx/merge/DexMerger$WriterSizes;->fourByteAlign(I)I

    move-result v0

    iput v0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->typeList:I

    .line 6
    iget v0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->classData:I

    invoke-static {v0}, Lcom/android/dx/merge/DexMerger$WriterSizes;->fourByteAlign(I)I

    move-result v0

    iput v0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->classData:I

    .line 7
    iget v0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->code:I

    invoke-static {v0}, Lcom/android/dx/merge/DexMerger$WriterSizes;->fourByteAlign(I)I

    move-result v0

    iput v0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->code:I

    .line 8
    iget v0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->stringData:I

    invoke-static {v0}, Lcom/android/dx/merge/DexMerger$WriterSizes;->fourByteAlign(I)I

    move-result v0

    iput v0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->stringData:I

    .line 9
    iget v0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->debugInfo:I

    invoke-static {v0}, Lcom/android/dx/merge/DexMerger$WriterSizes;->fourByteAlign(I)I

    move-result v0

    iput v0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->debugInfo:I

    .line 10
    iget v0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->encodedArray:I

    invoke-static {v0}, Lcom/android/dx/merge/DexMerger$WriterSizes;->fourByteAlign(I)I

    move-result v0

    iput v0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->encodedArray:I

    .line 11
    iget v0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->annotationsDirectory:I

    invoke-static {v0}, Lcom/android/dx/merge/DexMerger$WriterSizes;->fourByteAlign(I)I

    move-result v0

    iput v0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->annotationsDirectory:I

    .line 12
    iget v0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->annotationsSet:I

    invoke-static {v0}, Lcom/android/dx/merge/DexMerger$WriterSizes;->fourByteAlign(I)I

    move-result v0

    iput v0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->annotationsSet:I

    .line 13
    iget v0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->annotationsSetRefList:I

    invoke-static {v0}, Lcom/android/dx/merge/DexMerger$WriterSizes;->fourByteAlign(I)I

    move-result v0

    iput v0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->annotationsSetRefList:I

    .line 14
    iget v0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->annotation:I

    invoke-static {v0}, Lcom/android/dx/merge/DexMerger$WriterSizes;->fourByteAlign(I)I

    move-result v0

    iput v0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->annotation:I

    return-void
.end method

.method private plus(Lcom/android/dex/TableOfContents;Z)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->idsDefs:I

    .line 2
    .line 3
    iget-object v1, p1, Lcom/android/dex/TableOfContents;->stringIds:Lcom/android/dex/TableOfContents$Section;

    .line 4
    .line 5
    iget v1, v1, Lcom/android/dex/TableOfContents$Section;->size:I

    .line 6
    .line 7
    mul-int/lit8 v1, v1, 0x4

    .line 8
    .line 9
    iget-object v2, p1, Lcom/android/dex/TableOfContents;->typeIds:Lcom/android/dex/TableOfContents$Section;

    .line 10
    .line 11
    iget v2, v2, Lcom/android/dex/TableOfContents$Section;->size:I

    .line 12
    .line 13
    mul-int/lit8 v2, v2, 0x4

    .line 14
    .line 15
    add-int/2addr v1, v2

    .line 16
    iget-object v2, p1, Lcom/android/dex/TableOfContents;->protoIds:Lcom/android/dex/TableOfContents$Section;

    .line 17
    .line 18
    iget v2, v2, Lcom/android/dex/TableOfContents$Section;->size:I

    .line 19
    .line 20
    mul-int/lit8 v2, v2, 0xc

    .line 21
    .line 22
    add-int/2addr v1, v2

    .line 23
    iget-object v2, p1, Lcom/android/dex/TableOfContents;->fieldIds:Lcom/android/dex/TableOfContents$Section;

    .line 24
    .line 25
    iget v2, v2, Lcom/android/dex/TableOfContents$Section;->size:I

    .line 26
    .line 27
    mul-int/lit8 v2, v2, 0x8

    .line 28
    .line 29
    add-int/2addr v1, v2

    .line 30
    iget-object v2, p1, Lcom/android/dex/TableOfContents;->methodIds:Lcom/android/dex/TableOfContents$Section;

    .line 31
    .line 32
    iget v2, v2, Lcom/android/dex/TableOfContents$Section;->size:I

    .line 33
    .line 34
    mul-int/lit8 v2, v2, 0x8

    .line 35
    .line 36
    add-int/2addr v1, v2

    .line 37
    iget-object v2, p1, Lcom/android/dex/TableOfContents;->classDefs:Lcom/android/dex/TableOfContents$Section;

    .line 38
    .line 39
    iget v2, v2, Lcom/android/dex/TableOfContents$Section;->size:I

    .line 40
    .line 41
    mul-int/lit8 v2, v2, 0x20

    .line 42
    .line 43
    add-int/2addr v1, v2

    .line 44
    add-int/2addr v0, v1

    .line 45
    iput v0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->idsDefs:I

    .line 46
    .line 47
    iget-object v0, p1, Lcom/android/dex/TableOfContents;->sections:[Lcom/android/dex/TableOfContents$Section;

    .line 48
    .line 49
    array-length v0, v0

    .line 50
    mul-int/lit8 v0, v0, 0xc

    .line 51
    .line 52
    add-int/lit8 v0, v0, 0x4

    .line 53
    .line 54
    iput v0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->mapList:I

    .line 55
    .line 56
    iget v0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->typeList:I

    .line 57
    .line 58
    iget-object v1, p1, Lcom/android/dex/TableOfContents;->typeLists:Lcom/android/dex/TableOfContents$Section;

    .line 59
    .line 60
    iget v1, v1, Lcom/android/dex/TableOfContents$Section;->byteCount:I

    .line 61
    .line 62
    invoke-static {v1}, Lcom/android/dx/merge/DexMerger$WriterSizes;->fourByteAlign(I)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    add-int/2addr v0, v1

    .line 67
    iput v0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->typeList:I

    .line 68
    .line 69
    iget v0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->stringData:I

    .line 70
    .line 71
    iget-object v1, p1, Lcom/android/dex/TableOfContents;->stringDatas:Lcom/android/dex/TableOfContents$Section;

    .line 72
    .line 73
    iget v1, v1, Lcom/android/dex/TableOfContents$Section;->byteCount:I

    .line 74
    .line 75
    add-int/2addr v0, v1

    .line 76
    iput v0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->stringData:I

    .line 77
    .line 78
    iget v0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->annotationsDirectory:I

    .line 79
    .line 80
    iget-object v1, p1, Lcom/android/dex/TableOfContents;->annotationsDirectories:Lcom/android/dex/TableOfContents$Section;

    .line 81
    .line 82
    iget v1, v1, Lcom/android/dex/TableOfContents$Section;->byteCount:I

    .line 83
    .line 84
    add-int/2addr v0, v1

    .line 85
    iput v0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->annotationsDirectory:I

    .line 86
    .line 87
    iget v0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->annotationsSet:I

    .line 88
    .line 89
    iget-object v1, p1, Lcom/android/dex/TableOfContents;->annotationSets:Lcom/android/dex/TableOfContents$Section;

    .line 90
    .line 91
    iget v1, v1, Lcom/android/dex/TableOfContents$Section;->byteCount:I

    .line 92
    .line 93
    add-int/2addr v0, v1

    .line 94
    iput v0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->annotationsSet:I

    .line 95
    .line 96
    iget v0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->annotationsSetRefList:I

    .line 97
    .line 98
    iget-object v1, p1, Lcom/android/dex/TableOfContents;->annotationSetRefLists:Lcom/android/dex/TableOfContents$Section;

    .line 99
    .line 100
    iget v1, v1, Lcom/android/dex/TableOfContents$Section;->byteCount:I

    .line 101
    .line 102
    add-int/2addr v0, v1

    .line 103
    iput v0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->annotationsSetRefList:I

    .line 104
    .line 105
    if-eqz p2, :cond_0

    .line 106
    .line 107
    iget p2, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->code:I

    .line 108
    .line 109
    iget-object v0, p1, Lcom/android/dex/TableOfContents;->codes:Lcom/android/dex/TableOfContents$Section;

    .line 110
    .line 111
    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->byteCount:I

    .line 112
    .line 113
    add-int/2addr p2, v0

    .line 114
    iput p2, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->code:I

    .line 115
    .line 116
    iget p2, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->classData:I

    .line 117
    .line 118
    iget-object v0, p1, Lcom/android/dex/TableOfContents;->classDatas:Lcom/android/dex/TableOfContents$Section;

    .line 119
    .line 120
    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->byteCount:I

    .line 121
    .line 122
    add-int/2addr p2, v0

    .line 123
    iput p2, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->classData:I

    .line 124
    .line 125
    iget p2, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->encodedArray:I

    .line 126
    .line 127
    iget-object v0, p1, Lcom/android/dex/TableOfContents;->encodedArrays:Lcom/android/dex/TableOfContents$Section;

    .line 128
    .line 129
    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->byteCount:I

    .line 130
    .line 131
    add-int/2addr p2, v0

    .line 132
    iput p2, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->encodedArray:I

    .line 133
    .line 134
    iget p2, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->annotation:I

    .line 135
    .line 136
    iget-object v0, p1, Lcom/android/dex/TableOfContents;->annotations:Lcom/android/dex/TableOfContents$Section;

    .line 137
    .line 138
    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->byteCount:I

    .line 139
    .line 140
    add-int/2addr p2, v0

    .line 141
    iput p2, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->annotation:I

    .line 142
    .line 143
    iget p2, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->debugInfo:I

    .line 144
    .line 145
    iget-object p1, p1, Lcom/android/dex/TableOfContents;->debugInfos:Lcom/android/dex/TableOfContents$Section;

    .line 146
    .line 147
    iget p1, p1, Lcom/android/dex/TableOfContents$Section;->byteCount:I

    .line 148
    .line 149
    add-int/2addr p2, p1

    .line 150
    iput p2, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->debugInfo:I

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_0
    iget p2, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->code:I

    .line 154
    .line 155
    iget-object v0, p1, Lcom/android/dex/TableOfContents;->codes:Lcom/android/dex/TableOfContents$Section;

    .line 156
    .line 157
    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->byteCount:I

    .line 158
    .line 159
    int-to-double v0, v0

    .line 160
    const-wide/high16 v2, 0x3ff4000000000000L    # 1.25

    .line 161
    .line 162
    mul-double v0, v0, v2

    .line 163
    .line 164
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 165
    .line 166
    .line 167
    move-result-wide v0

    .line 168
    double-to-int v0, v0

    .line 169
    add-int/2addr p2, v0

    .line 170
    iput p2, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->code:I

    .line 171
    .line 172
    iget p2, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->classData:I

    .line 173
    .line 174
    iget-object v0, p1, Lcom/android/dex/TableOfContents;->classDatas:Lcom/android/dex/TableOfContents$Section;

    .line 175
    .line 176
    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->byteCount:I

    .line 177
    .line 178
    int-to-double v0, v0

    .line 179
    const-wide v2, 0x3ffab851eb851eb8L    # 1.67

    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    mul-double v0, v0, v2

    .line 185
    .line 186
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 187
    .line 188
    .line 189
    move-result-wide v0

    .line 190
    double-to-int v0, v0

    .line 191
    add-int/2addr p2, v0

    .line 192
    iput p2, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->classData:I

    .line 193
    .line 194
    iget p2, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->encodedArray:I

    .line 195
    .line 196
    iget-object v0, p1, Lcom/android/dex/TableOfContents;->encodedArrays:Lcom/android/dex/TableOfContents$Section;

    .line 197
    .line 198
    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->byteCount:I

    .line 199
    .line 200
    mul-int/lit8 v0, v0, 0x2

    .line 201
    .line 202
    add-int/2addr p2, v0

    .line 203
    iput p2, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->encodedArray:I

    .line 204
    .line 205
    iget p2, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->annotation:I

    .line 206
    .line 207
    iget-object v0, p1, Lcom/android/dex/TableOfContents;->annotations:Lcom/android/dex/TableOfContents$Section;

    .line 208
    .line 209
    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->byteCount:I

    .line 210
    .line 211
    mul-int/lit8 v0, v0, 0x2

    .line 212
    .line 213
    int-to-double v0, v0

    .line 214
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 215
    .line 216
    .line 217
    move-result-wide v0

    .line 218
    double-to-int v0, v0

    .line 219
    add-int/2addr p2, v0

    .line 220
    iput p2, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->annotation:I

    .line 221
    .line 222
    iget p2, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->debugInfo:I

    .line 223
    .line 224
    iget-object p1, p1, Lcom/android/dex/TableOfContents;->debugInfos:Lcom/android/dex/TableOfContents$Section;

    .line 225
    .line 226
    iget p1, p1, Lcom/android/dex/TableOfContents$Section;->byteCount:I

    .line 227
    .line 228
    mul-int/lit8 p1, p1, 0x2

    .line 229
    .line 230
    add-int/lit8 p1, p1, 0x8

    .line 231
    .line 232
    add-int/2addr p2, p1

    .line 233
    iput p2, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->debugInfo:I

    .line 234
    .line 235
    :goto_0
    return-void
.end method


# virtual methods
.method public size()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->header:I

    .line 2
    .line 3
    iget v1, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->idsDefs:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    iget v1, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->mapList:I

    .line 7
    .line 8
    add-int/2addr v0, v1

    .line 9
    iget v1, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->typeList:I

    .line 10
    .line 11
    add-int/2addr v0, v1

    .line 12
    iget v1, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->classData:I

    .line 13
    .line 14
    add-int/2addr v0, v1

    .line 15
    iget v1, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->code:I

    .line 16
    .line 17
    add-int/2addr v0, v1

    .line 18
    iget v1, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->stringData:I

    .line 19
    .line 20
    add-int/2addr v0, v1

    .line 21
    iget v1, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->debugInfo:I

    .line 22
    .line 23
    add-int/2addr v0, v1

    .line 24
    iget v1, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->encodedArray:I

    .line 25
    .line 26
    add-int/2addr v0, v1

    .line 27
    iget v1, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->annotationsDirectory:I

    .line 28
    .line 29
    add-int/2addr v0, v1

    .line 30
    iget v1, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->annotationsSet:I

    .line 31
    .line 32
    add-int/2addr v0, v1

    .line 33
    iget v1, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->annotationsSetRefList:I

    .line 34
    .line 35
    add-int/2addr v0, v1

    .line 36
    iget v1, p0, Lcom/android/dx/merge/DexMerger$WriterSizes;->annotation:I

    .line 37
    .line 38
    add-int/2addr v0, v1

    .line 39
    return v0
.end method
