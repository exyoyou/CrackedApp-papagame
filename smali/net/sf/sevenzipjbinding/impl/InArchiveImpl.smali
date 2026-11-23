.class public final Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/sevenzipjbinding/IInArchive;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/sevenzipjbinding/impl/InArchiveImpl$ExtractSlowCryptoCallback;,
        Lnet/sf/sevenzipjbinding/impl/InArchiveImpl$ExtractSlowCallback;
    }
.end annotation


# instance fields
.field private archiveFormat:Lnet/sf/sevenzipjbinding/ArchiveFormat;

.field private closed:Z

.field private jbindingSession:J

.field private numberOfItems:I

.field private outArchiveImpl:Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl<",
            "*>;"
        }
    .end annotation
.end field

.field private sevenZipArchiveInstance:J

.field private sevenZipInStreamInstance:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->numberOfItems:I

    .line 6
    .line 7
    return-void
.end method

.method private createConnectedOutArchive()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->archiveFormat:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 2
    .line 3
    invoke-virtual {v0}, Lnet/sf/sevenzipjbinding/ArchiveFormat;->isOutArchiveSupported()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->archiveFormat:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 10
    .line 11
    invoke-virtual {v0}, Lnet/sf/sevenzipjbinding/ArchiveFormat;->getOutArchiveImplementation()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;

    .line 20
    .line 21
    iput-object v0, p0, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->outArchiveImpl:Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->setInArchive(Lnet/sf/sevenzipjbinding/IInArchive;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->outArchiveImpl:Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;

    .line 27
    .line 28
    iget-object v1, p0, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->archiveFormat:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->setArchiveFormat(Lnet/sf/sevenzipjbinding/ArchiveFormat;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->outArchiveImpl:Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;

    .line 34
    .line 35
    iget-object v1, p0, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->archiveFormat:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 36
    .line 37
    invoke-direct {p0, v0, v1}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->nativeConnectOutArchive(Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;Lnet/sf/sevenzipjbinding/ArchiveFormat;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 42
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v2, "Internal error: Can\'t create new instance of the class "

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object v2, p0, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->archiveFormat:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 54
    .line 55
    invoke-virtual {v2}, Lnet/sf/sevenzipjbinding/ArchiveFormat;->getOutArchiveImplementation()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v2, " using default constructor."

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw v0

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 76
    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string v2, "Archive format \'"

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget-object v2, p0, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->archiveFormat:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v2, "\' doesn\'t support archive manipulations."

    .line 93
    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw v0
.end method

.method private ensureArchiveFormatForArchiveFormatSpecificUpdateAPI(Lnet/sf/sevenzipjbinding/ArchiveFormat;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->getArchiveFormat()Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-ne v0, p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Lnet/sf/sevenzipjbinding/SevenZipException;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, "Archive format specific update API for "

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lnet/sf/sevenzipjbinding/ArchiveFormat;->getMethodName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p1, "-archives can\'t work with the currently opened "

    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->getArchiveFormat()Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lnet/sf/sevenzipjbinding/ArchiveFormat;->getMethodName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p1, "-archive"

    .line 44
    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {v0, p1}, Lnet/sf/sevenzipjbinding/SevenZipException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v0
.end method

.method private getConnectedOutArchiveIntern()Lnet/sf/sevenzipjbinding/IOutUpdateArchive;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/sf/sevenzipjbinding/IOutItemBase;",
            ">()",
            "Lnet/sf/sevenzipjbinding/IOutUpdateArchive<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->outArchiveImpl:Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->createConnectedOutArchive()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->outArchiveImpl:Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;

    .line 9
    .line 10
    return-object v0
.end method

.method private native nativeClose()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method private native nativeConnectOutArchive(Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;Lnet/sf/sevenzipjbinding/ArchiveFormat;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl<",
            "*>;",
            "Lnet/sf/sevenzipjbinding/ArchiveFormat;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method private native nativeExtract([IZLnet/sf/sevenzipjbinding/IArchiveExtractCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method private native nativeGetArchiveProperty(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method private native nativeGetArchivePropertyInfo(I)Lnet/sf/sevenzipjbinding/PropertyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method private native nativeGetNumberOfArchiveProperties()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method private native nativeGetNumberOfItems()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method private native nativeGetNumberOfProperties()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method private native nativeGetProperty(II)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method private native nativeGetPropertyInfo(I)Lnet/sf/sevenzipjbinding/PropertyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method private native nativeGetStringArchiveProperty(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method private native nativeGetStringProperty(II)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method private setArchiveFormat(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {}, Lnet/sf/sevenzipjbinding/ArchiveFormat;->values()[Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    invoke-virtual {v3}, Lnet/sf/sevenzipjbinding/ArchiveFormat;->getMethodName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    iput-object v3, p0, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->archiveFormat:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->closed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->closed:Z

    .line 8
    .line 9
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->nativeClose()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method ensureOpened()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->closed:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lnet/sf/sevenzipjbinding/SevenZipException;

    .line 7
    .line 8
    const-string v1, "InArchive closed"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Lnet/sf/sevenzipjbinding/SevenZipException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public extract([IZLnet/sf/sevenzipjbinding/IArchiveExtractCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->ensureOpened()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, p3}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->nativeExtract([IZLnet/sf/sevenzipjbinding/IArchiveExtractCallback;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public extractSlow(ILnet/sf/sevenzipjbinding/ISequentialOutStream;)Lnet/sf/sevenzipjbinding/ExtractOperationResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->ensureOpened()V

    .line 2
    new-instance v0, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl$ExtractSlowCallback;

    invoke-direct {v0, p2}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl$ExtractSlowCallback;-><init>(Lnet/sf/sevenzipjbinding/ISequentialOutStream;)V

    .line 3
    filled-new-array {p1}, [I

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->nativeExtract([IZLnet/sf/sevenzipjbinding/IArchiveExtractCallback;)V

    .line 4
    invoke-virtual {v0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl$ExtractSlowCallback;->getExtractOperationResult()Lnet/sf/sevenzipjbinding/ExtractOperationResult;

    move-result-object p1

    return-object p1
.end method

.method public extractSlow(ILnet/sf/sevenzipjbinding/ISequentialOutStream;Ljava/lang/String;)Lnet/sf/sevenzipjbinding/ExtractOperationResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->ensureOpened()V

    .line 6
    new-instance v0, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl$ExtractSlowCryptoCallback;

    invoke-direct {v0, p2, p3}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl$ExtractSlowCryptoCallback;-><init>(Lnet/sf/sevenzipjbinding/ISequentialOutStream;Ljava/lang/String;)V

    .line 7
    filled-new-array {p1}, [I

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->nativeExtract([IZLnet/sf/sevenzipjbinding/IArchiveExtractCallback;)V

    .line 8
    invoke-virtual {v0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl$ExtractSlowCallback;->getExtractOperationResult()Lnet/sf/sevenzipjbinding/ExtractOperationResult;

    move-result-object p1

    return-object p1
.end method

.method public getArchiveFormat()Lnet/sf/sevenzipjbinding/ArchiveFormat;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->archiveFormat:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 2
    .line 3
    return-object v0
.end method

.method public getArchiveProperty(Lnet/sf/sevenzipjbinding/PropID;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->ensureOpened()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lnet/sf/sevenzipjbinding/PropID;->getPropIDIndex()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-direct {p0, p1}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->nativeGetArchiveProperty(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public getArchivePropertyInfo(I)Lnet/sf/sevenzipjbinding/PropertyInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->ensureOpened()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->nativeGetArchivePropertyInfo(I)Lnet/sf/sevenzipjbinding/PropertyInfo;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public getConnectedOutArchive()Lnet/sf/sevenzipjbinding/IOutUpdateArchive;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/sf/sevenzipjbinding/IOutUpdateArchive<",
            "Lnet/sf/sevenzipjbinding/IOutItemAllFormats;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->ensureOpened()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->getConnectedOutArchiveIntern()Lnet/sf/sevenzipjbinding/IOutUpdateArchive;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public getConnectedOutArchive7z()Lnet/sf/sevenzipjbinding/IOutUpdateArchive7z;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->ensureOpened()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->SEVEN_ZIP:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 5
    .line 6
    invoke-direct {p0, v0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->ensureArchiveFormatForArchiveFormatSpecificUpdateAPI(Lnet/sf/sevenzipjbinding/ArchiveFormat;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->getConnectedOutArchiveIntern()Lnet/sf/sevenzipjbinding/IOutUpdateArchive;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lnet/sf/sevenzipjbinding/IOutUpdateArchive7z;

    .line 14
    .line 15
    return-object v0
.end method

.method public getConnectedOutArchiveBZip2()Lnet/sf/sevenzipjbinding/IOutUpdateArchiveBZip2;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->ensureOpened()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->BZIP2:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 5
    .line 6
    invoke-direct {p0, v0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->ensureArchiveFormatForArchiveFormatSpecificUpdateAPI(Lnet/sf/sevenzipjbinding/ArchiveFormat;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->getConnectedOutArchiveIntern()Lnet/sf/sevenzipjbinding/IOutUpdateArchive;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lnet/sf/sevenzipjbinding/IOutUpdateArchiveBZip2;

    .line 14
    .line 15
    return-object v0
.end method

.method public getConnectedOutArchiveGZip()Lnet/sf/sevenzipjbinding/IOutUpdateArchiveGZip;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->ensureOpened()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->GZIP:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 5
    .line 6
    invoke-direct {p0, v0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->ensureArchiveFormatForArchiveFormatSpecificUpdateAPI(Lnet/sf/sevenzipjbinding/ArchiveFormat;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->getConnectedOutArchiveIntern()Lnet/sf/sevenzipjbinding/IOutUpdateArchive;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lnet/sf/sevenzipjbinding/IOutUpdateArchiveGZip;

    .line 14
    .line 15
    return-object v0
.end method

.method public getConnectedOutArchiveTar()Lnet/sf/sevenzipjbinding/IOutUpdateArchiveTar;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->ensureOpened()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->TAR:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 5
    .line 6
    invoke-direct {p0, v0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->ensureArchiveFormatForArchiveFormatSpecificUpdateAPI(Lnet/sf/sevenzipjbinding/ArchiveFormat;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->getConnectedOutArchiveIntern()Lnet/sf/sevenzipjbinding/IOutUpdateArchive;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lnet/sf/sevenzipjbinding/IOutUpdateArchiveTar;

    .line 14
    .line 15
    return-object v0
.end method

.method public getConnectedOutArchiveZip()Lnet/sf/sevenzipjbinding/IOutUpdateArchiveZip;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->ensureOpened()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->ZIP:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 5
    .line 6
    invoke-direct {p0, v0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->ensureArchiveFormatForArchiveFormatSpecificUpdateAPI(Lnet/sf/sevenzipjbinding/ArchiveFormat;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->getConnectedOutArchiveIntern()Lnet/sf/sevenzipjbinding/IOutUpdateArchive;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lnet/sf/sevenzipjbinding/IOutUpdateArchiveZip;

    .line 14
    .line 15
    return-object v0
.end method

.method public getNumberOfArchiveProperties()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->ensureOpened()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->nativeGetNumberOfArchiveProperties()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public getNumberOfItems()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->ensureOpened()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->numberOfItems:I

    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->nativeGetNumberOfItems()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput v0, p0, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->numberOfItems:I

    .line 14
    .line 15
    :cond_0
    iget v0, p0, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->numberOfItems:I

    .line 16
    .line 17
    return v0
.end method

.method public getNumberOfProperties()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->ensureOpened()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->nativeGetNumberOfProperties()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public getProperty(ILnet/sf/sevenzipjbinding/PropID;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->ensureOpened()V

    .line 2
    .line 3
    .line 4
    if-ltz p1, :cond_6

    .line 5
    .line 6
    invoke-virtual {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->getNumberOfItems()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-ge p1, v0, :cond_6

    .line 11
    .line 12
    invoke-virtual {p2}, Lnet/sf/sevenzipjbinding/PropID;->getPropIDIndex()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-direct {p0, p1, v0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->nativeGetProperty(II)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    sget-object v0, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl$1;->$SwitchMap$net$sf$sevenzipjbinding$PropID:[I

    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    aget p2, v0, p2

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    if-eq p2, v0, :cond_3

    .line 30
    .line 31
    const/4 v0, 0x2

    .line 32
    if-eq p2, v0, :cond_3

    .line 33
    .line 34
    const/4 v0, 0x3

    .line 35
    if-eq p2, v0, :cond_2

    .line 36
    .line 37
    const/4 v0, 0x4

    .line 38
    if-eq p2, v0, :cond_1

    .line 39
    .line 40
    const/4 v0, 0x5

    .line 41
    if-eq p2, v0, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    if-eqz p1, :cond_5

    .line 45
    .line 46
    invoke-static {}, Lnet/sf/sevenzipjbinding/NFileTimeType;->values()[Lnet/sf/sevenzipjbinding/NFileTimeType;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    check-cast p1, Ljava/lang/Integer;

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    aget-object p1, p2, p1

    .line 57
    .line 58
    return-object p1

    .line 59
    :cond_1
    if-nez p1, :cond_5

    .line 60
    .line 61
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 62
    .line 63
    return-object p1

    .line 64
    :cond_2
    if-nez p1, :cond_5

    .line 65
    .line 66
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 67
    .line 68
    return-object p1

    .line 69
    :cond_3
    instance-of p2, p1, Ljava/lang/Integer;

    .line 70
    .line 71
    if-eqz p2, :cond_4

    .line 72
    .line 73
    check-cast p1, Ljava/lang/Integer;

    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/Integer;->longValue()J

    .line 76
    .line 77
    .line 78
    move-result-wide p1

    .line 79
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    return-object p1

    .line 84
    :cond_4
    if-nez p1, :cond_5

    .line 85
    .line 86
    iget-object p2, p0, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->archiveFormat:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 87
    .line 88
    if-eqz p2, :cond_5

    .line 89
    .line 90
    sget-object v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->NSIS:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 91
    .line 92
    if-ne p2, v0, :cond_5

    .line 93
    .line 94
    const-wide/16 p1, 0x0

    .line 95
    .line 96
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    :cond_5
    :goto_0
    return-object p1

    .line 101
    :cond_6
    new-instance p2, Lnet/sf/sevenzipjbinding/SevenZipException;

    .line 102
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v1, "Index out of range. Index: "

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string p1, ", NumberOfItems: "

    .line 117
    .line 118
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->getNumberOfItems()I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-direct {p2, p1}, Lnet/sf/sevenzipjbinding/SevenZipException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw p2
.end method

.method public getPropertyInfo(I)Lnet/sf/sevenzipjbinding/PropertyInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->ensureOpened()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->nativeGetPropertyInfo(I)Lnet/sf/sevenzipjbinding/PropertyInfo;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public getSimpleInterface()Lnet/sf/sevenzipjbinding/simple/ISimpleInArchive;
    .locals 1

    .line 1
    new-instance v0, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;-><init>(Lnet/sf/sevenzipjbinding/IInArchive;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getStringArchiveProperty(Lnet/sf/sevenzipjbinding/PropID;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->ensureOpened()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lnet/sf/sevenzipjbinding/PropID;->getPropIDIndex()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-direct {p0, p1}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->nativeGetStringArchiveProperty(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public getStringProperty(ILnet/sf/sevenzipjbinding/PropID;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->ensureOpened()V

    .line 2
    .line 3
    .line 4
    if-ltz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->getNumberOfItems()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-ge p1, v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p2}, Lnet/sf/sevenzipjbinding/PropID;->getPropIDIndex()I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    invoke-direct {p0, p1, p2}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->nativeGetStringProperty(II)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    :cond_0
    new-instance p2, Lnet/sf/sevenzipjbinding/SevenZipException;

    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v1, "Index out of range. Index: "

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p1, ", NumberOfItems: "

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->getNumberOfItems()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {p2, p1}, Lnet/sf/sevenzipjbinding/SevenZipException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p2
.end method
