.class public Lcom/byazt/jl/t;
.super Lcom/byazt/jl/n;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x9d,
        0x42
    }
.end annotation


# static fields
.field public static final c:I


# instance fields
.field public tt:I

.field public ve:I

.field public x:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "IHDR"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/jl/n;->c(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sput v0, Lcom/byazt/jl/t;->c:I

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/byazt/jl/n;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x5

    .line 5
    new-array v0, v0, [B

    .line 6
    .line 7
    iput-object v0, p0, Lcom/byazt/jl/t;->x:[B

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/on/c;)V
    .locals 3
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
    iput v0, p0, Lcom/byazt/jl/t;->tt:I

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/byazt/on/c;->tt()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/byazt/jl/t;->ve:I

    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/jl/t;->x:[B

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    array-length v2, v0

    .line 17
    invoke-virtual {p1, v0, v1, v2}, Lcom/byazt/on/n;->c([BII)I

    .line 18
    .line 19
    .line 20
    return-void
.end method
