.class public abstract Lorg/aspectj/runtime/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:[Ljava/lang/Object;

.field protected b:I

.field protected c:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x100000

    .line 2
    iput v0, p0, Lorg/aspectj/runtime/internal/a;->b:I

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x100000

    .line 4
    iput v0, p0, Lorg/aspectj/runtime/internal/a;->b:I

    .line 5
    iput-object p1, p0, Lorg/aspectj/runtime/internal/a;->a:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/aspectj/runtime/internal/a;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public b()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/aspectj/runtime/internal/a;->c:[Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/aspectj/runtime/internal/a;->a:[Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Lorg/aspectj/lang/d;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/aspectj/runtime/internal/a;->a:[Ljava/lang/Object;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    add-int/lit8 v1, v1, -0x1

    .line 5
    .line 6
    aget-object v0, v0, v1

    .line 7
    .line 8
    check-cast v0, Lorg/aspectj/lang/d;

    .line 9
    .line 10
    invoke-interface {v0, p0}, Lorg/aspectj/lang/d;->d(Lorg/aspectj/runtime/internal/a;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public e(I)Lorg/aspectj/lang/d;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/aspectj/runtime/internal/a;->a:[Ljava/lang/Object;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    add-int/lit8 v1, v1, -0x1

    .line 5
    .line 6
    aget-object v0, v0, v1

    .line 7
    .line 8
    check-cast v0, Lorg/aspectj/lang/d;

    .line 9
    .line 10
    invoke-interface {v0, p0}, Lorg/aspectj/lang/d;->d(Lorg/aspectj/runtime/internal/a;)V

    .line 11
    .line 12
    .line 13
    iput p1, p0, Lorg/aspectj/runtime/internal/a;->b:I

    .line 14
    .line 15
    return-object v0
.end method

.method public abstract f([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
