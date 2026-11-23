.class public Lcom/kongzue/dialogx/util/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/kongzue/dialogx/util/TextInfo;

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/Integer;

.field private g:Ljava/lang/Integer;

.field private h:[Landroid/text/InputFilter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/kongzue/dialogx/util/j;->a:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public a(Landroid/text/InputFilter;)Lcom/kongzue/dialogx/util/j;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/j;->h:[Landroid/text/InputFilter;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-array v0, v1, [Landroid/text/InputFilter;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    aput-object p1, v0, v1

    .line 10
    .line 11
    iput-object v0, p0, Lcom/kongzue/dialogx/util/j;->h:[Landroid/text/InputFilter;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    array-length v2, v0

    .line 15
    add-int/2addr v2, v1

    .line 16
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, [Landroid/text/InputFilter;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/kongzue/dialogx/util/j;->h:[Landroid/text/InputFilter;

    .line 23
    .line 24
    array-length v2, v0

    .line 25
    sub-int/2addr v2, v1

    .line 26
    aput-object p1, v0, v2

    .line 27
    .line 28
    :goto_0
    return-object p0
.end method

.method public b()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/j;->g:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/j;->f:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()[Landroid/text/InputFilter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/j;->h:[Landroid/text/InputFilter;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/util/j;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/util/j;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public g()Lcom/kongzue/dialogx/util/TextInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/j;->c:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kongzue/dialogx/util/j;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kongzue/dialogx/util/j;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public j(Landroid/text/InputFilter;)Lcom/kongzue/dialogx/util/j;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/j;->h:[Landroid/text/InputFilter;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/kongzue/dialogx/util/j;->h:[Landroid/text/InputFilter;

    .line 7
    .line 8
    array-length v2, v1

    .line 9
    if-ge v0, v2, :cond_1

    .line 10
    .line 11
    aget-object v2, v1, v0

    .line 12
    .line 13
    if-ne v2, p1, :cond_0

    .line 14
    .line 15
    array-length p1, v1

    .line 16
    add-int/lit8 p1, p1, -0x1

    .line 17
    .line 18
    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, [Landroid/text/InputFilter;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/kongzue/dialogx/util/j;->h:[Landroid/text/InputFilter;

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return-object p0
.end method

.method public k(I)Lcom/kongzue/dialogx/util/j;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/util/j;->g:Ljava/lang/Integer;

    .line 6
    .line 7
    return-object p0
.end method

.method public l(I)Lcom/kongzue/dialogx/util/j;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/util/j;->f:Ljava/lang/Integer;

    .line 6
    .line 7
    return-object p0
.end method

.method public m([Landroid/text/InputFilter;)Lcom/kongzue/dialogx/util/j;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/util/j;->h:[Landroid/text/InputFilter;

    .line 2
    .line 3
    return-object p0
.end method

.method public n(I)Lcom/kongzue/dialogx/util/j;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/util/j;->b:I

    .line 2
    .line 3
    return-object p0
.end method

.method public o(I)Lcom/kongzue/dialogx/util/j;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/util/j;->a:I

    .line 2
    .line 3
    return-object p0
.end method

.method public p(Z)Lcom/kongzue/dialogx/util/j;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/util/j;->d:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public q(Z)Lcom/kongzue/dialogx/util/j;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/util/j;->e:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public r(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/util/j;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/util/j;->c:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public s(I)Lcom/kongzue/dialogx/util/j;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/kongzue/dialogx/util/j;->f:Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/kongzue/dialogx/util/j;->g:Ljava/lang/Integer;

    .line 12
    .line 13
    return-object p0
.end method
