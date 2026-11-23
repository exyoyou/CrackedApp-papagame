.class public Lorg/jboss/netty/buffer/n;
.super Lorg/jboss/netty/buffer/b;
.source "SourceFile"


# static fields
.field private static final b:Lorg/jboss/netty/buffer/n;

.field private static final c:Lorg/jboss/netty/buffer/n;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/jboss/netty/buffer/n;

    .line 2
    .line 3
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/jboss/netty/buffer/n;-><init>(Ljava/nio/ByteOrder;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lorg/jboss/netty/buffer/n;->b:Lorg/jboss/netty/buffer/n;

    .line 9
    .line 10
    new-instance v0, Lorg/jboss/netty/buffer/n;

    .line 11
    .line 12
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lorg/jboss/netty/buffer/n;-><init>(Ljava/nio/ByteOrder;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lorg/jboss/netty/buffer/n;->c:Lorg/jboss/netty/buffer/n;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/jboss/netty/buffer/b;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteOrder;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/b;-><init>(Ljava/nio/ByteOrder;)V

    return-void
.end method

.method public static g()Lorg/jboss/netty/buffer/f;
    .locals 1

    .line 1
    sget-object v0, Lorg/jboss/netty/buffer/n;->b:Lorg/jboss/netty/buffer/n;

    .line 2
    .line 3
    return-object v0
.end method

.method public static h(Ljava/nio/ByteOrder;)Lorg/jboss/netty/buffer/f;
    .locals 1

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lorg/jboss/netty/buffer/n;->b:Lorg/jboss/netty/buffer/n;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 9
    .line 10
    if-ne p0, v0, :cond_1

    .line 11
    .line 12
    sget-object p0, Lorg/jboss/netty/buffer/n;->c:Lorg/jboss/netty/buffer/n;

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_1
    if-nez p0, :cond_2

    .line 16
    .line 17
    new-instance p0, Ljava/lang/NullPointerException;

    .line 18
    .line 19
    const-string v0, "endianness"

    .line 20
    .line 21
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p0

    .line 25
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v0, "Should not reach here"

    .line 28
    .line 29
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p0
.end method


# virtual methods
.method public a(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/e;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lorg/jboss/netty/buffer/h;->b(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public c(Ljava/nio/ByteOrder;[BII)Lorg/jboss/netty/buffer/e;
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4}, Lorg/jboss/netty/buffer/h;->b0(Ljava/nio/ByteOrder;[BII)Lorg/jboss/netty/buffer/e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public d(Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/e;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lorg/jboss/netty/buffer/h;->Z(Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/e;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/buffer/n;->a(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/e;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/e;->Y0(Ljava/nio/ByteBuffer;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 32
    .line 33
    .line 34
    return-object v0
.end method
