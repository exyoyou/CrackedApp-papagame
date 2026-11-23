.class public abstract Lorg/jboss/netty/buffer/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jboss/netty/buffer/f;


# instance fields
.field private final a:Ljava/nio/ByteOrder;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p0, v0}, Lorg/jboss/netty/buffer/b;-><init>(Ljava/nio/ByteOrder;)V

    return-void
.end method

.method protected constructor <init>(Ljava/nio/ByteOrder;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 3
    iput-object p1, p0, Lorg/jboss/netty/buffer/b;->a:Ljava/nio/ByteOrder;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "defaultOrder"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public b(I)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/b;->e()Ljava/nio/ByteOrder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p0, v0, p1}, Lorg/jboss/netty/buffer/f;->a(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/e;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public e()Ljava/nio/ByteOrder;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/b;->a:Ljava/nio/ByteOrder;

    .line 2
    .line 3
    return-object v0
.end method

.method public f([BII)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/b;->e()Ljava/nio/ByteOrder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p0, v0, p1, p2, p3}, Lorg/jboss/netty/buffer/f;->c(Ljava/nio/ByteOrder;[BII)Lorg/jboss/netty/buffer/e;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
