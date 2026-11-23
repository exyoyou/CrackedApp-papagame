.class Lorg/hmwebrtc/audio/SimplePcmFile;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hmwebrtc/audio/SimplePcmFile$SimpleReader;,
        Lorg/hmwebrtc/audio/SimplePcmFile$SimpleWriter;,
        Lorg/hmwebrtc/audio/SimplePcmFile$Reader;,
        Lorg/hmwebrtc/audio/SimplePcmFile$Writer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioSimplePcmFile"


# instance fields
.field private mFilePath:Ljava/lang/String;

.field private mInputFileStream:Ljava/io/FileInputStream;

.field private mReader:Lorg/hmwebrtc/audio/SimplePcmFile$SimpleReader;

.field private mWriter:Lorg/hmwebrtc/audio/SimplePcmFile$SimpleWriter;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/hmwebrtc/audio/SimplePcmFile;->mFilePath:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/audio/SimplePcmFile;->mReader:Lorg/hmwebrtc/audio/SimplePcmFile$SimpleReader;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/hmwebrtc/audio/SimplePcmFile$SimpleReader;->close()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lorg/hmwebrtc/audio/SimplePcmFile;->mReader:Lorg/hmwebrtc/audio/SimplePcmFile$SimpleReader;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lorg/hmwebrtc/audio/SimplePcmFile;->mWriter:Lorg/hmwebrtc/audio/SimplePcmFile$SimpleWriter;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lorg/hmwebrtc/audio/SimplePcmFile$SimpleWriter;->close()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lorg/hmwebrtc/audio/SimplePcmFile;->mWriter:Lorg/hmwebrtc/audio/SimplePcmFile$SimpleWriter;

    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public getReader()Lorg/hmwebrtc/audio/SimplePcmFile$Reader;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/audio/SimplePcmFile;->mReader:Lorg/hmwebrtc/audio/SimplePcmFile$SimpleReader;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lorg/hmwebrtc/audio/SimplePcmFile$SimpleReader;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/hmwebrtc/audio/SimplePcmFile;->mFilePath:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {v0, p0, v1}, Lorg/hmwebrtc/audio/SimplePcmFile$SimpleReader;-><init>(Lorg/hmwebrtc/audio/SimplePcmFile;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lorg/hmwebrtc/audio/SimplePcmFile;->mReader:Lorg/hmwebrtc/audio/SimplePcmFile$SimpleReader;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lorg/hmwebrtc/audio/SimplePcmFile;->mReader:Lorg/hmwebrtc/audio/SimplePcmFile$SimpleReader;

    .line 15
    .line 16
    return-object v0
.end method

.method public getWriter()Lorg/hmwebrtc/audio/SimplePcmFile$Writer;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/audio/SimplePcmFile;->mWriter:Lorg/hmwebrtc/audio/SimplePcmFile$SimpleWriter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lorg/hmwebrtc/audio/SimplePcmFile$SimpleWriter;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/hmwebrtc/audio/SimplePcmFile;->mFilePath:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {v0, p0, v1}, Lorg/hmwebrtc/audio/SimplePcmFile$SimpleWriter;-><init>(Lorg/hmwebrtc/audio/SimplePcmFile;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lorg/hmwebrtc/audio/SimplePcmFile;->mWriter:Lorg/hmwebrtc/audio/SimplePcmFile$SimpleWriter;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lorg/hmwebrtc/audio/SimplePcmFile;->mWriter:Lorg/hmwebrtc/audio/SimplePcmFile$SimpleWriter;

    .line 15
    .line 16
    return-object v0
.end method
