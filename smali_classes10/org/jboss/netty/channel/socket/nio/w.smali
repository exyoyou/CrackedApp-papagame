.class final Lorg/jboss/netty/channel/socket/nio/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jboss/netty/util/b;


# instance fields
.field private a:Ljava/nio/ByteBuffer;

.field private b:I

.field private final c:I

.field private final d:I


# direct methods
.method constructor <init>()V
    .locals 2

    const/16 v0, 0x10

    const/16 v1, 0x50

    .line 1
    invoke-direct {p0, v0, v1}, Lorg/jboss/netty/channel/socket/nio/w;-><init>(II)V

    return-void
.end method

.method constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lorg/jboss/netty/channel/socket/nio/w;->c:I

    .line 4
    iput p2, p0, Lorg/jboss/netty/channel/socket/nio/w;->d:I

    return-void
.end method

.method private d(I)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/w;->a:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lorg/jboss/netty/channel/socket/nio/w;->b:I

    .line 7
    .line 8
    invoke-static {v0}, Lorg/jboss/netty/util/internal/a;->a(Ljava/nio/ByteBuffer;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-static {p1}, Lorg/jboss/netty/channel/socket/nio/w;->e(I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/w;->a:Ljava/nio/ByteBuffer;

    .line 20
    .line 21
    return-object p1
.end method

.method private static e(I)I
    .locals 1

    .line 1
    ushr-int/lit8 v0, p0, 0xa

    and-int/lit16 p0, p0, 0x3ff

    if-eqz p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    shl-int/lit8 p0, v0, 0xa

    return p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/w;->a:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lorg/jboss/netty/util/internal/a;->a(Ljava/nio/ByteBuffer;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method c(I)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/w;->a:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/w;->d(I)Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-ge v0, p1, :cond_1

    .line 15
    .line 16
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/w;->d(I)Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/w;->a:Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget v1, p0, Lorg/jboss/netty/channel/socket/nio/w;->d:I

    .line 28
    .line 29
    mul-int v0, v0, v1

    .line 30
    .line 31
    div-int/lit8 v0, v0, 0x64

    .line 32
    .line 33
    if-le v0, p1, :cond_3

    .line 34
    .line 35
    iget v0, p0, Lorg/jboss/netty/channel/socket/nio/w;->b:I

    .line 36
    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/w;->b:I

    .line 40
    .line 41
    iget v1, p0, Lorg/jboss/netty/channel/socket/nio/w;->c:I

    .line 42
    .line 43
    if-ne v0, v1, :cond_2

    .line 44
    .line 45
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/w;->d(I)Ljava/nio/ByteBuffer;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    return-object p1

    .line 50
    :cond_2
    iget-object p1, p0, Lorg/jboss/netty/channel/socket/nio/w;->a:Ljava/nio/ByteBuffer;

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    const/4 p1, 0x0

    .line 57
    iput p1, p0, Lorg/jboss/netty/channel/socket/nio/w;->b:I

    .line 58
    .line 59
    iget-object p1, p0, Lorg/jboss/netty/channel/socket/nio/w;->a:Ljava/nio/ByteBuffer;

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 62
    .line 63
    .line 64
    :goto_0
    iget-object p1, p0, Lorg/jboss/netty/channel/socket/nio/w;->a:Ljava/nio/ByteBuffer;

    .line 65
    .line 66
    return-object p1
.end method
