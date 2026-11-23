.class public final Lcom/byazt/jb/x$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/mk/my;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3f,
        0x3e
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/jb/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/byazt/mk/n;

.field public c:I

.field public n:S

.field public tt:B

.field public uj:I

.field public ve:I


# direct methods
.method public constructor <init>(Lcom/byazt/mk/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/jb/x$c;->a:Lcom/byazt/mk/n;

    .line 5
    .line 6
    return-void
.end method

.method private tt()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/byazt/jb/x$c;->ve:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/jb/x$c;->a:Lcom/byazt/mk/n;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/byazt/jb/x;->c(Lcom/byazt/mk/n;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iput v1, p0, Lcom/byazt/jb/x$c;->uj:I

    .line 10
    .line 11
    iput v1, p0, Lcom/byazt/jb/x$c;->c:I

    .line 12
    .line 13
    iget-object v1, p0, Lcom/byazt/jb/x$c;->a:Lcom/byazt/mk/n;

    .line 14
    .line 15
    invoke-interface {v1}, Lcom/byazt/mk/n;->x()B

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    and-int/lit16 v1, v1, 0xff

    .line 20
    .line 21
    int-to-byte v1, v1

    .line 22
    iget-object v2, p0, Lcom/byazt/jb/x$c;->a:Lcom/byazt/mk/n;

    .line 23
    .line 24
    invoke-interface {v2}, Lcom/byazt/mk/n;->x()B

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    and-int/lit16 v2, v2, 0xff

    .line 29
    .line 30
    int-to-byte v2, v2

    .line 31
    iput-byte v2, p0, Lcom/byazt/jb/x$c;->tt:B

    .line 32
    .line 33
    sget-object v2, Lcom/byazt/jb/x;->c:Ljava/util/logging/Logger;

    .line 34
    .line 35
    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    const/4 v4, 0x1

    .line 42
    if-eqz v3, :cond_0

    .line 43
    .line 44
    iget v3, p0, Lcom/byazt/jb/x$c;->ve:I

    .line 45
    .line 46
    iget v5, p0, Lcom/byazt/jb/x$c;->c:I

    .line 47
    .line 48
    iget-byte v6, p0, Lcom/byazt/jb/x$c;->tt:B

    .line 49
    .line 50
    invoke-static {v4, v3, v5, v1, v6}, Lcom/byazt/jb/n;->c(ZIIBB)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    iget-object v2, p0, Lcom/byazt/jb/x$c;->a:Lcom/byazt/mk/n;

    .line 58
    .line 59
    invoke-interface {v2}, Lcom/byazt/mk/n;->da()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    const v3, 0x7fffffff

    .line 64
    .line 65
    .line 66
    and-int/2addr v2, v3

    .line 67
    iput v2, p0, Lcom/byazt/jb/x$c;->ve:I

    .line 68
    .line 69
    const/16 v3, 0x9

    .line 70
    .line 71
    const/4 v5, 0x0

    .line 72
    if-ne v1, v3, :cond_2

    .line 73
    .line 74
    if-ne v2, v0, :cond_1

    .line 75
    .line 76
    return-void

    .line 77
    :cond_1
    const-string v0, "TYPE_CONTINUATION streamId changed"

    .line 78
    .line 79
    new-array v1, v5, [Ljava/lang/Object;

    .line 80
    .line 81
    invoke-static {v0, v1}, Lcom/byazt/jb/n;->tt(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    throw v0

    .line 86
    :cond_2
    new-array v0, v4, [Ljava/lang/Object;

    .line 87
    .line 88
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    aput-object v1, v0, v5

    .line 93
    .line 94
    const-string v1, "%s != TYPE_CONTINUATION"

    .line 95
    .line 96
    invoke-static {v1, v0}, Lcom/byazt/jb/n;->tt(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    throw v0
.end method


# virtual methods
.method public c(Lcom/byazt/mk/ve;J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    iget v0, p0, Lcom/byazt/jb/x$c;->uj:I

    const-wide/16 v1, -0x1

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/byazt/jb/x$c;->a:Lcom/byazt/mk/n;

    iget-short v3, p0, Lcom/byazt/jb/x$c;->n:S

    int-to-long v3, v3

    invoke-interface {v0, v3, v4}, Lcom/byazt/mk/n;->x(J)V

    const/4 v0, 0x0

    .line 3
    iput-short v0, p0, Lcom/byazt/jb/x$c;->n:S

    .line 4
    iget-byte v0, p0, Lcom/byazt/jb/x$c;->tt:B

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    return-wide v1

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/byazt/jb/x$c;->tt()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v3, p0, Lcom/byazt/jb/x$c;->a:Lcom/byazt/mk/n;

    int-to-long v4, v0

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-interface {v3, p1, p2, p3}, Lcom/byazt/mk/my;->c(Lcom/byazt/mk/ve;J)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-nez p3, :cond_2

    return-wide v1

    .line 7
    :cond_2
    iget p3, p0, Lcom/byazt/jb/x$c;->uj:I

    int-to-long v0, p3

    sub-long/2addr v0, p1

    long-to-int p3, v0

    iput p3, p0, Lcom/byazt/jb/x$c;->uj:I

    return-wide p1
.end method

.method public c()Lcom/byazt/mk/gt;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/byazt/jb/x$c;->a:Lcom/byazt/mk/n;

    invoke-interface {v0}, Lcom/byazt/mk/my;->c()Lcom/byazt/mk/gt;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
