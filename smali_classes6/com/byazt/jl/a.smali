.class public Lcom/byazt/jl/a;
.super Lcom/byazt/jl/n;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x9d,
        0x22
    }
.end annotation


# static fields
.field public static final c:I


# instance fields
.field public da:I

.field public i:I

.field public sl:S

.field public t:S

.field public tt:I

.field public u:B

.field public ve:I

.field public x:I

.field public yp:B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "fcTL"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/jl/n;->c(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sput v0, Lcom/byazt/jl/a;->c:I

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/jl/n;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/on/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/byazt/on/c;->tt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/byazt/jl/a;->tt:I

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/byazt/on/c;->tt()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/byazt/jl/a;->ve:I

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/byazt/on/c;->tt()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lcom/byazt/jl/a;->x:I

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/byazt/on/c;->tt()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lcom/byazt/jl/a;->i:I

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/byazt/on/c;->tt()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iput v0, p0, Lcom/byazt/jl/a;->da:I

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/byazt/on/c;->a_()S

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput-short v0, p0, Lcom/byazt/jl/a;->sl:S

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/byazt/on/c;->a_()S

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iput-short v0, p0, Lcom/byazt/jl/a;->t:S

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/byazt/on/n;->c_()B

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iput-byte v0, p0, Lcom/byazt/jl/a;->u:B

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/byazt/on/n;->c_()B

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    iput-byte p1, p0, Lcom/byazt/jl/a;->yp:B

    .line 54
    .line 55
    return-void
.end method
