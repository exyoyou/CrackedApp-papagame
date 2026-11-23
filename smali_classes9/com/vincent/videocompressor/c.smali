.class public Lcom/vincent/videocompressor/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field private a:Lcom/googlecode/mp4parser/util/l;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/vincent/videocompressor/g;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/io/File;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/googlecode/mp4parser/util/l;->j:Lcom/googlecode/mp4parser/util/l;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/vincent/videocompressor/c;->a:Lcom/googlecode/mp4parser/util/l;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/vincent/videocompressor/c;->b:Ljava/util/ArrayList;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public a(IJLandroid/media/MediaCodec$BufferInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "trackIndex",
            "offset",
            "bufferInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/vincent/videocompressor/c;->b:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lt p1, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/vincent/videocompressor/c;->b:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/vincent/videocompressor/g;

    .line 19
    .line 20
    invoke-virtual {p1, p2, p3, p4}, Lcom/vincent/videocompressor/g;->a(JLandroid/media/MediaCodec$BufferInfo;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    return-void
.end method

.method public b(Landroid/media/MediaFormat;Z)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mediaFormat",
            "isAudio"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vincent/videocompressor/c;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    new-instance v1, Lcom/vincent/videocompressor/g;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/vincent/videocompressor/c;->b:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-direct {v1, v2, p1, p2}, Lcom/vincent/videocompressor/g;-><init>(ILandroid/media/MediaFormat;Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/vincent/videocompressor/c;->b:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    add-int/lit8 p1, p1, -0x1

    .line 24
    .line 25
    return p1
.end method

.method public c()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vincent/videocompressor/c;->c:Ljava/io/File;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/vincent/videocompressor/c;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public e()Lcom/googlecode/mp4parser/util/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vincent/videocompressor/c;->a:Lcom/googlecode/mp4parser/util/l;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/vincent/videocompressor/g;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vincent/videocompressor/c;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/vincent/videocompressor/c;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public h(Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/vincent/videocompressor/c;->c:Ljava/io/File;

    .line 2
    .line 3
    return-void
.end method

.method public i(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "angle"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/googlecode/mp4parser/util/l;->j:Lcom/googlecode/mp4parser/util/l;

    .line 4
    .line 5
    iput-object p1, p0, Lcom/vincent/videocompressor/c;->a:Lcom/googlecode/mp4parser/util/l;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 v0, 0x5a

    .line 9
    .line 10
    if-ne p1, v0, :cond_1

    .line 11
    .line 12
    sget-object p1, Lcom/googlecode/mp4parser/util/l;->k:Lcom/googlecode/mp4parser/util/l;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/vincent/videocompressor/c;->a:Lcom/googlecode/mp4parser/util/l;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/16 v0, 0xb4

    .line 18
    .line 19
    if-ne p1, v0, :cond_2

    .line 20
    .line 21
    sget-object p1, Lcom/googlecode/mp4parser/util/l;->l:Lcom/googlecode/mp4parser/util/l;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/vincent/videocompressor/c;->a:Lcom/googlecode/mp4parser/util/l;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    const/16 v0, 0x10e

    .line 27
    .line 28
    if-ne p1, v0, :cond_3

    .line 29
    .line 30
    sget-object p1, Lcom/googlecode/mp4parser/util/l;->m:Lcom/googlecode/mp4parser/util/l;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/vincent/videocompressor/c;->a:Lcom/googlecode/mp4parser/util/l;

    .line 33
    .line 34
    :cond_3
    :goto_0
    return-void
.end method

.method public j(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "w",
            "h"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/vincent/videocompressor/c;->d:I

    .line 2
    .line 3
    iput p2, p0, Lcom/vincent/videocompressor/c;->e:I

    .line 4
    .line 5
    return-void
.end method
