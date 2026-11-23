.class public final Lcom/android/dx/command/grep/Grep;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final codeReader:Lcom/android/dx/io/CodeReader;

.field private count:I

.field private currentClass:Lcom/android/dex/ClassDef;

.field private currentMethod:Lcom/android/dex/ClassData$Method;

.field private final dex:Lcom/android/dex/Dex;

.field private final out:Ljava/io/PrintWriter;

.field private final stringIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/dex/Dex;Ljava/util/regex/Pattern;Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/dx/io/CodeReader;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/android/dx/io/CodeReader;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/dx/command/grep/Grep;->codeReader:Lcom/android/dx/io/CodeReader;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput v1, p0, Lcom/android/dx/command/grep/Grep;->count:I

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/dx/command/grep/Grep;->dex:Lcom/android/dex/Dex;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/android/dx/command/grep/Grep;->out:Ljava/io/PrintWriter;

    .line 17
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/android/dx/command/grep/Grep;->getStringIds(Lcom/android/dex/Dex;Ljava/util/regex/Pattern;)Ljava/util/Set;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/android/dx/command/grep/Grep;->stringIds:Ljava/util/Set;

    .line 23
    .line 24
    new-instance p1, Lcom/android/dx/command/grep/Grep$1;

    .line 25
    .line 26
    invoke-direct {p1, p0}, Lcom/android/dx/command/grep/Grep$1;-><init>(Lcom/android/dx/command/grep/Grep;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lcom/android/dx/io/CodeReader;->setStringVisitor(Lcom/android/dx/io/CodeReader$Visitor;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/android/dx/command/grep/Grep;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/dx/command/grep/Grep;->encounterString(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private encounterString(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/dx/command/grep/Grep;->stringIds:Ljava/util/Set;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/dx/command/grep/Grep;->out:Ljava/io/PrintWriter;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/android/dx/command/grep/Grep;->location()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, " "

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lcom/android/dx/command/grep/Grep;->dex:Lcom/android/dex/Dex;

    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/android/dex/Dex;->strings()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget p1, p0, Lcom/android/dx/command/grep/Grep;->count:I

    .line 55
    .line 56
    add-int/lit8 p1, p1, 0x1

    .line 57
    .line 58
    iput p1, p0, Lcom/android/dx/command/grep/Grep;->count:I

    .line 59
    .line 60
    :cond_0
    return-void
.end method

.method private getStringIds(Lcom/android/dex/Dex;Ljava/util/regex/Pattern;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dex/Dex;",
            "Ljava/util/regex/Pattern;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/android/dex/Dex;->strings()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p2, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    return-object v0
.end method

.method private location()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/dx/command/grep/Grep;->dex:Lcom/android/dex/Dex;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/dex/Dex;->typeNames()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/dx/command/grep/Grep;->currentClass:Lcom/android/dex/ClassDef;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/android/dex/ClassDef;->getTypeIndex()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/String;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/dx/command/grep/Grep;->currentMethod:Lcom/android/dex/ClassData$Method;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/dx/command/grep/Grep;->dex:Lcom/android/dex/Dex;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/android/dex/Dex;->methodIds()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v2, p0, Lcom/android/dx/command/grep/Grep;->currentMethod:Lcom/android/dex/ClassData$Method;

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/android/dex/ClassData$Method;->getMethodIndex()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lcom/android/dex/MethodId;

    .line 40
    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v0, "."

    .line 50
    .line 51
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/dx/command/grep/Grep;->dex:Lcom/android/dex/Dex;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/android/dex/Dex;->strings()Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v1}, Lcom/android/dex/MethodId;->getNameIndex()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    :cond_0
    return-object v0
.end method

.method private readArray(Lcom/android/dex/EncodedValueReader;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/android/dex/EncodedValueReader;->readArray()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_2

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/android/dex/EncodedValueReader;->peek()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/16 v3, 0x17

    .line 13
    .line 14
    if-eq v2, v3, :cond_1

    .line 15
    .line 16
    const/16 v3, 0x1c

    .line 17
    .line 18
    if-eq v2, v3, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/dx/command/grep/Grep;->readArray(Lcom/android/dex/EncodedValueReader;)V

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    invoke-virtual {p1}, Lcom/android/dex/EncodedValueReader;->readString()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-direct {p0, v2}, Lcom/android/dx/command/grep/Grep;->encounterString(I)V

    .line 30
    .line 31
    .line 32
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    return-void
.end method


# virtual methods
.method public grep()I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/dx/command/grep/Grep;->dex:Lcom/android/dex/Dex;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/dex/Dex;->classDefs()Ljava/lang/Iterable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v1, :cond_4

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/android/dex/ClassDef;

    .line 23
    .line 24
    iput-object v1, p0, Lcom/android/dx/command/grep/Grep;->currentClass:Lcom/android/dex/ClassDef;

    .line 25
    .line 26
    iput-object v2, p0, Lcom/android/dx/command/grep/Grep;->currentMethod:Lcom/android/dex/ClassData$Method;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/android/dex/ClassDef;->getClassDataOffset()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object v2, p0, Lcom/android/dx/command/grep/Grep;->dex:Lcom/android/dex/Dex;

    .line 36
    .line 37
    invoke-virtual {v2, v1}, Lcom/android/dex/Dex;->readClassData(Lcom/android/dex/ClassDef;)Lcom/android/dex/ClassData;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1}, Lcom/android/dex/ClassDef;->getStaticValuesOffset()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    new-instance v3, Lcom/android/dex/EncodedValueReader;

    .line 48
    .line 49
    iget-object v4, p0, Lcom/android/dx/command/grep/Grep;->dex:Lcom/android/dex/Dex;

    .line 50
    .line 51
    invoke-virtual {v4, v1}, Lcom/android/dex/Dex;->open(I)Lcom/android/dex/Dex$Section;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-direct {v3, v1}, Lcom/android/dex/EncodedValueReader;-><init>(Lcom/android/dex/util/ByteInput;)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, v3}, Lcom/android/dx/command/grep/Grep;->readArray(Lcom/android/dex/EncodedValueReader;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    invoke-virtual {v2}, Lcom/android/dex/ClassData;->allMethods()[Lcom/android/dex/ClassData$Method;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    array-length v2, v1

    .line 66
    const/4 v3, 0x0

    .line 67
    :goto_1
    if-ge v3, v2, :cond_0

    .line 68
    .line 69
    aget-object v4, v1, v3

    .line 70
    .line 71
    iput-object v4, p0, Lcom/android/dx/command/grep/Grep;->currentMethod:Lcom/android/dex/ClassData$Method;

    .line 72
    .line 73
    invoke-virtual {v4}, Lcom/android/dex/ClassData$Method;->getCodeOffset()I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-eqz v5, :cond_3

    .line 78
    .line 79
    iget-object v5, p0, Lcom/android/dx/command/grep/Grep;->codeReader:Lcom/android/dx/io/CodeReader;

    .line 80
    .line 81
    iget-object v6, p0, Lcom/android/dx/command/grep/Grep;->dex:Lcom/android/dex/Dex;

    .line 82
    .line 83
    invoke-virtual {v6, v4}, Lcom/android/dex/Dex;->readCode(Lcom/android/dex/ClassData$Method;)Lcom/android/dex/Code;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-virtual {v4}, Lcom/android/dex/Code;->getInstructions()[S

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-virtual {v5, v4}, Lcom/android/dx/io/CodeReader;->visitAll([S)V

    .line 92
    .line 93
    .line 94
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_4
    iput-object v2, p0, Lcom/android/dx/command/grep/Grep;->currentClass:Lcom/android/dex/ClassDef;

    .line 98
    .line 99
    iput-object v2, p0, Lcom/android/dx/command/grep/Grep;->currentMethod:Lcom/android/dex/ClassData$Method;

    .line 100
    .line 101
    iget v0, p0, Lcom/android/dx/command/grep/Grep;->count:I

    .line 102
    .line 103
    return v0
.end method
