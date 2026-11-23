.class public Lnet/sf/sevenzipjbinding/impl/OutItemFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lnet/sf/sevenzipjbinding/IOutItemBase;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final ZERO:Ljava/lang/Long;


# instance fields
.field private index:I

.field private outArchive:Lnet/sf/sevenzipjbinding/IOutArchive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/sf/sevenzipjbinding/IOutArchive<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lnet/sf/sevenzipjbinding/impl/OutItemFactory;->ZERO:Ljava/lang/Long;

    .line 8
    .line 9
    return-void
.end method

.method constructor <init>(Lnet/sf/sevenzipjbinding/IOutArchive;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/sevenzipjbinding/IOutArchive<",
            "*>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutItemFactory;->outArchive:Lnet/sf/sevenzipjbinding/IOutArchive;

    .line 5
    .line 6
    iput p2, p0, Lnet/sf/sevenzipjbinding/impl/OutItemFactory;->index:I

    .line 7
    .line 8
    return-void
.end method

.method private createOutItemIntern()Lnet/sf/sevenzipjbinding/impl/OutItem;
    .locals 3

    .line 1
    new-instance v0, Lnet/sf/sevenzipjbinding/impl/OutItem;

    .line 2
    .line 3
    iget-object v1, p0, Lnet/sf/sevenzipjbinding/impl/OutItemFactory;->outArchive:Lnet/sf/sevenzipjbinding/IOutArchive;

    .line 4
    .line 5
    iget v2, p0, Lnet/sf/sevenzipjbinding/impl/OutItemFactory;->index:I

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lnet/sf/sevenzipjbinding/impl/OutItem;-><init>(Lnet/sf/sevenzipjbinding/IOutArchive;I)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0}, Lnet/sf/sevenzipjbinding/impl/OutItemFactory;->fillDefaultValues(Lnet/sf/sevenzipjbinding/impl/OutItem;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method private fillDefaultValues(Lnet/sf/sevenzipjbinding/impl/OutItem;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/OutItemFactory;->outArchive:Lnet/sf/sevenzipjbinding/IOutArchive;

    .line 2
    .line 3
    invoke-interface {v0}, Lnet/sf/sevenzipjbinding/IOutUpdateArchive;->getConnectedInArchive()Lnet/sf/sevenzipjbinding/IInArchive;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, -0x1

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p1, v0}, Lnet/sf/sevenzipjbinding/impl/OutItem;->setUpdateOldArchiveItemIndex(Ljava/lang/Integer;)V

    .line 15
    .line 16
    .line 17
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lnet/sf/sevenzipjbinding/impl/OutItem;->setUpdateIsNewData(Ljava/lang/Boolean;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lnet/sf/sevenzipjbinding/impl/OutItem;->setUpdateIsNewProperties(Ljava/lang/Boolean;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    sget-object v0, Lnet/sf/sevenzipjbinding/impl/OutItemFactory;->ZERO:Ljava/lang/Long;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lnet/sf/sevenzipjbinding/impl/OutItem;->setDataSize(Ljava/lang/Long;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Ljava/util/Date;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lnet/sf/sevenzipjbinding/impl/OutItem;->setPropertyLastModificationTime(Ljava/util/Date;)V

    .line 36
    .line 37
    .line 38
    sget-object v0, Lnet/sf/sevenzipjbinding/impl/OutItemFactory$1;->$SwitchMap$net$sf$sevenzipjbinding$ArchiveFormat:[I

    .line 39
    .line 40
    invoke-virtual {p1}, Lnet/sf/sevenzipjbinding/impl/OutItem;->getArchiveFormat()Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    aget v0, v0, v1

    .line 49
    .line 50
    const/4 v1, 0x1

    .line 51
    if-eq v0, v1, :cond_5

    .line 52
    .line 53
    const/4 v1, 0x2

    .line 54
    if-eq v0, v1, :cond_4

    .line 55
    .line 56
    const/4 v1, 0x3

    .line 57
    if-eq v0, v1, :cond_3

    .line 58
    .line 59
    const/4 v1, 0x4

    .line 60
    if-eq v0, v1, :cond_2

    .line 61
    .line 62
    const/4 v1, 0x5

    .line 63
    if-ne v0, v1, :cond_1

    .line 64
    .line 65
    invoke-direct {p0, p1}, Lnet/sf/sevenzipjbinding/impl/OutItemFactory;->fillDefaultValuesTar(Lnet/sf/sevenzipjbinding/IOutItemTar;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 70
    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v2, "No default values strategy for the archive format \'"

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Lnet/sf/sevenzipjbinding/impl/OutItem;->getArchiveFormat()Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string p1, "\'"

    .line 89
    .line 90
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw v0

    .line 101
    :cond_2
    invoke-direct {p0, p1}, Lnet/sf/sevenzipjbinding/impl/OutItemFactory;->fillDefaultValuesGZip(Lnet/sf/sevenzipjbinding/IOutItemGZip;)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_3
    invoke-direct {p0, p1}, Lnet/sf/sevenzipjbinding/impl/OutItemFactory;->fillDefaultValuesBZip2(Lnet/sf/sevenzipjbinding/IOutItemBZip2;)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_4
    invoke-direct {p0, p1}, Lnet/sf/sevenzipjbinding/impl/OutItemFactory;->fillDefaultValuesZip(Lnet/sf/sevenzipjbinding/IOutItemZip;)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_5
    invoke-direct {p0, p1}, Lnet/sf/sevenzipjbinding/impl/OutItemFactory;->fillDefaultValues7z(Lnet/sf/sevenzipjbinding/IOutItem7z;)V

    .line 114
    .line 115
    .line 116
    :goto_0
    return-void
.end method

.method private fillDefaultValues7z(Lnet/sf/sevenzipjbinding/IOutItem7z;)V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lnet/sf/sevenzipjbinding/IOutItem7z;->setPropertyIsAnti(Ljava/lang/Boolean;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, v0}, Lnet/sf/sevenzipjbinding/IOutItem7z;->setPropertyIsDir(Ljava/lang/Boolean;)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {p1, v0}, Lnet/sf/sevenzipjbinding/IOutItem7z;->setPropertyAttributes(Ljava/lang/Integer;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private fillDefaultValuesBZip2(Lnet/sf/sevenzipjbinding/IOutItemBZip2;)V
    .locals 0

    return-void
.end method

.method private fillDefaultValuesGZip(Lnet/sf/sevenzipjbinding/IOutItemGZip;)V
    .locals 0

    return-void
.end method

.method private fillDefaultValuesTar(Lnet/sf/sevenzipjbinding/IOutItemTar;)V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lnet/sf/sevenzipjbinding/IOutItemTar;->setPropertyIsDir(Ljava/lang/Boolean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private fillDefaultValuesZip(Lnet/sf/sevenzipjbinding/IOutItemZip;)V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lnet/sf/sevenzipjbinding/IOutItemZip;->setPropertyIsDir(Ljava/lang/Boolean;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {p1, v0}, Lnet/sf/sevenzipjbinding/IOutItemZip;->setPropertyAttributes(Ljava/lang/Integer;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public createOutItem()Lnet/sf/sevenzipjbinding/IOutItemBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/impl/OutItemFactory;->createOutItemIntern()Lnet/sf/sevenzipjbinding/impl/OutItem;

    move-result-object v0

    return-object v0
.end method

.method public createOutItem(I)Lnet/sf/sevenzipjbinding/IOutItemBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/OutItemFactory;->outArchive:Lnet/sf/sevenzipjbinding/IOutArchive;

    invoke-interface {v0}, Lnet/sf/sevenzipjbinding/IOutUpdateArchive;->getConnectedInArchive()Lnet/sf/sevenzipjbinding/IInArchive;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/impl/OutItemFactory;->createOutItemIntern()Lnet/sf/sevenzipjbinding/impl/OutItem;

    move-result-object v0

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/sf/sevenzipjbinding/impl/OutItem;->setUpdateOldArchiveItemIndex(Ljava/lang/Integer;)V

    .line 5
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lnet/sf/sevenzipjbinding/impl/OutItem;->setUpdateIsNewData(Ljava/lang/Boolean;)V

    .line 6
    invoke-virtual {v0, p1}, Lnet/sf/sevenzipjbinding/impl/OutItem;->setUpdateIsNewProperties(Ljava/lang/Boolean;)V

    return-object v0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Not an update operation"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createOutItemAndCloneProperties(I)Lnet/sf/sevenzipjbinding/IOutItemBase;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/OutItemFactory;->outArchive:Lnet/sf/sevenzipjbinding/IOutArchive;

    .line 2
    .line 3
    invoke-interface {v0}, Lnet/sf/sevenzipjbinding/IOutUpdateArchive;->getConnectedInArchive()Lnet/sf/sevenzipjbinding/IInArchive;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/impl/OutItemFactory;->createOutItemIntern()Lnet/sf/sevenzipjbinding/impl/OutItem;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2}, Lnet/sf/sevenzipjbinding/impl/OutItem;->setUpdateOldArchiveItemIndex(Ljava/lang/Integer;)V

    .line 18
    .line 19
    .line 20
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lnet/sf/sevenzipjbinding/impl/OutItem;->setUpdateIsNewData(Ljava/lang/Boolean;)V

    .line 23
    .line 24
    .line 25
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Lnet/sf/sevenzipjbinding/impl/OutItem;->setUpdateIsNewProperties(Ljava/lang/Boolean;)V

    .line 28
    .line 29
    .line 30
    sget-object v2, Lnet/sf/sevenzipjbinding/PropID;->PATH:Lnet/sf/sevenzipjbinding/PropID;

    .line 31
    .line 32
    invoke-interface {v0, p1, v2}, Lnet/sf/sevenzipjbinding/IInArchive;->getProperty(ILnet/sf/sevenzipjbinding/PropID;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Lnet/sf/sevenzipjbinding/impl/OutItem;->setPropertyPath(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    sget-object v2, Lnet/sf/sevenzipjbinding/PropID;->ATTRIBUTES:Lnet/sf/sevenzipjbinding/PropID;

    .line 42
    .line 43
    invoke-interface {v0, p1, v2}, Lnet/sf/sevenzipjbinding/IInArchive;->getProperty(ILnet/sf/sevenzipjbinding/PropID;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Ljava/lang/Integer;

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Lnet/sf/sevenzipjbinding/impl/OutItem;->setPropertyAttributes(Ljava/lang/Integer;)V

    .line 50
    .line 51
    .line 52
    sget-object v2, Lnet/sf/sevenzipjbinding/PropID;->POSIX_ATTRIB:Lnet/sf/sevenzipjbinding/PropID;

    .line 53
    .line 54
    invoke-interface {v0, p1, v2}, Lnet/sf/sevenzipjbinding/IInArchive;->getProperty(ILnet/sf/sevenzipjbinding/PropID;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Ljava/lang/Integer;

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Lnet/sf/sevenzipjbinding/impl/OutItem;->setPropertyPosixAttributes(Ljava/lang/Integer;)V

    .line 61
    .line 62
    .line 63
    sget-object v2, Lnet/sf/sevenzipjbinding/PropID;->USER:Lnet/sf/sevenzipjbinding/PropID;

    .line 64
    .line 65
    invoke-interface {v0, p1, v2}, Lnet/sf/sevenzipjbinding/IInArchive;->getProperty(ILnet/sf/sevenzipjbinding/PropID;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    check-cast v2, Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Lnet/sf/sevenzipjbinding/impl/OutItem;->setPropertyUser(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    sget-object v2, Lnet/sf/sevenzipjbinding/PropID;->GROUP:Lnet/sf/sevenzipjbinding/PropID;

    .line 75
    .line 76
    invoke-interface {v0, p1, v2}, Lnet/sf/sevenzipjbinding/IInArchive;->getProperty(ILnet/sf/sevenzipjbinding/PropID;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    check-cast v2, Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Lnet/sf/sevenzipjbinding/impl/OutItem;->setPropertyGroup(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    sget-object v2, Lnet/sf/sevenzipjbinding/PropID;->CREATION_TIME:Lnet/sf/sevenzipjbinding/PropID;

    .line 86
    .line 87
    invoke-interface {v0, p1, v2}, Lnet/sf/sevenzipjbinding/IInArchive;->getProperty(ILnet/sf/sevenzipjbinding/PropID;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    check-cast v2, Ljava/util/Date;

    .line 92
    .line 93
    invoke-virtual {v1, v2}, Lnet/sf/sevenzipjbinding/impl/OutItem;->setPropertyCreationTime(Ljava/util/Date;)V

    .line 94
    .line 95
    .line 96
    sget-object v2, Lnet/sf/sevenzipjbinding/PropID;->LAST_MODIFICATION_TIME:Lnet/sf/sevenzipjbinding/PropID;

    .line 97
    .line 98
    invoke-interface {v0, p1, v2}, Lnet/sf/sevenzipjbinding/IInArchive;->getProperty(ILnet/sf/sevenzipjbinding/PropID;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    check-cast v2, Ljava/util/Date;

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Lnet/sf/sevenzipjbinding/impl/OutItem;->setPropertyLastModificationTime(Ljava/util/Date;)V

    .line 105
    .line 106
    .line 107
    sget-object v2, Lnet/sf/sevenzipjbinding/PropID;->LAST_ACCESS_TIME:Lnet/sf/sevenzipjbinding/PropID;

    .line 108
    .line 109
    invoke-interface {v0, p1, v2}, Lnet/sf/sevenzipjbinding/IInArchive;->getProperty(ILnet/sf/sevenzipjbinding/PropID;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    check-cast v2, Ljava/util/Date;

    .line 114
    .line 115
    invoke-virtual {v1, v2}, Lnet/sf/sevenzipjbinding/impl/OutItem;->setPropertyLastAccessTime(Ljava/util/Date;)V

    .line 116
    .line 117
    .line 118
    sget-object v2, Lnet/sf/sevenzipjbinding/PropID;->IS_ANTI:Lnet/sf/sevenzipjbinding/PropID;

    .line 119
    .line 120
    invoke-interface {v0, p1, v2}, Lnet/sf/sevenzipjbinding/IInArchive;->getProperty(ILnet/sf/sevenzipjbinding/PropID;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    check-cast v2, Ljava/lang/Boolean;

    .line 125
    .line 126
    invoke-virtual {v1, v2}, Lnet/sf/sevenzipjbinding/impl/OutItem;->setPropertyIsAnti(Ljava/lang/Boolean;)V

    .line 127
    .line 128
    .line 129
    sget-object v2, Lnet/sf/sevenzipjbinding/PropID;->IS_FOLDER:Lnet/sf/sevenzipjbinding/PropID;

    .line 130
    .line 131
    invoke-interface {v0, p1, v2}, Lnet/sf/sevenzipjbinding/IInArchive;->getProperty(ILnet/sf/sevenzipjbinding/PropID;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    check-cast p1, Ljava/lang/Boolean;

    .line 136
    .line 137
    invoke-virtual {v1, p1}, Lnet/sf/sevenzipjbinding/impl/OutItem;->setPropertyIsDir(Ljava/lang/Boolean;)V

    .line 138
    .line 139
    .line 140
    return-object v1

    .line 141
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 142
    .line 143
    const-string v0, "Not an update operation"

    .line 144
    .line 145
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw p1
.end method
