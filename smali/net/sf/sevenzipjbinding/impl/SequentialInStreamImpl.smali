.class public Lnet/sf/sevenzipjbinding/impl/SequentialInStreamImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/sevenzipjbinding/ISequentialInStream;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private inputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/sf/sevenzipjbinding/impl/SequentialInStreamImpl;->inputStream:Ljava/io/InputStream;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/SequentialInStreamImpl;->inputStream:Ljava/io/InputStream;

    .line 2
    .line 3
    return-object v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return v1

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/SequentialInStreamImpl;->inputStream:Ljava/io/InputStream;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    .line 9
    .line 10
    .line 11
    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    if-gez p1, :cond_1

    .line 13
    .line 14
    return v1

    .line 15
    :cond_1
    return p1

    .line 16
    :catch_0
    move-exception p1

    .line 17
    new-instance v0, Lnet/sf/sevenzipjbinding/SevenZipException;

    .line 18
    .line 19
    const-string v1, "Error reading input stream"

    .line 20
    .line 21
    invoke-direct {v0, v1, p1}, Lnet/sf/sevenzipjbinding/SevenZipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    throw v0
.end method
