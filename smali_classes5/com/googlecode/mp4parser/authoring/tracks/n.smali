.class public Lcom/googlecode/mp4parser/authoring/tracks/n;
.super Lcom/googlecode/mp4parser/authoring/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/authoring/tracks/n$a;
    }
.end annotation


# static fields
.field private static final m:I = 0x3

.field private static final n:I = 0x1

.field private static final o:[I

.field private static final p:[I

.field private static final q:I = 0x480

.field private static final r:I = 0x6b

.field private static final s:I = 0x5


# instance fields
.field private final e:Lcom/googlecode/mp4parser/e;

.field f:Lcom/googlecode/mp4parser/authoring/i;

.field g:Lcom/coremedia/iso/boxes/s0;

.field h:Lcom/googlecode/mp4parser/authoring/tracks/n$a;

.field i:J

.field j:J

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/authoring/f;",
            ">;"
        }
    .end annotation
.end field

.field private l:[J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [I

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    const v3, 0xac44

    .line 6
    .line 7
    .line 8
    aput v3, v1, v2

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    const v3, 0xbb80

    .line 12
    .line 13
    .line 14
    aput v3, v1, v2

    .line 15
    .line 16
    const/4 v4, 0x2

    .line 17
    const/16 v5, 0x7d00

    .line 18
    .line 19
    aput v5, v1, v4

    .line 20
    .line 21
    sput-object v1, Lcom/googlecode/mp4parser/authoring/tracks/n;->o:[I

    .line 22
    .line 23
    const/16 v1, 0x10

    .line 24
    .line 25
    new-array v1, v1, [I

    .line 26
    .line 27
    aput v5, v1, v2

    .line 28
    .line 29
    const v2, 0x9c40

    .line 30
    .line 31
    .line 32
    aput v2, v1, v4

    .line 33
    .line 34
    const/4 v2, 0x3

    .line 35
    aput v3, v1, v2

    .line 36
    .line 37
    const v2, 0xdac0

    .line 38
    .line 39
    .line 40
    aput v2, v1, v0

    .line 41
    .line 42
    const/4 v0, 0x5

    .line 43
    const v2, 0xfa00

    .line 44
    .line 45
    .line 46
    aput v2, v1, v0

    .line 47
    .line 48
    const/4 v0, 0x6

    .line 49
    const v2, 0x13880

    .line 50
    .line 51
    .line 52
    aput v2, v1, v0

    .line 53
    .line 54
    const/4 v0, 0x7

    .line 55
    const v2, 0x17700

    .line 56
    .line 57
    .line 58
    aput v2, v1, v0

    .line 59
    .line 60
    const/16 v0, 0x8

    .line 61
    .line 62
    const v2, 0x1b580

    .line 63
    .line 64
    .line 65
    aput v2, v1, v0

    .line 66
    .line 67
    const/16 v0, 0x9

    .line 68
    .line 69
    const v2, 0x1f400

    .line 70
    .line 71
    .line 72
    aput v2, v1, v0

    .line 73
    .line 74
    const/16 v0, 0xa

    .line 75
    .line 76
    const v2, 0x27100

    .line 77
    .line 78
    .line 79
    aput v2, v1, v0

    .line 80
    .line 81
    const/16 v0, 0xb

    .line 82
    .line 83
    const v2, 0x2ee00

    .line 84
    .line 85
    .line 86
    aput v2, v1, v0

    .line 87
    .line 88
    const/16 v0, 0xc

    .line 89
    .line 90
    const v2, 0x36b00

    .line 91
    .line 92
    .line 93
    aput v2, v1, v0

    .line 94
    .line 95
    const/16 v0, 0xd

    .line 96
    .line 97
    const v2, 0x3e800

    .line 98
    .line 99
    .line 100
    aput v2, v1, v0

    .line 101
    .line 102
    const/16 v0, 0xe

    .line 103
    .line 104
    const v2, 0x4e200

    .line 105
    .line 106
    .line 107
    aput v2, v1, v0

    .line 108
    .line 109
    sput-object v1, Lcom/googlecode/mp4parser/authoring/tracks/n;->p:[I

    .line 110
    .line 111
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/mp4parser/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "eng"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/googlecode/mp4parser/authoring/tracks/n;-><init>(Lcom/googlecode/mp4parser/e;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/mp4parser/e;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/authoring/a;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/googlecode/mp4parser/authoring/i;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/i;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/n;->f:Lcom/googlecode/mp4parser/authoring/i;

    .line 4
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/n;->e:Lcom/googlecode/mp4parser/e;

    .line 5
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/n;->k:Ljava/util/List;

    .line 6
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/authoring/tracks/n;->b(Lcom/googlecode/mp4parser/e;)Lcom/googlecode/mp4parser/authoring/tracks/n$a;

    move-result-object p1

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/n;->h:Lcom/googlecode/mp4parser/authoring/tracks/n$a;

    .line 7
    iget p1, p1, Lcom/googlecode/mp4parser/authoring/tracks/n$a;->g:I

    int-to-double v0, p1

    const-wide/high16 v2, 0x4092000000000000L    # 1152.0

    div-double/2addr v0, v2

    .line 8
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/n;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-double v2, p1

    div-double/2addr v2, v0

    .line 9
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 10
    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/n;->k:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-wide/16 v5, 0x0

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_1

    const-wide/16 v0, 0x8

    mul-long v5, v5, v0

    long-to-double v0, v5

    div-double/2addr v0, v2

    double-to-int p1, v0

    int-to-long v0, p1

    .line 11
    iput-wide v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/n;->j:J

    .line 12
    new-instance p1, Lcom/coremedia/iso/boxes/s0;

    invoke-direct {p1}, Lcom/coremedia/iso/boxes/s0;-><init>()V

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/n;->g:Lcom/coremedia/iso/boxes/s0;

    .line 13
    new-instance p1, Lcom/coremedia/iso/boxes/sampleentry/c;

    const-string v0, "mp4a"

    invoke-direct {p1, v0}, Lcom/coremedia/iso/boxes/sampleentry/c;-><init>(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/n;->h:Lcom/googlecode/mp4parser/authoring/tracks/n$a;

    iget v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/n$a;->j:I

    invoke-virtual {p1, v0}, Lcom/coremedia/iso/boxes/sampleentry/c;->f0(I)V

    .line 15
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/n;->h:Lcom/googlecode/mp4parser/authoring/tracks/n$a;

    iget v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/n$a;->g:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/coremedia/iso/boxes/sampleentry/c;->l0(J)V

    const/4 v0, 0x1

    .line 16
    invoke-virtual {p1, v0}, Lcom/coremedia/iso/boxes/sampleentry/a;->j(I)V

    const/16 v0, 0x10

    .line 17
    invoke-virtual {p1, v0}, Lcom/coremedia/iso/boxes/sampleentry/c;->m0(I)V

    .line 18
    new-instance v0, Lcom/googlecode/mp4parser/boxes/mp4/b;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/boxes/mp4/b;-><init>()V

    .line 19
    new-instance v1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/g;

    invoke-direct {v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/g;-><init>()V

    .line 20
    invoke-virtual {v1, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/g;->x(I)V

    .line 21
    new-instance v2, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/n;

    invoke-direct {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/n;-><init>()V

    const/4 v3, 0x2

    .line 22
    invoke-virtual {v2, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/n;->j(I)V

    .line 23
    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/g;->z(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/n;)V

    .line 24
    new-instance v2, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/e;

    invoke-direct {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/e;-><init>()V

    const/16 v3, 0x6b

    .line 25
    invoke-virtual {v2, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/e;->v(I)V

    const/4 v3, 0x5

    .line 26
    invoke-virtual {v2, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/e;->w(I)V

    .line 27
    iget-wide v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/n;->i:J

    invoke-virtual {v2, v3, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/e;->u(J)V

    .line 28
    iget-wide v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/n;->j:J

    invoke-virtual {v2, v3, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/e;->s(J)V

    .line 29
    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/g;->v(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/e;)V

    .line 30
    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/g;->t()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/boxes/mp4/a;->y(Ljava/nio/ByteBuffer;)V

    .line 32
    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 33
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/n;->g:Lcom/coremedia/iso/boxes/s0;

    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 34
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/n;->f:Lcom/googlecode/mp4parser/authoring/i;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/authoring/i;->m(Ljava/util/Date;)V

    .line 35
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/n;->f:Lcom/googlecode/mp4parser/authoring/i;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/authoring/i;->s(Ljava/util/Date;)V

    .line 36
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/n;->f:Lcom/googlecode/mp4parser/authoring/i;

    invoke-virtual {p1, p2}, Lcom/googlecode/mp4parser/authoring/i;->p(Ljava/lang/String;)V

    .line 37
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/n;->f:Lcom/googlecode/mp4parser/authoring/i;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/googlecode/mp4parser/authoring/i;->v(F)V

    .line 38
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/n;->f:Lcom/googlecode/mp4parser/authoring/i;

    iget-object p2, p0, Lcom/googlecode/mp4parser/authoring/tracks/n;->h:Lcom/googlecode/mp4parser/authoring/tracks/n$a;

    iget p2, p2, Lcom/googlecode/mp4parser/authoring/tracks/n$a;->g:I

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/googlecode/mp4parser/authoring/i;->t(J)V

    .line 39
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/n;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/n;->l:[J

    const-wide/16 v0, 0x480

    .line 40
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    return-void

    .line 41
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/googlecode/mp4parser/authoring/f;

    .line 42
    invoke-interface {v7}, Lcom/googlecode/mp4parser/authoring/f;->getSize()J

    move-result-wide v9

    long-to-int v7, v9

    int-to-long v9, v7

    add-long/2addr v5, v9

    .line 43
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 44
    :goto_1
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v7

    int-to-double v9, v7

    cmpl-double v7, v9, v0

    if-gtz v7, :cond_3

    .line 45
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v7

    double-to-int v9, v0

    if-ne v7, v9, :cond_0

    .line 46
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_2

    const-wide/high16 v9, 0x4020000000000000L    # 8.0

    int-to-double v7, v8

    mul-double v7, v7, v9

    .line 47
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v9

    int-to-double v9, v9

    div-double/2addr v7, v9

    mul-double v7, v7, v0

    .line 48
    iget-wide v9, p0, Lcom/googlecode/mp4parser/authoring/tracks/n;->i:J

    long-to-double v9, v9

    cmpl-double v11, v7, v9

    if-lez v11, :cond_0

    double-to-int v7, v7

    int-to-long v7, v7

    .line 49
    iput-wide v7, p0, Lcom/googlecode/mp4parser/authoring/tracks/n;->i:J

    goto/16 :goto_0

    .line 50
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 51
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v8, v9

    goto :goto_2

    .line 52
    :cond_3
    invoke-virtual {p1}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    goto :goto_1
.end method

.method private a(Lcom/googlecode/mp4parser/e;)Lcom/googlecode/mp4parser/authoring/tracks/n$a;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/googlecode/mp4parser/authoring/tracks/n$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/googlecode/mp4parser/authoring/tracks/n$a;-><init>(Lcom/googlecode/mp4parser/authoring/tracks/n;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    :cond_0
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-lt v3, v1, :cond_7

    .line 16
    .line 17
    new-instance p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Ljava/nio/ByteBuffer;

    .line 24
    .line 25
    invoke-direct {p1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;-><init>(Ljava/nio/ByteBuffer;)V

    .line 26
    .line 27
    .line 28
    const/16 v2, 0xb

    .line 29
    .line 30
    invoke-virtual {p1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const/16 v3, 0x7ff

    .line 35
    .line 36
    if-ne v2, v3, :cond_6

    .line 37
    .line 38
    const/4 v2, 0x2

    .line 39
    invoke-virtual {p1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    iput v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/n$a;->a:I

    .line 44
    .line 45
    const/4 v4, 0x3

    .line 46
    if-ne v3, v4, :cond_5

    .line 47
    .line 48
    invoke-virtual {p1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    iput v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/n$a;->b:I

    .line 53
    .line 54
    const/4 v5, 0x1

    .line 55
    if-ne v3, v5, :cond_4

    .line 56
    .line 57
    invoke-virtual {p1, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    iput v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/n$a;->c:I

    .line 62
    .line 63
    invoke-virtual {p1, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    iput v1, v0, Lcom/googlecode/mp4parser/authoring/tracks/n$a;->d:I

    .line 68
    .line 69
    sget-object v3, Lcom/googlecode/mp4parser/authoring/tracks/n;->p:[I

    .line 70
    .line 71
    aget v1, v3, v1

    .line 72
    .line 73
    iput v1, v0, Lcom/googlecode/mp4parser/authoring/tracks/n$a;->e:I

    .line 74
    .line 75
    if-eqz v1, :cond_3

    .line 76
    .line 77
    invoke-virtual {p1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    iput v1, v0, Lcom/googlecode/mp4parser/authoring/tracks/n$a;->f:I

    .line 82
    .line 83
    sget-object v3, Lcom/googlecode/mp4parser/authoring/tracks/n;->o:[I

    .line 84
    .line 85
    aget v1, v3, v1

    .line 86
    .line 87
    iput v1, v0, Lcom/googlecode/mp4parser/authoring/tracks/n$a;->g:I

    .line 88
    .line 89
    if-eqz v1, :cond_2

    .line 90
    .line 91
    invoke-virtual {p1, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    iput v1, v0, Lcom/googlecode/mp4parser/authoring/tracks/n$a;->h:I

    .line 96
    .line 97
    invoke-virtual {p1, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    iput p1, v0, Lcom/googlecode/mp4parser/authoring/tracks/n$a;->i:I

    .line 105
    .line 106
    if-ne p1, v4, :cond_1

    .line 107
    .line 108
    const/4 v2, 0x1

    .line 109
    :cond_1
    iput v2, v0, Lcom/googlecode/mp4parser/authoring/tracks/n$a;->j:I

    .line 110
    .line 111
    return-object v0

    .line 112
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 113
    .line 114
    const-string v0, "Unexpected (reserved) sample rate frequency"

    .line 115
    .line 116
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p1

    .line 120
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 121
    .line 122
    const-string v0, "Unexpected (free/bad) bit rate"

    .line 123
    .line 124
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw p1

    .line 128
    :cond_4
    new-instance p1, Ljava/io/IOException;

    .line 129
    .line 130
    const-string v0, "Expected Layer III"

    .line 131
    .line 132
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw p1

    .line 136
    :cond_5
    new-instance p1, Ljava/io/IOException;

    .line 137
    .line 138
    const-string v0, "Expected MPEG Version 1 (ISO/IEC 11172-3)"

    .line 139
    .line 140
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw p1

    .line 144
    :cond_6
    new-instance p1, Ljava/io/IOException;

    .line 145
    .line 146
    const-string v0, "Expected Start Word 0x7ff"

    .line 147
    .line 148
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw p1

    .line 152
    :cond_7
    invoke-interface {p1, v2}, Lcom/googlecode/mp4parser/e;->read(Ljava/nio/ByteBuffer;)I

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    const/4 v4, -0x1

    .line 157
    if-ne v3, v4, :cond_0

    .line 158
    .line 159
    const/4 p1, 0x0

    .line 160
    return-object p1
.end method

.method private b(Lcom/googlecode/mp4parser/e;)Lcom/googlecode/mp4parser/authoring/tracks/n$a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Lcom/googlecode/mp4parser/e;->position()J

    .line 3
    .line 4
    .line 5
    move-result-wide v1

    .line 6
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/authoring/tracks/n;->a(Lcom/googlecode/mp4parser/e;)Lcom/googlecode/mp4parser/authoring/tracks/n$a;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    if-nez v0, :cond_1

    .line 14
    .line 15
    move-object v0, v3

    .line 16
    :cond_1
    invoke-interface {p1, v1, v2}, Lcom/googlecode/mp4parser/e;->W(J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3}, Lcom/googlecode/mp4parser/authoring/tracks/n$a;->a()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {p1, v1}, Lcom/googlecode/mp4parser/e;->read(Ljava/nio/ByteBuffer;)I

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/n;->k:Ljava/util/List;

    .line 34
    .line 35
    new-instance v3, Lcom/googlecode/mp4parser/authoring/g;

    .line 36
    .line 37
    invoke-direct {v3, v1}, Lcom/googlecode/mp4parser/authoring/g;-><init>(Ljava/nio/ByteBuffer;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_0
.end method


# virtual methods
.method public F()Lcom/coremedia/iso/boxes/s0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/n;->g:Lcom/coremedia/iso/boxes/s0;

    .line 2
    .line 3
    return-object v0
.end method

.method public H()Lcom/googlecode/mp4parser/authoring/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/n;->f:Lcom/googlecode/mp4parser/authoring/i;

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
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/n;->k:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public Z()[J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/n;->l:[J

    .line 2
    .line 3
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
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/n;->e:Lcom/googlecode/mp4parser/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/googlecode/mp4parser/e;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    const-string v0, "soun"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "MP3TrackImpl"

    return-object v0
.end method
