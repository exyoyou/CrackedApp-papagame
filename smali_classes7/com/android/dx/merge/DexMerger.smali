.class public final Lcom/android/dx/merge/DexMerger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/merge/DexMerger$WriterSizes;,
        Lcom/android/dx/merge/DexMerger$IdMerger;
    }
.end annotation


# static fields
.field private static final DBG_ADVANCE_LINE:B = 0x2t

.field private static final DBG_ADVANCE_PC:B = 0x1t

.field private static final DBG_END_LOCAL:B = 0x5t

.field private static final DBG_END_SEQUENCE:B = 0x0t

.field private static final DBG_RESTART_LOCAL:B = 0x6t

.field private static final DBG_SET_EPILOGUE_BEGIN:B = 0x8t

.field private static final DBG_SET_FILE:B = 0x9t

.field private static final DBG_SET_PROLOGUE_END:B = 0x7t

.field private static final DBG_START_LOCAL:B = 0x3t

.field private static final DBG_START_LOCAL_EXTENDED:B = 0x4t


# instance fields
.field private final annotationOut:Lcom/android/dex/Dex$Section;

.field private final annotationSetOut:Lcom/android/dex/Dex$Section;

.field private final annotationSetRefListOut:Lcom/android/dex/Dex$Section;

.field private final annotationsDirectoryOut:Lcom/android/dex/Dex$Section;

.field private final classDataOut:Lcom/android/dex/Dex$Section;

.field private final codeOut:Lcom/android/dex/Dex$Section;

.field private final collisionPolicy:Lcom/android/dx/merge/CollisionPolicy;

.field private compactWasteThreshold:I

.field private final contentsOut:Lcom/android/dex/TableOfContents;

.field private final context:Lcom/android/dx/command/dexer/DxContext;

.field private final debugInfoOut:Lcom/android/dex/Dex$Section;

.field private final dexOut:Lcom/android/dex/Dex;

