.class public Lnet/sf/sevenzipjbinding/impl/OutArchive7zImpl;
.super Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;
.source "SourceFile"

# interfaces
.implements Lnet/sf/sevenzipjbinding/IOutCreateArchive7z;
.implements Lnet/sf/sevenzipjbinding/IOutUpdateArchive7z;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl<",
        "Lnet/sf/sevenzipjbinding/IOutItem7z;",
        ">;",
        "Lnet/sf/sevenzipjbinding/IOutCreateArchive7z;",
        "Lnet/sf/sevenzipjbinding/IOutUpdateArchive7z;"
    }
.end annotation


# instance fields
.field private countOfBytesPerBlock:J

.field private countOfFilesPerBlock:I

.field private solid:Z

.field private solidExtension:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lnet/sf/sevenzipjbinding/impl/OutArchive7zImpl;->solid:Z

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lnet/sf/sevenzipjbinding/impl/OutArchive7zImpl;->countOfFilesPerBlock:I

    .line 9
    .line 10
    const-wide/16 v0, -0x1

    .line 11
    .line 12
    iput-wide v0, p0, Lnet/sf/sevenzipjbinding/impl/OutArchive7zImpl;->countOfBytesPerBlock:J

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method protected applyFeatures()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->applyFeatures()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-boolean v1, p0, Lnet/sf/sevenzipjbinding/impl/OutArchive7zImpl;->solidExtension:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const-string v1, "E"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    :cond_0
    iget v1, p0, Lnet/sf/sevenzipjbinding/impl/OutArchive7zImpl;->countOfFilesPerBlock:I

    .line 19
    .line 20
    const/4 v2, -0x1

    .line 21
    if-eq v1, v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, "F"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-wide v1, p0, Lnet/sf/sevenzipjbinding/impl/OutArchive7zImpl;->countOfBytesPerBlock:J

    .line 32
    .line 33
    const-wide/16 v3, -0x1

    .line 34
    .line 35
    cmp-long v5, v1, v3

    .line 36
    .line 37
    if-eqz v5, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, "B"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-lez v1, :cond_3

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p0, v0}, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->nativeSetSolidSpec(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    iget-boolean v0, p0, Lnet/sf/sevenzipjbinding/impl/OutArchive7zImpl;->solid:Z

    .line 61
    .line 62
    if-nez v0, :cond_4

    .line 63
    .line 64
    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0, v0}, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->nativeSetSolidSpec(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_4
    return-void
.end method

.method public setHeaderEncryption(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->featureSetHeaderEncryption(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setLevel(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->featureSetLevel(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setSolid(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lnet/sf/sevenzipjbinding/impl/OutArchive7zImpl;->solid:Z

    .line 2
    .line 3
    return-void
.end method

.method public setSolidExtension(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lnet/sf/sevenzipjbinding/impl/OutArchive7zImpl;->solidExtension:Z

    .line 2
    .line 3
    return-void
.end method

.method public setSolidFiles(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/sf/sevenzipjbinding/impl/OutArchive7zImpl;->countOfFilesPerBlock:I

    .line 2
    .line 3
    return-void
.end method

.method public setSolidSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lnet/sf/sevenzipjbinding/impl/OutArchive7zImpl;->countOfBytesPerBlock:J

    .line 2
    .line 3
    return-void
.end method

.method public setThreadCount(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->featureSetThreadCount(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
