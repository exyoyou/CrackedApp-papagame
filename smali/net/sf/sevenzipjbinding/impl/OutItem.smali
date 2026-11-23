.class public final Lnet/sf/sevenzipjbinding/impl/OutItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/sevenzipjbinding/IOutItemAllFormats;


# instance fields
.field private dataSize:Ljava/lang/Long;

.field private index:I

.field private outArchive:Lnet/sf/sevenzipjbinding/IOutArchive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/sf/sevenzipjbinding/IOutArchive<",
            "*>;"
        }
    .end annotation
.end field

.field private propertyAttributes:Ljava/lang/Integer;

.field private propertyCreationTime:Ljava/util/Date;

.field private propertyGroup:Ljava/lang/String;

.field private propertyHardLink:Ljava/lang/String;

.field private propertyIsAnti:Ljava/lang/Boolean;

.field private propertyIsDir:Ljava/lang/Boolean;

.field private propertyLastAccessTime:Ljava/util/Date;

.field private propertyLastModificationTime:Ljava/util/Date;

.field private propertyPath:Ljava/lang/String;

.field private propertyPosixAttributes:Ljava/lang/Integer;

.field private propertySymLink:Ljava/lang/String;

.field private propertyUser:Ljava/lang/String;

.field private updateIsNewData:Ljava/lang/Boolean;

.field private updateIsNewProperties:Ljava/lang/Boolean;

.field private updateOldArchiveItemIndex:Ljava/lang/Integer;


# direct methods
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
    iput-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->outArchive:Lnet/sf/sevenzipjbinding/IOutArchive;

    .line 5
    .line 6
    iput p2, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->index:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getArchiveFormat()Lnet/sf/sevenzipjbinding/ArchiveFormat;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->outArchive:Lnet/sf/sevenzipjbinding/IOutArchive;

    .line 2
    .line 3
    invoke-interface {v0}, Lnet/sf/sevenzipjbinding/IOutCreateArchive;->getArchiveFormat()Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getDataSize()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->dataSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->index:I

    .line 2
    .line 3
    return v0
.end method

.method public getOutArchive()Lnet/sf/sevenzipjbinding/IOutArchive;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/sf/sevenzipjbinding/IOutArchive<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->outArchive:Lnet/sf/sevenzipjbinding/IOutArchive;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPropertyAttributes()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->propertyAttributes:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPropertyCreationTime()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->propertyCreationTime:Ljava/util/Date;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPropertyGroup()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->propertyGroup:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPropertyHardLink()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->propertyHardLink:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPropertyIsAnti()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->propertyIsAnti:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPropertyIsDir()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->propertyIsDir:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPropertyLastAccessTime()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->propertyLastAccessTime:Ljava/util/Date;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPropertyLastModificationTime()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->propertyLastModificationTime:Ljava/util/Date;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPropertyPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->propertyPath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPropertyPosixAttributes()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->propertyPosixAttributes:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPropertySymLink()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->propertySymLink:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPropertyUser()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->propertyUser:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUpdateIsNewData()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->updateIsNewData:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUpdateIsNewProperties()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->updateIsNewProperties:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUpdateOldArchiveItemIndex()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->updateOldArchiveItemIndex:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public setDataSize(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->dataSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public setPropertyAttributes(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->propertyAttributes:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setPropertyCreationTime(Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->propertyCreationTime:Ljava/util/Date;

    .line 2
    .line 3
    return-void
.end method

.method public setPropertyGroup(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->propertyGroup:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPropertyHardLink(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->propertyHardLink:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPropertyIsAnti(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->propertyIsAnti:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public setPropertyIsDir(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->propertyIsDir:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public setPropertyLastAccessTime(Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->propertyLastAccessTime:Ljava/util/Date;

    .line 2
    .line 3
    return-void
.end method

.method public setPropertyLastModificationTime(Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->propertyLastModificationTime:Ljava/util/Date;

    .line 2
    .line 3
    return-void
.end method

.method public setPropertyPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->propertyPath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPropertyPosixAttributes(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->propertyPosixAttributes:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setPropertySymLink(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->propertySymLink:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPropertyUser(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->propertyUser:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setUpdateIsNewData(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->updateIsNewData:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public setUpdateIsNewProperties(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->updateIsNewProperties:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public setUpdateOldArchiveItemIndex(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->updateOldArchiveItemIndex:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method verify(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_7

    .line 2
    .line 3
    iget-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->updateIsNewData:Ljava/lang/Boolean;

    .line 4
    .line 5
    if-eqz p1, :cond_6

    .line 6
    .line 7
    iget-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->updateIsNewProperties:Ljava/lang/Boolean;

    .line 8
    .line 9
    if-eqz p1, :cond_5

    .line 10
    .line 11
    iget-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->updateOldArchiveItemIndex:Ljava/lang/Integer;

    .line 12
    .line 13
    if-eqz p1, :cond_4

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/4 v0, -0x1

    .line 20
    if-ne p1, v0, :cond_2

    .line 21
    .line 22
    iget-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->updateIsNewData:Ljava/lang/Boolean;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->updateIsNewProperties:Ljava/lang/Boolean;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance p1, Lnet/sf/sevenzipjbinding/SevenZipException;

    .line 40
    .line 41
    const-string v0, "updateOldArchiveItemIndex must be provided (updateIsNewProperties is false)"

    .line 42
    .line 43
    invoke-direct {p1, v0}, Lnet/sf/sevenzipjbinding/SevenZipException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1

    .line 47
    :cond_1
    new-instance p1, Lnet/sf/sevenzipjbinding/SevenZipException;

    .line 48
    .line 49
    const-string v0, "updateOldArchiveItemIndex must be provided (updateIsNewData is false)"

    .line 50
    .line 51
    invoke-direct {p1, v0}, Lnet/sf/sevenzipjbinding/SevenZipException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_2
    :goto_0
    iget-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->updateIsNewData:Ljava/lang/Boolean;

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_7

    .line 62
    .line 63
    iget-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->updateIsNewProperties:Ljava/lang/Boolean;

    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_3

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    new-instance p1, Lnet/sf/sevenzipjbinding/SevenZipException;

    .line 73
    .line 74
    const-string v0, "updateIsNewProperties must be set (updateIsNewData is true)"

    .line 75
    .line 76
    invoke-direct {p1, v0}, Lnet/sf/sevenzipjbinding/SevenZipException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p1

    .line 80
    :cond_4
    new-instance p1, Lnet/sf/sevenzipjbinding/SevenZipException;

    .line 81
    .line 82
    const-string v0, "updateOldArchiveItemIndex can\'t be null"

    .line 83
    .line 84
    invoke-direct {p1, v0}, Lnet/sf/sevenzipjbinding/SevenZipException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p1

    .line 88
    :cond_5
    new-instance p1, Lnet/sf/sevenzipjbinding/SevenZipException;

    .line 89
    .line 90
    const-string v0, "updateIsNewProperties can\'t be null"

    .line 91
    .line 92
    invoke-direct {p1, v0}, Lnet/sf/sevenzipjbinding/SevenZipException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p1

    .line 96
    :cond_6
    new-instance p1, Lnet/sf/sevenzipjbinding/SevenZipException;

    .line 97
    .line 98
    const-string v0, "updateIsNewData can\'t be null"

    .line 99
    .line 100
    invoke-direct {p1, v0}, Lnet/sf/sevenzipjbinding/SevenZipException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p1

    .line 104
    :cond_7
    :goto_1
    return-void
.end method
