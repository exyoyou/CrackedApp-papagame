.class public Lcom/googlecode/mp4parser/authoring/tracks/j;
.super Lcom/googlecode/mp4parser/authoring/a;
.source "SourceFile"


# static fields
.field static final synthetic h:Z


# instance fields
.field e:Lcom/googlecode/mp4parser/authoring/h;

.field private f:I

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/mp4parser/authoring/h;JJ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "crop("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ")"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/authoring/a;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/j;->e:Lcom/googlecode/mp4parser/authoring/h;

    .line 28
    .line 29
    long-to-int p1, p2

    .line 30
    iput p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/j;->f:I

    .line 31
    .line 32
    long-to-int p1, p4

    .line 33
    iput p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/j;->g:I

    .line 34
    .line 35
    return-void
.end method

.method static a(Ljava/util/List;JJ)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/i$a;",
            ">;JJ)",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/i$a;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_4

    .line 8
    .line 9
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    const-wide/16 v1, 0x0

    .line 19
    .line 20
    :goto_0
    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Lcom/coremedia/iso/boxes/i$a;

    .line 25
    .line 26
    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/i$a;->a()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    int-to-long v4, v4

    .line 31
    add-long/2addr v4, v1

    .line 32
    cmp-long v6, v4, p1

    .line 33
    .line 34
    if-lez v6, :cond_3

    .line 35
    .line 36
    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/i$a;->a()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    int-to-long v4, v4

    .line 41
    add-long/2addr v4, v1

    .line 42
    cmp-long v6, v4, p3

    .line 43
    .line 44
    if-ltz v6, :cond_0

    .line 45
    .line 46
    new-instance p0, Lcom/coremedia/iso/boxes/i$a;

    .line 47
    .line 48
    sub-long/2addr p3, p1

    .line 49
    long-to-int p1, p3

    .line 50
    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/i$a;->b()I

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/coremedia/iso/boxes/i$a;-><init>(II)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    return-object v0

    .line 61
    :cond_0
    new-instance v4, Lcom/coremedia/iso/boxes/i$a;

    .line 62
    .line 63
    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/i$a;->a()I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    int-to-long v5, v5

    .line 68
    add-long/2addr v5, v1

    .line 69
    sub-long/2addr v5, p1

    .line 70
    long-to-int p1, v5

    .line 71
    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/i$a;->b()I

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    invoke-direct {v4, p1, p2}, Lcom/coremedia/iso/boxes/i$a;-><init>(II)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/i$a;->a()I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    :goto_1
    int-to-long p1, p1

    .line 86
    add-long/2addr v1, p1

    .line 87
    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-eqz p1, :cond_2

    .line 92
    .line 93
    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    move-object v3, p1

    .line 98
    check-cast v3, Lcom/coremedia/iso/boxes/i$a;

    .line 99
    .line 100
    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/i$a;->a()I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    int-to-long p1, p1

    .line 105
    add-long/2addr p1, v1

    .line 106
    cmp-long v4, p1, p3

    .line 107
    .line 108
    if-ltz v4, :cond_1

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/i$a;->a()I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    goto :goto_1

    .line 119
    :cond_2
    :goto_2
    new-instance p0, Lcom/coremedia/iso/boxes/i$a;

    .line 120
    .line 121
    sub-long/2addr p3, v1

    .line 122
    long-to-int p1, p3

    .line 123
    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/i$a;->b()I

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/coremedia/iso/boxes/i$a;-><init>(II)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    return-object v0

    .line 134
    :cond_3
    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/i$a;->a()I

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    int-to-long v3, v3

    .line 139
    add-long/2addr v1, v3

    .line 140
    goto :goto_0

    .line 141
    :cond_4
    const/4 p0, 0x0

    .line 142
    return-object p0
.end method

