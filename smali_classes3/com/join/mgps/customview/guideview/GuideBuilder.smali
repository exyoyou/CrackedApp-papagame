.class public Lcom/join/mgps/customview/guideview/GuideBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/guideview/GuideBuilder$b;,
        Lcom/join/mgps/customview/guideview/GuideBuilder$a;,
        Lcom/join/mgps/customview/guideview/GuideBuilder$SlideState;
    }
.end annotation


# instance fields
.field private a:Lcom/join/mgps/customview/guideview/Configuration;

.field private b:Z

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/customview/guideview/b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/join/mgps/customview/guideview/GuideBuilder$b;

.field private e:Lcom/join/mgps/customview/guideview/GuideBuilder$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/customview/guideview/GuideBuilder;->c:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Lcom/join/mgps/customview/guideview/Configuration;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/join/mgps/customview/guideview/Configuration;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/customview/guideview/GuideBuilder;->a:Lcom/join/mgps/customview/guideview/Configuration;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/customview/guideview/b;)Lcom/join/mgps/customview/guideview/GuideBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/guideview/GuideBuilder;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/guideview/GuideBuilder;->c:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    new-instance p1, Lcom/join/mgps/customview/guideview/BuildException;

    .line 12
    .line 13
    const-string v0, "Already created, rebuild a new one."

    .line 14
    .line 15
    invoke-direct {p1, v0}, Lcom/join/mgps/customview/guideview/BuildException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p1
.end method