.field private final dexes:[Lcom/android/dex/Dex;

.field private final encodedArrayOut:Lcom/android/dex/Dex$Section;

.field private final headerOut:Lcom/android/dex/Dex$Section;

.field private final idsDefsOut:Lcom/android/dex/Dex$Section;

.field private final indexMaps:[Lcom/android/dx/merge/IndexMap;

.field private final instructionTransformer:Lcom/android/dx/merge/InstructionTransformer;

.field private final mapListOut:Lcom/android/dex/Dex$Section;

.field private final stringDataOut:Lcom/android/dex/Dex$Section;

.field private final typeListOut:Lcom/android/dex/Dex$Section;

.field private final writerSizes:Lcom/android/dx/merge/DexMerger$WriterSizes;


# direct methods
.method public constructor <init>([Lcom/android/dex/Dex;Lcom/android/dx/merge/CollisionPolicy;Lcom/android/dx/command/dexer/DxContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/dx/merge/DexMerger$WriterSizes;

    invoke-direct {v0, p1}, Lcom/android/dx/merge/DexMerger$WriterSizes;-><init>([Lcom/android/dex/Dex;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/dx/merge/DexMerger;-><init>([Lcom/android/dex/Dex;Lcom/android/dx/merge/CollisionPolicy;Lcom/android/dx/command/dexer/DxContext;Lcom/android/dx/merge/DexMerger$WriterSizes;)V

    return-void
.end method

.method private constructor <init>([Lcom/android/dex/Dex;Lcom/android/dx/merge/CollisionPolicy;Lcom/android/dx/command/dexer/DxContext;Lcom/android/dx/merge/DexMerger$WriterSizes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x100000

    .line 3
    iput v0, p0, Lcom/android/dx/merge/DexMerger;->compactWasteThreshold:I

    .line 4
    iput-object p1, p0, Lcom/android/dx/merge/DexMerger;->dexes:[Lcom/android/dex/Dex;

    .line 5
    iput-object p2, p0, Lcom/android/dx/merge/DexMerger;->collisionPolicy:Lcom/android/dx/merge/CollisionPolicy;

    .line 6
    iput-object p3, p0, Lcom/android/dx/merge/DexMerger;->context:Lcom/android/dx/command/dexer/DxContext;

    .line 7
    iput-object p4, p0, Lcom/android/dx/merge/DexMerger;->writerSizes:Lcom/android/dx/merge/DexMerger$WriterSizes;

    .line 8
    new-instance p2, Lcom/android/dex/Dex;

    invoke-virtual {p4}, Lcom/android/dx/merge/DexMerger$WriterSizes;->size()I

    move-result p3

    invoke-direct {p2, p3}, Lcom/android/dex/Dex;-><init>(I)V

    iput-object p2, p0, Lcom/android/dx/merge/DexMerger;->dexOut:Lcom/android/dex/Dex;

    .line 9
    array-length p2, p1

    new-array p2, p2, [Lcom/android/dx/merge/IndexMap;

    iput-object p2, p0, Lcom/android/dx/merge/DexMerger;->indexMaps:[Lcom/android/dx/merge/IndexMap;

    const/4 p2, 0x0

    .line 10
    :goto_0
    array-length p3, p1

    if-ge p2, p3, :cond_0

    .line 11
    iget-object p3, p0, Lcom/android/dx/merge/DexMerger;->indexMaps:[Lcom/android/dx/merge/IndexMap;

    new-instance v0, Lcom/android/dx/merge/IndexMap;

    iget-object v1, p0, Lcom/android/dx/merge/DexMerger;->dexOut:Lcom/android/dex/Dex;

    aget-object v2, p1, p2

    invoke-virtual {v2}, Lcom/android/dex/Dex;->getTableOfContents()Lcom/android/dex/TableOfContents;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/dx/merge/IndexMap;-><init>(Lcom/android/dex/Dex;Lcom/android/dex/TableOfContents;)V

    aput-object v0, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Lcom/android/dx/merge/InstructionTransformer;

    invoke-direct {p1}, Lcom/android/dx/merge/InstructionTransformer;-><init>()V

    iput-object p1, p0, Lcom/android/dx/merge/DexMerger;->instructionTransformer:Lcom/android/dx/merge/InstructionTransformer;

    .line 13
    iget-object p1, p0, Lcom/android/dx/merge/DexMerger;->dexOut:Lcom/android/dex/Dex;

    invoke-static {p4}, Lcom/android/dx/merge/DexMerger$WriterSizes;->access$000(Lcom/android/dx/merge/DexMerger$WriterSizes;)I

    move-result p2

    const-string p3, "header"

    invoke-virtual {p1, p2, p3}, Lcom/android/dex/Dex;->appendSection(ILjava/lang/String;)Lcom/android/dex/Dex$Section;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dx/merge/DexMerger;->headerOut:Lcom/android/dex/Dex$Section;

    .line 14
    iget-object p1, p0, Lcom/android/dx/merge/DexMerger;->dexOut:Lcom/android/dex/Dex;

    invoke-static {p4}, Lcom/android/dx/merge/DexMerger$WriterSizes;->access$100(Lcom/android/dx/merge/DexMerger$WriterSizes;)I

    move-result p2

    const-string p3, "ids defs"

    invoke-virtual {p1, p2, p3}, Lcom/android/dex/Dex;->appendSection(ILjava/lang/String;)Lcom/android/dex/Dex$Section;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dx/merge/DexMerger;->idsDefsOut:Lcom/android/dex/Dex$Section;

    .line 15
    iget-object p1, p0, Lcom/android/dx/merge/DexMerger;->dexOut:Lcom/android/dex/Dex;

    invoke-virtual {p1}, Lcom/android/dex/Dex;->getTableOfContents()Lcom/android/dex/TableOfContents;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dx/merge/DexMerger;->contentsOut:Lcom/android/dex/TableOfContents;

    .line 16
    iget-object p2, p0, Lcom/android/dx/merge/DexMerger;->dexOut:Lcom/android/dex/Dex;

    invoke-virtual {p2}, Lcom/android/dex/Dex;->getNextSectionStart()I

    move-result p2

    iput p2, p1, Lcom/android/dex/TableOfContents;->dataOff:I

    .line 17
    iget-object p2, p1, Lcom/android/dex/TableOfContents;->mapList:Lcom/android/dex/TableOfContents$Section;

    iget-object p3, p0, Lcom/android/dx/merge/DexMerger;->dexOut:Lcom/android/dex/Dex;

    invoke-virtual {p3}, Lcom/android/dex/Dex;->getNextSectionStart()I

    move-result p3

    iput p3, p2, Lcom/android/dex/TableOfContents$Section;->off:I

    .line 18
    iget-object p2, p1, Lcom/android/dex/TableOfContents;->mapList:Lcom/android/dex/TableOfContents$Section;

    const/4 p3, 0x1

    iput p3, p2, Lcom/android/dex/TableOfContents$Section;->size:I

    .line 19
    iget-object p2, p0, Lcom/android/dx/merge/DexMerger;->dexOut:Lcom/android/dex/Dex;

    invoke-static {p4}, Lcom/android/dx/merge/DexMerger$WriterSizes;->access$200(Lcom/android/dx/merge/DexMerger$WriterSizes;)I

    move-result p3

    const-string v0, "map list"

    invoke-virtual {p2, p3, v0}, Lcom/android/dex/Dex;->appendSection(ILjava/lang/String;)Lcom/android/dex/Dex$Section;

    move-result-object p2

    iput-object p2, p0, Lcom/android/dx/merge/DexMerger;->mapListOut:Lcom/android/dex/Dex$Section;

    .line 20
    iget-object p2, p1, Lcom/android/dex/TableOfContents;->typeLists:Lcom/android/dex/TableOfContents$Section;

    iget-object p3, p0, Lcom/android/dx/merge/DexMerger;->dexOut:Lcom/android/dex/Dex;

    invoke-virtual {p3}, Lcom/android/dex/Dex;->getNextSectionStart()I

    move-result p3

    iput p3, p2, Lcom/android/dex/TableOfContents$Section;->off:I

    .line 21
    iget-object p2, p0, Lcom/android/dx/merge/DexMerger;->dexOut:Lcom/android/dex/Dex;

    invoke-static {p4}, Lcom/android/dx/merge/DexMerger$WriterSizes;->access$300(Lcom/android/dx/merge/DexMerger$WriterSizes;)I

    move-result p3

    const-string v0, "type list"

    invoke-virtual {p2, p3, v0}, Lcom/android/dex/Dex;->appendSection(ILjava/lang/String;)Lcom/android/dex/Dex$Section;

    move-result-object p2

    iput-object p2, p0, Lcom/android/dx/merge/DexMerger;->typeListOut:Lcom/android/dex/Dex$Section;

    .line 22
    iget-object p2, p1, Lcom/android/dex/TableOfContents;->annotationSetRefLists:Lcom/android/dex/TableOfContents$Section;

    iget-object p3, p0, Lcom/android/dx/merge/DexMerger;->dexOut:Lcom/android/dex/Dex;

    invoke-virtual {p3}, Lcom/android/dex/Dex;->getNextSectionStart()I

    move-result p3

    iput p3, p2, Lcom/android/dex/TableOfContents$Section;->off:I

    .line 23
    iget-object p2, p0, Lcom/android/dx/merge/DexMerger;->dexOut:Lcom/android/dex/Dex;

    .line 24
    invoke-static {p4}, Lcom/android/dx/merge/DexMerger$WriterSizes;->access$400(Lcom/android/dx/merge/DexMerger$WriterSizes;)I

    move-result p3

    const-string v0, "annotation set ref list"

    .line 25
    invoke-virtual {p2, p3, v0}, Lcom/android/dex/Dex;->appendSection(ILjava/lang/String;)Lcom/android/dex/Dex$Section;

    move-result-object p2

    iput-object p2, p0, Lcom/android/dx/merge/DexMerger;->annotationSetRefListOut:Lcom/android/dex/Dex$Section;

    .line 26
    iget-object p2, p1, Lcom/android/dex/TableOfContents;->annotationSets:Lcom/android/dex/TableOfContents$Section;

    iget-object p3, p0, Lcom/android/dx/merge/DexMerger;->dexOut:Lcom/android/dex/Dex;

    invoke-virtual {p3}, Lcom/android/dex/Dex;->getNextSectionStart()I

    move-result p3

    iput p3, p2, Lcom/android/dex/TableOfContents$Section;->off:I

    .line 27
    iget-object p2, p0, Lcom/android/dx/merge/DexMerger;->dexOut:Lcom/android/dex/Dex;

    invoke-static {p4}, Lcom/android/dx/merge/DexMerger$WriterSizes;->access$500(Lcom/android/dx/merge/DexMerger$WriterSizes;)I

    move-result p3

    const-string v0, "annotation sets"

    invoke-virtual {p2, p3, v0}, Lcom/android/dex/Dex;->appendSection(ILjava/lang/String;)Lcom/android/dex/Dex$Section;

    move-result-object p2

    iput-object p2, p0, Lcom/android/dx/merge/DexMerger;->annotationSetOut:Lcom/android/dex/Dex$Section;

    .line 28
    iget-object p2, p1, Lcom/android/dex/TableOfContents;->classDatas:Lcom/android/dex/TableOfContents$Section;

    iget-object p3, p0, Lcom/android/dx/merge/DexMerger;->dexOut:Lcom/android/dex/Dex;

    invoke-virtual {p3}, Lcom/android/dex/Dex;->getNextSectionStart()I

    move-result p3

    iput p3, p2, Lcom/android/dex/TableOfContents$Section;->off:I

    .line 29
    iget-object p2, p0, Lcom/android/dx/merge/DexMerger;->dexOut:Lcom/android/dex/Dex;

    invoke-static {p4}, Lcom/android/dx/merge/DexMerger$WriterSizes;->access$600(Lcom/android/dx/merge/DexMerger$WriterSizes;)I

    move-result p3

    const-string v0, "class data"

    invoke-virtual {p2, p3, v0}, Lcom/android/dex/Dex;->appendSection(ILjava/lang/String;)Lcom/android/dex/Dex$Section;

    move-result-object p2

    iput-object p2, p0, Lcom/android/dx/merge/DexMerger;->classDataOut:Lcom/android/dex/Dex$Section;

    .line 30
    iget-object p2, p1, Lcom/android/dex/TableOfContents;->codes:Lcom/android/dex/TableOfContents$Section;

    iget-object p3, p0, Lcom/android/dx/merge/DexMerger;->dexOut:Lcom/android/dex/Dex;

    invoke-virtual {p3}, Lcom/android/dex/Dex;->getNextSectionStart()I

    move-result p3

    iput p3, p2, Lcom/android/dex/TableOfContents$Section;->off:I

    .line 31
    iget-object p2, p0, Lcom/android/dx/merge/DexMerger;->dexOut:Lcom/android/dex/Dex;

    invoke-static {p4}, Lcom/android/dx/merge/DexMerger$WriterSizes;->access$700(Lcom/android/dx/merge/DexMerger$WriterSizes;)I

    move-result p3

    const-string v0, "code"

    invoke-virtual {p2, p3, v0}, Lcom/android/dex/Dex;->appendSection(ILjava/lang/String;)Lcom/android/dex/Dex$Section;

    move-result-object p2

    iput-object p2, p0, Lcom/android/dx/merge/DexMerger;->codeOut:Lcom/android/dex/Dex$Section;

    .line 32
    iget-object p2, p1, Lcom/android/dex/TableOfContents;->stringDatas:Lcom/android/dex/TableOfContents$Section;

    iget-object p3, p0, Lcom/android/dx/merge/DexMerger;->dexOut:Lcom/android/dex/Dex;

    invoke-virtual {p3}, Lcom/android/dex/Dex;->getNextSectionStart()I

    move-result p3

    iput p3, p2, Lcom/android/dex/TableOfContents$Section;->off:I

    .line 33
    iget-object p2, p0, Lcom/android/dx/merge/DexMerger;->dexOut:Lcom/android/dex/Dex;

    invoke-static {p4}, Lcom/android/dx/merge/DexMerger$WriterSizes;->access$800(Lcom/android/dx/merge/DexMerger$WriterSizes;)I

    move-result p3

    const-string v0, "string data"

    invoke-virtual {p2, p3, v0}, Lcom/android/dex/Dex;->appendSection(ILjava/lang/String;)Lcom/android/dex/Dex$Section;

    move-result-object p2

    iput-object p2, p0, Lcom/android/dx/merge/DexMerger;->stringDataOut:Lcom/android/dex/Dex$Section;

    .line 34
    iget-object p2, p1, Lcom/android/dex/TableOfContents;->debugInfos:Lcom/android/dex/TableOfContents$Section;

    iget-object p3, p0, Lcom/android/dx/merge/DexMerger;->dexOut:Lcom/android/dex/Dex;

    invoke-virtual {p3}, Lcom/android/dex/Dex;->getNextSectionStart()I

    move-result p3

    iput p3, p2, Lcom/android/dex/TableOfContents$Section;->off:I

    .line 35
    iget-object p2, p0, Lcom/android/dx/merge/DexMerger;->dexOut:Lcom/android/dex/Dex;

    invoke-static {p4}, Lcom/android/dx/merge/DexMerger$WriterSizes;->access$900(Lcom/android/dx/merge/DexMerger$WriterSizes;)I

    move-result p3

    const-string v0, "debug info"

    invoke-virtual {p2, p3, v0}, Lcom/android/dex/Dex;->appendSection(ILjava/lang/String;)Lcom/android/dex/Dex$Section;

    move-result-object p2

    iput-object p2, p0, Lcom/android/dx/merge/DexMerger;->debugInfoOut:Lcom/android/dex/Dex$Section;

    .line 36
    iget-object p2, p1, Lcom/android/dex/TableOfContents;->annotations:Lcom/android/dex/TableOfContents$Section;

    iget-object p3, p0, Lcom/android/dx/merge/DexMerger;->dexOut:Lcom/android/dex/Dex;

    invoke-virtual {p3}, Lcom/android/dex/Dex;->getNextSectionStart()I

    move-result p3

    iput p3, p2, Lcom/android/dex/TableOfContents$Section;->off:I

    .line 37
    iget-object p2, p0, Lcom/android/dx/merge/DexMerger;->dexOut:Lcom/android/dex/Dex;

    invoke-static {p4}, Lcom/android/dx/merge/DexMerger$WriterSizes;->access$1000(Lcom/android/dx/merge/DexMerger$WriterSizes;)I

    move-result p3

    const-string v0, "annotation"

    invoke-virtual {p2, p3, v0}, Lcom/android/dex/Dex;->appendSection(ILjava/lang/String;)Lcom/android/dex/Dex$Section;

    move-result-object p2

    iput-object p2, p0, Lcom/android/dx/merge/DexMerger;->annotationOut:Lcom/android/dex/Dex$Section;

    .line 38
    iget-object p2, p1, Lcom/android/dex/TableOfContents;->encodedArrays:Lcom/android/dex/TableOfContents$Section;

    iget-object p3, p0, Lcom/android/dx/merge/DexMerger;->dexOut:Lcom/android/dex/Dex;

    invoke-virtual {p3}, Lcom/android/dex/Dex;->getNextSectionStart()I

    move-result p3

    iput p3, p2, Lcom/android/dex/TableOfContents$Section;->off:I

    .line 39
    iget-object p2, p0, Lcom/android/dx/merge/DexMerger;->dexOut:Lcom/android/dex/Dex;

    invoke-static {p4}, Lcom/android/dx/merge/DexMerger$WriterSizes;->access$1100(Lcom/android/dx/merge/DexMerger$WriterSizes;)I

    move-result p3

    const-string v0, "encoded array"

    invoke-virtual {p2, p3, v0}, Lcom/android/dex/Dex;->appendSection(ILjava/lang/String;)Lcom/android/dex/Dex$Section;

    move-result-object p2

    iput-object p2, p0, Lcom/android/dx/merge/DexMerger;->encodedArrayOut:Lcom/android/dex/Dex$Section;

    .line 40
    iget-object p2, p1, Lcom/android/dex/TableOfContents;->annotationsDirectories:Lcom/android/dex/TableOfContents$Section;

    iget-object p3, p0, Lcom/android/dx/merge/DexMerger;->dexOut:Lcom/android/dex/Dex;

    invoke-virtual {p3}, Lcom/android/dex/Dex;->getNextSectionStart()I

    move-result p3

    iput p3, p2, Lcom/android/dex/TableOfContents$Section;->off:I

    .line 41
    iget-object p2, p0, Lcom/android/dx/merge/DexMerger;->dexOut:Lcom/android/dex/Dex;

    .line 42
    invoke-static {p4}, Lcom/android/dx/merge/DexMerger$WriterSizes;->access$1200(Lcom/android/dx/merge/DexMerger$WriterSizes;)I

    move-result p3

    const-string p4, "annotations directory"

    .line 43
    invoke-virtual {p2, p3, p4}, Lcom/android/dex/Dex;->appendSection(ILjava/lang/String;)Lcom/android/dex/Dex$Section;

    move-result-object p2

    iput-object p2, p0, Lcom/android/dx/merge/DexMerger;->annotationsDirectoryOut:Lcom/android/dex/Dex$Section;

    .line 44
    iget-object p2, p0, Lcom/android/dx/merge/DexMerger;->dexOut:Lcom/android/dex/Dex;

    invoke-virtual {p2}, Lcom/android/dex/Dex;->getNextSectionStart()I

    move-result p2

    iget p3, p1, Lcom/android/dex/TableOfContents;->dataOff:I

    sub-int/2addr p2, p3

    iput p2, p1, Lcom/android/dex/TableOfContents;->dataSize:I

    return-void
.end method

.method static synthetic access$1300(Lcom/android/dx/merge/DexMerger;)[Lcom/android/dex/Dex;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/dx/merge/DexMerger;->dexes:[Lcom/android/dex/Dex;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/dx/merge/DexMerger;)[Lcom/android/dx/merge/IndexMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/dx/merge/DexMerger;->indexMaps:[Lcom/android/dx/merge/IndexMap;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/dx/merge/DexMerger;)Lcom/android/dex/TableOfContents;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/dx/merge/DexMerger;->contentsOut:Lcom/android/dex/TableOfContents;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/dx/merge/DexMerger;)Lcom/android/dex/Dex$Section;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/dx/merge/DexMerger;->stringDataOut:Lcom/android/dex/Dex$Section;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/dx/merge/DexMerger;)Lcom/android/dex/Dex$Section;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/dx/merge/DexMerger;->idsDefsOut:Lcom/android/dex/Dex$Section;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/dx/merge/DexMerger;)Lcom/android/dex/Dex$Section;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/dx/merge/DexMerger;->typeListOut:Lcom/android/dex/Dex$Section;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/dx/merge/DexMerger;)Lcom/android/dex/Dex$Section;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/dx/merge/DexMerger;->annotationOut:Lcom/android/dex/Dex$Section;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/dx/merge/DexMerger;)Lcom/android/dex/Dex$Section;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/dx/merge/DexMerger;->headerOut:Lcom/android/dex/Dex$Section;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/dx/merge/DexMerger;)Lcom/android/dex/Dex$Section;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/dx/merge/DexMerger;->mapListOut:Lcom/android/dex/Dex$Section;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/dx/merge/DexMerger;)Lcom/android/dex/Dex$Section;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/dx/merge/DexMerger;->classDataOut:Lcom/android/dex/Dex$Section;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/dx/merge/DexMerger;)Lcom/android/dex/Dex$Section;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/dx/merge/DexMerger;->codeOut:Lcom/android/dex/Dex$Section;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/dx/merge/DexMerger;)Lcom/android/dex/Dex$Section;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/dx/merge/DexMerger;->debugInfoOut:Lcom/android/dex/Dex$Section;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/dx/merge/DexMerger;)Lcom/android/dex/Dex$Section;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/dx/merge/DexMerger;->encodedArrayOut:Lcom/android/dex/Dex$Section;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/dx/merge/DexMerger;)Lcom/android/dex/Dex$Section;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/dx/merge/DexMerger;->annotationsDirectoryOut:Lcom/android/dex/Dex$Section;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2700(Lcom/android/dx/merge/DexMerger;)Lcom/android/dex/Dex$Section;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/dx/merge/DexMerger;->annotationSetOut:Lcom/android/dex/Dex$Section;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2800(Lcom/android/dx/merge/DexMerger;)Lcom/android/dex/Dex$Section;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/dx/merge/DexMerger;->annotationSetRefListOut:Lcom/android/dex/Dex$Section;

    .line 2
    .line 3
    return-object p0
.end method

.method private getSortedTypes()[Lcom/android/dx/merge/SortableType;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/dx/merge/DexMerger;->contentsOut:Lcom/android/dex/TableOfContents;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/dex/TableOfContents;->typeIds:Lcom/android/dex/TableOfContents$Section;

    .line 4
    .line 5
    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->size:I

    .line 6
    .line 7
    new-array v1, v0, [Lcom/android/dx/merge/SortableType;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    :goto_0
    iget-object v4, p0, Lcom/android/dx/merge/DexMerger;->dexes:[Lcom/android/dex/Dex;

    .line 12
    .line 13
    array-length v5, v4

    .line 14
    if-ge v3, v5, :cond_0

    .line 15
    .line 16
    aget-object v4, v4, v3

    .line 17
    .line 18
    iget-object v5, p0, Lcom/android/dx/merge/DexMerger;->indexMaps:[Lcom/android/dx/merge/IndexMap;

    .line 19
    .line 20
    aget-object v5, v5, v3

    .line 21
    .line 22
    invoke-direct {p0, v1, v4, v5}, Lcom/android/dx/merge/DexMerger;->readSortableTypes([Lcom/android/dx/merge/SortableType;Lcom/android/dex/Dex;Lcom/android/dx/merge/IndexMap;)V

    .line 23
    .line 24
    .line 25
    add-int/lit8 v3, v3, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v3, 0x1

    .line 29
    const/4 v4, 0x0

    .line 30
    :goto_1
    if-ge v4, v0, :cond_2

    .line 31
    .line 32
    aget-object v5, v1, v4

    .line 33
    .line 34
    if-eqz v5, :cond_1

    .line 35
    .line 36
    invoke-virtual {v5}, Lcom/android/dx/merge/SortableType;->isDepthAssigned()Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-nez v6, :cond_1

    .line 41
    .line 42
    invoke-virtual {v5, v1}, Lcom/android/dx/merge/SortableType;->tryAssignDepth([Lcom/android/dx/merge/SortableType;)Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    and-int/2addr v3, v5

    .line 47
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    if-eqz v3, :cond_0

    .line 51
    .line 52
    sget-object v0, Lcom/android/dx/merge/SortableType;->NULLS_LAST_ORDER:Ljava/util/Comparator;

    .line 53
    .line 54
    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const/4 v3, 0x0

    .line 62
    invoke-interface {v0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    const/4 v3, -0x1

    .line 67
    if-eq v0, v3, :cond_3

    .line 68
    .line 69
    invoke-static {v1, v2, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    move-object v1, v0

    .line 74
    check-cast v1, [Lcom/android/dx/merge/SortableType;

    .line 75
    .line 76
    :cond_3
    return-object v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x2

    .line 3
    if-ge v0, v1, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/android/dx/merge/DexMerger;->printUsage()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    array-length v0, p0

    .line 10
    const/4 v1, 0x1

    .line 11
    sub-int/2addr v0, v1

    .line 12
    new-array v0, v0, [Lcom/android/dex/Dex;

    .line 13
    .line 14
    :goto_0
    array-length v2, p0

    .line 15
    if-ge v1, v2, :cond_1

    .line 16
    .line 17
    add-int/lit8 v2, v1, -0x1

    .line 18
    .line 19
    new-instance v3, Lcom/android/dex/Dex;

    .line 20
    .line 21
    new-instance v4, Ljava/io/File;

    .line 22
    .line 23
    aget-object v5, p0, v1

    .line 24
    .line 25
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {v3, v4}, Lcom/android/dex/Dex;-><init>(Ljava/io/File;)V

    .line 29
    .line 30
    .line 31
    aput-object v3, v0, v2

    .line 32
    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    new-instance v1, Lcom/android/dx/merge/DexMerger;

    .line 37
    .line 38
    sget-object v2, Lcom/android/dx/merge/CollisionPolicy;->KEEP_FIRST:Lcom/android/dx/merge/CollisionPolicy;

    .line 39
    .line 40
    new-instance v3, Lcom/android/dx/command/dexer/DxContext;

    .line 41
    .line 42
    invoke-direct {v3}, Lcom/android/dx/command/dexer/DxContext;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-direct {v1, v0, v2, v3}, Lcom/android/dx/merge/DexMerger;-><init>([Lcom/android/dex/Dex;Lcom/android/dx/merge/CollisionPolicy;Lcom/android/dx/command/dexer/DxContext;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/android/dx/merge/DexMerger;->merge()Lcom/android/dex/Dex;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    new-instance v1, Ljava/io/File;

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    aget-object p0, p0, v2

    .line 56
    .line 57
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lcom/android/dex/Dex;->writeTo(Ljava/io/File;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method private mergeAnnotations()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/dx/merge/DexMerger$9;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/dx/merge/DexMerger;->annotationOut:Lcom/android/dex/Dex$Section;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lcom/android/dx/merge/DexMerger$9;-><init>(Lcom/android/dx/merge/DexMerger;Lcom/android/dex/Dex$Section;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/dx/merge/DexMerger$IdMerger;->mergeUnsorted()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private mergeApiLevels()I
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/dx/merge/DexMerger;->dexes:[Lcom/android/dex/Dex;

    .line 4
    .line 5
    array-length v3, v2

    .line 6
    if-ge v1, v3, :cond_1

    .line 7
    .line 8
    aget-object v2, v2, v1

    .line 9
    .line 10
    invoke-virtual {v2}, Lcom/android/dex/Dex;->getTableOfContents()Lcom/android/dex/TableOfContents;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    iget v2, v2, Lcom/android/dex/TableOfContents;->apiLevel:I

    .line 15
    .line 16
    if-ge v0, v2, :cond_0

    .line 17
    .line 18
    move v0, v2

    .line 19
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    return v0
.end method

.method private mergeCallSiteIds()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/dx/merge/DexMerger$5;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/dx/merge/DexMerger;->idsDefsOut:Lcom/android/dex/Dex$Section;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lcom/android/dx/merge/DexMerger$5;-><init>(Lcom/android/dx/merge/DexMerger;Lcom/android/dex/Dex$Section;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/dx/merge/DexMerger$IdMerger;->mergeSorted()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private mergeClassDefs()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/android/dx/merge/DexMerger;->getSortedTypes()[Lcom/android/dx/merge/SortableType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/dx/merge/DexMerger;->contentsOut:Lcom/android/dex/TableOfContents;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/dex/TableOfContents;->classDefs:Lcom/android/dex/TableOfContents$Section;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/dx/merge/DexMerger;->idsDefsOut:Lcom/android/dex/Dex$Section;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/android/dex/Dex$Section;->getPosition()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iput v2, v1, Lcom/android/dex/TableOfContents$Section;->off:I

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/dx/merge/DexMerger;->contentsOut:Lcom/android/dex/TableOfContents;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/android/dex/TableOfContents;->classDefs:Lcom/android/dex/TableOfContents$Section;

    .line 20
    .line 21
    array-length v2, v0

    .line 22
    iput v2, v1, Lcom/android/dex/TableOfContents$Section;->size:I

    .line 23
    .line 24
    array-length v1, v0

    .line 25
    const/4 v2, 0x0

    .line 26
    :goto_0
    if-ge v2, v1, :cond_0

    .line 27
    .line 28
    aget-object v3, v0, v2

    .line 29
    .line 30
    invoke-virtual {v3}, Lcom/android/dx/merge/SortableType;->getDex()Lcom/android/dex/Dex;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {v3}, Lcom/android/dx/merge/SortableType;->getClassDef()Lcom/android/dex/ClassDef;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-virtual {v3}, Lcom/android/dx/merge/SortableType;->getIndexMap()Lcom/android/dx/merge/IndexMap;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-direct {p0, v4, v5, v3}, Lcom/android/dx/merge/DexMerger;->transformClassDef(Lcom/android/dex/Dex;Lcom/android/dex/ClassDef;Lcom/android/dx/merge/IndexMap;)V

    .line 43
    .line 44
    .line 45
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    return-void
.end method

.method private mergeDexes()Lcom/android/dex/Dex;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/android/dx/merge/DexMerger;->mergeStringIds()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/android/dx/merge/DexMerger;->mergeTypeIds()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/android/dx/merge/DexMerger;->mergeTypeLists()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/android/dx/merge/DexMerger;->mergeProtoIds()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/android/dx/merge/DexMerger;->mergeFieldIds()V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/android/dx/merge/DexMerger;->mergeMethodIds()V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/android/dx/merge/DexMerger;->mergeMethodHandles()V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/android/dx/merge/DexMerger;->mergeAnnotations()V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/android/dx/merge/DexMerger;->unionAnnotationSetsAndDirectories()V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/android/dx/merge/DexMerger;->mergeCallSiteIds()V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/android/dx/merge/DexMerger;->mergeClassDefs()V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/dx/merge/DexMerger;->contentsOut:Lcom/android/dex/TableOfContents;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/android/dex/TableOfContents;->sections:[Lcom/android/dex/TableOfContents$Section;

    .line 37
    .line 38
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/dx/merge/DexMerger;->contentsOut:Lcom/android/dex/TableOfContents;

    .line 42
    .line 43
    iget-object v1, v0, Lcom/android/dex/TableOfContents;->header:Lcom/android/dex/TableOfContents$Section;

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    iput v2, v1, Lcom/android/dex/TableOfContents$Section;->off:I

    .line 47
    .line 48
    const/4 v2, 0x1

    .line 49
    iput v2, v1, Lcom/android/dex/TableOfContents$Section;->size:I

    .line 50
    .line 51
    iget-object v1, p0, Lcom/android/dx/merge/DexMerger;->dexOut:Lcom/android/dex/Dex;

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/android/dex/Dex;->getLength()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    iput v1, v0, Lcom/android/dex/TableOfContents;->fileSize:I

    .line 58
    .line 59
    iget-object v0, p0, Lcom/android/dx/merge/DexMerger;->contentsOut:Lcom/android/dex/TableOfContents;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/android/dex/TableOfContents;->computeSizesFromOffsets()V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/android/dx/merge/DexMerger;->contentsOut:Lcom/android/dex/TableOfContents;

    .line 65
    .line 66
    iget-object v1, p0, Lcom/android/dx/merge/DexMerger;->headerOut:Lcom/android/dex/Dex$Section;

    .line 67
    .line 68
    invoke-direct {p0}, Lcom/android/dx/merge/DexMerger;->mergeApiLevels()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    invoke-virtual {v0, v1, v2}, Lcom/android/dex/TableOfContents;->writeHeader(Lcom/android/dex/Dex$Section;I)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/android/dx/merge/DexMerger;->contentsOut:Lcom/android/dex/TableOfContents;

    .line 76
    .line 77
    iget-object v1, p0, Lcom/android/dx/merge/DexMerger;->mapListOut:Lcom/android/dex/Dex$Section;

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Lcom/android/dex/TableOfContents;->writeMap(Lcom/android/dex/Dex$Section;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/android/dx/merge/DexMerger;->dexOut:Lcom/android/dex/Dex;

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/android/dex/Dex;->writeHashes()V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/android/dx/merge/DexMerger;->dexOut:Lcom/android/dex/Dex;

    .line 88
    .line 89
    return-object v0
.end method

.method private mergeFieldIds()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/dx/merge/DexMerger$7;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/dx/merge/DexMerger;->idsDefsOut:Lcom/android/dex/Dex$Section;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lcom/android/dx/merge/DexMerger$7;-><init>(Lcom/android/dx/merge/DexMerger;Lcom/android/dex/Dex$Section;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/dx/merge/DexMerger$IdMerger;->mergeSorted()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private mergeMethodHandles()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/dx/merge/DexMerger$6;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/dx/merge/DexMerger;->idsDefsOut:Lcom/android/dex/Dex$Section;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lcom/android/dx/merge/DexMerger$6;-><init>(Lcom/android/dx/merge/DexMerger;Lcom/android/dex/Dex$Section;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/dx/merge/DexMerger$IdMerger;->mergeUnsorted()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private mergeMethodIds()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/dx/merge/DexMerger$8;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/dx/merge/DexMerger;->idsDefsOut:Lcom/android/dex/Dex$Section;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lcom/android/dx/merge/DexMerger$8;-><init>(Lcom/android/dx/merge/DexMerger;Lcom/android/dex/Dex$Section;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/dx/merge/DexMerger$IdMerger;->mergeSorted()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private mergeProtoIds()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/dx/merge/DexMerger$4;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/dx/merge/DexMerger;->idsDefsOut:Lcom/android/dex/Dex$Section;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lcom/android/dx/merge/DexMerger$4;-><init>(Lcom/android/dx/merge/DexMerger;Lcom/android/dex/Dex$Section;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/dx/merge/DexMerger$IdMerger;->mergeSorted()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private mergeStringIds()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/dx/merge/DexMerger$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/dx/merge/DexMerger;->idsDefsOut:Lcom/android/dex/Dex$Section;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lcom/android/dx/merge/DexMerger$1;-><init>(Lcom/android/dx/merge/DexMerger;Lcom/android/dex/Dex$Section;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/dx/merge/DexMerger$IdMerger;->mergeSorted()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private mergeTypeIds()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/dx/merge/DexMerger$2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/dx/merge/DexMerger;->idsDefsOut:Lcom/android/dex/Dex$Section;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lcom/android/dx/merge/DexMerger$2;-><init>(Lcom/android/dx/merge/DexMerger;Lcom/android/dex/Dex$Section;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/dx/merge/DexMerger$IdMerger;->mergeSorted()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private mergeTypeLists()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/dx/merge/DexMerger$3;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/dx/merge/DexMerger;->typeListOut:Lcom/android/dex/Dex$Section;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lcom/android/dx/merge/DexMerger$3;-><init>(Lcom/android/dx/merge/DexMerger;Lcom/android/dex/Dex$Section;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/dx/merge/DexMerger$IdMerger;->mergeUnsorted()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static printUsage()V
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 2
    .line 3
    const-string v1, "Usage: DexMerger <out.dex> <a.dex> <b.dex> ..."

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 11
    .line 12
    .line 13
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 14
    .line 15
    const-string v1, "If a class is defined in several dex, the class found in the first dex will be used."

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private readSortableTypes([Lcom/android/dx/merge/SortableType;Lcom/android/dex/Dex;Lcom/android/dx/merge/IndexMap;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Lcom/android/dex/Dex;->classDefs()Ljava/lang/Iterable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/android/dex/ClassDef;

    .line 20
    .line 21
    new-instance v2, Lcom/android/dx/merge/SortableType;

    .line 22
    .line 23
    invoke-direct {v2, p2, p3, v1}, Lcom/android/dx/merge/SortableType;-><init>(Lcom/android/dex/Dex;Lcom/android/dx/merge/IndexMap;Lcom/android/dex/ClassDef;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p3, v2}, Lcom/android/dx/merge/IndexMap;->adjust(Lcom/android/dx/merge/SortableType;)Lcom/android/dx/merge/SortableType;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Lcom/android/dx/merge/SortableType;->getTypeIndex()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    aget-object v4, p1, v3

    .line 35
    .line 36
    if-nez v4, :cond_0

    .line 37
    .line 38
    aput-object v2, p1, v3

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object v2, p0, Lcom/android/dx/merge/DexMerger;->collisionPolicy:Lcom/android/dx/merge/CollisionPolicy;

    .line 42
    .line 43
    sget-object v3, Lcom/android/dx/merge/CollisionPolicy;->KEEP_FIRST:Lcom/android/dx/merge/CollisionPolicy;

    .line 44
    .line 45
    if-ne v2, v3, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    new-instance p1, Lcom/android/dex/DexException;

    .line 49
    .line 50
    new-instance p3, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v0, "Multiple dex files define "

    .line 56
    .line 57
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2}, Lcom/android/dex/Dex;->typeNames()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-virtual {v1}, Lcom/android/dex/ClassDef;->getTypeIndex()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    check-cast p2, Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-direct {p1, p2}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p1

    .line 85
    :cond_2
    return-void
.end method

.method private transformAnnotationDirectories(Lcom/android/dex/Dex;Lcom/android/dx/merge/IndexMap;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/dex/Dex;->getTableOfContents()Lcom/android/dex/TableOfContents;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/android/dex/TableOfContents;->annotationsDirectories:Lcom/android/dex/TableOfContents$Section;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/dex/TableOfContents$Section;->exists()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget v1, v0, Lcom/android/dex/TableOfContents$Section;->off:I

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Lcom/android/dex/Dex;->open(I)Lcom/android/dex/Dex$Section;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const/4 v1, 0x0

    .line 20
    :goto_0
    iget v2, v0, Lcom/android/dex/TableOfContents$Section;->size:I

    .line 21
    .line 22
    if-ge v1, v2, :cond_0

    .line 23
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/android/dx/merge/DexMerger;->transformAnnotationDirectory(Lcom/android/dex/Dex$Section;Lcom/android/dx/merge/IndexMap;)V

    .line 25
    .line 26
    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method private transformAnnotationDirectory(Lcom/android/dex/Dex$Section;Lcom/android/dx/merge/IndexMap;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/dx/merge/DexMerger;->contentsOut:Lcom/android/dex/TableOfContents;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/dex/TableOfContents;->annotationsDirectories:Lcom/android/dex/TableOfContents$Section;

    .line 4
    .line 5
    iget v1, v0, Lcom/android/dex/TableOfContents$Section;->size:I

    .line 6
    .line 7
    add-int/lit8 v1, v1, 0x1

    .line 8
    .line 9
    iput v1, v0, Lcom/android/dex/TableOfContents$Section;->size:I

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/dx/merge/DexMerger;->annotationsDirectoryOut:Lcom/android/dex/Dex$Section;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/dex/Dex$Section;->assertFourByteAligned()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->getPosition()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object v1, p0, Lcom/android/dx/merge/DexMerger;->annotationsDirectoryOut:Lcom/android/dex/Dex$Section;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/android/dex/Dex$Section;->getPosition()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {p2, v0, v1}, Lcom/android/dx/merge/IndexMap;->putAnnotationDirectoryOffset(II)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {p2, v0}, Lcom/android/dx/merge/IndexMap;->adjustAnnotationSet(I)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iget-object v1, p0, Lcom/android/dx/merge/DexMerger;->annotationsDirectoryOut:Lcom/android/dex/Dex$Section;

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iget-object v1, p0, Lcom/android/dx/merge/DexMerger;->annotationsDirectoryOut:Lcom/android/dex/Dex$Section;

    .line 47
    .line 48
    invoke-virtual {v1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    iget-object v2, p0, Lcom/android/dx/merge/DexMerger;->annotationsDirectoryOut:Lcom/android/dex/Dex$Section;

    .line 56
    .line 57
    invoke-virtual {v2, v1}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    iget-object v3, p0, Lcom/android/dx/merge/DexMerger;->annotationsDirectoryOut:Lcom/android/dex/Dex$Section;

    .line 65
    .line 66
    invoke-virtual {v3, v2}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 67
    .line 68
    .line 69
    const/4 v3, 0x0

    .line 70
    const/4 v4, 0x0

    .line 71
    :goto_0
    if-ge v4, v0, :cond_0

    .line 72
    .line 73
    iget-object v5, p0, Lcom/android/dx/merge/DexMerger;->annotationsDirectoryOut:Lcom/android/dex/Dex$Section;

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    invoke-virtual {p2, v6}, Lcom/android/dx/merge/IndexMap;->adjustField(I)I

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    invoke-virtual {v5, v6}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 84
    .line 85
    .line 86
    iget-object v5, p0, Lcom/android/dx/merge/DexMerger;->annotationsDirectoryOut:Lcom/android/dex/Dex$Section;

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    invoke-virtual {p2, v6}, Lcom/android/dx/merge/IndexMap;->adjustAnnotationSet(I)I

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    invoke-virtual {v5, v6}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 97
    .line 98
    .line 99
    add-int/lit8 v4, v4, 0x1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_0
    const/4 v0, 0x0

    .line 103
    :goto_1
    if-ge v0, v1, :cond_1

    .line 104
    .line 105
    iget-object v4, p0, Lcom/android/dx/merge/DexMerger;->annotationsDirectoryOut:Lcom/android/dex/Dex$Section;

    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    invoke-virtual {p2, v5}, Lcom/android/dx/merge/IndexMap;->adjustMethod(I)I

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    invoke-virtual {v4, v5}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 116
    .line 117
    .line 118
    iget-object v4, p0, Lcom/android/dx/merge/DexMerger;->annotationsDirectoryOut:Lcom/android/dex/Dex$Section;

    .line 119
    .line 120
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    invoke-virtual {p2, v5}, Lcom/android/dx/merge/IndexMap;->adjustAnnotationSet(I)I

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    invoke-virtual {v4, v5}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 129
    .line 130
    .line 131
    add-int/lit8 v0, v0, 0x1

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_1
    :goto_2
    if-ge v3, v2, :cond_2

    .line 135
    .line 136
    iget-object v0, p0, Lcom/android/dx/merge/DexMerger;->annotationsDirectoryOut:Lcom/android/dex/Dex$Section;

    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    invoke-virtual {p2, v1}, Lcom/android/dx/merge/IndexMap;->adjustMethod(I)I

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    invoke-virtual {v0, v1}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Lcom/android/dx/merge/DexMerger;->annotationsDirectoryOut:Lcom/android/dex/Dex$Section;

    .line 150
    .line 151
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    invoke-virtual {p2, v1}, Lcom/android/dx/merge/IndexMap;->adjustAnnotationSetRefList(I)I

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    invoke-virtual {v0, v1}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 160
    .line 161
    .line 162
    add-int/lit8 v3, v3, 0x1

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_2
    return-void
.end method

.method private transformAnnotationSet(Lcom/android/dx/merge/IndexMap;Lcom/android/dex/Dex$Section;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/dx/merge/DexMerger;->contentsOut:Lcom/android/dex/TableOfContents;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/dex/TableOfContents;->annotationSets:Lcom/android/dex/TableOfContents$Section;

    .line 4
    .line 5
    iget v1, v0, Lcom/android/dex/TableOfContents$Section;->size:I

    .line 6
    .line 7
    add-int/lit8 v1, v1, 0x1

    .line 8
    .line 9
    iput v1, v0, Lcom/android/dex/TableOfContents$Section;->size:I

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/dx/merge/DexMerger;->annotationSetOut:Lcom/android/dex/Dex$Section;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/dex/Dex$Section;->assertFourByteAligned()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/android/dex/Dex$Section;->getPosition()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object v1, p0, Lcom/android/dx/merge/DexMerger;->annotationSetOut:Lcom/android/dex/Dex$Section;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/android/dex/Dex$Section;->getPosition()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {p1, v0, v1}, Lcom/android/dx/merge/IndexMap;->putAnnotationSetOffset(II)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/android/dex/Dex$Section;->readInt()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iget-object v1, p0, Lcom/android/dx/merge/DexMerger;->annotationSetOut:Lcom/android/dex/Dex$Section;

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 36
    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    :goto_0
    if-ge v1, v0, :cond_0

    .line 40
    .line 41
    iget-object v2, p0, Lcom/android/dx/merge/DexMerger;->annotationSetOut:Lcom/android/dex/Dex$Section;

    .line 42
    .line 43
    invoke-virtual {p2}, Lcom/android/dex/Dex$Section;->readInt()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-virtual {p1, v3}, Lcom/android/dx/merge/IndexMap;->adjustAnnotation(I)I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    invoke-virtual {v2, v3}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 52
    .line 53
    .line 54
    add-int/lit8 v1, v1, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    return-void
.end method

.method private transformAnnotationSetRefList(Lcom/android/dx/merge/IndexMap;Lcom/android/dex/Dex$Section;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/dx/merge/DexMerger;->contentsOut:Lcom/android/dex/TableOfContents;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/dex/TableOfContents;->annotationSetRefLists:Lcom/android/dex/TableOfContents$Section;

    .line 4
    .line 5
    iget v1, v0, Lcom/android/dex/TableOfContents$Section;->size:I

    .line 6
    .line 7
    add-int/lit8 v1, v1, 0x1

    .line 8
    .line 9
    iput v1, v0, Lcom/android/dex/TableOfContents$Section;->size:I

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/dx/merge/DexMerger;->annotationSetRefListOut:Lcom/android/dex/Dex$Section;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/dex/Dex$Section;->assertFourByteAligned()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/android/dex/Dex$Section;->getPosition()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object v1, p0, Lcom/android/dx/merge/DexMerger;->annotationSetRefListOut:Lcom/android/dex/Dex$Section;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/android/dex/Dex$Section;->getPosition()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {p1, v0, v1}, Lcom/android/dx/merge/IndexMap;->putAnnotationSetRefListOffset(II)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/android/dex/Dex$Section;->readInt()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iget-object v1, p0, Lcom/android/dx/merge/DexMerger;->annotationSetRefListOut:Lcom/android/dex/Dex$Section;

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 36
    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    :goto_0
    if-ge v1, v0, :cond_0

    .line 40
    .line 41
    iget-object v2, p0, Lcom/android/dx/merge/DexMerger;->annotationSetRefListOut:Lcom/android/dex/Dex$Section;

    .line 42
    .line 43
    invoke-virtual {p2}, Lcom/android/dex/Dex$Section;->readInt()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-virtual {p1, v3}, Lcom/android/dx/merge/IndexMap;->adjustAnnotationSet(I)I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    invoke-virtual {v2, v3}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 52
    .line 53
    .line 54
    add-int/lit8 v1, v1, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    return-void
.end method

.method private transformAnnotationSetRefLists(Lcom/android/dex/Dex;Lcom/android/dx/merge/IndexMap;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/dex/Dex;->getTableOfContents()Lcom/android/dex/TableOfContents;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/android/dex/TableOfContents;->annotationSetRefLists:Lcom/android/dex/TableOfContents$Section;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/dex/TableOfContents$Section;->exists()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget v1, v0, Lcom/android/dex/TableOfContents$Section;->off:I

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Lcom/android/dex/Dex;->open(I)Lcom/android/dex/Dex$Section;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const/4 v1, 0x0

    .line 20
    :goto_0
    iget v2, v0, Lcom/android/dex/TableOfContents$Section;->size:I

    .line 21
    .line 22
    if-ge v1, v2, :cond_0

    .line 23
    .line 24
    invoke-direct {p0, p2, p1}, Lcom/android/dx/merge/DexMerger;->transformAnnotationSetRefList(Lcom/android/dx/merge/IndexMap;Lcom/android/dex/Dex$Section;)V

    .line 25
    .line 26
    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method private transformAnnotationSets(Lcom/android/dex/Dex;Lcom/android/dx/merge/IndexMap;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/dex/Dex;->getTableOfContents()Lcom/android/dex/TableOfContents;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/android/dex/TableOfContents;->annotationSets:Lcom/android/dex/TableOfContents$Section;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/dex/TableOfContents$Section;->exists()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget v1, v0, Lcom/android/dex/TableOfContents$Section;->off:I

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Lcom/android/dex/Dex;->open(I)Lcom/android/dex/Dex$Section;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const/4 v1, 0x0

    .line 20
    :goto_0
    iget v2, v0, Lcom/android/dex/TableOfContents$Section;->size:I

    .line 21
    .line 22
    if-ge v1, v2, :cond_0

    .line 23
    .line 24
    invoke-direct {p0, p2, p1}, Lcom/android/dx/merge/DexMerger;->transformAnnotationSet(Lcom/android/dx/merge/IndexMap;Lcom/android/dex/Dex$Section;)V

    .line 25
    .line 26
    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method private transformCatchHandlers(Lcom/android/dx/merge/IndexMap;[Lcom/android/dex/Code$CatchHandler;)[I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/dx/merge/DexMerger;->codeOut:Lcom/android/dex/Dex$Section;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/dex/Dex$Section;->getPosition()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/dx/merge/DexMerger;->codeOut:Lcom/android/dex/Dex$Section;

    .line 8
    .line 9
    array-length v2, p2

    .line 10
    invoke-virtual {v1, v2}, Lcom/android/dex/Dex$Section;->writeUleb128(I)V

    .line 11
    .line 12
    .line 13
    array-length v1, p2

    .line 14
    new-array v1, v1, [I

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    array-length v3, p2

    .line 18
    if-ge v2, v3, :cond_0

    .line 19
    .line 20
    iget-object v3, p0, Lcom/android/dx/merge/DexMerger;->codeOut:Lcom/android/dex/Dex$Section;

    .line 21
    .line 22
    invoke-virtual {v3}, Lcom/android/dex/Dex$Section;->getPosition()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    sub-int/2addr v3, v0

    .line 27
    aput v3, v1, v2

    .line 28
    .line 29
    aget-object v3, p2, v2

    .line 30
    .line 31
    invoke-direct {p0, v3, p1}, Lcom/android/dx/merge/DexMerger;->transformEncodedCatchHandler(Lcom/android/dex/Code$CatchHandler;Lcom/android/dx/merge/IndexMap;)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-object v1
.end method

.method private transformClassData(Lcom/android/dex/Dex;Lcom/android/dex/ClassData;Lcom/android/dx/merge/IndexMap;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/dx/merge/DexMerger;->contentsOut:Lcom/android/dex/TableOfContents;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/dex/TableOfContents;->classDatas:Lcom/android/dex/TableOfContents$Section;

    .line 4
    .line 5
    iget v1, v0, Lcom/android/dex/TableOfContents$Section;->size:I

    .line 6
    .line 7
    add-int/lit8 v1, v1, 0x1

    .line 8
    .line 9
    iput v1, v0, Lcom/android/dex/TableOfContents$Section;->size:I

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/android/dex/ClassData;->getStaticFields()[Lcom/android/dex/ClassData$Field;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p2}, Lcom/android/dex/ClassData;->getInstanceFields()[Lcom/android/dex/ClassData$Field;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p2}, Lcom/android/dex/ClassData;->getDirectMethods()[Lcom/android/dex/ClassData$Method;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p2}, Lcom/android/dex/ClassData;->getVirtualMethods()[Lcom/android/dex/ClassData$Method;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    iget-object v3, p0, Lcom/android/dx/merge/DexMerger;->classDataOut:Lcom/android/dex/Dex$Section;

    .line 28
    .line 29
    array-length v4, v0

    .line 30
    invoke-virtual {v3, v4}, Lcom/android/dex/Dex$Section;->writeUleb128(I)V

    .line 31
    .line 32
    .line 33
    iget-object v3, p0, Lcom/android/dx/merge/DexMerger;->classDataOut:Lcom/android/dex/Dex$Section;

    .line 34
    .line 35
    array-length v4, v1

    .line 36
    invoke-virtual {v3, v4}, Lcom/android/dex/Dex$Section;->writeUleb128(I)V

    .line 37
    .line 38
    .line 39
    iget-object v3, p0, Lcom/android/dx/merge/DexMerger;->classDataOut:Lcom/android/dex/Dex$Section;

    .line 40
    .line 41
    array-length v4, v2

    .line 42
    invoke-virtual {v3, v4}, Lcom/android/dex/Dex$Section;->writeUleb128(I)V

    .line 43
    .line 44
    .line 45
    iget-object v3, p0, Lcom/android/dx/merge/DexMerger;->classDataOut:Lcom/android/dex/Dex$Section;

    .line 46
    .line 47
    array-length v4, p2

    .line 48
    invoke-virtual {v3, v4}, Lcom/android/dex/Dex$Section;->writeUleb128(I)V

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, p3, v0}, Lcom/android/dx/merge/DexMerger;->transformFields(Lcom/android/dx/merge/IndexMap;[Lcom/android/dex/ClassData$Field;)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, p3, v1}, Lcom/android/dx/merge/DexMerger;->transformFields(Lcom/android/dx/merge/IndexMap;[Lcom/android/dex/ClassData$Field;)V

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, p1, p3, v2}, Lcom/android/dx/merge/DexMerger;->transformMethods(Lcom/android/dex/Dex;Lcom/android/dx/merge/IndexMap;[Lcom/android/dex/ClassData$Method;)V

    .line 58
    .line 59
    .line 60
    invoke-direct {p0, p1, p3, p2}, Lcom/android/dx/merge/DexMerger;->transformMethods(Lcom/android/dex/Dex;Lcom/android/dx/merge/IndexMap;[Lcom/android/dex/ClassData$Method;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method private transformClassDef(Lcom/android/dex/Dex;Lcom/android/dex/ClassDef;Lcom/android/dx/merge/IndexMap;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/dx/merge/DexMerger;->idsDefsOut:Lcom/android/dex/Dex$Section;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/dex/Dex$Section;->assertFourByteAligned()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/dx/merge/DexMerger;->idsDefsOut:Lcom/android/dex/Dex$Section;

    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/android/dex/ClassDef;->getTypeIndex()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/dx/merge/DexMerger;->idsDefsOut:Lcom/android/dex/Dex$Section;

    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/android/dex/ClassDef;->getAccessFlags()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/dx/merge/DexMerger;->idsDefsOut:Lcom/android/dex/Dex$Section;

    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/android/dex/ClassDef;->getSupertypeIndex()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {v0, v1}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/dx/merge/DexMerger;->idsDefsOut:Lcom/android/dex/Dex$Section;

    .line 34
    .line 35
    invoke-virtual {p2}, Lcom/android/dex/ClassDef;->getInterfacesOffset()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {v0, v1}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Lcom/android/dex/ClassDef;->getSourceFileIndex()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-virtual {p3, v0}, Lcom/android/dx/merge/IndexMap;->adjustString(I)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iget-object v1, p0, Lcom/android/dx/merge/DexMerger;->idsDefsOut:Lcom/android/dex/Dex$Section;

    .line 51
    .line 52
    invoke-virtual {v1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Lcom/android/dex/ClassDef;->getAnnotationsOffset()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    iget-object v1, p0, Lcom/android/dx/merge/DexMerger;->idsDefsOut:Lcom/android/dex/Dex$Section;

    .line 60
    .line 61
    invoke-virtual {p3, v0}, Lcom/android/dx/merge/IndexMap;->adjustAnnotationDirectory(I)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    invoke-virtual {v1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Lcom/android/dex/ClassDef;->getClassDataOffset()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_0

    .line 73
    .line 74
    iget-object p1, p0, Lcom/android/dx/merge/DexMerger;->idsDefsOut:Lcom/android/dex/Dex$Section;

    .line 75
    .line 76
    const/4 v0, 0x0

    .line 77
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/dx/merge/DexMerger;->idsDefsOut:Lcom/android/dex/Dex$Section;

    .line 82
    .line 83
    iget-object v1, p0, Lcom/android/dx/merge/DexMerger;->classDataOut:Lcom/android/dex/Dex$Section;

    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/android/dex/Dex$Section;->getPosition()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    invoke-virtual {v0, v1}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p2}, Lcom/android/dex/Dex;->readClassData(Lcom/android/dex/ClassDef;)Lcom/android/dex/ClassData;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-direct {p0, p1, v0, p3}, Lcom/android/dx/merge/DexMerger;->transformClassData(Lcom/android/dex/Dex;Lcom/android/dex/ClassData;Lcom/android/dx/merge/IndexMap;)V

    .line 97
    .line 98
    .line 99
    :goto_0
    invoke-virtual {p2}, Lcom/android/dex/ClassDef;->getStaticValuesOffset()I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    iget-object p2, p0, Lcom/android/dx/merge/DexMerger;->idsDefsOut:Lcom/android/dex/Dex$Section;

    .line 104
    .line 105
    invoke-virtual {p3, p1}, Lcom/android/dx/merge/IndexMap;->adjustEncodedArray(I)I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    invoke-virtual {p2, p1}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method private transformCode(Lcom/android/dex/Dex;Lcom/android/dex/Code;Lcom/android/dx/merge/IndexMap;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/dx/merge/DexMerger;->contentsOut:Lcom/android/dex/TableOfContents;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/dex/TableOfContents;->codes:Lcom/android/dex/TableOfContents$Section;

    .line 4
    .line 5
    iget v1, v0, Lcom/android/dex/TableOfContents$Section;->size:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    add-int/2addr v1, v2

    .line 9
    iput v1, v0, Lcom/android/dex/TableOfContents$Section;->size:I

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/dx/merge/DexMerger;->codeOut:Lcom/android/dex/Dex$Section;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/dex/Dex$Section;->assertFourByteAligned()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/dx/merge/DexMerger;->codeOut:Lcom/android/dex/Dex$Section;

    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/android/dex/Code;->getRegistersSize()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/android/dex/Dex$Section;->writeUnsignedShort(I)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/dx/merge/DexMerger;->codeOut:Lcom/android/dex/Dex$Section;

    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/android/dex/Code;->getInsSize()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/android/dex/Dex$Section;->writeUnsignedShort(I)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/dx/merge/DexMerger;->codeOut:Lcom/android/dex/Dex$Section;

    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/android/dex/Code;->getOutsSize()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {v0, v1}, Lcom/android/dex/Dex$Section;->writeUnsignedShort(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Lcom/android/dex/Code;->getTries()[Lcom/android/dex/Code$Try;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p2}, Lcom/android/dex/Code;->getCatchHandlers()[Lcom/android/dex/Code$CatchHandler;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-object v3, p0, Lcom/android/dx/merge/DexMerger;->codeOut:Lcom/android/dex/Dex$Section;

    .line 52
    .line 53
    array-length v4, v0

    .line 54
    invoke-virtual {v3, v4}, Lcom/android/dex/Dex$Section;->writeUnsignedShort(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Lcom/android/dex/Code;->getDebugInfoOffset()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    const/4 v4, 0x0

    .line 62
    if-eqz v3, :cond_0

    .line 63
    .line 64
    iget-object v5, p0, Lcom/android/dx/merge/DexMerger;->codeOut:Lcom/android/dex/Dex$Section;

    .line 65
    .line 66
    iget-object v6, p0, Lcom/android/dx/merge/DexMerger;->debugInfoOut:Lcom/android/dex/Dex$Section;

    .line 67
    .line 68
    invoke-virtual {v6}, Lcom/android/dex/Dex$Section;->getPosition()I

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    invoke-virtual {v5, v6}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v3}, Lcom/android/dex/Dex;->open(I)Lcom/android/dex/Dex$Section;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-direct {p0, p1, p3}, Lcom/android/dx/merge/DexMerger;->transformDebugInfoItem(Lcom/android/dex/Dex$Section;Lcom/android/dx/merge/IndexMap;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/android/dx/merge/DexMerger;->codeOut:Lcom/android/dex/Dex$Section;

    .line 84
    .line 85
    invoke-virtual {p1, v4}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 86
    .line 87
    .line 88
    :goto_0
    invoke-virtual {p2}, Lcom/android/dex/Code;->getInstructions()[S

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    iget-object p2, p0, Lcom/android/dx/merge/DexMerger;->instructionTransformer:Lcom/android/dx/merge/InstructionTransformer;

    .line 93
    .line 94
    invoke-virtual {p2, p3, p1}, Lcom/android/dx/merge/InstructionTransformer;->transform(Lcom/android/dx/merge/IndexMap;[S)[S

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    iget-object p2, p0, Lcom/android/dx/merge/DexMerger;->codeOut:Lcom/android/dex/Dex$Section;

    .line 99
    .line 100
    array-length v3, p1

    .line 101
    invoke-virtual {p2, v3}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 102
    .line 103
    .line 104
    iget-object p2, p0, Lcom/android/dx/merge/DexMerger;->codeOut:Lcom/android/dex/Dex$Section;

    .line 105
    .line 106
    invoke-virtual {p2, p1}, Lcom/android/dex/Dex$Section;->write([S)V

    .line 107
    .line 108
    .line 109
    array-length p2, v0

    .line 110
    if-lez p2, :cond_2

    .line 111
    .line 112
    array-length p1, p1

    .line 113
    rem-int/lit8 p1, p1, 0x2

    .line 114
    .line 115
    if-ne p1, v2, :cond_1

    .line 116
    .line 117
    iget-object p1, p0, Lcom/android/dx/merge/DexMerger;->codeOut:Lcom/android/dex/Dex$Section;

    .line 118
    .line 119
    invoke-virtual {p1, v4}, Lcom/android/dex/Dex$Section;->writeShort(S)V

    .line 120
    .line 121
    .line 122
    :cond_1
    iget-object p1, p0, Lcom/android/dx/merge/DexMerger;->dexOut:Lcom/android/dex/Dex;

    .line 123
    .line 124
    iget-object p2, p0, Lcom/android/dx/merge/DexMerger;->codeOut:Lcom/android/dex/Dex$Section;

    .line 125
    .line 126
    invoke-virtual {p2}, Lcom/android/dex/Dex$Section;->getPosition()I

    .line 127
    .line 128
    .line 129
    move-result p2

    .line 130
    invoke-virtual {p1, p2}, Lcom/android/dex/Dex;->open(I)Lcom/android/dex/Dex$Section;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    iget-object p2, p0, Lcom/android/dx/merge/DexMerger;->codeOut:Lcom/android/dex/Dex$Section;

    .line 135
    .line 136
    array-length v2, v0

    .line 137
    mul-int/lit8 v2, v2, 0x8

    .line 138
    .line 139
    invoke-virtual {p2, v2}, Lcom/android/dex/Dex$Section;->skip(I)V

    .line 140
    .line 141
    .line 142
    invoke-direct {p0, p3, v1}, Lcom/android/dx/merge/DexMerger;->transformCatchHandlers(Lcom/android/dx/merge/IndexMap;[Lcom/android/dex/Code$CatchHandler;)[I

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    invoke-direct {p0, p1, v0, p2}, Lcom/android/dx/merge/DexMerger;->transformTries(Lcom/android/dex/Dex$Section;[Lcom/android/dex/Code$Try;[I)V

    .line 147
    .line 148
    .line 149
    :cond_2
    return-void
.end method

.method private transformDebugInfoItem(Lcom/android/dex/Dex$Section;Lcom/android/dx/merge/IndexMap;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/dx/merge/DexMerger;->contentsOut:Lcom/android/dex/TableOfContents;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/dex/TableOfContents;->debugInfos:Lcom/android/dex/TableOfContents$Section;

    .line 4
    .line 5
    iget v1, v0, Lcom/android/dex/TableOfContents$Section;->size:I

    .line 6
    .line 7
    add-int/lit8 v1, v1, 0x1

    .line 8
    .line 9
    iput v1, v0, Lcom/android/dex/TableOfContents$Section;->size:I

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readUleb128()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/android/dx/merge/DexMerger;->debugInfoOut:Lcom/android/dex/Dex$Section;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Lcom/android/dex/Dex$Section;->writeUleb128(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readUleb128()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-object v1, p0, Lcom/android/dx/merge/DexMerger;->debugInfoOut:Lcom/android/dex/Dex$Section;

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Lcom/android/dex/Dex$Section;->writeUleb128(I)V

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    :goto_0
    if-ge v1, v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readUleb128p1()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    iget-object v3, p0, Lcom/android/dx/merge/DexMerger;->debugInfoOut:Lcom/android/dex/Dex$Section;

    .line 37
    .line 38
    invoke-virtual {p2, v2}, Lcom/android/dx/merge/IndexMap;->adjustString(I)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-virtual {v3, v2}, Lcom/android/dex/Dex$Section;->writeUleb128p1(I)V

    .line 43
    .line 44
    .line 45
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readByte()B

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iget-object v1, p0, Lcom/android/dx/merge/DexMerger;->debugInfoOut:Lcom/android/dex/Dex$Section;

    .line 53
    .line 54
    invoke-virtual {v1, v0}, Lcom/android/dex/Dex$Section;->writeByte(I)V

    .line 55
    .line 56
    .line 57
    const/16 v1, 0x9

    .line 58
    .line 59
    if-eq v0, v1, :cond_1

    .line 60
    .line 61
    packed-switch v0, :pswitch_data_0

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readUleb128()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    iget-object v1, p0, Lcom/android/dx/merge/DexMerger;->debugInfoOut:Lcom/android/dex/Dex$Section;

    .line 70
    .line 71
    invoke-virtual {v1, v0}, Lcom/android/dex/Dex$Section;->writeUleb128(I)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readUleb128()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    iget-object v2, p0, Lcom/android/dx/merge/DexMerger;->debugInfoOut:Lcom/android/dex/Dex$Section;

    .line 80
    .line 81
    invoke-virtual {v2, v1}, Lcom/android/dex/Dex$Section;->writeUleb128(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readUleb128p1()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    iget-object v2, p0, Lcom/android/dx/merge/DexMerger;->debugInfoOut:Lcom/android/dex/Dex$Section;

    .line 89
    .line 90
    invoke-virtual {p2, v1}, Lcom/android/dx/merge/IndexMap;->adjustString(I)I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    invoke-virtual {v2, v1}, Lcom/android/dex/Dex$Section;->writeUleb128p1(I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readUleb128p1()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    iget-object v2, p0, Lcom/android/dx/merge/DexMerger;->debugInfoOut:Lcom/android/dex/Dex$Section;

    .line 102
    .line 103
    invoke-virtual {p2, v1}, Lcom/android/dx/merge/IndexMap;->adjustType(I)I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    invoke-virtual {v2, v1}, Lcom/android/dex/Dex$Section;->writeUleb128p1(I)V

    .line 108
    .line 109
    .line 110
    const/4 v1, 0x4

    .line 111
    if-ne v0, v1, :cond_0

    .line 112
    .line 113
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readUleb128p1()I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    iget-object v1, p0, Lcom/android/dx/merge/DexMerger;->debugInfoOut:Lcom/android/dex/Dex$Section;

    .line 118
    .line 119
    invoke-virtual {p2, v0}, Lcom/android/dx/merge/IndexMap;->adjustString(I)I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    invoke-virtual {v1, v0}, Lcom/android/dex/Dex$Section;->writeUleb128p1(I)V

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :pswitch_2
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readSleb128()I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    iget-object v1, p0, Lcom/android/dx/merge/DexMerger;->debugInfoOut:Lcom/android/dex/Dex$Section;

    .line 132
    .line 133
    invoke-virtual {v1, v0}, Lcom/android/dex/Dex$Section;->writeSleb128(I)V

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :pswitch_3
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readUleb128()I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    iget-object v1, p0, Lcom/android/dx/merge/DexMerger;->debugInfoOut:Lcom/android/dex/Dex$Section;

    .line 142
    .line 143
    invoke-virtual {v1, v0}, Lcom/android/dex/Dex$Section;->writeUleb128(I)V

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :pswitch_4
    return-void

    .line 148
    :cond_1
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readUleb128p1()I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    iget-object v1, p0, Lcom/android/dx/merge/DexMerger;->debugInfoOut:Lcom/android/dex/Dex$Section;

    .line 153
    .line 154
    invoke-virtual {p2, v0}, Lcom/android/dx/merge/IndexMap;->adjustString(I)I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    invoke-virtual {v1, v0}, Lcom/android/dex/Dex$Section;->writeUleb128p1(I)V

    .line 159
    .line 160
    .line 161
    goto :goto_1

    .line 162
    nop

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private transformEncodedCatchHandler(Lcom/android/dex/Code$CatchHandler;Lcom/android/dx/merge/IndexMap;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/android/dex/Code$CatchHandler;->getCatchAllAddress()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Lcom/android/dex/Code$CatchHandler;->getTypeIndexes()[I

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lcom/android/dex/Code$CatchHandler;->getAddresses()[I

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 v2, -0x1

    .line 14
    if-eq v0, v2, :cond_0

    .line 15
    .line 16
    iget-object v3, p0, Lcom/android/dx/merge/DexMerger;->codeOut:Lcom/android/dex/Dex$Section;

    .line 17
    .line 18
    array-length v4, v1

    .line 19
    neg-int v4, v4

    .line 20
    invoke-virtual {v3, v4}, Lcom/android/dex/Dex$Section;->writeSleb128(I)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v3, p0, Lcom/android/dx/merge/DexMerger;->codeOut:Lcom/android/dex/Dex$Section;

    .line 25
    .line 26
    array-length v4, v1

    .line 27
    invoke-virtual {v3, v4}, Lcom/android/dex/Dex$Section;->writeSleb128(I)V

    .line 28
    .line 29
    .line 30
    :goto_0
    const/4 v3, 0x0

    .line 31
    :goto_1
    array-length v4, v1

    .line 32
    if-ge v3, v4, :cond_1

    .line 33
    .line 34
    iget-object v4, p0, Lcom/android/dx/merge/DexMerger;->codeOut:Lcom/android/dex/Dex$Section;

    .line 35
    .line 36
    aget v5, v1, v3

    .line 37
    .line 38
    invoke-virtual {p2, v5}, Lcom/android/dx/merge/IndexMap;->adjustType(I)I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    invoke-virtual {v4, v5}, Lcom/android/dex/Dex$Section;->writeUleb128(I)V

    .line 43
    .line 44
    .line 45
    iget-object v4, p0, Lcom/android/dx/merge/DexMerger;->codeOut:Lcom/android/dex/Dex$Section;

    .line 46
    .line 47
    aget v5, p1, v3

    .line 48
    .line 49
    invoke-virtual {v4, v5}, Lcom/android/dex/Dex$Section;->writeUleb128(I)V

    .line 50
    .line 51
    .line 52
    add-int/lit8 v3, v3, 0x1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    if-eq v0, v2, :cond_2

    .line 56
    .line 57
    iget-object p1, p0, Lcom/android/dx/merge/DexMerger;->codeOut:Lcom/android/dex/Dex$Section;

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeUleb128(I)V

    .line 60
    .line 61
    .line 62
    :cond_2
    return-void
.end method

.method private transformFields(Lcom/android/dx/merge/IndexMap;[Lcom/android/dex/ClassData$Field;)V
    .locals 6

    .line 1
    array-length v0, p2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    if-ge v1, v0, :cond_0

    .line 5
    .line 6
    aget-object v3, p2, v1

    .line 7
    .line 8
    invoke-virtual {v3}, Lcom/android/dex/ClassData$Field;->getFieldIndex()I

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    invoke-virtual {p1, v4}, Lcom/android/dx/merge/IndexMap;->adjustField(I)I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    iget-object v5, p0, Lcom/android/dx/merge/DexMerger;->classDataOut:Lcom/android/dex/Dex$Section;

    .line 17
    .line 18
    sub-int v2, v4, v2

    .line 19
    .line 20
    invoke-virtual {v5, v2}, Lcom/android/dex/Dex$Section;->writeUleb128(I)V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/dx/merge/DexMerger;->classDataOut:Lcom/android/dex/Dex$Section;

    .line 24
    .line 25
    invoke-virtual {v3}, Lcom/android/dex/ClassData$Field;->getAccessFlags()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-virtual {v2, v3}, Lcom/android/dex/Dex$Section;->writeUleb128(I)V

    .line 30
    .line 31
    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    move v2, v4

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    return-void
.end method

.method private transformMethods(Lcom/android/dex/Dex;Lcom/android/dx/merge/IndexMap;[Lcom/android/dex/ClassData$Method;)V
    .locals 7

    .line 1
    array-length v0, p3

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    :goto_0
    if-ge v2, v0, :cond_1

    .line 6
    .line 7
    aget-object v4, p3, v2

    .line 8
    .line 9
    invoke-virtual {v4}, Lcom/android/dex/ClassData$Method;->getMethodIndex()I

    .line 10
    .line 11
    .line 12
    move-result v5

    .line 13
    invoke-virtual {p2, v5}, Lcom/android/dx/merge/IndexMap;->adjustMethod(I)I

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    iget-object v6, p0, Lcom/android/dx/merge/DexMerger;->classDataOut:Lcom/android/dex/Dex$Section;

    .line 18
    .line 19
    sub-int v3, v5, v3

    .line 20
    .line 21
    invoke-virtual {v6, v3}, Lcom/android/dex/Dex$Section;->writeUleb128(I)V

    .line 22
    .line 23
    .line 24
    iget-object v3, p0, Lcom/android/dx/merge/DexMerger;->classDataOut:Lcom/android/dex/Dex$Section;

    .line 25
    .line 26
    invoke-virtual {v4}, Lcom/android/dex/ClassData$Method;->getAccessFlags()I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    invoke-virtual {v3, v6}, Lcom/android/dex/Dex$Section;->writeUleb128(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4}, Lcom/android/dex/ClassData$Method;->getCodeOffset()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_0

    .line 38
    .line 39
    iget-object v3, p0, Lcom/android/dx/merge/DexMerger;->classDataOut:Lcom/android/dex/Dex$Section;

    .line 40
    .line 41
    invoke-virtual {v3, v1}, Lcom/android/dex/Dex$Section;->writeUleb128(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    iget-object v3, p0, Lcom/android/dx/merge/DexMerger;->codeOut:Lcom/android/dex/Dex$Section;

    .line 46
    .line 47
    invoke-virtual {v3}, Lcom/android/dex/Dex$Section;->alignToFourBytesWithZeroFill()V

    .line 48
    .line 49
    .line 50
    iget-object v3, p0, Lcom/android/dx/merge/DexMerger;->classDataOut:Lcom/android/dex/Dex$Section;

    .line 51
    .line 52
    iget-object v6, p0, Lcom/android/dx/merge/DexMerger;->codeOut:Lcom/android/dex/Dex$Section;

    .line 53
    .line 54
    invoke-virtual {v6}, Lcom/android/dex/Dex$Section;->getPosition()I

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    invoke-virtual {v3, v6}, Lcom/android/dex/Dex$Section;->writeUleb128(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v4}, Lcom/android/dex/Dex;->readCode(Lcom/android/dex/ClassData$Method;)Lcom/android/dex/Code;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-direct {p0, p1, v3, p2}, Lcom/android/dx/merge/DexMerger;->transformCode(Lcom/android/dex/Dex;Lcom/android/dex/Code;Lcom/android/dx/merge/IndexMap;)V

    .line 66
    .line 67
    .line 68
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 69
    .line 70
    move v3, v5

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    return-void
.end method

.method private transformStaticValues(Lcom/android/dex/Dex$Section;Lcom/android/dx/merge/IndexMap;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/android/dx/merge/DexMerger;->contentsOut:Lcom/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/android/dex/TableOfContents;->encodedArrays:Lcom/android/dex/TableOfContents$Section;

    iget v1, v0, Lcom/android/dex/TableOfContents$Section;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/dex/TableOfContents$Section;->size:I

    .line 7
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->getPosition()I

    move-result v0

    iget-object v1, p0, Lcom/android/dx/merge/DexMerger;->encodedArrayOut:Lcom/android/dex/Dex$Section;

    invoke-virtual {v1}, Lcom/android/dex/Dex$Section;->getPosition()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/android/dx/merge/IndexMap;->putEncodedArrayValueOffset(II)V

    .line 8
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readEncodedArray()Lcom/android/dex/EncodedValue;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/dx/merge/IndexMap;->adjustEncodedArray(Lcom/android/dex/EncodedValue;)Lcom/android/dex/EncodedValue;

    move-result-object p1

    iget-object p2, p0, Lcom/android/dx/merge/DexMerger;->encodedArrayOut:Lcom/android/dex/Dex$Section;

    invoke-virtual {p1, p2}, Lcom/android/dex/EncodedValue;->writeTo(Lcom/android/dex/Dex$Section;)V

    return-void
.end method

.method private transformStaticValues(Lcom/android/dex/Dex;Lcom/android/dx/merge/IndexMap;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/dex/Dex;->getTableOfContents()Lcom/android/dex/TableOfContents;

    move-result-object v0

    iget-object v0, v0, Lcom/android/dex/TableOfContents;->encodedArrays:Lcom/android/dex/TableOfContents$Section;

    .line 2
    invoke-virtual {v0}, Lcom/android/dex/TableOfContents$Section;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget v1, v0, Lcom/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1, v1}, Lcom/android/dex/Dex;->open(I)Lcom/android/dex/Dex$Section;

    move-result-object p1

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget v2, v0, Lcom/android/dex/TableOfContents$Section;->size:I

    if-ge v1, v2, :cond_0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/android/dx/merge/DexMerger;->transformStaticValues(Lcom/android/dex/Dex$Section;Lcom/android/dx/merge/IndexMap;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private transformTries(Lcom/android/dex/Dex$Section;[Lcom/android/dex/Code$Try;[I)V
    .locals 4

    .line 1
    array-length v0, p2

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    .line 5
    aget-object v2, p2, v1

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/android/dex/Code$Try;->getStartAddress()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    invoke-virtual {p1, v3}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/android/dex/Code$Try;->getInstructionCount()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-virtual {p1, v3}, Lcom/android/dex/Dex$Section;->writeUnsignedShort(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/android/dex/Code$Try;->getCatchHandlerIndex()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    aget v2, p3, v2

    .line 26
    .line 27
    invoke-virtual {p1, v2}, Lcom/android/dex/Dex$Section;->writeUnsignedShort(I)V

    .line 28
    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method

.method private unionAnnotationSetsAndDirectories()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/dx/merge/DexMerger;->dexes:[Lcom/android/dex/Dex;

    .line 4
    .line 5
    array-length v3, v2

    .line 6
    if-ge v1, v3, :cond_0

    .line 7
    .line 8
    aget-object v2, v2, v1

    .line 9
    .line 10
    iget-object v3, p0, Lcom/android/dx/merge/DexMerger;->indexMaps:[Lcom/android/dx/merge/IndexMap;

    .line 11
    .line 12
    aget-object v3, v3, v1

    .line 13
    .line 14
    invoke-direct {p0, v2, v3}, Lcom/android/dx/merge/DexMerger;->transformAnnotationSets(Lcom/android/dex/Dex;Lcom/android/dx/merge/IndexMap;)V

    .line 15
    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    :goto_1
    iget-object v2, p0, Lcom/android/dx/merge/DexMerger;->dexes:[Lcom/android/dex/Dex;

    .line 22
    .line 23
    array-length v3, v2

    .line 24
    if-ge v1, v3, :cond_1

    .line 25
    .line 26
    aget-object v2, v2, v1

    .line 27
    .line 28
    iget-object v3, p0, Lcom/android/dx/merge/DexMerger;->indexMaps:[Lcom/android/dx/merge/IndexMap;

    .line 29
    .line 30
    aget-object v3, v3, v1

    .line 31
    .line 32
    invoke-direct {p0, v2, v3}, Lcom/android/dx/merge/DexMerger;->transformAnnotationSetRefLists(Lcom/android/dex/Dex;Lcom/android/dx/merge/IndexMap;)V

    .line 33
    .line 34
    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 v1, 0x0

    .line 39
    :goto_2
    iget-object v2, p0, Lcom/android/dx/merge/DexMerger;->dexes:[Lcom/android/dex/Dex;

    .line 40
    .line 41
    array-length v3, v2

    .line 42
    if-ge v1, v3, :cond_2

    .line 43
    .line 44
    aget-object v2, v2, v1

    .line 45
    .line 46
    iget-object v3, p0, Lcom/android/dx/merge/DexMerger;->indexMaps:[Lcom/android/dx/merge/IndexMap;

    .line 47
    .line 48
    aget-object v3, v3, v1

    .line 49
    .line 50
    invoke-direct {p0, v2, v3}, Lcom/android/dx/merge/DexMerger;->transformAnnotationDirectories(Lcom/android/dex/Dex;Lcom/android/dx/merge/IndexMap;)V

    .line 51
    .line 52
    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    :goto_3
    iget-object v1, p0, Lcom/android/dx/merge/DexMerger;->dexes:[Lcom/android/dex/Dex;

    .line 57
    .line 58
    array-length v2, v1

    .line 59
    if-ge v0, v2, :cond_3

    .line 60
    .line 61
    aget-object v1, v1, v0

    .line 62
    .line 63
    iget-object v2, p0, Lcom/android/dx/merge/DexMerger;->indexMaps:[Lcom/android/dx/merge/IndexMap;

    .line 64
    .line 65
    aget-object v2, v2, v0

    .line 66
    .line 67
    invoke-direct {p0, v1, v2}, Lcom/android/dx/merge/DexMerger;->transformStaticValues(Lcom/android/dex/Dex;Lcom/android/dx/merge/IndexMap;)V

    .line 68
    .line 69
    .line 70
    add-int/lit8 v0, v0, 0x1

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_3
    return-void
.end method


# virtual methods
.method public merge()Lcom/android/dex/Dex;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/dx/merge/DexMerger;->dexes:[Lcom/android/dex/Dex;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-ne v1, v3, :cond_0

    .line 7
    .line 8
    aget-object v0, v0, v2

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    array-length v0, v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    return-object v0

    .line 16
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    invoke-direct {p0}, Lcom/android/dx/merge/DexMerger;->mergeDexes()Lcom/android/dex/Dex;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    new-instance v5, Lcom/android/dx/merge/DexMerger$WriterSizes;

    .line 25
    .line 26
    invoke-direct {v5, p0}, Lcom/android/dx/merge/DexMerger$WriterSizes;-><init>(Lcom/android/dx/merge/DexMerger;)V

    .line 27
    .line 28
    .line 29
    iget-object v6, p0, Lcom/android/dx/merge/DexMerger;->writerSizes:Lcom/android/dx/merge/DexMerger$WriterSizes;

    .line 30
    .line 31
    invoke-virtual {v6}, Lcom/android/dx/merge/DexMerger$WriterSizes;->size()I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    invoke-virtual {v5}, Lcom/android/dx/merge/DexMerger$WriterSizes;->size()I

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    sub-int/2addr v6, v7

    .line 40
    iget v7, p0, Lcom/android/dx/merge/DexMerger;->compactWasteThreshold:I

    .line 41
    .line 42
    const/4 v8, 0x3

    .line 43
    const/4 v9, 0x2

    .line 44
    const/high16 v10, 0x44800000    # 1024.0f

    .line 45
    .line 46
    if-le v6, v7, :cond_2

    .line 47
    .line 48
    new-instance v4, Lcom/android/dx/merge/DexMerger;

    .line 49
    .line 50
    new-array v7, v9, [Lcom/android/dex/Dex;

    .line 51
    .line 52
    iget-object v11, p0, Lcom/android/dx/merge/DexMerger;->dexOut:Lcom/android/dex/Dex;

    .line 53
    .line 54
    aput-object v11, v7, v2

    .line 55
    .line 56
    new-instance v11, Lcom/android/dex/Dex;

    .line 57
    .line 58
    invoke-direct {v11, v2}, Lcom/android/dex/Dex;-><init>(I)V

    .line 59
    .line 60
    .line 61
    aput-object v11, v7, v3

    .line 62
    .line 63
    sget-object v11, Lcom/android/dx/merge/CollisionPolicy;->FAIL:Lcom/android/dx/merge/CollisionPolicy;

    .line 64
    .line 65
    iget-object v12, p0, Lcom/android/dx/merge/DexMerger;->context:Lcom/android/dx/command/dexer/DxContext;

    .line 66
    .line 67
    invoke-direct {v4, v7, v11, v12, v5}, Lcom/android/dx/merge/DexMerger;-><init>([Lcom/android/dex/Dex;Lcom/android/dx/merge/CollisionPolicy;Lcom/android/dx/command/dexer/DxContext;Lcom/android/dx/merge/DexMerger$WriterSizes;)V

    .line 68
    .line 69
    .line 70
    invoke-direct {v4}, Lcom/android/dx/merge/DexMerger;->mergeDexes()Lcom/android/dex/Dex;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    iget-object v5, p0, Lcom/android/dx/merge/DexMerger;->context:Lcom/android/dx/command/dexer/DxContext;

    .line 75
    .line 76
    iget-object v5, v5, Lcom/android/dx/command/dexer/DxContext;->out:Ljava/io/PrintStream;

    .line 77
    .line 78
    new-array v7, v8, [Ljava/lang/Object;

    .line 79
    .line 80
    iget-object v11, p0, Lcom/android/dx/merge/DexMerger;->dexOut:Lcom/android/dex/Dex;

    .line 81
    .line 82
    invoke-virtual {v11}, Lcom/android/dex/Dex;->getLength()I

    .line 83
    .line 84
    .line 85
    move-result v11

    .line 86
    int-to-float v11, v11

    .line 87
    div-float/2addr v11, v10

    .line 88
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 89
    .line 90
    .line 91
    move-result-object v11

    .line 92
    aput-object v11, v7, v2

    .line 93
    .line 94
    invoke-virtual {v4}, Lcom/android/dex/Dex;->getLength()I

    .line 95
    .line 96
    .line 97
    move-result v11

    .line 98
    int-to-float v11, v11

    .line 99
    div-float/2addr v11, v10

    .line 100
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 101
    .line 102
    .line 103
    move-result-object v11

    .line 104
    aput-object v11, v7, v3

    .line 105
    .line 106
    int-to-float v6, v6

    .line 107
    div-float/2addr v6, v10

    .line 108
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    aput-object v6, v7, v9

    .line 113
    .line 114
    const-string v6, "Result compacted from %.1fKiB to %.1fKiB to save %.1fKiB%n"

    .line 115
    .line 116
    invoke-virtual {v5, v6, v7}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 117
    .line 118
    .line 119
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 120
    .line 121
    .line 122
    move-result-wide v5

    .line 123
    sub-long/2addr v5, v0

    .line 124
    const/4 v0, 0x0

    .line 125
    :goto_0
    iget-object v1, p0, Lcom/android/dx/merge/DexMerger;->dexes:[Lcom/android/dex/Dex;

    .line 126
    .line 127
    array-length v1, v1

    .line 128
    if-ge v0, v1, :cond_3

    .line 129
    .line 130
    iget-object v1, p0, Lcom/android/dx/merge/DexMerger;->context:Lcom/android/dx/command/dexer/DxContext;

    .line 131
    .line 132
    iget-object v1, v1, Lcom/android/dx/command/dexer/DxContext;->out:Ljava/io/PrintStream;

    .line 133
    .line 134
    new-array v7, v8, [Ljava/lang/Object;

    .line 135
    .line 136
    add-int/lit8 v11, v0, 0x1

    .line 137
    .line 138
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    .line 140
    .line 141
    move-result-object v12

    .line 142
    aput-object v12, v7, v2

    .line 143
    .line 144
    iget-object v12, p0, Lcom/android/dx/merge/DexMerger;->dexes:[Lcom/android/dex/Dex;

    .line 145
    .line 146
    aget-object v12, v12, v0

    .line 147
    .line 148
    invoke-virtual {v12}, Lcom/android/dex/Dex;->getTableOfContents()Lcom/android/dex/TableOfContents;

    .line 149
    .line 150
    .line 151
    move-result-object v12

    .line 152
    iget-object v12, v12, Lcom/android/dex/TableOfContents;->classDefs:Lcom/android/dex/TableOfContents$Section;

    .line 153
    .line 154
    iget v12, v12, Lcom/android/dex/TableOfContents$Section;->size:I

    .line 155
    .line 156
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    .line 158
    .line 159
    move-result-object v12

    .line 160
    aput-object v12, v7, v3

    .line 161
    .line 162
    iget-object v12, p0, Lcom/android/dx/merge/DexMerger;->dexes:[Lcom/android/dex/Dex;

    .line 163
    .line 164
    aget-object v0, v12, v0

    .line 165
    .line 166
    invoke-virtual {v0}, Lcom/android/dex/Dex;->getLength()I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    int-to-float v0, v0

    .line 171
    div-float/2addr v0, v10

    .line 172
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    aput-object v0, v7, v9

    .line 177
    .line 178
    const-string v0, "Merged dex #%d (%d defs/%.1fKiB)%n"

    .line 179
    .line 180
    invoke-virtual {v1, v0, v7}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 181
    .line 182
    .line 183
    move v0, v11

    .line 184
    goto :goto_0

    .line 185
    :cond_3
    iget-object v0, p0, Lcom/android/dx/merge/DexMerger;->context:Lcom/android/dx/command/dexer/DxContext;

    .line 186
    .line 187
    iget-object v0, v0, Lcom/android/dx/command/dexer/DxContext;->out:Ljava/io/PrintStream;

    .line 188
    .line 189
    new-array v1, v8, [Ljava/lang/Object;

    .line 190
    .line 191
    invoke-virtual {v4}, Lcom/android/dex/Dex;->getTableOfContents()Lcom/android/dex/TableOfContents;

    .line 192
    .line 193
    .line 194
    move-result-object v7

    .line 195
    iget-object v7, v7, Lcom/android/dex/TableOfContents;->classDefs:Lcom/android/dex/TableOfContents$Section;

    .line 196
    .line 197
    iget v7, v7, Lcom/android/dex/TableOfContents$Section;->size:I

    .line 198
    .line 199
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 200
    .line 201
    .line 202
    move-result-object v7

    .line 203
    aput-object v7, v1, v2

    .line 204
    .line 205
    invoke-virtual {v4}, Lcom/android/dex/Dex;->getLength()I

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    int-to-float v2, v2

    .line 210
    div-float/2addr v2, v10

    .line 211
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    aput-object v2, v1, v3

    .line 216
    .line 217
    long-to-float v2, v5

    .line 218
    const v3, 0x4e6e6b28    # 1.0E9f

    .line 219
    .line 220
    .line 221
    div-float/2addr v2, v3

    .line 222
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    aput-object v2, v1, v9

    .line 227
    .line 228
    const-string v2, "Result is %d defs/%.1fKiB. Took %.1fs%n"

    .line 229
    .line 230
    invoke-virtual {v0, v2, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 231
    .line 232
    .line 233
    return-object v4
.end method

.method public setCompactWasteThreshold(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/dx/merge/DexMerger;->compactWasteThreshold:I

    .line 2
    .line 3
    return-void
.end method
