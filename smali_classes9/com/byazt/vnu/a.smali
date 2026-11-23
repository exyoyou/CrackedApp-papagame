.class public abstract Lcom/byazt/vnu/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/DataInput;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2bb,
        0x22
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/vnu/i;


# direct methods
.method public constructor <init>(Lcom/byazt/vnu/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/vnu/a;->c:Lcom/byazt/vnu/i;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public readBoolean()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/vnu/a;->c:Lcom/byazt/vnu/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/vnu/i;->readBoolean()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public readByte()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/vnu/a;->c:Lcom/byazt/vnu/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/vnu/i;->readByte()B

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public readChar()C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/vnu/a;->c:Lcom/byazt/vnu/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/vnu/i;->readChar()C

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/vnu/a;->c:Lcom/byazt/vnu/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/vnu/i;->readDouble()D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/vnu/a;->c:Lcom/byazt/vnu/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/vnu/i;->readFloat()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public readFully([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/byazt/vnu/a;->c:Lcom/byazt/vnu/i;

    invoke-virtual {v0, p1}, Lcom/byazt/vnu/i;->readFully([B)V

    return-void
.end method

.method public readFully([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/vnu/a;->c:Lcom/byazt/vnu/i;

    invoke-virtual {v0, p1, p2, p3}, Lcom/byazt/vnu/i;->readFully([BII)V

    return-void
.end method

.method public readInt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/vnu/a;->c:Lcom/byazt/vnu/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/vnu/i;->readInt()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/vnu/a;->c:Lcom/byazt/vnu/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/vnu/i;->readLine()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public readLong()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/vnu/a;->c:Lcom/byazt/vnu/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/vnu/i;->readLong()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public readShort()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/vnu/a;->c:Lcom/byazt/vnu/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/vnu/i;->readShort()S

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public readUTF()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/vnu/a;->c:Lcom/byazt/vnu/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/vnu/i;->readUTF()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public readUnsignedByte()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/vnu/a;->c:Lcom/byazt/vnu/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/vnu/i;->readUnsignedByte()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public readUnsignedShort()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/vnu/a;->c:Lcom/byazt/vnu/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/vnu/i;->readUnsignedShort()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public skipBytes(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/vnu/a;->c:Lcom/byazt/vnu/i;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/vnu/i;->skipBytes(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
