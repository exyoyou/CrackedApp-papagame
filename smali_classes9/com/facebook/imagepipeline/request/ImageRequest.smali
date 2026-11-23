.class public Lcom/facebook/imagepipeline/request/ImageRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/request/ImageRequest$CachesLocationsMasks;,
        Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;,
        Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# static fields
.field private static w:Z

.field private static x:Z

.field public static final y:Lcom/facebook/common/internal/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/f<",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private final b:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

.field private final c:Landroid/net/Uri;

.field private final d:I

.field private e:Ljava/io/File;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final f:Z

.field private final g:Z

.field private final h:Z

.field private final i:Lcom/facebook/imagepipeline/common/c;

.field private final j:Lcom/facebook/imagepipeline/common/e;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final k:Lcom/facebook/imagepipeline/common/RotationOptions;

.field private final l:Lcom/facebook/imagepipeline/common/a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final m:Lcom/facebook/imagepipeline/common/Priority;

.field private final n:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

.field private final o:I

.field private final p:Z

.field private final q:Z

.field private final r:Ljava/lang/Boolean;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final s:Lcom/facebook/imagepipeline/request/d;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final t:Lj4/f;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final u:Ljava/lang/Boolean;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final v:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/request/ImageRequest$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/facebook/imagepipeline/request/ImageRequest$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/facebook/imagepipeline/request/ImageRequest;->y:Lcom/facebook/common/internal/f;

    .line 7
    .line 8
    return-void
.end method

