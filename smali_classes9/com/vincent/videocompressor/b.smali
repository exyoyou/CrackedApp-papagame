.class public Lcom/vincent/videocompressor/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vincent/videocompressor/b$b;
    }
.end annotation


# instance fields
.field private a:Lcom/vincent/videocompressor/b$b;

.field private b:Lcom/vincent/videocompressor/c;

.field private c:Ljava/io/FileOutputStream;

.field private d:Ljava/nio/channels/FileChannel;

.field private e:J

.field private f:J

.field private g:Z

.field private h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/vincent/videocompressor/g;",
            "[J>;"
        }
    .end annotation
.end field

.field private i:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/vincent/videocompressor/b;->a:Lcom/vincent/videocompressor/b$b;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/vincent/videocompressor/b;->b:Lcom/vincent/videocompressor/c;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/vincent/videocompressor/b;->c:Ljava/io/FileOutputStream;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/vincent/videocompressor/b;->d:Ljava/nio/channels/FileChannel;

    .line 12
    .line 13
    const-wide/16 v1, 0x0

    .line 14
    .line 15
    iput-wide v1, p0, Lcom/vincent/videocompressor/b;->e:J

    .line 16
    .line 17
    iput-wide v1, p0, Lcom/vincent/videocompressor/b;->f:J

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    iput-boolean v1, p0, Lcom/vincent/videocompressor/b;->g:Z

    .line 21
    .line 22
    new-instance v1, Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/vincent/videocompressor/b;->h:Ljava/util/HashMap;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/vincent/videocompressor/b;->i:Ljava/nio/ByteBuffer;

    .line 30
    .line 31
    return-void
.end method

