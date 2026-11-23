.class public Lcom/googlecode/mp4parser/authoring/samples/b;
.super Ljava/util/AbstractList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lcom/googlecode/mp4parser/authoring/f;",
        ">;"
    }
.end annotation


# instance fields
.field b:Lcom/coremedia/iso/boxes/j;

.field c:[Lcom/coremedia/iso/f;

.field d:Lcom/coremedia/iso/boxes/f1;

.field e:Lcom/coremedia/iso/boxes/fragment/i;

.field private f:[Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/ref/SoftReference<",
            "Lcom/googlecode/mp4parser/authoring/f;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/fragment/k;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/coremedia/iso/boxes/fragment/n;",
            "Ljava/lang/ref/SoftReference<",
            "Ljava/nio/ByteBuffer;",
            ">;>;"
        }
    .end annotation
.end field

.field private i:[I

.field private j:I


# direct methods
.method public varargs constructor <init>(JLcom/coremedia/iso/boxes/j;[Lcom/coremedia/iso/f;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/samples/b;->d:Lcom/coremedia/iso/boxes/f1;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/samples/b;->e:Lcom/coremedia/iso/boxes/fragment/i;

    .line 8
    .line 9
    new-instance v0, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/samples/b;->h:Ljava/util/Map;

    .line 15
    .line 16
    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lcom/googlecode/mp4parser/authoring/samples/b;->j:I

    .line 18
    .line 19
    iput-object p3, p0, Lcom/googlecode/mp4parser/authoring/samples/b;->b:Lcom/coremedia/iso/boxes/j;

    .line 20
    .line 21
    iput-object p4, p0, Lcom/googlecode/mp4parser/authoring/samples/b;->c:[Lcom/coremedia/iso/f;

    .line 22
    .line 23
    const-string p4, "moov[0]/trak"

    .line 24
    .line 25
    invoke-static {p3, p4}, Lcom/googlecode/mp4parser/util/m;->h(Lcom/coremedia/iso/boxes/j;Ljava/lang/String;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p4

    .line 29
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p4

    .line 33
    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_4

    .line 38
    .line 39
    iget-object p4, p0, Lcom/googlecode/mp4parser/authoring/samples/b;->d:Lcom/coremedia/iso/boxes/f1;

    .line 40
    .line 41
    if-eqz p4, :cond_3

    .line 42
    .line 43
    const-string p1, "moov[0]/mvex[0]/trex"

    .line 44
    .line 45
    invoke-static {p3, p1}, Lcom/googlecode/mp4parser/util/m;->h(Lcom/coremedia/iso/boxes/j;Ljava/lang/String;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    :cond_1
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_2

    .line 58
    .line 59
    const-class p1, Ljava/lang/ref/SoftReference;

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/samples/b;->size()I

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, [Ljava/lang/ref/SoftReference;

    .line 70
    .line 71
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/samples/b;->f:[Ljava/lang/ref/SoftReference;

    .line 72
    .line 73
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/samples/b;->d()Ljava/util/List;

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_2
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Lcom/coremedia/iso/boxes/fragment/i;

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/fragment/i;->A()J

    .line 84
    .line 85
    .line 86
    move-result-wide v0

    .line 87
    iget-object p2, p0, Lcom/googlecode/mp4parser/authoring/samples/b;->d:Lcom/coremedia/iso/boxes/f1;

    .line 88
    .line 89
    invoke-virtual {p2}, Lcom/coremedia/iso/boxes/f1;->z()Lcom/coremedia/iso/boxes/g1;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {p2}, Lcom/coremedia/iso/boxes/g1;->C()J

    .line 94
    .line 95
    .line 96
    move-result-wide v2

    .line 97
    cmp-long p2, v0, v2

    .line 98
    .line 99
    if-nez p2, :cond_1

    .line 100
    .line 101
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/samples/b;->e:Lcom/coremedia/iso/boxes/fragment/i;

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_3
    new-instance p3, Ljava/lang/RuntimeException;

    .line 105
    .line 106
    new-instance p4, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string v0, "This MP4 does not contain track "

    .line 109
    .line 110
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-direct {p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p3

    .line 124
    :cond_4
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Lcom/coremedia/iso/boxes/f1;

    .line 129
    .line 130
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/f1;->z()Lcom/coremedia/iso/boxes/g1;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/g1;->C()J

    .line 135
    .line 136
    .line 137
    move-result-wide v1

    .line 138
    cmp-long v3, v1, p1

    .line 139
    .line 140
    if-nez v3, :cond_0

    .line 141
    .line 142
    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/samples/b;->d:Lcom/coremedia/iso/boxes/f1;

    .line 143
    .line 144
    goto :goto_0
.end method

.method private b(Lcom/coremedia/iso/boxes/fragment/k;)I
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/d;->l()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-lt v0, v2, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/coremedia/iso/boxes/d;

    .line 19
    .line 20
    instance-of v3, v2, Lcom/coremedia/iso/boxes/fragment/n;

    .line 21
    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    check-cast v2, Lcom/coremedia/iso/boxes/fragment/n;

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/fragment/n;->z()J

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    invoke-static {v2, v3}, Lcom/googlecode/mp4parser/util/c;->a(J)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    add-int/2addr v1, v2

    .line 35
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 36
    .line 37
    goto :goto_0
.end method

.method private d()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/fragment/k;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/samples/b;->g:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/samples/b;->b:Lcom/coremedia/iso/boxes/j;

    .line 12
    .line 13
    const-class v2, Lcom/coremedia/iso/boxes/fragment/c;

    .line 14
    .line 15
    invoke-interface {v1, v2}, Lcom/coremedia/iso/boxes/j;->c(Ljava/lang/Class;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const-class v4, Lcom/coremedia/iso/boxes/fragment/k;

    .line 28
    .line 29
    if-nez v3, :cond_7

    .line 30
    .line 31
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/samples/b;->c:[Lcom/coremedia/iso/f;

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    if-eqz v1, :cond_5

    .line 35
    .line 36
    array-length v5, v1

    .line 37
    const/4 v6, 0x0

    .line 38
    :goto_1
    if-lt v6, v5, :cond_1

    .line 39
    .line 40
    goto :goto_4

    .line 41
    :cond_1
    aget-object v7, v1, v6

    .line 42
    .line 43
    invoke-virtual {v7, v2}, Lcom/googlecode/mp4parser/d;->c(Ljava/lang/Class;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    if-nez v8, :cond_2

    .line 56
    .line 57
    add-int/lit8 v6, v6, 0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    check-cast v8, Lcom/coremedia/iso/boxes/fragment/c;

    .line 65
    .line 66
    invoke-virtual {v8, v4}, Lcom/googlecode/mp4parser/d;->c(Ljava/lang/Class;)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    :cond_3
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v9

    .line 78
    if-nez v9, :cond_4

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    check-cast v9, Lcom/coremedia/iso/boxes/fragment/k;

    .line 86
    .line 87
    invoke-virtual {v9}, Lcom/coremedia/iso/boxes/fragment/k;->v()Lcom/coremedia/iso/boxes/fragment/l;

    .line 88
    .line 89
    .line 90
    move-result-object v10

    .line 91
    invoke-virtual {v10}, Lcom/coremedia/iso/boxes/fragment/l;->A()J

    .line 92
    .line 93
    .line 94
    move-result-wide v10

    .line 95
    iget-object v12, p0, Lcom/googlecode/mp4parser/authoring/samples/b;->d:Lcom/coremedia/iso/boxes/f1;

    .line 96
    .line 97
    invoke-virtual {v12}, Lcom/coremedia/iso/boxes/f1;->z()Lcom/coremedia/iso/boxes/g1;

    .line 98
    .line 99
    .line 100
    move-result-object v12

    .line 101
    invoke-virtual {v12}, Lcom/coremedia/iso/boxes/g1;->C()J

    .line 102
    .line 103
    .line 104
    move-result-wide v12

    .line 105
    cmp-long v14, v10, v12

    .line 106
    .line 107
    if-nez v14, :cond_3

    .line 108
    .line 109
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_5
    :goto_4
    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/samples/b;->g:Ljava/util/List;

    .line 114
    .line 115
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    new-array v1, v1, [I

    .line 120
    .line 121
    iput-object v1, p0, Lcom/googlecode/mp4parser/authoring/samples/b;->i:[I

    .line 122
    .line 123
    const/4 v1, 0x1

    .line 124
    :goto_5
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/samples/b;->g:Ljava/util/List;

    .line 125
    .line 126
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-lt v3, v2, :cond_6

    .line 131
    .line 132
    return-object v0

    .line 133
    :cond_6
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/samples/b;->i:[I

    .line 134
    .line 135
    aput v1, v2, v3

    .line 136
    .line 137
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/samples/b;->g:Ljava/util/List;

    .line 138
    .line 139
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    check-cast v2, Lcom/coremedia/iso/boxes/fragment/k;

    .line 144
    .line 145
    invoke-direct {p0, v2}, Lcom/googlecode/mp4parser/authoring/samples/b;->b(Lcom/coremedia/iso/boxes/fragment/k;)I

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    add-int/2addr v1, v2

    .line 150
    add-int/lit8 v3, v3, 0x1

    .line 151
    .line 152
    goto :goto_5

    .line 153
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    check-cast v3, Lcom/coremedia/iso/boxes/fragment/c;

    .line 158
    .line 159
    invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/d;->c(Ljava/lang/Class;)Ljava/util/List;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    :cond_8
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    if-nez v4, :cond_9

    .line 172
    .line 173
    goto/16 :goto_0

    .line 174
    .line 175
    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    check-cast v4, Lcom/coremedia/iso/boxes/fragment/k;

    .line 180
    .line 181
    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/fragment/k;->v()Lcom/coremedia/iso/boxes/fragment/l;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    invoke-virtual {v5}, Lcom/coremedia/iso/boxes/fragment/l;->A()J

    .line 186
    .line 187
    .line 188
    move-result-wide v5

    .line 189
    iget-object v7, p0, Lcom/googlecode/mp4parser/authoring/samples/b;->d:Lcom/coremedia/iso/boxes/f1;

    .line 190
    .line 191
    invoke-virtual {v7}, Lcom/coremedia/iso/boxes/f1;->z()Lcom/coremedia/iso/boxes/g1;

    .line 192
    .line 193
    .line 194
    move-result-object v7

    .line 195
    invoke-virtual {v7}, Lcom/coremedia/iso/boxes/g1;->C()J

    .line 196
    .line 197
    .line 198
    move-result-wide v7

    .line 199
    cmp-long v9, v5, v7

    .line 200
    .line 201
    if-nez v9, :cond_8

    .line 202
    .line 203
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    goto :goto_6
.end method


# virtual methods
.method public a(I)Lcom/googlecode/mp4parser/authoring/f;
    .locals 16

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    iget-object v0, v7, Lcom/googlecode/mp4parser/authoring/samples/b;->f:[Ljava/lang/ref/SoftReference;

    .line 4
    .line 5
    aget-object v0, v0, p1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/googlecode/mp4parser/authoring/f;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    add-int/lit8 v0, p1, 0x1

    .line 19
    .line 20
    iget-object v1, v7, Lcom/googlecode/mp4parser/authoring/samples/b;->i:[I

    .line 21
    .line 22
    array-length v1, v1

    .line 23
    add-int/lit8 v1, v1, -0x1

    .line 24
    .line 25
    :goto_0
    iget-object v2, v7, Lcom/googlecode/mp4parser/authoring/samples/b;->i:[I

    .line 26
    .line 27
    aget v2, v2, v1

    .line 28
    .line 29
    sub-int v2, v0, v2

    .line 30
    .line 31
    if-ltz v2, :cond_10

    .line 32
    .line 33
    iget-object v2, v7, Lcom/googlecode/mp4parser/authoring/samples/b;->g:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lcom/coremedia/iso/boxes/fragment/k;

    .line 40
    .line 41
    iget-object v3, v7, Lcom/googlecode/mp4parser/authoring/samples/b;->i:[I

    .line 42
    .line 43
    aget v1, v3, v1

    .line 44
    .line 45
    sub-int/2addr v0, v1

    .line 46
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/b;->getParent()Lcom/coremedia/iso/boxes/j;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lcom/coremedia/iso/boxes/fragment/c;

    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/d;->l()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    const/4 v5, 0x0

    .line 61
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-eqz v6, :cond_f

    .line 66
    .line 67
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    check-cast v6, Lcom/coremedia/iso/boxes/d;

    .line 72
    .line 73
    instance-of v8, v6, Lcom/coremedia/iso/boxes/fragment/n;

    .line 74
    .line 75
    if-eqz v8, :cond_1

    .line 76
    .line 77
    check-cast v6, Lcom/coremedia/iso/boxes/fragment/n;

    .line 78
    .line 79
    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/fragment/n;->w()Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    sub-int v9, v0, v5

    .line 88
    .line 89
    if-ge v8, v9, :cond_2

    .line 90
    .line 91
    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/fragment/n;->w()Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    add-int/2addr v5, v6

    .line 100
    goto :goto_1

    .line 101
    :cond_2
    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/fragment/n;->w()Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object v8

    .line 105
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/fragment/k;->v()Lcom/coremedia/iso/boxes/fragment/l;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/fragment/n;->F()Z

    .line 110
    .line 111
    .line 112
    move-result v10

    .line 113
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/fragment/l;->E()Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    const-wide/16 v11, 0x0

    .line 118
    .line 119
    if-nez v10, :cond_5

    .line 120
    .line 121
    if-eqz v2, :cond_3

    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/fragment/l;->y()J

    .line 124
    .line 125
    .line 126
    move-result-wide v2

    .line 127
    :goto_2
    move-wide v13, v2

    .line 128
    goto :goto_3

    .line 129
    :cond_3
    iget-object v2, v7, Lcom/googlecode/mp4parser/authoring/samples/b;->e:Lcom/coremedia/iso/boxes/fragment/i;

    .line 130
    .line 131
    if-eqz v2, :cond_4

    .line 132
    .line 133
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/fragment/i;->z()J

    .line 134
    .line 135
    .line 136
    move-result-wide v2

    .line 137
    goto :goto_2

    .line 138
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    .line 139
    .line 140
    const-string v1, "File doesn\'t contain trex box but track fragments aren\'t fully self contained. Cannot determine sample size."

    .line 141
    .line 142
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw v0

    .line 146
    :cond_5
    move-wide v13, v11

    .line 147
    :goto_3
    iget-object v2, v7, Lcom/googlecode/mp4parser/authoring/samples/b;->h:Ljava/util/Map;

    .line 148
    .line 149
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 154
    .line 155
    if-eqz v2, :cond_6

    .line 156
    .line 157
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    check-cast v2, Ljava/nio/ByteBuffer;

    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_6
    const/4 v2, 0x0

    .line 165
    :goto_4
    if-nez v2, :cond_b

    .line 166
    .line 167
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/fragment/l;->B()Z

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    if-eqz v2, :cond_7

    .line 172
    .line 173
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/fragment/l;->v()J

    .line 174
    .line 175
    .line 176
    move-result-wide v2

    .line 177
    add-long/2addr v11, v2

    .line 178
    invoke-virtual {v1}, Lcom/googlecode/mp4parser/b;->getParent()Lcom/coremedia/iso/boxes/j;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    :cond_7
    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/fragment/n;->A()Z

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    if-eqz v0, :cond_8

    .line 187
    .line 188
    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/fragment/n;->v()I

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    int-to-long v2, v0

    .line 193
    add-long/2addr v11, v2

    .line 194
    :cond_8
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    const/4 v2, 0x0

    .line 199
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    if-nez v3, :cond_9

    .line 204
    .line 205
    int-to-long v2, v2

    .line 206
    :try_start_0
    invoke-interface {v1, v11, v12, v2, v3}, Lcom/coremedia/iso/boxes/j;->g(JJ)Ljava/nio/ByteBuffer;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    iget-object v1, v7, Lcom/googlecode/mp4parser/authoring/samples/b;->h:Ljava/util/Map;

    .line 211
    .line 212
    new-instance v2, Ljava/lang/ref/SoftReference;

    .line 213
    .line 214
    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .line 219
    .line 220
    move-object v6, v0

    .line 221
    goto :goto_6

    .line 222
    :catch_0
    move-exception v0

    .line 223
    new-instance v1, Ljava/lang/RuntimeException;

    .line 224
    .line 225
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 226
    .line 227
    .line 228
    throw v1

    .line 229
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    check-cast v3, Lcom/coremedia/iso/boxes/fragment/n$a;

    .line 234
    .line 235
    if-eqz v10, :cond_a

    .line 236
    .line 237
    int-to-long v4, v2

    .line 238
    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/fragment/n$a;->l()J

    .line 239
    .line 240
    .line 241
    move-result-wide v2

    .line 242
    add-long/2addr v4, v2

    .line 243
    long-to-int v2, v4

    .line 244
    goto :goto_5

    .line 245
    :cond_a
    int-to-long v2, v2

    .line 246
    add-long/2addr v2, v13

    .line 247
    long-to-int v2, v2

    .line 248
    goto :goto_5

    .line 249
    :cond_b
    move-object v6, v2

    .line 250
    :goto_6
    const/4 v4, 0x0

    .line 251
    const/4 v15, 0x0

    .line 252
    :goto_7
    if-lt v4, v9, :cond_d

    .line 253
    .line 254
    if-eqz v10, :cond_c

    .line 255
    .line 256
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    check-cast v0, Lcom/coremedia/iso/boxes/fragment/n$a;

    .line 261
    .line 262
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/fragment/n$a;->l()J

    .line 263
    .line 264
    .line 265
    move-result-wide v0

    .line 266
    move-wide v3, v0

    .line 267
    goto :goto_8

    .line 268
    :cond_c
    move-wide v3, v13

    .line 269
    :goto_8
    new-instance v0, Lcom/googlecode/mp4parser/authoring/samples/b$a;

    .line 270
    .line 271
    move-object v1, v0

    .line 272
    move-object/from16 v2, p0

    .line 273
    .line 274
    move-object v5, v6

    .line 275
    move v6, v15

    .line 276
    invoke-direct/range {v1 .. v6}, Lcom/googlecode/mp4parser/authoring/samples/b$a;-><init>(Lcom/googlecode/mp4parser/authoring/samples/b;JLjava/nio/ByteBuffer;I)V

    .line 277
    .line 278
    .line 279
    iget-object v1, v7, Lcom/googlecode/mp4parser/authoring/samples/b;->f:[Ljava/lang/ref/SoftReference;

    .line 280
    .line 281
    new-instance v2, Ljava/lang/ref/SoftReference;

    .line 282
    .line 283
    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    aput-object v2, v1, p1

    .line 287
    .line 288
    return-object v0

    .line 289
    :cond_d
    if-eqz v10, :cond_e

    .line 290
    .line 291
    int-to-long v0, v15

    .line 292
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    check-cast v2, Lcom/coremedia/iso/boxes/fragment/n$a;

    .line 297
    .line 298
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/fragment/n$a;->l()J

    .line 299
    .line 300
    .line 301
    move-result-wide v2

    .line 302
    add-long/2addr v0, v2

    .line 303
    goto :goto_9

    .line 304
    :cond_e
    int-to-long v0, v15

    .line 305
    add-long/2addr v0, v13

    .line 306
    :goto_9
    long-to-int v1, v0

    .line 307
    move v15, v1

    .line 308
    add-int/lit8 v4, v4, 0x1

    .line 309
    .line 310
    goto :goto_7

    .line 311
    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    .line 312
    .line 313
    const-string v1, "Couldn\'t find sample in the traf I was looking"

    .line 314
    .line 315
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    throw v0

    .line 319
    :cond_10
    add-int/lit8 v1, v1, -0x1

    .line 320
    .line 321
    goto/16 :goto_0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/authoring/samples/b;->a(I)Lcom/googlecode/mp4parser/authoring/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public size()I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/googlecode/mp4parser/authoring/samples/b;->j:I

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    if-eq v1, v2, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v1, v0, Lcom/googlecode/mp4parser/authoring/samples/b;->b:Lcom/coremedia/iso/boxes/j;

    .line 10
    .line 11
    const-class v2, Lcom/coremedia/iso/boxes/fragment/c;

    .line 12
    .line 13
    invoke-interface {v1, v2}, Lcom/coremedia/iso/boxes/j;->c(Ljava/lang/Class;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x0

    .line 23
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    const-class v6, Lcom/coremedia/iso/boxes/fragment/n;

    .line 28
    .line 29
    const-class v7, Lcom/coremedia/iso/boxes/fragment/k;

    .line 30
    .line 31
    if-nez v5, :cond_5

    .line 32
    .line 33
    iget-object v5, v0, Lcom/googlecode/mp4parser/authoring/samples/b;->c:[Lcom/coremedia/iso/f;

    .line 34
    .line 35
    array-length v8, v5

    .line 36
    const/4 v9, 0x0

    .line 37
    :goto_1
    if-lt v9, v8, :cond_1

    .line 38
    .line 39
    iput v4, v0, Lcom/googlecode/mp4parser/authoring/samples/b;->j:I

    .line 40
    .line 41
    return v4

    .line 42
    :cond_1
    aget-object v1, v5, v9

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/d;->c(Ljava/lang/Class;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v10

    .line 52
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_2

    .line 57
    .line 58
    add-int/lit8 v9, v9, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Lcom/coremedia/iso/boxes/fragment/c;

    .line 66
    .line 67
    invoke-virtual {v1, v7}, Lcom/googlecode/mp4parser/d;->c(Ljava/lang/Class;)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object v11

    .line 75
    :cond_3
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-nez v1, :cond_4

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Lcom/coremedia/iso/boxes/fragment/k;

    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/fragment/k;->v()Lcom/coremedia/iso/boxes/fragment/l;

    .line 89
    .line 90
    .line 91
    move-result-object v12

    .line 92
    invoke-virtual {v12}, Lcom/coremedia/iso/boxes/fragment/l;->A()J

    .line 93
    .line 94
    .line 95
    move-result-wide v12

    .line 96
    iget-object v14, v0, Lcom/googlecode/mp4parser/authoring/samples/b;->d:Lcom/coremedia/iso/boxes/f1;

    .line 97
    .line 98
    invoke-virtual {v14}, Lcom/coremedia/iso/boxes/f1;->z()Lcom/coremedia/iso/boxes/g1;

    .line 99
    .line 100
    .line 101
    move-result-object v14

    .line 102
    invoke-virtual {v14}, Lcom/coremedia/iso/boxes/g1;->C()J

    .line 103
    .line 104
    .line 105
    move-result-wide v14

    .line 106
    cmp-long v16, v12, v14

    .line 107
    .line 108
    if-nez v16, :cond_3

    .line 109
    .line 110
    int-to-long v12, v4

    .line 111
    invoke-virtual {v1, v6}, Lcom/googlecode/mp4parser/d;->c(Ljava/lang/Class;)Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    check-cast v1, Lcom/coremedia/iso/boxes/fragment/n;

    .line 120
    .line 121
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/fragment/n;->z()J

    .line 122
    .line 123
    .line 124
    move-result-wide v14

    .line 125
    add-long/2addr v12, v14

    .line 126
    long-to-int v4, v12

    .line 127
    goto :goto_3

    .line 128
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    check-cast v5, Lcom/coremedia/iso/boxes/fragment/c;

    .line 133
    .line 134
    invoke-virtual {v5, v7}, Lcom/googlecode/mp4parser/d;->c(Ljava/lang/Class;)Ljava/util/List;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    :cond_6
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    .line 144
    .line 145
    move-result v7

    .line 146
    if-nez v7, :cond_7

    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    check-cast v7, Lcom/coremedia/iso/boxes/fragment/k;

    .line 154
    .line 155
    invoke-virtual {v7}, Lcom/coremedia/iso/boxes/fragment/k;->v()Lcom/coremedia/iso/boxes/fragment/l;

    .line 156
    .line 157
    .line 158
    move-result-object v8

    .line 159
    invoke-virtual {v8}, Lcom/coremedia/iso/boxes/fragment/l;->A()J

    .line 160
    .line 161
    .line 162
    move-result-wide v8

    .line 163
    iget-object v10, v0, Lcom/googlecode/mp4parser/authoring/samples/b;->d:Lcom/coremedia/iso/boxes/f1;

    .line 164
    .line 165
    invoke-virtual {v10}, Lcom/coremedia/iso/boxes/f1;->z()Lcom/coremedia/iso/boxes/g1;

    .line 166
    .line 167
    .line 168
    move-result-object v10

    .line 169
    invoke-virtual {v10}, Lcom/coremedia/iso/boxes/g1;->C()J

    .line 170
    .line 171
    .line 172
    move-result-wide v10

    .line 173
    cmp-long v12, v8, v10

    .line 174
    .line 175
    if-nez v12, :cond_6

    .line 176
    .line 177
    int-to-long v8, v4

    .line 178
    invoke-virtual {v7, v6}, Lcom/googlecode/mp4parser/d;->c(Ljava/lang/Class;)Ljava/util/List;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    check-cast v4, Lcom/coremedia/iso/boxes/fragment/n;

    .line 187
    .line 188
    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/fragment/n;->z()J

    .line 189
    .line 190
    .line 191
    move-result-wide v10

    .line 192
    add-long/2addr v8, v10

    .line 193
    long-to-int v4, v8

    .line 194
    goto :goto_4
.end method
