.class public final Lcom/facebook/imageformat/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field public static final a:Lcom/facebook/imageformat/c;

.field public static final b:Lcom/facebook/imageformat/c;

.field public static final c:Lcom/facebook/imageformat/c;

.field public static final d:Lcom/facebook/imageformat/c;

.field public static final e:Lcom/facebook/imageformat/c;

.field public static final f:Lcom/facebook/imageformat/c;

.field public static final g:Lcom/facebook/imageformat/c;

.field public static final h:Lcom/facebook/imageformat/c;

.field public static final i:Lcom/facebook/imageformat/c;

.field public static final j:Lcom/facebook/imageformat/c;

.field public static final k:Lcom/facebook/imageformat/c;

.field public static final l:Lcom/facebook/imageformat/c;

.field private static m:Lcom/facebook/common/internal/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/ImmutableList<",
            "Lcom/facebook/imageformat/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/facebook/imageformat/c;

    .line 2
    .line 3
    const-string v1, "JPEG"

    .line 4
    .line 5
    const-string v2, "jpeg"

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/facebook/imageformat/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/facebook/imageformat/b;->a:Lcom/facebook/imageformat/c;

    .line 11
    .line 12
    new-instance v0, Lcom/facebook/imageformat/c;

    .line 13
    .line 14
    const-string v1, "PNG"

    .line 15
    .line 16
    const-string v2, "png"

    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Lcom/facebook/imageformat/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/facebook/imageformat/b;->b:Lcom/facebook/imageformat/c;

    .line 22
    .line 23
    new-instance v0, Lcom/facebook/imageformat/c;

    .line 24
    .line 25
    const-string v1, "GIF"

    .line 26
    .line 27
    const-string v2, "gif"

    .line 28
    .line 29
    invoke-direct {v0, v1, v2}, Lcom/facebook/imageformat/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lcom/facebook/imageformat/b;->c:Lcom/facebook/imageformat/c;

    .line 33
    .line 34
    new-instance v0, Lcom/facebook/imageformat/c;

    .line 35
    .line 36
    const-string v1, "BMP"

    .line 37
    .line 38
    const-string v2, "bmp"

    .line 39
    .line 40
    invoke-direct {v0, v1, v2}, Lcom/facebook/imageformat/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    sput-object v0, Lcom/facebook/imageformat/b;->d:Lcom/facebook/imageformat/c;

    .line 44
    .line 45
    new-instance v0, Lcom/facebook/imageformat/c;

    .line 46
    .line 47
    const-string v1, "ICO"

    .line 48
    .line 49
    const-string v2, "ico"

    .line 50
    .line 51
    invoke-direct {v0, v1, v2}, Lcom/facebook/imageformat/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    sput-object v0, Lcom/facebook/imageformat/b;->e:Lcom/facebook/imageformat/c;

    .line 55
    .line 56
    new-instance v0, Lcom/facebook/imageformat/c;

    .line 57
    .line 58
    const-string v1, "WEBP_SIMPLE"

    .line 59
    .line 60
    const-string v2, "webp"

    .line 61
    .line 62
    invoke-direct {v0, v1, v2}, Lcom/facebook/imageformat/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    sput-object v0, Lcom/facebook/imageformat/b;->f:Lcom/facebook/imageformat/c;

    .line 66
    .line 67
    new-instance v0, Lcom/facebook/imageformat/c;

    .line 68
    .line 69
    const-string v1, "WEBP_LOSSLESS"

    .line 70
    .line 71
    invoke-direct {v0, v1, v2}, Lcom/facebook/imageformat/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    sput-object v0, Lcom/facebook/imageformat/b;->g:Lcom/facebook/imageformat/c;

    .line 75
    .line 76
    new-instance v0, Lcom/facebook/imageformat/c;

    .line 77
    .line 78
    const-string v1, "WEBP_EXTENDED"

    .line 79
    .line 80
    invoke-direct {v0, v1, v2}, Lcom/facebook/imageformat/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lcom/facebook/imageformat/b;->h:Lcom/facebook/imageformat/c;

    .line 84
    .line 85
    new-instance v0, Lcom/facebook/imageformat/c;

    .line 86
    .line 87
    const-string v1, "WEBP_EXTENDED_WITH_ALPHA"

    .line 88
    .line 89
    invoke-direct {v0, v1, v2}, Lcom/facebook/imageformat/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    sput-object v0, Lcom/facebook/imageformat/b;->i:Lcom/facebook/imageformat/c;

    .line 93
    .line 94
    new-instance v0, Lcom/facebook/imageformat/c;

    .line 95
    .line 96
    const-string v1, "WEBP_ANIMATED"

    .line 97
    .line 98
    invoke-direct {v0, v1, v2}, Lcom/facebook/imageformat/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    sput-object v0, Lcom/facebook/imageformat/b;->j:Lcom/facebook/imageformat/c;

    .line 102
    .line 103
    new-instance v0, Lcom/facebook/imageformat/c;

    .line 104
    .line 105
    const-string v1, "HEIF"

    .line 106
    .line 107
    const-string v2, "heif"

    .line 108
    .line 109
    invoke-direct {v0, v1, v2}, Lcom/facebook/imageformat/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    sput-object v0, Lcom/facebook/imageformat/b;->k:Lcom/facebook/imageformat/c;

    .line 113
    .line 114
    new-instance v0, Lcom/facebook/imageformat/c;

    .line 115
    .line 116
    const-string v1, "DNG"

    .line 117
    .line 118
    const-string v2, "dng"

    .line 119
    .line 120
    invoke-direct {v0, v1, v2}, Lcom/facebook/imageformat/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    sput-object v0, Lcom/facebook/imageformat/b;->l:Lcom/facebook/imageformat/c;

    .line 124
    .line 125
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/imageformat/c;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/imageformat/b;->m:Lcom/facebook/common/internal/ImmutableList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    const/16 v1, 0x9

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    .line 11
    .line 12
    sget-object v1, Lcom/facebook/imageformat/b;->a:Lcom/facebook/imageformat/c;

    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    sget-object v1, Lcom/facebook/imageformat/b;->b:Lcom/facebook/imageformat/c;

    .line 18
    .line 19
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    sget-object v1, Lcom/facebook/imageformat/b;->c:Lcom/facebook/imageformat/c;

    .line 23
    .line 24
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    sget-object v1, Lcom/facebook/imageformat/b;->d:Lcom/facebook/imageformat/c;

    .line 28
    .line 29
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    sget-object v1, Lcom/facebook/imageformat/b;->e:Lcom/facebook/imageformat/c;

    .line 33
    .line 34
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    sget-object v1, Lcom/facebook/imageformat/b;->f:Lcom/facebook/imageformat/c;

    .line 38
    .line 39
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    sget-object v1, Lcom/facebook/imageformat/b;->g:Lcom/facebook/imageformat/c;

    .line 43
    .line 44
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    sget-object v1, Lcom/facebook/imageformat/b;->h:Lcom/facebook/imageformat/c;

    .line 48
    .line 49
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    sget-object v1, Lcom/facebook/imageformat/b;->i:Lcom/facebook/imageformat/c;

    .line 53
    .line 54
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    sget-object v1, Lcom/facebook/imageformat/b;->j:Lcom/facebook/imageformat/c;

    .line 58
    .line 59
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    sget-object v1, Lcom/facebook/imageformat/b;->k:Lcom/facebook/imageformat/c;

    .line 63
    .line 64
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    invoke-static {v0}, Lcom/facebook/common/internal/ImmutableList;->copyOf(Ljava/util/List;)Lcom/facebook/common/internal/ImmutableList;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, Lcom/facebook/imageformat/b;->m:Lcom/facebook/common/internal/ImmutableList;

    .line 72
    .line 73
    :cond_0
    sget-object v0, Lcom/facebook/imageformat/b;->m:Lcom/facebook/common/internal/ImmutableList;

    .line 74
    .line 75
    return-object v0
.end method

.method public static b(Lcom/facebook/imageformat/c;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageFormat"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/imageformat/b;->f:Lcom/facebook/imageformat/c;

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/facebook/imageformat/b;->g:Lcom/facebook/imageformat/c;

    .line 6
    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    sget-object v0, Lcom/facebook/imageformat/b;->h:Lcom/facebook/imageformat/c;

    .line 10
    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    sget-object v0, Lcom/facebook/imageformat/b;->i:Lcom/facebook/imageformat/c;

    .line 14
    .line 15
    if-ne p0, v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    :goto_1
    return p0
.end method

.method public static c(Lcom/facebook/imageformat/c;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageFormat"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/facebook/imageformat/b;->b(Lcom/facebook/imageformat/c;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    sget-object v0, Lcom/facebook/imageformat/b;->j:Lcom/facebook/imageformat/c;

    .line 8
    .line 9
    if-ne p0, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    :goto_1
    return p0
.end method
