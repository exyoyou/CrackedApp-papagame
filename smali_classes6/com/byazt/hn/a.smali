.class public final Lcom/byazt/hn/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x19,
        0x22
    }
.end annotation


# instance fields
.field public a:[F

.field public c:I

.field public i:[I

.field public n:[F

.field public sp:[F

.field public tt:I

.field public uj:[F

.field public ve:[F

.field public x:[I


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


# virtual methods
.method public c(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/hn/a;->ve:[F

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    array-length v0, v0

    .line 6
    if-ge v0, p1, :cond_1

    .line 7
    .line 8
    :cond_0
    new-array v0, p1, [F

    .line 9
    .line 10
    iput-object v0, p0, Lcom/byazt/hn/a;->ve:[F

    .line 11
    .line 12
    new-array v0, p1, [F

    .line 13
    .line 14
    iput-object v0, p0, Lcom/byazt/hn/a;->uj:[F

    .line 15
    .line 16
    new-array v0, p1, [F

    .line 17
    .line 18
    iput-object v0, p0, Lcom/byazt/hn/a;->n:[F

    .line 19
    .line 20
    new-array v0, p1, [F

    .line 21
    .line 22
    iput-object v0, p0, Lcom/byazt/hn/a;->a:[F

    .line 23
    .line 24
    new-array v0, p1, [F

    .line 25
    .line 26
    iput-object v0, p0, Lcom/byazt/hn/a;->sp:[F

    .line 27
    .line 28
    new-array v0, p1, [I

    .line 29
    .line 30
    iput-object v0, p0, Lcom/byazt/hn/a;->x:[I

    .line 31
    .line 32
    new-array p1, p1, [I

    .line 33
    .line 34
    iput-object p1, p0, Lcom/byazt/hn/a;->i:[I

    .line 35
    .line 36
    :cond_1
    return-void
.end method
