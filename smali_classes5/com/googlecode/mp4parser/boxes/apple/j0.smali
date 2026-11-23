.class public abstract Lcom/googlecode/mp4parser/boxes/apple/j0;
.super Lcom/googlecode/mp4parser/boxes/apple/j;
.source "SourceFile"


# static fields
.field private static final synthetic A:Lorg/aspectj/lang/c$b;

.field private static final synthetic B:Lorg/aspectj/lang/c$b;

.field private static final synthetic C:Lorg/aspectj/lang/c$b;

.field private static final synthetic D:Lorg/aspectj/lang/c$b;


# instance fields
.field y:J

.field z:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/googlecode/mp4parser/boxes/apple/j0;->s()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/16 v0, 0xf

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/googlecode/mp4parser/boxes/apple/j;-><init>(Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/j0;->z:I

    .line 8
    .line 9
    return-void
.end method

.method private static synthetic s()V
    .locals 10

    .line 1
    new-instance v8, Lorg/aspectj/runtime/reflect/e;

    .line 2
    .line 3
    const-string v0, "AppleVariableSignedIntegerBox.java"

    .line 4
    .line 5
    const-class v1, Lcom/googlecode/mp4parser/boxes/apple/j0;

    .line 6
    .line 7
    invoke-direct {v8, v0, v1}, Lorg/aspectj/runtime/reflect/e;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "1"

    .line 11
    .line 12
    const-string v2, "getIntLength"

    .line 13
    .line 14
    const-string v3, "com.googlecode.mp4parser.boxes.apple.AppleVariableSignedIntegerBox"

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
    const-string v7, "int"

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
    const/16 v1, 0x13

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
    sput-object v0, Lcom/googlecode/mp4parser/boxes/apple/j0;->A:Lorg/aspectj/lang/c$b;

    .line 38
    .line 39
    const-string v1, "1"

    .line 40
    .line 41
    const-string v2, "setIntLength"

    .line 42
    .line 43
    const-string v3, "com.googlecode.mp4parser.boxes.apple.AppleVariableSignedIntegerBox"

    .line 44
    .line 45
    const-string v4, "int"

    .line 46
    .line 47
    const-string v5, "intLength"

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
    const/16 v1, 0x17

    .line 59
    .line 60
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sput-object v0, Lcom/googlecode/mp4parser/boxes/apple/j0;->B:Lorg/aspectj/lang/c$b;

    .line 65
    .line 66
    const-string v1, "1"

    .line 67
    .line 68
    const-string v2, "getValue"

    .line 69
    .line 70
    const-string v3, "com.googlecode.mp4parser.boxes.apple.AppleVariableSignedIntegerBox"

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
    const-string v7, "long"

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
    const/16 v1, 0x1b

    .line 86
    .line 87
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    sput-object v0, Lcom/googlecode/mp4parser/boxes/apple/j0;->C:Lorg/aspectj/lang/c$b;

    .line 92
    .line 93
    const-string v1, "1"

    .line 94
    .line 95
    const-string v2, "setValue"

    .line 96
    .line 97
    const-string v3, "com.googlecode.mp4parser.boxes.apple.AppleVariableSignedIntegerBox"

    .line 98
    .line 99
    const-string v4, "long"

    .line 100
    .line 101
    const-string v5, "value"

    .line 102
    .line 103
    const-string v6, ""

    .line 104
    .line 105
    const-string v7, "void"

    .line 106
    .line 107
    move-object v0, v8

    .line 108
    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/e;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lad/t;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    const/16 v1, 0x24

    .line 113
    .line 114
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    sput-object v0, Lcom/googlecode/mp4parser/boxes/apple/j0;->D:Lorg/aspectj/lang/c$b;

    .line 119
    .line 120
    return-void
.end method


# virtual methods
.method protected C()[B
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/apple/j0;->v()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v1, v0, [B

    .line 6
    .line 7
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-wide v2, p0, Lcom/googlecode/mp4parser/boxes/apple/j0;->y:J

    .line 12
    .line 13
    invoke-static {v2, v3, v1, v0}, Lcom/coremedia/iso/j;->a(JLjava/nio/ByteBuffer;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public E()I
    .locals 2

    .line 1
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/j0;->A:Lorg/aspectj/lang/c$b;

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
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/j0;->z:I

    .line 15
    .line 16
    return v0
.end method

.method public F()J
    .locals 2

    .line 1
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/j0;->C:Lorg/aspectj/lang/c$b;

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
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/a;->m()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/a;->o()V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/apple/j0;->y:J

    .line 24
    .line 25
    return-wide v0
.end method

.method public G(I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/j0;->B:Lorg/aspectj/lang/c$b;

    .line 2
    .line 3
    invoke-static {p1}, Lorg/aspectj/runtime/internal/e;->k(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/e;->w(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Lcom/googlecode/mp4parser/j;->b()Lcom/googlecode/mp4parser/j;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/j;->c(Lorg/aspectj/lang/c;)V

    .line 16
    .line 17
    .line 18
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/j0;->z:I

    .line 19
    .line 20
    return-void
.end method

.method public H(J)V
    .locals 3

    .line 1
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/j0;->D:Lorg/aspectj/lang/c$b;

    .line 2
    .line 3
    invoke-static {p1, p2}, Lorg/aspectj/runtime/internal/e;->m(J)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/e;->w(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Lcom/googlecode/mp4parser/j;->b()Lcom/googlecode/mp4parser/j;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/j;->c(Lorg/aspectj/lang/c;)V

    .line 16
    .line 17
    .line 18
    const-wide/16 v0, 0x7f

    .line 19
    .line 20
    cmp-long v2, p1, v0

    .line 21
    .line 22
    if-gtz v2, :cond_0

    .line 23
    .line 24
    const-wide/16 v0, -0x80

    .line 25
    .line 26
    cmp-long v2, p1, v0

    .line 27
    .line 28
    if-lez v2, :cond_0

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    iput v0, p0, Lcom/googlecode/mp4parser/boxes/apple/j0;->z:I

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-wide/16 v0, 0x7fff

    .line 35
    .line 36
    cmp-long v2, p1, v0

    .line 37
    .line 38
    if-gtz v2, :cond_1

    .line 39
    .line 40
    const-wide/16 v0, -0x8000

    .line 41
    .line 42
    cmp-long v2, p1, v0

    .line 43
    .line 44
    if-lez v2, :cond_1

    .line 45
    .line 46
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/j0;->z:I

    .line 47
    .line 48
    const/4 v1, 0x2

    .line 49
    if-ge v0, v1, :cond_1

    .line 50
    .line 51
    iput v1, p0, Lcom/googlecode/mp4parser/boxes/apple/j0;->z:I

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const-wide/32 v0, 0x7fffff

    .line 55
    .line 56
    .line 57
    cmp-long v2, p1, v0

    .line 58
    .line 59
    if-gtz v2, :cond_2

    .line 60
    .line 61
    const-wide/32 v0, -0x800000

    .line 62
    .line 63
    .line 64
    cmp-long v2, p1, v0

    .line 65
    .line 66
    if-lez v2, :cond_2

    .line 67
    .line 68
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/j0;->z:I

    .line 69
    .line 70
    const/4 v1, 0x3

    .line 71
    if-ge v0, v1, :cond_2

    .line 72
    .line 73
    iput v1, p0, Lcom/googlecode/mp4parser/boxes/apple/j0;->z:I

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    const/4 v0, 0x4

    .line 77
    iput v0, p0, Lcom/googlecode/mp4parser/boxes/apple/j0;->z:I

    .line 78
    .line 79
    :goto_0
    iput-wide p1, p0, Lcom/googlecode/mp4parser/boxes/apple/j0;->y:J

    .line 80
    .line 81
    return-void
.end method

.method protected v()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/j0;->z:I

    .line 2
    .line 3
    return v0
.end method

.method protected y(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1, v0}, Lcom/coremedia/iso/h;->a(Ljava/nio/ByteBuffer;I)J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    iput-wide v1, p0, Lcom/googlecode/mp4parser/boxes/apple/j0;->y:J

    .line 10
    .line 11
    iput v0, p0, Lcom/googlecode/mp4parser/boxes/apple/j0;->z:I

    .line 12
    .line 13
    return-void
.end method
