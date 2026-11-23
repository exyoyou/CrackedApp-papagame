.class public Lcom/googlecode/mp4parser/authoring/tracks/e;
.super Lcom/googlecode/mp4parser/authoring/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/authoring/tracks/e$a;
    }
.end annotation


# instance fields
.field c:Lcom/coremedia/iso/boxes/s0;

.field d:Lcom/mp4parser/iso14496/part15/a;

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/authoring/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/googlecode/mp4parser/authoring/h;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/authoring/j;-><init>(Lcom/googlecode/mp4parser/authoring/h;)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->F()Lcom/coremedia/iso/boxes/s0;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/s0;->v()Lcom/coremedia/iso/boxes/sampleentry/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/b;->getType()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "avc1"

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->F()Lcom/coremedia/iso/boxes/s0;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/s0;->a(Ljava/nio/channels/WritableByteChannel;)V

    .line 38
    .line 39
    .line 40
    new-instance v1, Lcom/coremedia/iso/f;

    .line 41
    .line 42
    new-instance v2, Lcom/googlecode/mp4parser/i;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-direct {v2, v0}, Lcom/googlecode/mp4parser/i;-><init>([B)V

    .line 49
    .line 50
    .line 51
    invoke-direct {v1, v2}, Lcom/coremedia/iso/f;-><init>(Lcom/googlecode/mp4parser/e;)V

    .line 52
    .line 53
    .line 54
    const-string v0, "stsd"

    .line 55
    .line 56
    invoke-static {v1, v0}, Lcom/googlecode/mp4parser/util/m;->d(Lcom/coremedia/iso/boxes/j;Ljava/lang/String;)Lcom/coremedia/iso/boxes/d;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Lcom/coremedia/iso/boxes/s0;

    .line 61
    .line 62
    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/e;->c:Lcom/coremedia/iso/boxes/s0;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/s0;->v()Lcom/coremedia/iso/boxes/sampleentry/a;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Lcom/coremedia/iso/boxes/sampleentry/h;

    .line 69
    .line 70
    const-string v1, "avc3"

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/sampleentry/h;->a0(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/e;->c:Lcom/coremedia/iso/boxes/s0;

    .line 76
    .line 77
    const-string v1, "avc./avcC"

    .line 78
    .line 79
    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/m;->e(Lcom/googlecode/mp4parser/b;Ljava/lang/String;)Lcom/coremedia/iso/boxes/d;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Lcom/mp4parser/iso14496/part15/a;

    .line 84
    .line 85
    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/e;->d:Lcom/mp4parser/iso14496/part15/a;

    .line 86
    .line 87
    new-instance v0, Lcom/googlecode/mp4parser/authoring/tracks/e$a;

    .line 88
    .line 89
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->U()Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-direct {v0, p0, p1}, Lcom/googlecode/mp4parser/authoring/tracks/e$a;-><init>(Lcom/googlecode/mp4parser/authoring/tracks/e;Ljava/util/List;)V

    .line 94
    .line 95
    .line 96
    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/e;->e:Ljava/util/List;

    .line 97
    .line 98
    return-void

    .line 99
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 100
    .line 101
    const-string v0, "Only avc1 tracks can be converted to avc3 tracks"

    .line 102
    .line 103
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p1
.end method


# virtual methods
.method public F()Lcom/coremedia/iso/boxes/s0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/e;->c:Lcom/coremedia/iso/boxes/s0;

    .line 2
    .line 3
    return-object v0
.end method

.method public U()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/authoring/f;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/e;->e:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method
