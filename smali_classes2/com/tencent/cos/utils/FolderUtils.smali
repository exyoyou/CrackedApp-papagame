.class public Lcom/tencent/cos/utils/FolderUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static InValidChar:[C

.field private static final RESERVERED:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    new-array v0, v0, [C

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/tencent/cos/utils/FolderUtils;->InValidChar:[C

    .line 9
    .line 10
    const-string v1, "con"

    .line 11
    .line 12
    const-string v2, "aux"

    .line 13
    .line 14
    const-string v3, "nul"

    .line 15
    .line 16
    const-string v4, "prn"

    .line 17
    .line 18
    const-string v5, "com0"

    .line 19
    .line 20
    const-string v6, "com1"

    .line 21
    .line 22
    const-string v7, "com2"

    .line 23
    .line 24
    const-string v8, "com3"

    .line 25
    .line 26
    const-string v9, "com4"

    .line 27
    .line 28
    const-string v10, "com5"

    .line 29
    .line 30
    const-string v11, "com6"

    .line 31
    .line 32
    const-string v12, "com7"

    .line 33
    .line 34
    const-string v13, "com8"

    .line 35
    .line 36
    const-string v14, "com9"

    .line 37
    .line 38
    const-string v15, "lpt0"

    .line 39
    .line 40
    const-string v16, "lpt1"

    .line 41
    .line 42
    const-string v17, "lpt2"

    .line 43
    .line 44
    const-string v18, "lpt3"

    .line 45
    .line 46
    const-string v19, "lpt4"

    .line 47
    .line 48
    const-string v20, "lpt5"

    .line 49
    .line 50
    const-string v21, "lpt6"

    .line 51
    .line 52
    const-string v22, "lpt7"

    .line 53
    .line 54
    const-string v23, "lpt8"

    .line 55
    .line 56
    const-string v24, "lpt9"

    .line 57
    .line 58
    filled-new-array/range {v1 .. v24}, [Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sput-object v0, Lcom/tencent/cos/utils/FolderUtils;->RESERVERED:[Ljava/lang/String;

    .line 63
    .line 64
    return-void

    .line 65
    :array_0
    .array-data 2
        0x2fs
        0x3fs
        0x2as
        0x3as
        0x7cs
        0x5cs
        0x3cs
        0x3es
        0x22s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static hasInValidChar(Ljava/lang/String;)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/tencent/cos/utils/FolderUtils;->InValidChar:[C

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    if-ge v2, v0, :cond_1

    .line 7
    .line 8
    sget-object v3, Lcom/tencent/cos/utils/FolderUtils;->InValidChar:[C

    .line 9
    .line 10
    aget-char v3, v3, v2

    .line 11
    .line 12
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    const/4 v4, -0x1

    .line 17
    if-eq v3, v4, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    return v1
.end method

.method private static isReservedStr(Ljava/lang/String;)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/tencent/cos/utils/FolderUtils;->RESERVERED:[Ljava/lang/String;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    if-ge v2, v0, :cond_1

    .line 7
    .line 8
    sget-object v3, Lcom/tencent/cos/utils/FolderUtils;->RESERVERED:[Ljava/lang/String;

    .line 9
    .line 10
    aget-object v3, v3, v2

    .line 11
    .line 12
    invoke-virtual {v3, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    return p0

    .line 20
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    return v1
.end method

.method public static isValidFolder(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/tencent/cos/utils/FolderUtils;->hasInValidChar(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-static {p0}, Lcom/tencent/cos/utils/FolderUtils;->isReservedStr(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method public static isValidPath(Ljava/lang/String;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const-string v1, "/"

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    array-length v4, v3

    .line 16
    const/4 v5, 0x1

    .line 17
    if-nez v4, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    return v5

    .line 26
    :cond_1
    if-nez v4, :cond_2

    .line 27
    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    invoke-static {p0}, Lcom/tencent/cos/utils/FolderUtils;->isValidFolder(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    return p0

    .line 35
    :cond_2
    if-eqz v2, :cond_3

    .line 36
    .line 37
    add-int/lit8 p0, v4, -0x1

    .line 38
    .line 39
    aget-object p0, v3, p0

    .line 40
    .line 41
    invoke-static {p0}, Lcom/tencent/cos/utils/FolderUtils;->isValidFolder(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-nez p0, :cond_3

    .line 46
    .line 47
    return v0

    .line 48
    :cond_3
    const/4 p0, 0x0

    .line 49
    :goto_0
    add-int/lit8 v1, v4, -0x1

    .line 50
    .line 51
    if-ge p0, v1, :cond_7

    .line 52
    .line 53
    aget-object v1, v3, p0

    .line 54
    .line 55
    const-string v2, ""

    .line 56
    .line 57
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_4

    .line 62
    .line 63
    if-nez p0, :cond_4

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_4
    aget-object v1, v3, p0

    .line 67
    .line 68
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_5

    .line 73
    .line 74
    if-lez p0, :cond_5

    .line 75
    .line 76
    return v0

    .line 77
    :cond_5
    aget-object v1, v3, p0

    .line 78
    .line 79
    invoke-static {v1}, Lcom/tencent/cos/utils/FolderUtils;->isValidFolder(Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_6

    .line 84
    .line 85
    return v0

    .line 86
    :cond_6
    :goto_1
    add-int/lit8 p0, p0, 0x1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_7
    return v5
.end method
