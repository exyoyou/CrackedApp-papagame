.class public Lcom/googlecode/mp4parser/authoring/tracks/s;
.super Lcom/googlecode/mp4parser/authoring/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/authoring/tracks/s$a;
    }
.end annotation


# instance fields
.field e:Lcom/googlecode/mp4parser/authoring/i;

.field f:Lcom/coremedia/iso/boxes/s0;

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/authoring/tracks/s$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    const-string v0, "subtiles"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/authoring/a;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/googlecode/mp4parser/authoring/i;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/i;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/s;->e:Lcom/googlecode/mp4parser/authoring/i;

    .line 12
    .line 13
    new-instance v0, Ljava/util/LinkedList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/s;->g:Ljava/util/List;

    .line 19
    .line 20
    new-instance v0, Lcom/coremedia/iso/boxes/s0;

    .line 21
    .line 22
    invoke-direct {v0}, Lcom/coremedia/iso/boxes/s0;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/s;->f:Lcom/coremedia/iso/boxes/s0;

    .line 26
    .line 27
    new-instance v0, Lcom/coremedia/iso/boxes/sampleentry/g;

    .line 28
    .line 29
    const-string v1, "tx3g"

    .line 30
    .line 31
    invoke-direct {v0, v1}, Lcom/coremedia/iso/boxes/sampleentry/g;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/sampleentry/a;->j(I)V

    .line 36
    .line 37
    .line 38
    new-instance v2, Lcom/coremedia/iso/boxes/sampleentry/g$b;

    .line 39
    .line 40
    invoke-direct {v2}, Lcom/coremedia/iso/boxes/sampleentry/g$b;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/sampleentry/g;->j0(Lcom/coremedia/iso/boxes/sampleentry/g$b;)V

    .line 44
    .line 45
    .line 46
    new-instance v2, Lcom/coremedia/iso/boxes/sampleentry/g$a;

    .line 47
    .line 48
    invoke-direct {v2}, Lcom/coremedia/iso/boxes/sampleentry/g$a;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/sampleentry/g;->a0(Lcom/coremedia/iso/boxes/sampleentry/g$a;)V

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/s;->f:Lcom/coremedia/iso/boxes/s0;

    .line 55
    .line 56
    invoke-virtual {v2, v0}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 57
    .line 58
    .line 59
    new-instance v2, Lcom/googlecode/mp4parser/boxes/threegpp26245/a;

    .line 60
    .line 61
    invoke-direct {v2}, Lcom/googlecode/mp4parser/boxes/threegpp26245/a;-><init>()V

    .line 62
    .line 63
    .line 64
    new-instance v3, Lcom/googlecode/mp4parser/boxes/threegpp26245/a$a;

    .line 65
    .line 66
    const-string v4, "Serif"

    .line 67
    .line 68
    invoke-direct {v3, v1, v4}, Lcom/googlecode/mp4parser/boxes/threegpp26245/a$a;-><init>(ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v2, v1}, Lcom/googlecode/mp4parser/boxes/threegpp26245/a;->u(Ljava/util/List;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/s;->e:Lcom/googlecode/mp4parser/authoring/i;

    .line 82
    .line 83
    new-instance v1, Ljava/util/Date;

    .line 84
    .line 85
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/authoring/i;->m(Ljava/util/Date;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/s;->e:Lcom/googlecode/mp4parser/authoring/i;

    .line 92
    .line 93
    new-instance v1, Ljava/util/Date;

    .line 94
    .line 95
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/authoring/i;->s(Ljava/util/Date;)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/s;->e:Lcom/googlecode/mp4parser/authoring/i;

    .line 102
    .line 103
    const-wide/16 v1, 0x3e8

    .line 104
    .line 105
    invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/authoring/i;->t(J)V

    .line 106
    .line 107
    .line 108
    return-void
.end method


# virtual methods
.method public E()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/i$a;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public F()Lcom/coremedia/iso/boxes/s0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/s;->f:Lcom/coremedia/iso/boxes/s0;

    .line 2
    .line 3
    return-object v0
.end method

.method public H()Lcom/googlecode/mp4parser/authoring/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/s;->e:Lcom/googlecode/mp4parser/authoring/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public N()[J
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public S()Lcom/coremedia/iso/boxes/a1;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public U()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/authoring/f;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "UTF-8"

    .line 2
    .line 3
    new-instance v1, Ljava/util/LinkedList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/s;->g:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-wide/16 v3, 0x0

    .line 15
    .line 16
    move-wide v5, v3

    .line 17
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v7

    .line 21
    if-nez v7, :cond_0

    .line 22
    .line 23
    return-object v1

    .line 24
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v7

    .line 28
    check-cast v7, Lcom/googlecode/mp4parser/authoring/tracks/s$a;

    .line 29
    .line 30
    iget-wide v8, v7, Lcom/googlecode/mp4parser/authoring/tracks/s$a;->a:J

    .line 31
    .line 32
    sub-long/2addr v8, v5

    .line 33
    cmp-long v5, v8, v3

    .line 34
    .line 35
    if-lez v5, :cond_1

    .line 36
    .line 37
    new-instance v5, Lcom/googlecode/mp4parser/authoring/g;

    .line 38
    .line 39
    const/4 v6, 0x2

    .line 40
    new-array v6, v6, [B

    .line 41
    .line 42
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    invoke-direct {v5, v6}, Lcom/googlecode/mp4parser/authoring/g;-><init>(Ljava/nio/ByteBuffer;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    if-ltz v5, :cond_2

    .line 54
    .line 55
    :goto_1
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    .line 56
    .line 57
    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 58
    .line 59
    .line 60
    new-instance v6, Ljava/io/DataOutputStream;

    .line 61
    .line 62
    invoke-direct {v6, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 63
    .line 64
    .line 65
    :try_start_0
    iget-object v8, v7, Lcom/googlecode/mp4parser/authoring/tracks/s$a;->c:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v8, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    array-length v8, v8

    .line 72
    invoke-virtual {v6, v8}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 73
    .line 74
    .line 75
    iget-object v8, v7, Lcom/googlecode/mp4parser/authoring/tracks/s$a;->c:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v8, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    invoke-virtual {v6, v8}, Ljava/io/OutputStream;->write([B)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .line 86
    .line 87
    new-instance v6, Lcom/googlecode/mp4parser/authoring/g;

    .line 88
    .line 89
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-direct {v6, v5}, Lcom/googlecode/mp4parser/authoring/g;-><init>(Ljava/nio/ByteBuffer;)V

    .line 98
    .line 99
    .line 100
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    iget-wide v5, v7, Lcom/googlecode/mp4parser/authoring/tracks/s$a;->b:J

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :catch_0
    new-instance v0, Ljava/lang/Error;

    .line 107
    .line 108
    const-string v1, "VM is broken. Does not support UTF-8"

    .line 109
    .line 110
    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw v0

    .line 114
    :cond_2
    new-instance v0, Ljava/lang/Error;

    .line 115
    .line 116
    const-string v1, "Subtitle display times may not intersect"

    .line 117
    .line 118
    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw v0
.end method

.method public Z()[J
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/s;->g:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-wide/16 v2, 0x0

    .line 13
    .line 14
    move-wide v4, v2

    .line 15
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    if-nez v6, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    new-array v6, v1, [J

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    const/4 v0, 0x0

    .line 32
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_0

    .line 37
    .line 38
    return-object v6

    .line 39
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Ljava/lang/Long;

    .line 44
    .line 45
    add-int/lit8 v2, v0, 0x1

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 48
    .line 49
    .line 50
    move-result-wide v3

    .line 51
    aput-wide v3, v6, v0

    .line 52
    .line 53
    move v0, v2

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    check-cast v6, Lcom/googlecode/mp4parser/authoring/tracks/s$a;

    .line 60
    .line 61
    iget-wide v7, v6, Lcom/googlecode/mp4parser/authoring/tracks/s$a;->a:J

    .line 62
    .line 63
    sub-long/2addr v7, v4

    .line 64
    cmp-long v4, v7, v2

    .line 65
    .line 66
    if-lez v4, :cond_2

    .line 67
    .line 68
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_2
    if-ltz v4, :cond_3

    .line 77
    .line 78
    :goto_2
    iget-wide v4, v6, Lcom/googlecode/mp4parser/authoring/tracks/s$a;->b:J

    .line 79
    .line 80
    iget-wide v7, v6, Lcom/googlecode/mp4parser/authoring/tracks/s$a;->a:J

    .line 81
    .line 82
    sub-long/2addr v4, v7

    .line 83
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    iget-wide v4, v6, Lcom/googlecode/mp4parser/authoring/tracks/s$a;->b:J

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    new-instance v0, Ljava/lang/Error;

    .line 94
    .line 95
    const-string v1, "Subtitle display times may not intersect"

    .line 96
    .line 97
    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/authoring/tracks/s$a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/s;->g:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    const-string v0, "sbtl"

    return-object v0
.end method

.method public h0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/r0$a;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method