.method static b(Ljava/util/List;JJ)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/d1$a;",
            ">;JJ)",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/d1$a;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_4

    .line 8
    .line 9
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    new-instance v0, Ljava/util/LinkedList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 16
    .line 17
    .line 18
    const-wide/16 v1, 0x0

    .line 19
    .line 20
    :goto_0
    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Lcom/coremedia/iso/boxes/d1$a;

    .line 25
    .line 26
    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/d1$a;->a()J

    .line 27
    .line 28
    .line 29
    move-result-wide v4

    .line 30
    add-long/2addr v4, v1

    .line 31
    cmp-long v6, v4, p1

    .line 32
    .line 33
    if-lez v6, :cond_3

    .line 34
    .line 35
    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/d1$a;->a()J

    .line 36
    .line 37
    .line 38
    move-result-wide v4

    .line 39
    add-long/2addr v4, v1

    .line 40
    cmp-long v6, v4, p3

    .line 41
    .line 42
    if-ltz v6, :cond_0

    .line 43
    .line 44
    new-instance p0, Lcom/coremedia/iso/boxes/d1$a;

    .line 45
    .line 46
    sub-long/2addr p3, p1

    .line 47
    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/d1$a;->b()J

    .line 48
    .line 49
    .line 50
    move-result-wide p1

    .line 51
    invoke-direct {p0, p3, p4, p1, p2}, Lcom/coremedia/iso/boxes/d1$a;-><init>(JJ)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    return-object v0

    .line 58
    :cond_0
    new-instance v4, Lcom/coremedia/iso/boxes/d1$a;

    .line 59
    .line 60
    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/d1$a;->a()J

    .line 61
    .line 62
    .line 63
    move-result-wide v5

    .line 64
    add-long/2addr v5, v1

    .line 65
    sub-long/2addr v5, p1

    .line 66
    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/d1$a;->b()J

    .line 67
    .line 68
    .line 69
    move-result-wide p1

    .line 70
    invoke-direct {v4, v5, v6, p1, p2}, Lcom/coremedia/iso/boxes/d1$a;-><init>(JJ)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/d1$a;->a()J

    .line 77
    .line 78
    .line 79
    move-result-wide p1

    .line 80
    :goto_1
    add-long/2addr v1, p1

    .line 81
    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_2

    .line 86
    .line 87
    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    move-object v3, p1

    .line 92
    check-cast v3, Lcom/coremedia/iso/boxes/d1$a;

    .line 93
    .line 94
    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/d1$a;->a()J

    .line 95
    .line 96
    .line 97
    move-result-wide p1

    .line 98
    add-long/2addr p1, v1

    .line 99
    cmp-long v4, p1, p3

    .line 100
    .line 101
    if-ltz v4, :cond_1

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/d1$a;->a()J

    .line 108
    .line 109
    .line 110
    move-result-wide p1

    .line 111
    goto :goto_1

    .line 112
    :cond_2
    :goto_2
    new-instance p0, Lcom/coremedia/iso/boxes/d1$a;

    .line 113
    .line 114
    sub-long/2addr p3, v1

    .line 115
    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/d1$a;->b()J

    .line 116
    .line 117
    .line 118
    move-result-wide p1

    .line 119
    invoke-direct {p0, p3, p4, p1, p2}, Lcom/coremedia/iso/boxes/d1$a;-><init>(JJ)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    return-object v0

    .line 126
    :cond_3
    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/d1$a;->a()J

    .line 127
    .line 128
    .line 129
    move-result-wide v3

    .line 130
    add-long/2addr v1, v3

    .line 131
    goto :goto_0

    .line 132
    :cond_4
    const/4 p0, 0x0

    .line 133
    return-object p0
.end method


# virtual methods
.method public E()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/i$a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/j;->e:Lcom/googlecode/mp4parser/authoring/h;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->E()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/j;->f:I

    .line 8
    .line 9
    int-to-long v1, v1

    .line 10
    iget v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/j;->g:I

    .line 11
    .line 12
    int-to-long v3, v3

    .line 13
    invoke-static {v0, v1, v2, v3, v4}, Lcom/googlecode/mp4parser/authoring/tracks/j;->a(Ljava/util/List;JJ)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public F()Lcom/coremedia/iso/boxes/s0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/j;->e:Lcom/googlecode/mp4parser/authoring/h;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->F()Lcom/coremedia/iso/boxes/s0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public H()Lcom/googlecode/mp4parser/authoring/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/j;->e:Lcom/googlecode/mp4parser/authoring/h;

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

