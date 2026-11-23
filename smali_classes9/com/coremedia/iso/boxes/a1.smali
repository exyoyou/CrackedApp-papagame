.class public Lcom/coremedia/iso/boxes/a1;
.super Lcom/googlecode/mp4parser/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coremedia/iso/boxes/a1$a;
    }
.end annotation


# static fields
.field public static final t:Ljava/lang/String; = "subs"

.field private static final synthetic u:Lorg/aspectj/lang/c$b;

.field private static final synthetic v:Lorg/aspectj/lang/c$b;

.field private static final synthetic w:Lorg/aspectj/lang/c$b;


# instance fields
.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/a1$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/coremedia/iso/boxes/a1;->s()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "subs"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/c;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/coremedia/iso/boxes/a1;->s:Ljava/util/List;

    .line 12
    .line 13
    return-void
.end method

.method private static synthetic s()V
    .locals 10

    .line 1
    new-instance v8, Lorg/aspectj/runtime/reflect/e;

    .line 2
    .line 3
    const-string v0, "SubSampleInformationBox.java"

    .line 4
    .line 5
    const-class v1, Lcom/coremedia/iso/boxes/a1;

    .line 6
    .line 7
    invoke-direct {v8, v0, v1}, Lorg/aspectj/runtime/reflect/e;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "1"

    .line 11
    .line 12
    const-string v2, "getEntries"

    .line 13
    .line 14
    const-string v3, "com.coremedia.iso.boxes.SubSampleInformationBox"

    .line 15
    .line 16
    const-string v4, ""

    .line 17
    .line 18
    const-string v5, ""

    .line 19
    .line 20
    const-string v6, ""

    .line 21
    .line 22
    const-string v7, "java.util.List"

    .line 23
    .line 24
    move-object v0, v8

    .line 25
    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/e;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lad/t;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/16 v1, 0x32

    .line 30
    .line 31
    const-string v9, "method-execution"

    .line 32
    .line 33
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lcom/coremedia/iso/boxes/a1;->u:Lorg/aspectj/lang/c$b;

    .line 38
    .line 39
    const-string v1, "1"

    .line 40
    .line 41
    const-string v2, "setEntries"

    .line 42
    .line 43
    const-string v3, "com.coremedia.iso.boxes.SubSampleInformationBox"

    .line 44
    .line 45
    const-string v4, "java.util.List"

    .line 46
    .line 47
    const-string v5, "entries"

    .line 48
    .line 49
    const-string v6, ""

    .line 50
    .line 51
    const-string v7, "void"

    .line 52
    .line 53
    move-object v0, v8

    .line 54
    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/e;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lad/t;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const/16 v1, 0x36

    .line 59
    .line 60
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sput-object v0, Lcom/coremedia/iso/boxes/a1;->v:Lorg/aspectj/lang/c$b;

    .line 65
    .line 66
    const-string v1, "1"

    .line 67
    .line 68
    const-string v2, "toString"

    .line 69
    .line 70
    const-string v3, "com.coremedia.iso.boxes.SubSampleInformationBox"

    .line 71
    .line 72
    const-string v4, ""

    .line 73
    .line 74
    const-string v5, ""

    .line 75
    .line 76
    const-string v6, ""

    .line 77
    .line 78
    const-string v7, "java.lang.String"

    .line 79
    .line 80
    move-object v0, v8

    .line 81
    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/e;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lad/t;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const/16 v1, 0x7c

    .line 86
    .line 87
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    sput-object v0, Lcom/coremedia/iso/boxes/a1;->w:Lorg/aspectj/lang/c$b;

    .line 92
    .line 93
    return-void
.end method


# virtual methods
.method public b(Ljava/nio/ByteBuffer;)V
    .locals 10

    .line 1
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/c;->t(Ljava/nio/ByteBuffer;)J

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_0
    int-to-long v4, v3

    .line 11
    cmp-long v6, v4, v0

    .line 12
    .line 13
    if-ltz v6, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v4, Lcom/coremedia/iso/boxes/a1$a;

    .line 17
    .line 18
    invoke-direct {v4}, Lcom/coremedia/iso/boxes/a1$a;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v5

    .line 25
    invoke-virtual {v4, v5, v6}, Lcom/coremedia/iso/boxes/a1$a;->d(J)V

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Lcom/coremedia/iso/g;->i(Ljava/nio/ByteBuffer;)I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    const/4 v6, 0x0

    .line 33
    :goto_1
    if-lt v6, v5, :cond_1

    .line 34
    .line 35
    iget-object v5, p0, Lcom/coremedia/iso/boxes/a1;->s:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    add-int/lit8 v3, v3, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    new-instance v7, Lcom/coremedia/iso/boxes/a1$a$a;

    .line 44
    .line 45
    invoke-direct {v7}, Lcom/coremedia/iso/boxes/a1$a$a;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getVersion()I

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    const/4 v9, 0x1

    .line 53
    if-ne v8, v9, :cond_2

    .line 54
    .line 55
    invoke-static {p1}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    .line 56
    .line 57
    .line 58
    move-result-wide v8

    .line 59
    goto :goto_2

    .line 60
    :cond_2
    invoke-static {p1}, Lcom/coremedia/iso/g;->i(Ljava/nio/ByteBuffer;)I

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    int-to-long v8, v8

    .line 65
    :goto_2
    invoke-virtual {v7, v8, v9}, Lcom/coremedia/iso/boxes/a1$a$a;->h(J)V

    .line 66
    .line 67
    .line 68
    invoke-static {p1}, Lcom/coremedia/iso/g;->p(Ljava/nio/ByteBuffer;)I

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    invoke-virtual {v7, v8}, Lcom/coremedia/iso/boxes/a1$a$a;->g(I)V

    .line 73
    .line 74
    .line 75
    invoke-static {p1}, Lcom/coremedia/iso/g;->p(Ljava/nio/ByteBuffer;)I

    .line 76
    .line 77
    .line 78
    move-result v8

    .line 79
    invoke-virtual {v7, v8}, Lcom/coremedia/iso/boxes/a1$a$a;->e(I)V

    .line 80
    .line 81
    .line 82
    invoke-static {p1}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    .line 83
    .line 84
    .line 85
    move-result-wide v8

    .line 86
    invoke-virtual {v7, v8, v9}, Lcom/coremedia/iso/boxes/a1$a$a;->f(J)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/a1$a;->c()Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    add-int/lit8 v6, v6, 0x1

    .line 97
    .line 98
    goto :goto_1
