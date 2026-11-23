.class public Lcom/byazt/pty/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3af,
        0xd
    }
.end annotation


# instance fields
.field public final c:J

.field public final n:Ljava/nio/ByteBuffer;

.field public final tt:J

.field public final uj:J

.field public final ve:I


# direct methods
.method public constructor <init>(JJIJLjava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/byazt/pty/tt;->c:J

    .line 5
    .line 6
    iput-wide p3, p0, Lcom/byazt/pty/tt;->tt:J

    .line 7
    .line 8
    iput p5, p0, Lcom/byazt/pty/tt;->ve:I

    .line 9
    .line 10
    iput-wide p6, p0, Lcom/byazt/pty/tt;->uj:J

    .line 11
    .line 12
    iput-object p8, p0, Lcom/byazt/pty/tt;->n:Ljava/nio/ByteBuffer;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/pty/tt;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public n()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/pty/tt;->n:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/pty/tt;->tt:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public uj()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/pty/tt;->uj:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public ve()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/pty/tt;->ve:I

    .line 2
    .line 3
    return v0
.end method