.method private n()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vincent/videocompressor/b;->d:Ljava/nio/channels/FileChannel;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lcom/vincent/videocompressor/b;->d:Ljava/nio/channels/FileChannel;

    .line 8
    .line 9
    iget-object v3, p0, Lcom/vincent/videocompressor/b;->a:Lcom/vincent/videocompressor/b$b;

    .line 10
    .line 11
    invoke-virtual {v3}, Lcom/vincent/videocompressor/b$b;->e()J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    invoke-virtual {v2, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/vincent/videocompressor/b;->a:Lcom/vincent/videocompressor/b$b;

    .line 19
    .line 20
    iget-object v3, p0, Lcom/vincent/videocompressor/b;->d:Ljava/nio/channels/FileChannel;

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Lcom/vincent/videocompressor/b$b;->a(Ljava/nio/channels/WritableByteChannel;)V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lcom/vincent/videocompressor/b;->d:Ljava/nio/channels/FileChannel;

    .line 26
    .line 27
    invoke-virtual {v2, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/vincent/videocompressor/b;->a:Lcom/vincent/videocompressor/b$b;

    .line 31
    .line 32
    const-wide/16 v1, 0x0

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/vincent/videocompressor/b$b;->h(J)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/vincent/videocompressor/b;->a:Lcom/vincent/videocompressor/b$b;

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Lcom/vincent/videocompressor/b$b;->g(J)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/vincent/videocompressor/b;->c:Ljava/io/FileOutputStream;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public static o(JJ)J
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p2, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    return-wide p0

    .line 8
    :cond_0
    rem-long/2addr p0, p2

    .line 9
    invoke-static {p2, p3, p0, p1}, Lcom/vincent/videocompressor/b;->o(JJ)J

    .line 10
    .line 11
    .line 12
    move-result-wide p0

    .line 13
    return-wide p0
.end method


# virtual methods
.method public a(Landroid/media/MediaFormat;Z)I
    .locals 1
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
    iget-object v0, p0, Lcom/vincent/videocompressor/b;->b:Lcom/vincent/videocompressor/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/vincent/videocompressor/c;->b(Landroid/media/MediaFormat;Z)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method protected b()Lcom/coremedia/iso/boxes/s;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "isom"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    const-string v2, "3gp4"

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    new-instance v2, Lcom/coremedia/iso/boxes/s;

    .line 17
    .line 18
    const-wide/16 v3, 0x0

    .line 19
    .line 20
    invoke-direct {v2, v1, v3, v4, v0}, Lcom/coremedia/iso/boxes/s;-><init>(Ljava/lang/String;JLjava/util/List;)V

    .line 21
    .line 22
    .line 23
    return-object v2
.end method

.method public c(Lcom/vincent/videocompressor/c;)Lcom/vincent/videocompressor/b;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mp4Movie"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/vincent/videocompressor/b;->b:Lcom/vincent/videocompressor/c;

    .line 2
    .line 3
    new-instance v0, Ljava/io/FileOutputStream;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/vincent/videocompressor/c;->c()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/vincent/videocompressor/b;->c:Ljava/io/FileOutputStream;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/vincent/videocompressor/b;->d:Ljava/nio/channels/FileChannel;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/vincent/videocompressor/b;->b()Lcom/coremedia/iso/boxes/s;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object v0, p0, Lcom/vincent/videocompressor/b;->d:Ljava/nio/channels/FileChannel;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/a;->a(Ljava/nio/channels/WritableByteChannel;)V

    .line 27
    .line 28
    .line 29
    iget-wide v0, p0, Lcom/vincent/videocompressor/b;->e:J

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/a;->getSize()J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    add-long/2addr v0, v2

    .line 36
    iput-wide v0, p0, Lcom/vincent/videocompressor/b;->e:J

    .line 37
    .line 38
    iget-wide v2, p0, Lcom/vincent/videocompressor/b;->f:J

    .line 39
    .line 40
    add-long/2addr v2, v0

    .line 41
    iput-wide v2, p0, Lcom/vincent/videocompressor/b;->f:J

    .line 42
    .line 43
    new-instance p1, Lcom/vincent/videocompressor/b$b;

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    invoke-direct {p1, p0, v0}, Lcom/vincent/videocompressor/b$b;-><init>(Lcom/vincent/videocompressor/b;Lcom/vincent/videocompressor/b$a;)V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lcom/vincent/videocompressor/b;->a:Lcom/vincent/videocompressor/b$b;

    .line 50
    .line 51
    const/4 p1, 0x4

    .line 52
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iput-object p1, p0, Lcom/vincent/videocompressor/b;->i:Ljava/nio/ByteBuffer;

    .line 57
    .line 58
    return-object p0
.end method

.method protected d(Lcom/vincent/videocompressor/c;)Lcom/coremedia/iso/boxes/h0;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "movie"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/coremedia/iso/boxes/h0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/coremedia/iso/boxes/h0;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/coremedia/iso/boxes/i0;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/coremedia/iso/boxes/i0;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Ljava/util/Date;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/i0;->J(Ljava/util/Date;)V

    .line 17
    .line 18
    .line 19
    new-instance v2, Ljava/util/Date;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/i0;->N(Ljava/util/Date;)V

    .line 25
    .line 26
    .line 27
    sget-object v2, Lcom/googlecode/mp4parser/util/l;->j:Lcom/googlecode/mp4parser/util/l;

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/i0;->M(Lcom/googlecode/mp4parser/util/l;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/vincent/videocompressor/b;->p(Lcom/vincent/videocompressor/c;)J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    invoke-virtual {p1}, Lcom/vincent/videocompressor/c;->f()Ljava/util/ArrayList;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    const-wide/16 v5, 0x0

    .line 45
    .line 46
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    if-eqz v7, :cond_1

    .line 51
    .line 52
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    check-cast v7, Lcom/vincent/videocompressor/g;

    .line 57
    .line 58
    invoke-virtual {v7}, Lcom/vincent/videocompressor/g;->c()J

    .line 59
    .line 60
    .line 61
    move-result-wide v8

    .line 62
    mul-long v8, v8, v2

    .line 63
    .line 64
    invoke-virtual {v7}, Lcom/vincent/videocompressor/g;->k()I

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    int-to-long v10, v7

    .line 69
    div-long/2addr v8, v10

    .line 70
    cmp-long v7, v8, v5

    .line 71
    .line 72
    if-lez v7, :cond_0

    .line 73
    .line 74
    move-wide v5, v8

    .line 75
    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {v1, v5, v6}, Lcom/coremedia/iso/boxes/i0;->L(J)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v2, v3}, Lcom/coremedia/iso/boxes/i0;->V(J)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/vincent/videocompressor/c;->f()Ljava/util/ArrayList;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    add-int/lit8 v2, v2, 0x1

    .line 91
    .line 92
    int-to-long v2, v2

    .line 93
    invoke-virtual {v1, v2, v3}, Lcom/coremedia/iso/boxes/i0;->O(J)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/vincent/videocompressor/c;->f()Ljava/util/ArrayList;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-eqz v2, :cond_2

    .line 112
    .line 113
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    check-cast v2, Lcom/vincent/videocompressor/g;

    .line 118
    .line 119
    invoke-virtual {p0, v2, p1}, Lcom/vincent/videocompressor/b;->l(Lcom/vincent/videocompressor/g;Lcom/vincent/videocompressor/c;)Lcom/coremedia/iso/boxes/f1;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_2
    return-object v0
.end method

.method protected e(Lcom/vincent/videocompressor/g;)Lcom/coremedia/iso/boxes/d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "track"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/coremedia/iso/boxes/u0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/coremedia/iso/boxes/u0;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/vincent/videocompressor/b;->h(Lcom/vincent/videocompressor/g;Lcom/coremedia/iso/boxes/u0;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/vincent/videocompressor/b;->k(Lcom/vincent/videocompressor/g;Lcom/coremedia/iso/boxes/u0;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/vincent/videocompressor/b;->i(Lcom/vincent/videocompressor/g;Lcom/coremedia/iso/boxes/u0;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1, v0}, Lcom/vincent/videocompressor/b;->g(Lcom/vincent/videocompressor/g;Lcom/coremedia/iso/boxes/u0;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1, v0}, Lcom/vincent/videocompressor/b;->j(Lcom/vincent/videocompressor/g;Lcom/coremedia/iso/boxes/u0;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/vincent/videocompressor/b;->f(Lcom/vincent/videocompressor/g;Lcom/coremedia/iso/boxes/u0;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method protected f(Lcom/vincent/videocompressor/g;Lcom/coremedia/iso/boxes/u0;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "track",
            "stbl"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/vincent/videocompressor/g;->i()Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-wide/16 v1, -0x1

    .line 15
    .line 16
    move-wide v3, v1

    .line 17
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    if-eqz v5, :cond_2

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    check-cast v5, Lcom/vincent/videocompressor/e;

    .line 28
    .line 29
    invoke-virtual {v5}, Lcom/vincent/videocompressor/e;->a()J

    .line 30
    .line 31
    .line 32
    move-result-wide v6

    .line 33
    cmp-long v8, v3, v1

    .line 34
    .line 35
    if-eqz v8, :cond_0

    .line 36
    .line 37
    cmp-long v8, v3, v6

    .line 38
    .line 39
    if-eqz v8, :cond_0

    .line 40
    .line 41
    move-wide v3, v1

    .line 42
    :cond_0
    cmp-long v8, v3, v1

    .line 43
    .line 44
    if-nez v8, :cond_1

    .line 45
    .line 46
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-virtual {v5}, Lcom/vincent/videocompressor/e;->b()J

    .line 54
    .line 55
    .line 56
    move-result-wide v3

    .line 57
    add-long/2addr v3, v6

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    new-array p1, p1, [J

    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-ge v1, v2, :cond_3

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Ljava/lang/Long;

    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 79
    .line 80
    .line 81
    move-result-wide v2

    .line 82
    aput-wide v2, p1, v1

    .line 83
    .line 84
    add-int/lit8 v1, v1, 0x1

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    new-instance v0, Lcom/coremedia/iso/boxes/z0;

    .line 88
    .line 89
    invoke-direct {v0}, Lcom/coremedia/iso/boxes/z0;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, p1}, Lcom/coremedia/iso/boxes/z0;->w([J)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, v0}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method protected g(Lcom/vincent/videocompressor/g;Lcom/coremedia/iso/boxes/u0;)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "track",
            "stbl"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/coremedia/iso/boxes/v0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/coremedia/iso/boxes/v0;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/LinkedList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/v0;->x(Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/vincent/videocompressor/g;->i()Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x1

    .line 23
    const/4 v3, 0x0

    .line 24
    const/4 v4, -0x1

    .line 25
    const/4 v5, 0x0

    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v7, 0x1

    .line 28
    :goto_0
    if-ge v5, v1, :cond_4

    .line 29
    .line 30
    invoke-virtual/range {p1 .. p1}, Lcom/vincent/videocompressor/g;->i()Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    move-result-object v8

    .line 34
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    check-cast v8, Lcom/vincent/videocompressor/e;

    .line 39
    .line 40
    invoke-virtual {v8}, Lcom/vincent/videocompressor/e;->a()J

    .line 41
    .line 42
    .line 43
    move-result-wide v9

    .line 44
    invoke-virtual {v8}, Lcom/vincent/videocompressor/e;->b()J

    .line 45
    .line 46
    .line 47
    move-result-wide v11

    .line 48
    add-long/2addr v9, v11

    .line 49
    add-int/2addr v6, v2

    .line 50
    add-int/lit8 v8, v1, -0x1

    .line 51
    .line 52
    if-eq v5, v8, :cond_1

    .line 53
    .line 54
    invoke-virtual/range {p1 .. p1}, Lcom/vincent/videocompressor/g;->i()Ljava/util/ArrayList;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    add-int/lit8 v11, v5, 0x1

    .line 59
    .line 60
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    check-cast v8, Lcom/vincent/videocompressor/e;

    .line 65
    .line 66
    invoke-virtual {v8}, Lcom/vincent/videocompressor/e;->a()J

    .line 67
    .line 68
    .line 69
    move-result-wide v11

    .line 70
    cmp-long v8, v9, v11

    .line 71
    .line 72
    if-eqz v8, :cond_0

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_0
    const/4 v8, 0x0

    .line 76
    goto :goto_2

    .line 77
    :cond_1
    :goto_1
    const/4 v8, 0x1

    .line 78
    :goto_2
    if-eqz v8, :cond_3

    .line 79
    .line 80
    if-eq v4, v6, :cond_2

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/v0;->w()Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    new-instance v15, Lcom/coremedia/iso/boxes/v0$a;

    .line 87
    .line 88
    int-to-long v9, v7

    .line 89
    int-to-long v11, v6

    .line 90
    const-wide/16 v13, 0x1

    .line 91
    .line 92
    move-object v8, v15

    .line 93
    invoke-direct/range {v8 .. v14}, Lcom/coremedia/iso/boxes/v0$a;-><init>(JJJ)V

    .line 94
    .line 95
    .line 96
    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move v4, v6

    .line 100
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 101
    .line 102
    const/4 v6, 0x0

    .line 103
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_4
    move-object/from16 v4, p2

    .line 107
    .line 108
    invoke-virtual {v4, v0}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method protected h(Lcom/vincent/videocompressor/g;Lcom/coremedia/iso/boxes/u0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "track",
            "stbl"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/vincent/videocompressor/g;->g()Lcom/coremedia/iso/boxes/s0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p2, p1}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method protected i(Lcom/vincent/videocompressor/g;Lcom/coremedia/iso/boxes/u0;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "track",
            "stbl"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/vincent/videocompressor/g;->j()[J

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    array-length v0, p1

    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/coremedia/iso/boxes/c1;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/coremedia/iso/boxes/c1;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/coremedia/iso/boxes/c1;->w([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, v0}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method protected j(Lcom/vincent/videocompressor/g;Lcom/coremedia/iso/boxes/u0;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "track",
            "stbl"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/coremedia/iso/boxes/t0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/coremedia/iso/boxes/t0;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/vincent/videocompressor/b;->h:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, [J

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/coremedia/iso/boxes/t0;->A([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, v0}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method protected k(Lcom/vincent/videocompressor/g;Lcom/coremedia/iso/boxes/u0;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "track",
            "stbl"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/vincent/videocompressor/g;->h()Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Ljava/lang/Long;

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    const-wide/16 v4, 0x1

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/d1$a;->b()J

    .line 36
    .line 37
    .line 38
    move-result-wide v6

    .line 39
    cmp-long v8, v6, v2

    .line 40
    .line 41
    if-nez v8, :cond_0

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/d1$a;->a()J

    .line 44
    .line 45
    .line 46
    move-result-wide v2

    .line 47
    add-long/2addr v2, v4

    .line 48
    invoke-virtual {v1, v2, v3}, Lcom/coremedia/iso/boxes/d1$a;->c(J)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    new-instance v1, Lcom/coremedia/iso/boxes/d1$a;

    .line 53
    .line 54
    invoke-direct {v1, v4, v5, v2, v3}, Lcom/coremedia/iso/boxes/d1$a;-><init>(JJ)V

    .line 55
    .line 56
    .line 57
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    new-instance p1, Lcom/coremedia/iso/boxes/d1;

    .line 62
    .line 63
    invoke-direct {p1}, Lcom/coremedia/iso/boxes/d1;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Lcom/coremedia/iso/boxes/d1;->x(Ljava/util/List;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, p1}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method protected l(Lcom/vincent/videocompressor/g;Lcom/vincent/videocompressor/c;)Lcom/coremedia/iso/boxes/f1;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "track",
            "movie"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/coremedia/iso/boxes/f1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/coremedia/iso/boxes/f1;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/coremedia/iso/boxes/g1;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/coremedia/iso/boxes/g1;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/g1;->M(Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/g1;->O(Z)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/g1;->Q(Z)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/vincent/videocompressor/g;->o()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    sget-object v3, Lcom/googlecode/mp4parser/util/l;->j:Lcom/googlecode/mp4parser/util/l;

    .line 28
    .line 29
    invoke-virtual {v1, v3}, Lcom/coremedia/iso/boxes/g1;->S(Lcom/googlecode/mp4parser/util/l;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p2}, Lcom/vincent/videocompressor/c;->e()Lcom/googlecode/mp4parser/util/l;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v1, v3}, Lcom/coremedia/iso/boxes/g1;->S(Lcom/googlecode/mp4parser/util/l;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    const/4 v3, 0x0

    .line 41
    invoke-virtual {v1, v3}, Lcom/coremedia/iso/boxes/g1;->J(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/vincent/videocompressor/g;->b()Ljava/util/Date;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v1, v4}, Lcom/coremedia/iso/boxes/g1;->K(Ljava/util/Date;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/vincent/videocompressor/g;->c()J

    .line 52
    .line 53
    .line 54
    move-result-wide v4

    .line 55
    invoke-virtual {p0, p2}, Lcom/vincent/videocompressor/b;->p(Lcom/vincent/videocompressor/c;)J

    .line 56
    .line 57
    .line 58
    move-result-wide v6

    .line 59
    mul-long v4, v4, v6

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/vincent/videocompressor/g;->k()I

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    int-to-long v6, p2

    .line 66
    div-long/2addr v4, v6

    .line 67
    invoke-virtual {v1, v4, v5}, Lcom/coremedia/iso/boxes/g1;->L(J)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/vincent/videocompressor/g;->e()I

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    int-to-double v4, p2

    .line 75
    invoke-virtual {v1, v4, v5}, Lcom/coremedia/iso/boxes/g1;->N(D)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/vincent/videocompressor/g;->n()I

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    int-to-double v4, p2

    .line 83
    invoke-virtual {v1, v4, v5}, Lcom/coremedia/iso/boxes/g1;->W(D)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v3}, Lcom/coremedia/iso/boxes/g1;->R(I)V

    .line 87
    .line 88
    .line 89
    new-instance p2, Ljava/util/Date;

    .line 90
    .line 91
    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, p2}, Lcom/coremedia/iso/boxes/g1;->T(Ljava/util/Date;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/vincent/videocompressor/g;->l()J

    .line 98
    .line 99
    .line 100
    move-result-wide v3

    .line 101
    const-wide/16 v5, 0x1

    .line 102
    .line 103
    add-long/2addr v3, v5

    .line 104
    invoke-virtual {v1, v3, v4}, Lcom/coremedia/iso/boxes/g1;->U(J)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/vincent/videocompressor/g;->m()F

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    invoke-virtual {v1, p2}, Lcom/coremedia/iso/boxes/g1;->V(F)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 115
    .line 116
    .line 117
    new-instance p2, Lcom/coremedia/iso/boxes/d0;

    .line 118
    .line 119
    invoke-direct {p2}, Lcom/coremedia/iso/boxes/d0;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, p2}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 123
    .line 124
    .line 125
    new-instance v1, Lcom/coremedia/iso/boxes/e0;

    .line 126
    .line 127
    invoke-direct {v1}, Lcom/coremedia/iso/boxes/e0;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/vincent/videocompressor/g;->b()Ljava/util/Date;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-virtual {v1, v3}, Lcom/coremedia/iso/boxes/e0;->A(Ljava/util/Date;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Lcom/vincent/videocompressor/g;->c()J

    .line 138
    .line 139
    .line 140
    move-result-wide v3

    .line 141
    invoke-virtual {v1, v3, v4}, Lcom/coremedia/iso/boxes/e0;->B(J)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Lcom/vincent/videocompressor/g;->k()I

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    int-to-long v3, v3

    .line 149
    invoke-virtual {v1, v3, v4}, Lcom/coremedia/iso/boxes/e0;->E(J)V

    .line 150
    .line 151
    .line 152
    const-string v3, "eng"

    .line 153
    .line 154
    invoke-virtual {v1, v3}, Lcom/coremedia/iso/boxes/e0;->C(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p2, v1}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 158
    .line 159
    .line 160
    new-instance v1, Lcom/coremedia/iso/boxes/x;

    .line 161
    .line 162
    invoke-direct {v1}, Lcom/coremedia/iso/boxes/x;-><init>()V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1}, Lcom/vincent/videocompressor/g;->o()Z

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    if-eqz v3, :cond_1

    .line 170
    .line 171
    const-string v3, "SoundHandle"

    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_1
    const-string v3, "VideoHandle"

    .line 175
    .line 176
    :goto_1
    invoke-virtual {v1, v3}, Lcom/coremedia/iso/boxes/x;->z(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1}, Lcom/vincent/videocompressor/g;->d()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    invoke-virtual {v1, v3}, Lcom/coremedia/iso/boxes/x;->y(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p2, v1}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 187
    .line 188
    .line 189
    new-instance v1, Lcom/coremedia/iso/boxes/f0;

    .line 190
    .line 191
    invoke-direct {v1}, Lcom/coremedia/iso/boxes/f0;-><init>()V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1}, Lcom/vincent/videocompressor/g;->f()Lcom/coremedia/iso/boxes/a;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    invoke-virtual {v1, v3}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 199
    .line 200
    .line 201
    new-instance v3, Lcom/coremedia/iso/boxes/n;

    .line 202
    .line 203
    invoke-direct {v3}, Lcom/coremedia/iso/boxes/n;-><init>()V

    .line 204
    .line 205
    .line 206
    new-instance v4, Lcom/coremedia/iso/boxes/o;

    .line 207
    .line 208
    invoke-direct {v4}, Lcom/coremedia/iso/boxes/o;-><init>()V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 212
    .line 213
    .line 214
    new-instance v5, Lcom/coremedia/iso/boxes/l;

    .line 215
    .line 216
    invoke-direct {v5}, Lcom/coremedia/iso/boxes/l;-><init>()V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v5, v2}, Lcom/googlecode/mp4parser/c;->setFlags(I)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v4, v5}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1, v3}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0, p1}, Lcom/vincent/videocompressor/b;->e(Lcom/vincent/videocompressor/g;)Lcom/coremedia/iso/boxes/d;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    invoke-virtual {v1, p1}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p2, v1}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 236
    .line 237
    .line 238
    return-object v0
.end method

.method public m(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/vincent/videocompressor/b;->a:Lcom/vincent/videocompressor/b$b;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/vincent/videocompressor/b$b;->b()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long p1, v0, v2

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/vincent/videocompressor/b;->n()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object p1, p0, Lcom/vincent/videocompressor/b;->b:Lcom/vincent/videocompressor/c;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/vincent/videocompressor/c;->f()Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/vincent/videocompressor/g;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/vincent/videocompressor/g;->i()Ljava/util/ArrayList;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    new-array v3, v2, [J

    .line 47
    .line 48
    const/4 v4, 0x0

    .line 49
    :goto_1
    if-ge v4, v2, :cond_1

    .line 50
    .line 51
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    check-cast v5, Lcom/vincent/videocompressor/e;

    .line 56
    .line 57
    invoke-virtual {v5}, Lcom/vincent/videocompressor/e;->b()J

    .line 58
    .line 59
    .line 60
    move-result-wide v5

    .line 61
    aput-wide v5, v3, v4

    .line 62
    .line 63
    add-int/lit8 v4, v4, 0x1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    iget-object v1, p0, Lcom/vincent/videocompressor/b;->h:Ljava/util/HashMap;

    .line 67
    .line 68
    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    iget-object p1, p0, Lcom/vincent/videocompressor/b;->b:Lcom/vincent/videocompressor/c;

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Lcom/vincent/videocompressor/b;->d(Lcom/vincent/videocompressor/c;)Lcom/coremedia/iso/boxes/h0;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iget-object v0, p0, Lcom/vincent/videocompressor/b;->d:Ljava/nio/channels/FileChannel;

    .line 79
    .line 80
    invoke-interface {p1, v0}, Lcom/coremedia/iso/boxes/d;->a(Ljava/nio/channels/WritableByteChannel;)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/vincent/videocompressor/b;->c:Ljava/io/FileOutputStream;

    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/vincent/videocompressor/b;->d:Ljava/nio/channels/FileChannel;

    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lcom/vincent/videocompressor/b;->c:Ljava/io/FileOutputStream;

    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public p(Lcom/vincent/videocompressor/c;)J
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mp4Movie"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/vincent/videocompressor/c;->f()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/vincent/videocompressor/c;->f()Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/vincent/videocompressor/g;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/vincent/videocompressor/g;->k()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    int-to-long v0, v0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-wide/16 v0, 0x0

    .line 32
    .line 33
    :goto_0
    invoke-virtual {p1}, Lcom/vincent/videocompressor/c;->f()Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Lcom/vincent/videocompressor/g;

    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/vincent/videocompressor/g;->k()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    int-to-long v2, v2

    .line 58
    invoke-static {v2, v3, v0, v1}, Lcom/vincent/videocompressor/b;->o(JJ)J

    .line 59
    .line 60
    .line 61
    move-result-wide v0

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    return-wide v0
.end method

.method public q(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "trackIndex",
            "byteBuf",
            "bufferInfo",
            "isAudio"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/vincent/videocompressor/b;->g:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/vincent/videocompressor/b;->a:Lcom/vincent/videocompressor/b$b;

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    invoke-virtual {v0, v2, v3}, Lcom/vincent/videocompressor/b$b;->g(J)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/vincent/videocompressor/b;->a:Lcom/vincent/videocompressor/b$b;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/vincent/videocompressor/b;->d:Ljava/nio/channels/FileChannel;

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Lcom/vincent/videocompressor/b$b;->a(Ljava/nio/channels/WritableByteChannel;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/vincent/videocompressor/b;->a:Lcom/vincent/videocompressor/b$b;

    .line 21
    .line 22
    iget-wide v2, p0, Lcom/vincent/videocompressor/b;->e:J

    .line 23
    .line 24
    invoke-virtual {v0, v2, v3}, Lcom/vincent/videocompressor/b$b;->h(J)V

    .line 25
    .line 26
    .line 27
    iget-wide v2, p0, Lcom/vincent/videocompressor/b;->e:J

    .line 28
    .line 29
    const-wide/16 v4, 0x10

    .line 30
    .line 31
    add-long/2addr v2, v4

    .line 32
    iput-wide v2, p0, Lcom/vincent/videocompressor/b;->e:J

    .line 33
    .line 34
    iget-wide v2, p0, Lcom/vincent/videocompressor/b;->f:J

    .line 35
    .line 36
    add-long/2addr v2, v4

    .line 37
    iput-wide v2, p0, Lcom/vincent/videocompressor/b;->f:J

    .line 38
    .line 39
    iput-boolean v1, p0, Lcom/vincent/videocompressor/b;->g:Z

    .line 40
    .line 41
    :cond_0
    iget-object v0, p0, Lcom/vincent/videocompressor/b;->a:Lcom/vincent/videocompressor/b$b;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/vincent/videocompressor/b$b;->b()J

    .line 44
    .line 45
    .line 46
    move-result-wide v2

    .line 47
    iget v4, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 48
    .line 49
    int-to-long v4, v4

    .line 50
    add-long/2addr v2, v4

    .line 51
    invoke-virtual {v0, v2, v3}, Lcom/vincent/videocompressor/b$b;->g(J)V

    .line 52
    .line 53
    .line 54
    iget-wide v2, p0, Lcom/vincent/videocompressor/b;->f:J

    .line 55
    .line 56
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 57
    .line 58
    int-to-long v4, v0

    .line 59
    add-long/2addr v2, v4

    .line 60
    iput-wide v2, p0, Lcom/vincent/videocompressor/b;->f:J

    .line 61
    .line 62
    const-wide/32 v4, 0x8000

    .line 63
    .line 64
    .line 65
    cmp-long v0, v2, v4

    .line 66
    .line 67
    if-ltz v0, :cond_1

    .line 68
    .line 69
    invoke-direct {p0}, Lcom/vincent/videocompressor/b;->n()V

    .line 70
    .line 71
    .line 72
    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcom/vincent/videocompressor/b;->g:Z

    .line 74
    .line 75
    iget-wide v2, p0, Lcom/vincent/videocompressor/b;->f:J

    .line 76
    .line 77
    sub-long/2addr v2, v4

    .line 78
    iput-wide v2, p0, Lcom/vincent/videocompressor/b;->f:J

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    const/4 v0, 0x0

    .line 82
    :goto_0
    iget-object v2, p0, Lcom/vincent/videocompressor/b;->b:Lcom/vincent/videocompressor/c;

    .line 83
    .line 84
    iget-wide v3, p0, Lcom/vincent/videocompressor/b;->e:J

    .line 85
    .line 86
    invoke-virtual {v2, p1, v3, v4, p3}, Lcom/vincent/videocompressor/c;->a(IJLandroid/media/MediaCodec$BufferInfo;)V

    .line 87
    .line 88
    .line 89
    iget p1, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 90
    .line 91
    const/4 v2, 0x4

    .line 92
    if-eqz p4, :cond_2

    .line 93
    .line 94
    const/4 v3, 0x0

    .line 95
    goto :goto_1

    .line 96
    :cond_2
    const/4 v3, 0x4

    .line 97
    :goto_1
    add-int/2addr p1, v3

    .line 98
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 99
    .line 100
    .line 101
    iget p1, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 102
    .line 103
    iget v3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 104
    .line 105
    add-int/2addr p1, v3

    .line 106
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 107
    .line 108
    .line 109
    if-nez p4, :cond_3

    .line 110
    .line 111
    iget-object p1, p0, Lcom/vincent/videocompressor/b;->i:Ljava/nio/ByteBuffer;

    .line 112
    .line 113
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, Lcom/vincent/videocompressor/b;->i:Ljava/nio/ByteBuffer;

    .line 117
    .line 118
    iget p4, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 119
    .line 120
    sub-int/2addr p4, v2

    .line 121
    invoke-virtual {p1, p4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 122
    .line 123
    .line 124
    iget-object p1, p0, Lcom/vincent/videocompressor/b;->i:Ljava/nio/ByteBuffer;

    .line 125
    .line 126
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 127
    .line 128
    .line 129
    iget-object p1, p0, Lcom/vincent/videocompressor/b;->d:Ljava/nio/channels/FileChannel;

    .line 130
    .line 131
    iget-object p4, p0, Lcom/vincent/videocompressor/b;->i:Ljava/nio/ByteBuffer;

    .line 132
    .line 133
    invoke-virtual {p1, p4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 134
    .line 135
    .line 136
    :cond_3
    iget-object p1, p0, Lcom/vincent/videocompressor/b;->d:Ljava/nio/channels/FileChannel;

    .line 137
    .line 138
    invoke-virtual {p1, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 139
    .line 140
    .line 141
    iget-wide p1, p0, Lcom/vincent/videocompressor/b;->e:J

    .line 142
    .line 143
    iget p3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 144
    .line 145
    int-to-long p3, p3

    .line 146
    add-long/2addr p1, p3

    .line 147
    iput-wide p1, p0, Lcom/vincent/videocompressor/b;->e:J

    .line 148
    .line 149
    if-eqz v0, :cond_4

    .line 150
    .line 151
    iget-object p1, p0, Lcom/vincent/videocompressor/b;->c:Ljava/io/FileOutputStream;

    .line 152
    .line 153
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 154
    .line 155
    .line 156
    :cond_4
    return v0
.end method