.end method

.method protected c(Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/c;->u(Ljava/nio/ByteBuffer;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/coremedia/iso/boxes/a1;->s:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    int-to-long v0, v0

    .line 11
    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/coremedia/iso/boxes/a1;->s:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/coremedia/iso/boxes/a1$a;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/a1$a;->a()J

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    invoke-static {p1, v2, v3}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/a1$a;->b()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-static {p1, v2}, Lcom/coremedia/iso/i;->f(Ljava/nio/ByteBuffer;I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/a1$a;->c()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-nez v2, :cond_1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Lcom/coremedia/iso/boxes/a1$a$a;

    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getVersion()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    const/4 v4, 0x1

    .line 73
    if-ne v3, v4, :cond_2

    .line 74
    .line 75
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/a1$a$a;->d()J

    .line 76
    .line 77
    .line 78
    move-result-wide v3

    .line 79
    invoke-static {p1, v3, v4}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_2
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/a1$a$a;->d()J

    .line 84
    .line 85
    .line 86
    move-result-wide v3

    .line 87
    invoke-static {v3, v4}, Lcom/googlecode/mp4parser/util/c;->a(J)I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    invoke-static {p1, v3}, Lcom/coremedia/iso/i;->f(Ljava/nio/ByteBuffer;I)V

    .line 92
    .line 93
    .line 94
    :goto_2
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/a1$a$a;->c()I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    invoke-static {p1, v3}, Lcom/coremedia/iso/i;->m(Ljava/nio/ByteBuffer;I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/a1$a$a;->a()I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    invoke-static {p1, v3}, Lcom/coremedia/iso/i;->m(Ljava/nio/ByteBuffer;I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/a1$a$a;->b()J

    .line 109
    .line 110
    .line 111
    move-result-wide v2

    .line 112
    invoke-static {p1, v2, v3}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 113
    .line 114
    .line 115
    goto :goto_1
.end method

.method protected g()J
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/coremedia/iso/boxes/a1;->s:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-wide/16 v1, 0x8

    .line 8
    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    return-wide v1

    .line 16
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Lcom/coremedia/iso/boxes/a1$a;

    .line 21
    .line 22
    const-wide/16 v4, 0x4

    .line 23
    .line 24
    add-long/2addr v1, v4

    .line 25
    const-wide/16 v6, 0x2

    .line 26
    .line 27
    add-long/2addr v1, v6

    .line 28
    const/4 v8, 0x0

    .line 29
    :goto_1
    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/a1$a;->c()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v9

    .line 33
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result v9

    .line 37
    if-lt v8, v9, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getVersion()I

    .line 41
    .line 42
    .line 43
    move-result v9

    .line 44
    const/4 v10, 0x1

    .line 45
    if-ne v9, v10, :cond_2

    .line 46
    .line 47
    add-long/2addr v1, v4

    .line 48
    goto :goto_2

    .line 49
    :cond_2
    add-long/2addr v1, v6

    .line 50
    :goto_2
    add-long/2addr v1, v6

    .line 51
    add-long/2addr v1, v4

    .line 52
    add-int/lit8 v8, v8, 0x1

    .line 53
    .line 54
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/a1;->w:Lorg/aspectj/lang/c$b;

    .line 2
    .line 3
    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/e;->v(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/googlecode/mp4parser/j;->b()Lcom/googlecode/mp4parser/j;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/j;->c(Lorg/aspectj/lang/c;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, "SubSampleInformationBox{entryCount="

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/coremedia/iso/boxes/a1;->s:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, ", entries="

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/coremedia/iso/boxes/a1;->s:Ljava/util/List;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const/16 v1, 0x7d

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    return-object v0
.end method

.method public v()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/a1$a;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/a1;->u:Lorg/aspectj/lang/c$b;

    .line 2
    .line 3
    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/e;->v(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/googlecode/mp4parser/j;->b()Lcom/googlecode/mp4parser/j;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/j;->c(Lorg/aspectj/lang/c;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/coremedia/iso/boxes/a1;->s:Ljava/util/List;

    .line 15
    .line 16
    return-object v0
.end method

.method public w(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/a1$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/a1;->v:Lorg/aspectj/lang/c$b;

    .line 2
    .line 3
    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/e;->w(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/googlecode/mp4parser/j;->b()Lcom/googlecode/mp4parser/j;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/j;->c(Lorg/aspectj/lang/c;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/coremedia/iso/boxes/a1;->s:Ljava/util/List;

    .line 15
    .line 16
    return-void
.end method