.method public b()Lcom/join/mgps/customview/guideview/d;
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/customview/guideview/d;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/customview/guideview/d;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/customview/guideview/GuideBuilder;->c:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    new-array v1, v1, [Lcom/join/mgps/customview/guideview/b;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/join/mgps/customview/guideview/GuideBuilder;->c:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, [Lcom/join/mgps/customview/guideview/b;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/guideview/d;->i([Lcom/join/mgps/customview/guideview/b;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/join/mgps/customview/guideview/GuideBuilder;->a:Lcom/join/mgps/customview/guideview/Configuration;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/guideview/d;->j(Lcom/join/mgps/customview/guideview/Configuration;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/join/mgps/customview/guideview/GuideBuilder;->d:Lcom/join/mgps/customview/guideview/GuideBuilder$b;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/guideview/d;->h(Lcom/join/mgps/customview/guideview/GuideBuilder$b;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/join/mgps/customview/guideview/GuideBuilder;->e:Lcom/join/mgps/customview/guideview/GuideBuilder$a;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/guideview/d;->k(Lcom/join/mgps/customview/guideview/GuideBuilder$a;)V

    .line 38
    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    iput-object v1, p0, Lcom/join/mgps/customview/guideview/GuideBuilder;->c:Ljava/util/List;

    .line 42
    .line 43
    iput-object v1, p0, Lcom/join/mgps/customview/guideview/GuideBuilder;->a:Lcom/join/mgps/customview/guideview/Configuration;

    .line 44
    .line 45
    iput-object v1, p0, Lcom/join/mgps/customview/guideview/GuideBuilder;->d:Lcom/join/mgps/customview/guideview/GuideBuilder$b;

    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    iput-boolean v1, p0, Lcom/join/mgps/customview/guideview/GuideBuilder;->b:Z

    .line 49
    .line 50
    return-object v0
.end method

.method public c(I)Lcom/join/mgps/customview/guideview/GuideBuilder;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alpha"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/guideview/GuideBuilder;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    const/16 v0, 0xff

    .line 8
    .line 9
    if-le p1, v0, :cond_1

    .line 10
    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/guideview/GuideBuilder;->a:Lcom/join/mgps/customview/guideview/Configuration;

    .line 13
    .line 14
    iput p1, v0, Lcom/join/mgps/customview/guideview/Configuration;->i:I

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_2
    new-instance p1, Lcom/join/mgps/customview/guideview/BuildException;

    .line 18
    .line 19
    const-string v0, "Already created. rebuild a new one."

    .line 20
    .line 21
    invoke-direct {p1, v0}, Lcom/join/mgps/customview/guideview/BuildException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public d(Z)Lcom/join/mgps/customview/guideview/GuideBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/guideview/GuideBuilder;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/guideview/GuideBuilder;->a:Lcom/join/mgps/customview/guideview/Configuration;

    .line 6
    .line 7
    iput-boolean p1, v0, Lcom/join/mgps/customview/guideview/Configuration;->o:Z

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance p1, Lcom/join/mgps/customview/guideview/BuildException;

    .line 11
    .line 12
    const-string v0, "Already created, rebuild a new one."

    .line 13
    .line 14
    invoke-direct {p1, v0}, Lcom/join/mgps/customview/guideview/BuildException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1
.end method

.method public e(I)Lcom/join/mgps/customview/guideview/GuideBuilder;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/guideview/GuideBuilder;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/guideview/GuideBuilder;->a:Lcom/join/mgps/customview/guideview/Configuration;

    .line 6
    .line 7
    iput p1, v0, Lcom/join/mgps/customview/guideview/Configuration;->r:I

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance p1, Lcom/join/mgps/customview/guideview/BuildException;

    .line 11
    .line 12
    const-string v0, "Already created. rebuild a new one."

    .line 13
    .line 14
    invoke-direct {p1, v0}, Lcom/join/mgps/customview/guideview/BuildException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1
.end method

.method public f(I)Lcom/join/mgps/customview/guideview/GuideBuilder;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/guideview/GuideBuilder;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/guideview/GuideBuilder;->a:Lcom/join/mgps/customview/guideview/Configuration;

    .line 6
    .line 7
    iput p1, v0, Lcom/join/mgps/customview/guideview/Configuration;->s:I

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance p1, Lcom/join/mgps/customview/guideview/BuildException;

    .line 11
    .line 12
    const-string v0, "Already created. rebuild a new one."

    .line 13
    .line 14
    invoke-direct {p1, v0}, Lcom/join/mgps/customview/guideview/BuildException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1
.end method

.method public g(I)Lcom/join/mgps/customview/guideview/GuideBuilder;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/guideview/GuideBuilder;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/guideview/GuideBuilder;->a:Lcom/join/mgps/customview/guideview/Configuration;

    .line 6
    .line 7
    iput p1, v0, Lcom/join/mgps/customview/guideview/Configuration;->n:I

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance p1, Lcom/join/mgps/customview/guideview/BuildException;

    .line 11
    .line 12
    const-string v0, "Already created. rebuild a new one."

    .line 13
    .line 14
    invoke-direct {p1, v0}, Lcom/join/mgps/customview/guideview/BuildException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1
.end method

.method public h(I)Lcom/join/mgps/customview/guideview/GuideBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "corner"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/guideview/GuideBuilder;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    if-gez p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/guideview/GuideBuilder;->a:Lcom/join/mgps/customview/guideview/Configuration;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput v1, v0, Lcom/join/mgps/customview/guideview/Configuration;->l:I

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/guideview/GuideBuilder;->a:Lcom/join/mgps/customview/guideview/Configuration;

    .line 13
    .line 14
    iput p1, v0, Lcom/join/mgps/customview/guideview/Configuration;->l:I

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_1
    new-instance p1, Lcom/join/mgps/customview/guideview/BuildException;

    .line 18
    .line 19
    const-string v0, "Already created. rebuild a new one."

    .line 20
    .line 21
    invoke-direct {p1, v0}, Lcom/join/mgps/customview/guideview/BuildException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public i(I)Lcom/join/mgps/customview/guideview/GuideBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "style"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/guideview/GuideBuilder;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/guideview/GuideBuilder;->a:Lcom/join/mgps/customview/guideview/Configuration;

    .line 6
    .line 7
    iput p1, v0, Lcom/join/mgps/customview/guideview/Configuration;->m:I

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance p1, Lcom/join/mgps/customview/guideview/BuildException;

    .line 11
    .line 12
    const-string v0, "Already created. rebuild a new one."

    .line 13
    .line 14
    invoke-direct {p1, v0}, Lcom/join/mgps/customview/guideview/BuildException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1
.end method

.method public j(I)Lcom/join/mgps/customview/guideview/GuideBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "padding"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/guideview/GuideBuilder;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    if-gez p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/guideview/GuideBuilder;->a:Lcom/join/mgps/customview/guideview/Configuration;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput v1, v0, Lcom/join/mgps/customview/guideview/Configuration;->c:I

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/guideview/GuideBuilder;->a:Lcom/join/mgps/customview/guideview/Configuration;

    .line 13
    .line 14
    iput p1, v0, Lcom/join/mgps/customview/guideview/Configuration;->c:I

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_1
    new-instance p1, Lcom/join/mgps/customview/guideview/BuildException;

    .line 18
    .line 19
    const-string v0, "Already created. rebuild a new one."

    .line 20
    .line 21
    invoke-direct {p1, v0}, Lcom/join/mgps/customview/guideview/BuildException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public k(I)Lcom/join/mgps/customview/guideview/GuideBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "padding"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/guideview/GuideBuilder;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    if-gez p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/guideview/GuideBuilder;->a:Lcom/join/mgps/customview/guideview/Configuration;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput v1, v0, Lcom/join/mgps/customview/guideview/Configuration;->g:I

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/guideview/GuideBuilder;->a:Lcom/join/mgps/customview/guideview/Configuration;

    .line 13
    .line 14
    iput p1, v0, Lcom/join/mgps/customview/guideview/Configuration;->g:I

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_1
    new-instance p1, Lcom/join/mgps/customview/guideview/BuildException;

    .line 18
    .line 19
    const-string v0, "Already created. rebuild a new one."

    .line 20
    .line 21
    invoke-direct {p1, v0}, Lcom/join/mgps/customview/guideview/BuildException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public l(I)Lcom/join/mgps/customview/guideview/GuideBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "padding"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/guideview/GuideBuilder;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    if-gez p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/guideview/GuideBuilder;->a:Lcom/join/mgps/customview/guideview/Configuration;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput v1, v0, Lcom/join/mgps/customview/guideview/Configuration;->d:I

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/guideview/GuideBuilder;->a:Lcom/join/mgps/customview/guideview/Configuration;

    .line 13
    .line 14
    iput p1, v0, Lcom/join/mgps/customview/guideview/Configuration;->d:I

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_1
    new-instance p1, Lcom/join/mgps/customview/guideview/BuildException;

    .line 18
    .line 19
    const-string v0, "Already created. rebuild a new one."

    .line 20
    .line 21
    invoke-direct {p1, v0}, Lcom/join/mgps/customview/guideview/BuildException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public m(I)Lcom/join/mgps/customview/guideview/GuideBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "padding"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/guideview/GuideBuilder;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    if-gez p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/guideview/GuideBuilder;->a:Lcom/join/mgps/customview/guideview/Configuration;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput v1, v0, Lcom/join/mgps/customview/guideview/Configuration;->f:I

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/guideview/GuideBuilder;->a:Lcom/join/mgps/customview/guideview/Configuration;

    .line 13
    .line 14
    iput p1, v0, Lcom/join/mgps/customview/guideview/Configuration;->f:I

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_1
    new-instance p1, Lcom/join/mgps/customview/guideview/BuildException;

    .line 18
    .line 19
    const-string v0, "Already created. rebuild a new one."

    .line 20
    .line 21
    invoke-direct {p1, v0}, Lcom/join/mgps/customview/guideview/BuildException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public n(I)Lcom/join/mgps/customview/guideview/GuideBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "padding"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/guideview/GuideBuilder;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    if-gez p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/guideview/GuideBuilder;->a:Lcom/join/mgps/customview/guideview/Configuration;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput v1, v0, Lcom/join/mgps/customview/guideview/Configuration;->e:I

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/guideview/GuideBuilder;->a:Lcom/join/mgps/customview/guideview/Configuration;

    .line 13
    .line 14
    iput p1, v0, Lcom/join/mgps/customview/guideview/Configuration;->e:I

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_1
    new-instance p1, Lcom/join/mgps/customview/guideview/BuildException;

    .line 18
    .line 19
    const-string v0, "Already created. rebuild a new one."

    .line 20
    .line 21
    invoke-direct {p1, v0}, Lcom/join/mgps/customview/guideview/BuildException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public o(Lcom/join/mgps/customview/guideview/GuideBuilder$a;)Lcom/join/mgps/customview/guideview/GuideBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onSlideListener"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/guideview/GuideBuilder;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/join/mgps/customview/guideview/GuideBuilder;->e:Lcom/join/mgps/customview/guideview/GuideBuilder$a;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance p1, Lcom/join/mgps/customview/guideview/BuildException;

    .line 9
    .line 10
    const-string v0, "Already created, rebuild a new one."

    .line 11
    .line 12
    invoke-direct {p1, v0}, Lcom/join/mgps/customview/guideview/BuildException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p1
.end method

.method public p(Lcom/join/mgps/customview/guideview/GuideBuilder$b;)Lcom/join/mgps/customview/guideview/GuideBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onVisibilityChangedListener"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/guideview/GuideBuilder;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/join/mgps/customview/guideview/GuideBuilder;->d:Lcom/join/mgps/customview/guideview/GuideBuilder$b;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance p1, Lcom/join/mgps/customview/guideview/BuildException;

    .line 9
    .line 10
    const-string v0, "Already created, rebuild a new one."

    .line 11
    .line 12
    invoke-direct {p1, v0}, Lcom/join/mgps/customview/guideview/BuildException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p1
.end method

.method public q(Z)Lcom/join/mgps/customview/guideview/GuideBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touchable"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/guideview/GuideBuilder;->a:Lcom/join/mgps/customview/guideview/Configuration;

    .line 2
    .line 3
    iput-boolean p1, v0, Lcom/join/mgps/customview/guideview/Configuration;->h:Z

    .line 4
    .line 5
    return-object p0
.end method

.method public r(Z)Lcom/join/mgps/customview/guideview/GuideBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/guideview/GuideBuilder;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/guideview/GuideBuilder;->a:Lcom/join/mgps/customview/guideview/Configuration;

    .line 6
    .line 7
    iput-boolean p1, v0, Lcom/join/mgps/customview/guideview/Configuration;->p:Z

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance p1, Lcom/join/mgps/customview/guideview/BuildException;

    .line 11
    .line 12
    const-string v0, "Already created, rebuild a new one."

    .line 13
    .line 14
    invoke-direct {p1, v0}, Lcom/join/mgps/customview/guideview/BuildException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1
.end method

.method public s(Landroid/graphics/Rect;)Lcom/join/mgps/customview/guideview/GuideBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "targetRect"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/guideview/GuideBuilder;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/guideview/GuideBuilder;->a:Lcom/join/mgps/customview/guideview/Configuration;

    .line 6
    .line 7
    iput-object p1, v0, Lcom/join/mgps/customview/guideview/Configuration;->t:Landroid/graphics/Rect;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance p1, Lcom/join/mgps/customview/guideview/BuildException;

    .line 11
    .line 12
    const-string v0, "Already created. rebuild a new one."

    .line 13
    .line 14
    invoke-direct {p1, v0}, Lcom/join/mgps/customview/guideview/BuildException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1
.end method

.method public t(Landroid/view/View;)Lcom/join/mgps/customview/guideview/GuideBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/guideview/GuideBuilder;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/guideview/GuideBuilder;->a:Lcom/join/mgps/customview/guideview/Configuration;

    .line 6
    .line 7
    iput-object p1, v0, Lcom/join/mgps/customview/guideview/Configuration;->b:Landroid/view/View;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance p1, Lcom/join/mgps/customview/guideview/BuildException;

    .line 11
    .line 12
    const-string v0, "Already created. rebuild a new one."

    .line 13
    .line 14
    invoke-direct {p1, v0}, Lcom/join/mgps/customview/guideview/BuildException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1
.end method

.method public u(I)Lcom/join/mgps/customview/guideview/GuideBuilder;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/guideview/GuideBuilder;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/guideview/GuideBuilder;->a:Lcom/join/mgps/customview/guideview/Configuration;

    .line 6
    .line 7
    iput p1, v0, Lcom/join/mgps/customview/guideview/Configuration;->k:I

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance p1, Lcom/join/mgps/customview/guideview/BuildException;

    .line 11
    .line 12
    const-string v0, "Already created. rebuild a new one."

    .line 13
    .line 14
    invoke-direct {p1, v0}, Lcom/join/mgps/customview/guideview/BuildException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1
.end method
