.class public Luc/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I


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
.method public a()I
    .locals 2

    .line 1
    iget v0, p0, Luc/a;->h:I

    .line 2
    .line 3
    iget v1, p0, Luc/a;->f:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    return v0
.end method

.method public b()I
    .locals 2

    .line 1
    iget v0, p0, Luc/a;->g:I

    .line 2
    .line 3
    iget v1, p0, Luc/a;->e:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    return v0
.end method

.method public c()I
    .locals 2

    .line 1
    iget v0, p0, Luc/a;->d:I

    .line 2
    .line 3
    iget v1, p0, Luc/a;->b:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    return v0
.end method

.method public d()I
    .locals 2

    .line 1
    iget v0, p0, Luc/a;->a:I

    .line 2
    .line 3
    invoke-virtual {p0}, Luc/a;->f()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    div-int/lit8 v1, v1, 0x2

    .line 8
    .line 9
    add-int/2addr v0, v1

    .line 10
    return v0
.end method

.method public e()I
    .locals 2

    .line 1
    iget v0, p0, Luc/a;->b:I

    .line 2
    .line 3
    invoke-virtual {p0}, Luc/a;->c()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    div-int/lit8 v1, v1, 0x2

    .line 8
    .line 9
    add-int/2addr v0, v1

    .line 10
    return v0
.end method

.method public f()I
    .locals 2

    .line 1
    iget v0, p0, Luc/a;->c:I

    .line 2
    .line 3
    iget v1, p0, Luc/a;->a:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    return v0
.end method
