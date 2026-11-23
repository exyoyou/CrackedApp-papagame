.class public final Lcom/kwad/sdk/pngencrypt/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field protected bjK:Lcom/kwad/sdk/pngencrypt/ErrorBehaviour;

.field public final bkK:Lcom/kwad/sdk/pngencrypt/k;

.field public final blg:Z

.field protected final blh:Lcom/kwad/sdk/pngencrypt/c;

.field protected final bli:Lcom/kwad/sdk/pngencrypt/a;

.field protected final blj:Lcom/kwad/sdk/pngencrypt/chunk/w;

.field protected blk:I

.field private bll:Lcom/kwad/sdk/pngencrypt/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kwad/sdk/pngencrypt/i<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p2, -0x1

    .line 5
    iput p2, p0, Lcom/kwad/sdk/pngencrypt/o;->blk:I

    .line 6
    .line 7
    sget-object v0, Lcom/kwad/sdk/pngencrypt/ErrorBehaviour;->STRICT:Lcom/kwad/sdk/pngencrypt/ErrorBehaviour;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/kwad/sdk/pngencrypt/o;->bjK:Lcom/kwad/sdk/pngencrypt/ErrorBehaviour;

    .line 10
    .line 11
    new-instance v0, Lcom/kwad/sdk/pngencrypt/a;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Lcom/kwad/sdk/pngencrypt/a;-><init>(Ljava/io/InputStream;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/kwad/sdk/pngencrypt/o;->bli:Lcom/kwad/sdk/pngencrypt/a;

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    invoke-virtual {v0, p1}, Lcom/kwad/sdk/pngencrypt/a;->ch(Z)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/kwad/sdk/pngencrypt/o;->Tm()Lcom/kwad/sdk/pngencrypt/c;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iput-object v1, p0, Lcom/kwad/sdk/pngencrypt/o;->blh:Lcom/kwad/sdk/pngencrypt/c;

    .line 27
    .line 28
    const/16 v2, 0x24

    .line 29
    .line 30
    :try_start_0
    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/pngencrypt/a;->b(Lcom/kwad/sdk/pngencrypt/f;I)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eq v0, v2, :cond_0

    .line 35
    .line 36
    new-instance v0, Lcom/kwad/sdk/pngencrypt/PngjException;

    .line 37
    .line 38
    const-string v2, "Could not read first 36 bytes (PNG signature+IHDR chunk)"

    .line 39
    .line 40
    invoke-direct {v0, v2}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-virtual {v1}, Lcom/kwad/sdk/pngencrypt/c;->SN()Lcom/kwad/sdk/pngencrypt/k;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lcom/kwad/sdk/pngencrypt/o;->bkK:Lcom/kwad/sdk/pngencrypt/k;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/kwad/sdk/pngencrypt/c;->SO()Lcom/kwad/sdk/pngencrypt/e;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const/4 p1, 0x0

    .line 57
    :goto_0
    iput-boolean p1, p0, Lcom/kwad/sdk/pngencrypt/o;->blg:Z

    .line 58
    .line 59
    const-wide/32 v2, 0x4ca918

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, v2, v3}, Lcom/kwad/sdk/pngencrypt/o;->aY(J)V

    .line 63
    .line 64
    .line 65
    const-wide/32 v2, 0x35b42f29

    .line 66
    .line 67
    .line 68
    invoke-direct {p0, v2, v3}, Lcom/kwad/sdk/pngencrypt/o;->aW(J)V

    .line 69
    .line 70
    .line 71
    const-wide/32 v2, 0x1ee258    # 1.0000007E-317

    .line 72
    .line 73
    .line 74
    invoke-direct {p0, v2, v3}, Lcom/kwad/sdk/pngencrypt/o;->aX(J)V

    .line 75
    .line 76
    .line 77
    new-instance p1, Lcom/kwad/sdk/pngencrypt/chunk/w;

    .line 78
    .line 79
    iget-object v0, v1, Lcom/kwad/sdk/pngencrypt/c;->bjQ:Lcom/kwad/sdk/pngencrypt/chunk/e;

    .line 80
    .line 81
    invoke-direct {p1, v0}, Lcom/kwad/sdk/pngencrypt/chunk/w;-><init>(Lcom/kwad/sdk/pngencrypt/chunk/e;)V

    .line 82
    .line 83
    .line 84
    iput-object p1, p0, Lcom/kwad/sdk/pngencrypt/o;->blj:Lcom/kwad/sdk/pngencrypt/chunk/w;

    .line 85
    .line 86
    invoke-static {}, Lcom/kwad/sdk/pngencrypt/m;->Tf()Lcom/kwad/sdk/pngencrypt/i;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-direct {p0, p1}, Lcom/kwad/sdk/pngencrypt/o;->a(Lcom/kwad/sdk/pngencrypt/i;)V

    .line 91
    .line 92
    .line 93
    iput p2, p0, Lcom/kwad/sdk/pngencrypt/o;->blk:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .line 95
    return-void

    .line 96
    :catch_0
    move-exception p1

    .line 97
    iget-object p2, p0, Lcom/kwad/sdk/pngencrypt/o;->bli:Lcom/kwad/sdk/pngencrypt/a;

    .line 98
    .line 99
    invoke-virtual {p2}, Lcom/kwad/sdk/pngencrypt/a;->close()V

    .line 100
    .line 101
    .line 102
    iget-object p2, p0, Lcom/kwad/sdk/pngencrypt/o;->blh:Lcom/kwad/sdk/pngencrypt/c;

    .line 103
    .line 104
    invoke-virtual {p2}, Lcom/kwad/sdk/pngencrypt/c;->close()V

    .line 105
    .line 106
    .line 107
    throw p1
