.class public La3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>(IFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, La3/a;->d:I

    .line 5
    .line 6
    iput p2, p0, La3/a;->a:F

    .line 7
    .line 8
    iput p3, p0, La3/a;->c:F

    .line 9
    .line 10
    iput p4, p0, La3/a;->b:F

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .line 1
    iget v0, p0, La3/a;->b:F

    .line 2
    .line 3
    return v0
.end method

.method public b()F
    .locals 1

    .line 1
    iget v0, p0, La3/a;->c:F

    .line 2
    .line 3
    return v0
.end method

.method public c()F
    .locals 1

    .line 1
    iget v0, p0, La3/a;->a:F

    .line 2
    .line 3
    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, La3/a;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public e()La3/a;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, La3/a;->e:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public f(F)V
    .locals 0

    .line 1
    iput p1, p0, La3/a;->b:F

    .line 2
    .line 3
    return-void
.end method

.method public g(F)V
    .locals 0

    .line 1
    iput p1, p0, La3/a;->c:F

    .line 2
    .line 3
    return-void
.end method

.method public h(F)V
    .locals 0

    .line 1
    iput p1, p0, La3/a;->a:F

    .line 2
    .line 3
    return-void
.end method

.method public i(I)V
    .locals 0

    .line 1
    iput p1, p0, La3/a;->d:I

    .line 2
    .line 3
    return-void
.end method