.method public declared-synchronized N()[J
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/j;->e:Lcom/googlecode/mp4parser/authoring/h;

    .line 3
    .line 4
    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->N()[J

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_5

    .line 9
    .line 10
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/j;->e:Lcom/googlecode/mp4parser/authoring/h;

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->N()[J

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    array-length v1, v0

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    :goto_0
    array-length v4, v0

    .line 20
    if-ge v3, v4, :cond_1

    .line 21
    .line 22
    aget-wide v4, v0, v3

    .line 23
    .line 24
    iget v6, p0, Lcom/googlecode/mp4parser/authoring/tracks/j;->f:I

    .line 25
    .line 26
    int-to-long v6, v6

    .line 27
    cmp-long v8, v4, v6

    .line 28
    .line 29
    if-ltz v8, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    :goto_1
    if-lez v1, :cond_3

    .line 36
    .line 37
    iget v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/j;->g:I

    .line 38
    .line 39
    int-to-long v4, v4

    .line 40
    add-int/lit8 v6, v1, -0x1

    .line 41
    .line 42
    aget-wide v6, v0, v6

    .line 43
    .line 44
    cmp-long v8, v4, v6

    .line 45
    .line 46
    if-ltz v8, :cond_2

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/j;->e:Lcom/googlecode/mp4parser/authoring/h;

    .line 53
    .line 54
    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->N()[J

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0, v3, v1}, Ljava/util/Arrays;->copyOfRange([JII)[J

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    :goto_3
    array-length v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    if-lt v2, v1, :cond_4

    .line 64
    .line 65
    monitor-exit p0

    .line 66
    return-object v0

    .line 67
    :cond_4
    :try_start_1
    aget-wide v3, v0, v2

    .line 68
    .line 69
    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/j;->f:I

    .line 70
    .line 71
    int-to-long v5, v1

    .line 72
    sub-long/2addr v3, v5

    .line 73
    aput-wide v3, v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    .line 75
    add-int/lit8 v2, v2, 0x1

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_5
    monitor-exit p0

    .line 79
    const/4 v0, 0x0

    .line 80
    return-object v0

    .line 81
    :catchall_0
    move-exception v0

    .line 82
    monitor-exit p0

    .line 83
    throw v0
.end method

.method public S()Lcom/coremedia/iso/boxes/a1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/j;->e:Lcom/googlecode/mp4parser/authoring/h;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->S()Lcom/coremedia/iso/boxes/a1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public U()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/authoring/f;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/j;->e:Lcom/googlecode/mp4parser/authoring/h;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->U()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/j;->f:I

    .line 8
    .line 9
    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/j;->g:I

    .line 10
    .line 11
    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public declared-synchronized Z()[J
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/j;->g:I

    .line 3
    .line 4
    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/j;->f:I

    .line 5
    .line 6
    sub-int/2addr v0, v1

    .line 7
    new-array v1, v0, [J

    .line 8
    .line 9
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/j;->e:Lcom/googlecode/mp4parser/authoring/h;

    .line 10
    .line 11
    invoke-interface {v2}, Lcom/googlecode/mp4parser/authoring/h;->Z()[J

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/j;->f:I

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-object v1

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    monitor-exit p0

    .line 25
    throw v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/j;->e:Lcom/googlecode/mp4parser/authoring/h;

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
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/j;->e:Lcom/googlecode/mp4parser/authoring/h;

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

.method public h0()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/r0$a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/j;->e:Lcom/googlecode/mp4parser/authoring/h;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->h0()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/j;->e:Lcom/googlecode/mp4parser/authoring/h;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->h0()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/j;->e:Lcom/googlecode/mp4parser/authoring/h;

    .line 22
    .line 23
    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->h0()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/j;->f:I

    .line 28
    .line 29
    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/j;->g:I

    .line 30
    .line 31
    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0

    .line 36
    :cond_0
    const/4 v0, 0x0

    .line 37
    return-object v0
.end method