.end method

.method private Ti()V
    .locals 3

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/o;->blh:Lcom/kwad/sdk/pngencrypt/c;

    .line 2
    .line 3
    iget v1, v0, Lcom/kwad/sdk/pngencrypt/c;->bjP:I

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    if-ge v1, v2, :cond_1

    .line 7
    .line 8
    iget-object v1, p0, Lcom/kwad/sdk/pngencrypt/o;->bli:Lcom/kwad/sdk/pngencrypt/a;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Lcom/kwad/sdk/pngencrypt/a;->a(Lcom/kwad/sdk/pngencrypt/f;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-gtz v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Lcom/kwad/sdk/pngencrypt/PngjException;

    .line 17
    .line 18
    const-string v1, "Premature ending reading first chunks"

    .line 19
    .line 20
    invoke-direct {v0, v1}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    return-void
.end method

.method private Tl()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/o;->blh:Lcom/kwad/sdk/pngencrypt/c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/pngencrypt/c;->cj(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private static Tm()Lcom/kwad/sdk/pngencrypt/c;
    .locals 2

    .line 1
    new-instance v0, Lcom/kwad/sdk/pngencrypt/c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/kwad/sdk/pngencrypt/c;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method private a(Lcom/kwad/sdk/pngencrypt/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/pngencrypt/i<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/pngencrypt/o;->bll:Lcom/kwad/sdk/pngencrypt/i;

    .line 2
    .line 3
    return-void
.end method

.method private aW(J)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/kwad/sdk/pngencrypt/o;->blh:Lcom/kwad/sdk/pngencrypt/c;

    .line 2
    .line 3
    const-wide/32 v0, 0x35b42f29

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0, v1}, Lcom/kwad/sdk/pngencrypt/c;->aW(J)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private aX(J)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/kwad/sdk/pngencrypt/o;->blh:Lcom/kwad/sdk/pngencrypt/c;

    .line 2
    .line 3
    const-wide/32 v0, 0x1ee258    # 1.0000007E-317

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0, v1}, Lcom/kwad/sdk/pngencrypt/c;->aX(J)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private aY(J)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/kwad/sdk/pngencrypt/o;->blh:Lcom/kwad/sdk/pngencrypt/c;

    .line 2
    .line 3
    const-wide/32 v0, 0x4ca918

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0, v1}, Lcom/kwad/sdk/pngencrypt/c;->aY(J)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final Tj()Lcom/kwad/sdk/pngencrypt/chunk/w;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/o;->blh:Lcom/kwad/sdk/pngencrypt/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kwad/sdk/pngencrypt/c;->SL()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/kwad/sdk/pngencrypt/o;->Ti()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/o;->blj:Lcom/kwad/sdk/pngencrypt/chunk/w;

    .line 13
    .line 14
    return-object v0
.end method

.method public final Tk()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/pngencrypt/o;->Tl()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/o;->blh:Lcom/kwad/sdk/pngencrypt/c;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kwad/sdk/pngencrypt/c;->SL()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/kwad/sdk/pngencrypt/o;->Ti()V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/kwad/sdk/pngencrypt/o;->end()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/o;->blh:Lcom/kwad/sdk/pngencrypt/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/sdk/pngencrypt/a/a;->closeQuietly(Ljava/io/Closeable;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/o;->bli:Lcom/kwad/sdk/pngencrypt/a;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/kwad/sdk/pngencrypt/a/a;->closeQuietly(Ljava/io/Closeable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final end()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/o;->blh:Lcom/kwad/sdk/pngencrypt/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kwad/sdk/pngencrypt/c;->SL()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/kwad/sdk/pngencrypt/o;->Ti()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/o;->blh:Lcom/kwad/sdk/pngencrypt/c;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/kwad/sdk/pngencrypt/c;->SM()Lcom/kwad/sdk/pngencrypt/j;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/o;->blh:Lcom/kwad/sdk/pngencrypt/c;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/kwad/sdk/pngencrypt/c;->SM()Lcom/kwad/sdk/pngencrypt/j;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->isDone()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/o;->blh:Lcom/kwad/sdk/pngencrypt/c;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/kwad/sdk/pngencrypt/c;->SM()Lcom/kwad/sdk/pngencrypt/j;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->Gr()V

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/o;->blh:Lcom/kwad/sdk/pngencrypt/c;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/kwad/sdk/pngencrypt/b;->isDone()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/o;->bli:Lcom/kwad/sdk/pngencrypt/a;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/kwad/sdk/pngencrypt/o;->blh:Lcom/kwad/sdk/pngencrypt/c;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/pngencrypt/a;->a(Lcom/kwad/sdk/pngencrypt/f;)I

    .line 54
    .line 55
    .line 56
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    if-gtz v0, :cond_1

    .line 58
    .line 59
    :cond_2
    invoke-virtual {p0}, Lcom/kwad/sdk/pngencrypt/o;->close()V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    invoke-virtual {p0}, Lcom/kwad/sdk/pngencrypt/o;->close()V

    .line 65
    .line 66
    .line 67
    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/kwad/sdk/pngencrypt/o;->bkK:Lcom/kwad/sdk/pngencrypt/k;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/kwad/sdk/pngencrypt/k;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " interlaced="

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-boolean v1, p0, Lcom/kwad/sdk/pngencrypt/o;->blg:Z

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method
