.class public Lcom/googlecode/mp4parser/authoring/tracks/f;
.super Lcom/googlecode/mp4parser/authoring/a;
.source "SourceFile"


# instance fields
.field e:Lcom/googlecode/mp4parser/boxes/cenc/a;

.field f:Lcom/googlecode/mp4parser/authoring/h;

.field g:Lcom/googlecode/mp4parser/util/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/googlecode/mp4parser/util/n<",
            "Ljava/lang/Integer;",
            "Ljavax/crypto/SecretKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/googlecode/mp4parser/authoring/tracks/g;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/googlecode/mp4parser/authoring/tracks/g;",
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "Ljavax/crypto/SecretKey;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dec("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/authoring/a;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/googlecode/mp4parser/util/n;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/util/n;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/f;->g:Lcom/googlecode/mp4parser/util/n;

    .line 4
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/f;->f:Lcom/googlecode/mp4parser/authoring/h;

    .line 5
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->F()Lcom/coremedia/iso/boxes/s0;

    move-result-object v0

    const-string v1, "enc./sinf/schm"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/m;->e(Lcom/googlecode/mp4parser/b;Ljava/lang/String;)Lcom/coremedia/iso/boxes/d;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/x0;

    .line 6
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/x0;->v()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cenc"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "cbc1"

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/x0;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "You can only use the CencDecryptingTrackImpl with CENC (cenc or cbc1) encrypted tracks"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->G()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_9

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 10
    :goto_2
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->U()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v5, v2, :cond_2

    .line 11
    new-instance p2, Lcom/googlecode/mp4parser/boxes/cenc/a;

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/f;->g:Lcom/googlecode/mp4parser/util/n;

    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->U()Ljava/util/List;

    move-result-object v2

    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/tracks/g;->b0()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/x0;->v()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v1, v2, p1, v0}, Lcom/googlecode/mp4parser/boxes/cenc/a;-><init>(Lcom/googlecode/mp4parser/util/n;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/googlecode/mp4parser/authoring/tracks/f;->e:Lcom/googlecode/mp4parser/boxes/cenc/a;

    return-void

    :cond_2
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 12
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-lt v2, v7, :cond_7

    if-eq v4, v6, :cond_6

    if-nez v6, :cond_3

    .line 13
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/f;->g:Lcom/googlecode/mp4parser/util/n;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/tracks/g;->Y()Ljava/util/UUID;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/crypto/SecretKey;

    invoke-virtual {v2, v4, v7}, Lcom/googlecode/mp4parser/util/n;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_3
    add-int/lit8 v2, v6, -0x1

    .line 14
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/a;

    invoke-virtual {v4}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/a;->f()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 15
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/a;

    invoke-virtual {v4}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/a;->e()Ljava/util/UUID;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/crypto/SecretKey;

    if-eqz v4, :cond_4

    .line 16
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/f;->g:Lcom/googlecode/mp4parser/util/n;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7, v4}, Lcom/googlecode/mp4parser/util/n;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 17
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Key "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/a;

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/a;->e()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " was not supplied for decryption"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_5
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/f;->g:Lcom/googlecode/mp4parser/util/n;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v7}, Lcom/googlecode/mp4parser/util/n;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    move v4, v6

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 19
    :cond_7
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/b;

    .line 20
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->G()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [J

    int-to-long v8, v5

    .line 21
    invoke-static {v7, v8, v9}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v7

    if-ltz v7, :cond_8

    add-int/lit8 v6, v2, 0x1

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 22
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 23
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/a;

    if-eqz v4, :cond_a

    .line 24
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/a;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 25
    :cond_a
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/a;->G()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/b;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method

.method public constructor <init>(Lcom/googlecode/mp4parser/authoring/tracks/g;Ljavax/crypto/SecretKey;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/tracks/g;->Y()Ljava/util/UUID;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/googlecode/mp4parser/authoring/tracks/f;-><init>(Lcom/googlecode/mp4parser/authoring/tracks/g;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public F()Lcom/coremedia/iso/boxes/s0;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/f;->f:Lcom/googlecode/mp4parser/authoring/h;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->F()Lcom/coremedia/iso/boxes/s0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "enc./sinf/frma"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/m;->e(Lcom/googlecode/mp4parser/b;Ljava/lang/String;)Lcom/coremedia/iso/boxes/d;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/coremedia/iso/boxes/l0;

    .line 14
    .line 15
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 18
    .line 19
    .line 20
    :try_start_0
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/f;->f:Lcom/googlecode/mp4parser/authoring/h;

    .line 21
    .line 22
    invoke-interface {v2}, Lcom/googlecode/mp4parser/authoring/h;->F()Lcom/coremedia/iso/boxes/s0;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v2, v3}, Lcom/coremedia/iso/boxes/s0;->a(Ljava/nio/channels/WritableByteChannel;)V

    .line 31
    .line 32
    .line 33
    new-instance v2, Lcom/coremedia/iso/f;

    .line 34
    .line 35
    new-instance v3, Lcom/googlecode/mp4parser/i;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-direct {v3, v1}, Lcom/googlecode/mp4parser/i;-><init>([B)V

    .line 42
    .line 43
    .line 44
    invoke-direct {v2, v3}, Lcom/coremedia/iso/f;-><init>(Lcom/googlecode/mp4parser/e;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/d;->l()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const/4 v2, 0x0

    .line 52
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Lcom/coremedia/iso/boxes/s0;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/s0;->v()Lcom/coremedia/iso/boxes/sampleentry/a;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    instance-of v2, v2, Lcom/coremedia/iso/boxes/sampleentry/c;

    .line 63
    .line 64
    if-eqz v2, :cond_0

    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/s0;->v()Lcom/coremedia/iso/boxes/sampleentry/a;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    check-cast v2, Lcom/coremedia/iso/boxes/sampleentry/c;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/l0;->t()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v2, v0}, Lcom/coremedia/iso/boxes/sampleentry/c;->q0(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/s0;->v()Lcom/coremedia/iso/boxes/sampleentry/a;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    instance-of v2, v2, Lcom/coremedia/iso/boxes/sampleentry/h;

    .line 85
    .line 86
    if-eqz v2, :cond_3

    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/s0;->v()Lcom/coremedia/iso/boxes/sampleentry/a;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    check-cast v2, Lcom/coremedia/iso/boxes/sampleentry/h;

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/l0;->t()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v2, v0}, Lcom/coremedia/iso/boxes/sampleentry/h;->a0(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :goto_0
    new-instance v0, Ljava/util/LinkedList;

    .line 102
    .line 103
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/s0;->v()Lcom/coremedia/iso/boxes/sampleentry/a;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/d;->l()Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-nez v3, :cond_2

    .line 123
    .line 124
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/s0;->v()Lcom/coremedia/iso/boxes/sampleentry/a;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {v2, v0}, Lcom/googlecode/mp4parser/d;->b(Ljava/util/List;)V

    .line 129
    .line 130
    .line 131
    return-object v1

    .line 132
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    check-cast v3, Lcom/coremedia/iso/boxes/d;

    .line 137
    .line 138
    invoke-interface {v3}, Lcom/coremedia/iso/boxes/d;->getType()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    const-string v5, "sinf"

    .line 143
    .line 144
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    if-nez v4, :cond_1

    .line 149
    .line 150
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    .line 155
    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    const-string v3, "I don\'t know "

    .line 159
    .line 160
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/s0;->v()Lcom/coremedia/iso/boxes/sampleentry/a;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {v1}, Lcom/googlecode/mp4parser/b;->getType()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    throw v0

    .line 182
    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 183
    .line 184
    const-string v1, "Dumping stsd to memory failed"

    .line 185
    .line 186
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    throw v0
.end method

.method public H()Lcom/googlecode/mp4parser/authoring/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/f;->f:Lcom/googlecode/mp4parser/authoring/h;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->H()Lcom/googlecode/mp4parser/authoring/i;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public N()[J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/f;->f:Lcom/googlecode/mp4parser/authoring/h;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->N()[J

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
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
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/f;->e:Lcom/googlecode/mp4parser/boxes/cenc/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public Z()[J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/f;->f:Lcom/googlecode/mp4parser/authoring/h;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->Z()[J

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/f;->f:Lcom/googlecode/mp4parser/authoring/h;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/f;->f:Lcom/googlecode/mp4parser/authoring/h;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->getHandler()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
