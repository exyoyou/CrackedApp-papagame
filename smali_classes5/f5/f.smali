.class public Lf5/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[I

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Lcom/googlecode/mp4parser/h264/read/b;I)Lf5/f;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lf5/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lf5/f;-><init>()V

    .line 4
    .line 5
    .line 6
    new-array v1, p1, [I

    .line 7
    .line 8
    iput-object v1, v0, Lf5/f;->a:[I

    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/16 v3, 0x8

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    :goto_0
    if-lt v4, p1, :cond_0

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_0
    if-eqz v1, :cond_2

    .line 20
    .line 21
    const-string v1, "deltaScale"

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lcom/googlecode/mp4parser/h264/read/b;->t(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    add-int/2addr v1, v3

    .line 28
    add-int/lit16 v1, v1, 0x100

    .line 29
    .line 30
    rem-int/lit16 v1, v1, 0x100

    .line 31
    .line 32
    if-nez v4, :cond_1

    .line 33
    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    const/4 v5, 0x1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 v5, 0x0

    .line 39
    :goto_1
    iput-boolean v5, v0, Lf5/f;->b:Z

    .line 40
    .line 41
    :cond_2
    iget-object v5, v0, Lf5/f;->a:[I

    .line 42
    .line 43
    if-nez v1, :cond_3

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_3
    move v3, v1

    .line 47
    :goto_2
    aput v3, v5, v4

    .line 48
    .line 49
    add-int/lit8 v4, v4, 0x1

    .line 50
    .line 51
    goto :goto_0
.end method


# virtual methods
.method public b(Lg5/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lf5/f;->b:Z

    .line 2
    .line 3
    const-string v1, "SPS: "

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1, v2, v1}, Lg5/b;->i(ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/16 v0, 0x8

    .line 13
    .line 14
    :goto_0
    iget-object v3, p0, Lf5/f;->a:[I

    .line 15
    .line 16
    array-length v4, v3

    .line 17
    if-lt v2, v4, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    aget v3, v3, v2

    .line 21
    .line 22
    sub-int/2addr v3, v0

    .line 23
    add-int/lit16 v3, v3, -0x100

    .line 24
    .line 25
    invoke-virtual {p1, v3, v1}, Lg5/b;->i(ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lf5/f;->a:[I

    .line 29
    .line 30
    aget v0, v0, v2

    .line 31
    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ScalingList{scalingList="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lf5/f;->a:[I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", useDefaultScalingMatrixFlag="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Lf5/f;->b:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/16 v1, 0x7d

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method