.method protected constructor <init>(Lcom/facebook/imagepipeline/request/ImageRequestBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->f()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->b:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->r()Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->c:Landroid/net/Uri;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->y(Landroid/net/Uri;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->d:I

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->v()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->f:Z

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->t()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->g:Z

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->j()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->h:Z

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->i()Lcom/facebook/imagepipeline/common/c;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->i:Lcom/facebook/imagepipeline/common/c;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->o()Lcom/facebook/imagepipeline/common/e;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->j:Lcom/facebook/imagepipeline/common/e;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->q()Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-nez v0, :cond_0

    .line 57
    .line 58
    invoke-static {}, Lcom/facebook/imagepipeline/common/RotationOptions;->a()Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->q()Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    :goto_0
    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->k:Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->e()Lcom/facebook/imagepipeline/common/a;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->l:Lcom/facebook/imagepipeline/common/a;

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->n()Lcom/facebook/imagepipeline/common/Priority;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->m:Lcom/facebook/imagepipeline/common/Priority;

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->k()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->n:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->g()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    iput v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->o:I

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->s()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->p:Z

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->u()Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->q:Z

    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->Q()Ljava/lang/Boolean;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->r:Ljava/lang/Boolean;

    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->l()Lcom/facebook/imagepipeline/request/d;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->s:Lcom/facebook/imagepipeline/request/d;

    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->m()Lj4/f;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->t:Lj4/f;

    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->p()Ljava/lang/Boolean;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->u:Ljava/lang/Boolean;

    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->h()I

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    iput p1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->v:I

    .line 134
    .line 135
    return-void
.end method

.method public static C(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheHashcode"
        }
    .end annotation

    .line 1
    sput-boolean p0, Lcom/facebook/imagepipeline/request/ImageRequest;->x:Z

    .line 2
    .line 3
    return-void
.end method

.method public static D(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "useCachedHashcodeInEquals"
        }
    .end annotation

    .line 1
    sput-boolean p0, Lcom/facebook/imagepipeline/request/ImageRequest;->w:Z

    .line 2
    .line 3
    return-void
.end method

.method public static a(Ljava/io/File;)Lcom/facebook/imagepipeline/request/ImageRequest;
    .locals 0
    .param p0    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/facebook/common/util/f;->d(Ljava/io/File;)Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->b(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :goto_0
    return-object p0
.end method

.method public static b(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequest;
    .locals 0
    .param p0    # Landroid/net/Uri;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->x(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :goto_0
    return-object p0
.end method

.method public static c(Ljava/lang/String;)Lcom/facebook/imagepipeline/request/ImageRequest;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uriString"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->b(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 20
    :goto_1
    return-object p0
.end method

.method private static y(Landroid/net/Uri;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "uri"
        }
    .end annotation

    .line 1
    const/4 v0, -0x1

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/facebook/common/util/f;->n(Landroid/net/Uri;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return p0

    .line 13
    :cond_1
    invoke-static {p0}, Lcom/facebook/common/util/f;->l(Landroid/net/Uri;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_3

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Lj3/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {p0}, Lj3/a;->f(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_2

    .line 32
    .line 33
    const/4 p0, 0x2

    .line 34
    return p0

    .line 35
    :cond_2
    const/4 p0, 0x3

    .line 36
    return p0

    .line 37
    :cond_3
    invoke-static {p0}, Lcom/facebook/common/util/f;->k(Landroid/net/Uri;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_4

    .line 42
    .line 43
    const/4 p0, 0x4

    .line 44
    return p0

    .line 45
    :cond_4
    invoke-static {p0}, Lcom/facebook/common/util/f;->h(Landroid/net/Uri;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_5

    .line 50
    .line 51
    const/4 p0, 0x5

    .line 52
    return p0

    .line 53
    :cond_5
    invoke-static {p0}, Lcom/facebook/common/util/f;->m(Landroid/net/Uri;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_6

    .line 58
    .line 59
    const/4 p0, 0x6

    .line 60
    return p0

    .line 61
    :cond_6
    invoke-static {p0}, Lcom/facebook/common/util/f;->g(Landroid/net/Uri;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_7

    .line 66
    .line 67
    const/4 p0, 0x7

    .line 68
    return p0

    .line 69
    :cond_7
    invoke-static {p0}, Lcom/facebook/common/util/f;->o(Landroid/net/Uri;)Z

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    if-eqz p0, :cond_8

    .line 74
    .line 75
    const/16 p0, 0x8

    .line 76
    .line 77
    return p0

    .line 78
    :cond_8
    return v0
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->p:Z

    .line 2
    .line 3
    return v0
.end method

.method public B()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->q:Z

    .line 2
    .line 3
    return v0
.end method

.method public E()Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->r:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->k:Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/common/RotationOptions;->h()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public e()Lcom/facebook/imagepipeline/common/a;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->l:Lcom/facebook/imagepipeline/common/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 8
    .line 9
    sget-boolean v0, Lcom/facebook/imagepipeline/request/ImageRequest;->w:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->a:I

    .line 14
    .line 15
    iget v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->a:I

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    if-eq v0, v2, :cond_1

    .line 22
    .line 23
    return v1

    .line 24
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->g:Z

    .line 25
    .line 26
    iget-boolean v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->g:Z

    .line 27
    .line 28
    if-eq v0, v2, :cond_2

    .line 29
    .line 30
    return v1

    .line 31
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->p:Z

    .line 32
    .line 33
    iget-boolean v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->p:Z

    .line 34
    .line 35
    if-eq v0, v2, :cond_3

    .line 36
    .line 37
    return v1

    .line 38
    :cond_3
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->q:Z

    .line 39
    .line 40
    iget-boolean v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->q:Z

    .line 41
    .line 42
    if-eq v0, v2, :cond_4

    .line 43
    .line 44
    return v1

    .line 45
    :cond_4
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->c:Landroid/net/Uri;

    .line 46
    .line 47
    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->c:Landroid/net/Uri;

    .line 48
    .line 49
    invoke-static {v0, v2}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_9

    .line 54
    .line 55
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->b:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 56
    .line 57
    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->b:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 58
    .line 59
    invoke-static {v0, v2}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_9

    .line 64
    .line 65
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->e:Ljava/io/File;

    .line 66
    .line 67
    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->e:Ljava/io/File;

    .line 68
    .line 69
    invoke-static {v0, v2}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_9

    .line 74
    .line 75
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->l:Lcom/facebook/imagepipeline/common/a;

    .line 76
    .line 77
    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->l:Lcom/facebook/imagepipeline/common/a;

    .line 78
    .line 79
    invoke-static {v0, v2}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_9

    .line 84
    .line 85
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->i:Lcom/facebook/imagepipeline/common/c;

    .line 86
    .line 87
    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->i:Lcom/facebook/imagepipeline/common/c;

    .line 88
    .line 89
    invoke-static {v0, v2}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_9

    .line 94
    .line 95
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->j:Lcom/facebook/imagepipeline/common/e;

    .line 96
    .line 97
    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->j:Lcom/facebook/imagepipeline/common/e;

    .line 98
    .line 99
    invoke-static {v0, v2}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_9

    .line 104
    .line 105
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->m:Lcom/facebook/imagepipeline/common/Priority;

    .line 106
    .line 107
    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->m:Lcom/facebook/imagepipeline/common/Priority;

    .line 108
    .line 109
    invoke-static {v0, v2}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_9

    .line 114
    .line 115
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->n:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 116
    .line 117
    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->n:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 118
    .line 119
    invoke-static {v0, v2}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_9

    .line 124
    .line 125
    iget v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->o:I

    .line 126
    .line 127
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    iget v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->o:I

    .line 132
    .line 133
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-static {v0, v2}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-eqz v0, :cond_9

    .line 142
    .line 143
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->r:Ljava/lang/Boolean;

    .line 144
    .line 145
    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->r:Ljava/lang/Boolean;

    .line 146
    .line 147
    invoke-static {v0, v2}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-eqz v0, :cond_9

    .line 152
    .line 153
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->u:Ljava/lang/Boolean;

    .line 154
    .line 155
    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->u:Ljava/lang/Boolean;

    .line 156
    .line 157
    invoke-static {v0, v2}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-eqz v0, :cond_9

    .line 162
    .line 163
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->k:Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 164
    .line 165
    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->k:Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 166
    .line 167
    invoke-static {v0, v2}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-eqz v0, :cond_9

    .line 172
    .line 173
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->h:Z

    .line 174
    .line 175
    iget-boolean v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->h:Z

    .line 176
    .line 177
    if-eq v0, v2, :cond_5

    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_5
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->s:Lcom/facebook/imagepipeline/request/d;

    .line 181
    .line 182
    const/4 v2, 0x0

    .line 183
    if-eqz v0, :cond_6

    .line 184
    .line 185
    invoke-interface {v0}, Lcom/facebook/imagepipeline/request/d;->a()Lcom/facebook/cache/common/c;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    goto :goto_0

    .line 190
    :cond_6
    move-object v0, v2

    .line 191
    :goto_0
    iget-object v3, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->s:Lcom/facebook/imagepipeline/request/d;

    .line 192
    .line 193
    if-eqz v3, :cond_7

    .line 194
    .line 195
    invoke-interface {v3}, Lcom/facebook/imagepipeline/request/d;->a()Lcom/facebook/cache/common/c;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    :cond_7
    invoke-static {v0, v2}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    if-nez v0, :cond_8

    .line 204
    .line 205
    return v1

    .line 206
    :cond_8
    iget v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->v:I

    .line 207
    .line 208
    iget p1, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->v:I

    .line 209
    .line 210
    if-ne v0, p1, :cond_9

    .line 211
    .line 212
    const/4 v1, 0x1

    .line 213
    :cond_9
    :goto_1
    return v1
.end method

.method public f()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->b:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->o:I

    .line 2
    .line 3
    return v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->v:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    sget-boolean v0, Lcom/facebook/imagepipeline/request/ImageRequest;->x:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->a:I

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-nez v2, :cond_2

    .line 11
    .line 12
    iget-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->s:Lcom/facebook/imagepipeline/request/d;

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-interface {v2}, Lcom/facebook/imagepipeline/request/d;->a()Lcom/facebook/cache/common/c;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    const/4 v2, 0x0

    .line 22
    :goto_1
    const/16 v3, 0x11

    .line 23
    .line 24
    new-array v3, v3, [Ljava/lang/Object;

    .line 25
    .line 26
    iget-object v4, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->b:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 27
    .line 28
    aput-object v4, v3, v1

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    iget-object v4, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->c:Landroid/net/Uri;

    .line 32
    .line 33
    aput-object v4, v3, v1

    .line 34
    .line 35
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->g:Z

    .line 36
    .line 37
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const/4 v4, 0x2

    .line 42
    aput-object v1, v3, v4

    .line 43
    .line 44
    const/4 v1, 0x3

    .line 45
    iget-object v4, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->l:Lcom/facebook/imagepipeline/common/a;

    .line 46
    .line 47
    aput-object v4, v3, v1

    .line 48
    .line 49
    const/4 v1, 0x4

    .line 50
    iget-object v4, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->m:Lcom/facebook/imagepipeline/common/Priority;

    .line 51
    .line 52
    aput-object v4, v3, v1

    .line 53
    .line 54
    const/4 v1, 0x5

    .line 55
    iget-object v4, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->n:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 56
    .line 57
    aput-object v4, v3, v1

    .line 58
    .line 59
    iget v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->o:I

    .line 60
    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const/4 v4, 0x6

    .line 66
    aput-object v1, v3, v4

    .line 67
    .line 68
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->p:Z

    .line 69
    .line 70
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    const/4 v4, 0x7

    .line 75
    aput-object v1, v3, v4

    .line 76
    .line 77
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->q:Z

    .line 78
    .line 79
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const/16 v4, 0x8

    .line 84
    .line 85
    aput-object v1, v3, v4

    .line 86
    .line 87
    const/16 v1, 0x9

    .line 88
    .line 89
    iget-object v4, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->i:Lcom/facebook/imagepipeline/common/c;

    .line 90
    .line 91
    aput-object v4, v3, v1

    .line 92
    .line 93
    const/16 v1, 0xa

    .line 94
    .line 95
    iget-object v4, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->r:Ljava/lang/Boolean;

    .line 96
    .line 97
    aput-object v4, v3, v1

    .line 98
    .line 99
    const/16 v1, 0xb

    .line 100
    .line 101
    iget-object v4, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->j:Lcom/facebook/imagepipeline/common/e;

    .line 102
    .line 103
    aput-object v4, v3, v1

    .line 104
    .line 105
    const/16 v1, 0xc

    .line 106
    .line 107
    iget-object v4, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->k:Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 108
    .line 109
    aput-object v4, v3, v1

    .line 110
    .line 111
    const/16 v1, 0xd

    .line 112
    .line 113
    aput-object v2, v3, v1

    .line 114
    .line 115
    const/16 v1, 0xe

    .line 116
    .line 117
    iget-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->u:Ljava/lang/Boolean;

    .line 118
    .line 119
    aput-object v2, v3, v1

    .line 120
    .line 121
    iget v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->v:I

    .line 122
    .line 123
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    const/16 v2, 0xf

    .line 128
    .line 129
    aput-object v1, v3, v2

    .line 130
    .line 131
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->h:Z

    .line 132
    .line 133
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    const/16 v2, 0x10

    .line 138
    .line 139
    aput-object v1, v3, v2

    .line 140
    .line 141
    invoke-static {v3}, Lcom/facebook/common/internal/h;->c([Ljava/lang/Object;)I

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    if-eqz v0, :cond_2

    .line 146
    .line 147
    iput v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->a:I

    .line 148
    .line 149
    :cond_2
    return v2
.end method

.method public i()Lcom/facebook/imagepipeline/common/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->i:Lcom/facebook/imagepipeline/common/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->h:Z

    .line 2
    .line 3
    return v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public l()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->n:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 2
    .line 3
    return-object v0
.end method

.method public m()Lcom/facebook/imagepipeline/request/d;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->s:Lcom/facebook/imagepipeline/request/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public n()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->j:Lcom/facebook/imagepipeline/common/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, v0, Lcom/facebook/imagepipeline/common/e;->b:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 v0, 0x800

    .line 9
    .line 10
    :goto_0
    return v0
.end method

.method public o()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->j:Lcom/facebook/imagepipeline/common/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, v0, Lcom/facebook/imagepipeline/common/e;->a:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 v0, 0x800

    .line 9
    .line 10
    :goto_0
    return v0
.end method

.method public p()Lcom/facebook/imagepipeline/common/Priority;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->m:Lcom/facebook/imagepipeline/common/Priority;

    .line 2
    .line 3
    return-object v0
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method public r()Lj4/f;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->t:Lj4/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public s()Lcom/facebook/imagepipeline/common/e;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->j:Lcom/facebook/imagepipeline/common/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public t()Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->u:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/facebook/common/internal/h;->e(Ljava/lang/Object;)Lcom/facebook/common/internal/h$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "uri"

    .line 6
    .line 7
    iget-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->c:Landroid/net/Uri;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/h$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/h$b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "cacheChoice"

    .line 14
    .line 15
    iget-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->b:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/h$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/h$b;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "decodeOptions"

    .line 22
    .line 23
    iget-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->i:Lcom/facebook/imagepipeline/common/c;

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/h$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/h$b;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "postprocessor"

    .line 30
    .line 31
    iget-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->s:Lcom/facebook/imagepipeline/request/d;

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/h$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/h$b;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "priority"

    .line 38
    .line 39
    iget-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->m:Lcom/facebook/imagepipeline/common/Priority;

    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/h$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/h$b;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v1, "resizeOptions"

    .line 46
    .line 47
    iget-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->j:Lcom/facebook/imagepipeline/common/e;

    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/h$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/h$b;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v1, "rotationOptions"

    .line 54
    .line 55
    iget-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->k:Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 56
    .line 57
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/h$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/h$b;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-string v1, "bytesRange"

    .line 62
    .line 63
    iget-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->l:Lcom/facebook/imagepipeline/common/a;

    .line 64
    .line 65
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/h$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/h$b;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-string v1, "resizingAllowedOverride"

    .line 70
    .line 71
    iget-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->u:Ljava/lang/Boolean;

    .line 72
    .line 73
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/h$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/h$b;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const-string v1, "progressiveRenderingEnabled"

    .line 78
    .line 79
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->f:Z

    .line 80
    .line 81
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/h$b;->g(Ljava/lang/String;Z)Lcom/facebook/common/internal/h$b;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const-string v1, "localThumbnailPreviewsEnabled"

    .line 86
    .line 87
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->g:Z

    .line 88
    .line 89
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/h$b;->g(Ljava/lang/String;Z)Lcom/facebook/common/internal/h$b;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const-string v1, "loadThumbnailOnly"

    .line 94
    .line 95
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->h:Z

    .line 96
    .line 97
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/h$b;->g(Ljava/lang/String;Z)Lcom/facebook/common/internal/h$b;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    const-string v1, "lowestPermittedRequestLevel"

    .line 102
    .line 103
    iget-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->n:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 104
    .line 105
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/h$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/h$b;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    const-string v1, "cachesDisabled"

    .line 110
    .line 111
    iget v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->o:I

    .line 112
    .line 113
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/h$b;->d(Ljava/lang/String;I)Lcom/facebook/common/internal/h$b;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    const-string v1, "isDiskCacheEnabled"

    .line 118
    .line 119
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->p:Z

    .line 120
    .line 121
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/h$b;->g(Ljava/lang/String;Z)Lcom/facebook/common/internal/h$b;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    const-string v1, "isMemoryCacheEnabled"

    .line 126
    .line 127
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->q:Z

    .line 128
    .line 129
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/h$b;->g(Ljava/lang/String;Z)Lcom/facebook/common/internal/h$b;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    const-string v1, "decodePrefetches"

    .line 134
    .line 135
    iget-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->r:Ljava/lang/Boolean;

    .line 136
    .line 137
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/h$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/h$b;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    const-string v1, "delayMs"

    .line 142
    .line 143
    iget v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->v:I

    .line 144
    .line 145
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/h$b;->d(Ljava/lang/String;I)Lcom/facebook/common/internal/h$b;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {v0}, Lcom/facebook/common/internal/h$b;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    return-object v0
.end method

.method public u()Lcom/facebook/imagepipeline/common/RotationOptions;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->k:Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 2
    .line 3
    return-object v0
.end method

.method public declared-synchronized v()Ljava/io/File;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->e:Ljava/io/File;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/io/File;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->c:Landroid/net/Uri;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->e:Ljava/io/File;

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->e:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    monitor-exit p0

    .line 25
    throw v0
.end method

.method public w()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->c:Landroid/net/Uri;

    .line 2
    .line 3
    return-object v0
.end method

.method public x()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public z(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheMask"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->g()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/2addr p1, v0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    return p1
.end method
