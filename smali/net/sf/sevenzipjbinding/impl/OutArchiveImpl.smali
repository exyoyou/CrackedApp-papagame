.class public Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/sevenzipjbinding/IOutArchive;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lnet/sf/sevenzipjbinding/IOutItemBase;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/sf/sevenzipjbinding/IOutArchive<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private archiveFormat:Lnet/sf/sevenzipjbinding/ArchiveFormat;

.field private closed:Z

.field private compressionLevel:I

.field private headerEncryption:Ljava/lang/Boolean;

.field private inArchive:Lnet/sf/sevenzipjbinding/IInArchive;

.field private jbindingSession:J

.field private sevenZipArchiveInstance:J

.field private threadCount:I

.field private trace:Z

.field private tracePrintStream:Ljava/io/PrintStream;


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
    iput v0, p0, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->compressionLevel:I

    .line 6
    .line 7
    iput v0, p0, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->threadCount:I

    .line 8
    .line 9
    return-void
.end method

.method private doUpdateItems(Lnet/sf/sevenzipjbinding/ISequentialOutStream;ILnet/sf/sevenzipjbinding/IOutCreateCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/sevenzipjbinding/ISequentialOutStream;",
            "I",
            "Lnet/sf/sevenzipjbinding/IOutCreateCallback<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->applyFeatures()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, p3}, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->nativeUpdateItems(Lnet/sf/sevenzipjbinding/ISequentialOutStream;ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private ensureOpened()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->closed:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->inArchive:Lnet/sf/sevenzipjbinding/IInArchive;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast v0, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;

    .line 10
    .line 11
    invoke-virtual {v0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->ensureOpened()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void

    .line 15
    :cond_1
    new-instance v0, Lnet/sf/sevenzipjbinding/SevenZipException;

    .line 16
    .line 17
    const-string v1, "OutArchive closed"

    .line 18
    .line 19
    invoke-direct {v0, v1}, Lnet/sf/sevenzipjbinding/SevenZipException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw v0
.end method

.method private native nativeClose()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method private native nativeUpdateItems(Lnet/sf/sevenzipjbinding/ISequentialOutStream;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method private final traceMessage(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->trace:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->tracePrintStream:Ljava/io/PrintStream;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected applyFeatures()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->ensureOpened()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->compressionLevel:I

    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->nativeSetLevel(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->headerEncryption:Ljava/lang/Boolean;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p0, v0}, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->nativeSetHeaderEncryption(Z)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget v0, p0, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->threadCount:I

    .line 24
    .line 25
    if-ltz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->nativeSetMultithreading(I)V

    .line 28
    .line 29
    .line 30
    :cond_2
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->closed:Z

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
    iput-boolean v0, p0, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->closed:Z

    .line 8
    .line 9
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->inArchive:Lnet/sf/sevenzipjbinding/IInArchive;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->nativeClose()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public createArchive(Lnet/sf/sevenzipjbinding/ISequentialOutStream;ILnet/sf/sevenzipjbinding/IOutCreateCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/sevenzipjbinding/ISequentialOutStream;",
            "I",
            "Lnet/sf/sevenzipjbinding/IOutCreateCallback<",
            "+TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->ensureOpened()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, p3}, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->doUpdateItems(Lnet/sf/sevenzipjbinding/ISequentialOutStream;ILnet/sf/sevenzipjbinding/IOutCreateCallback;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected featureSetHeaderEncryption(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->headerEncryption:Ljava/lang/Boolean;

    .line 6
    .line 7
    return-void
.end method

.method protected featureSetLevel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->compressionLevel:I

    .line 2
    .line 3
    return-void
.end method

.method protected featureSetThreadCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->threadCount:I

    .line 2
    .line 3
    return-void
.end method

.method public getArchiveFormat()Lnet/sf/sevenzipjbinding/ArchiveFormat;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->archiveFormat:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 2
    .line 3
    return-object v0
.end method

.method public getConnectedInArchive()Lnet/sf/sevenzipjbinding/IInArchive;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->inArchive:Lnet/sf/sevenzipjbinding/IInArchive;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTracePrintStream()Ljava/io/PrintStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->tracePrintStream:Ljava/io/PrintStream;

    .line 2
    .line 3
    return-object v0
.end method

.method public isTrace()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->trace:Z

    .line 2
    .line 3
    return v0
.end method

.method protected native nativeSetHeaderEncryption(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method protected native nativeSetLevel(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method protected native nativeSetMultithreading(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method protected native nativeSetSolidSpec(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method protected setArchiveFormat(Lnet/sf/sevenzipjbinding/ArchiveFormat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->archiveFormat:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 2
    .line 3
    return-void
.end method

.method protected setInArchive(Lnet/sf/sevenzipjbinding/IInArchive;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->inArchive:Lnet/sf/sevenzipjbinding/IInArchive;

    .line 2
    .line 3
    return-void
.end method

.method public setTrace(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->trace:Z

    .line 2
    .line 3
    return-void
.end method

.method public setTracePrintStream(Ljava/io/PrintStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->tracePrintStream:Ljava/io/PrintStream;

    .line 2
    .line 3
    return-void
.end method

.method public updateItems(Lnet/sf/sevenzipjbinding/ISequentialOutStream;ILnet/sf/sevenzipjbinding/IOutCreateCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/sevenzipjbinding/ISequentialOutStream;",
            "I",
            "Lnet/sf/sevenzipjbinding/IOutCreateCallback<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->ensureOpened()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, p3}, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->doUpdateItems(Lnet/sf/sevenzipjbinding/ISequentialOutStream;ILnet/sf/sevenzipjbinding/IOutCreateCallback;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
