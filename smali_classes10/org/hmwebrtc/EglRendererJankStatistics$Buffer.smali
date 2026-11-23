.class Lorg/hmwebrtc/EglRendererJankStatistics$Buffer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/EglRendererJankStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Buffer"
.end annotation


# instance fields
.field capacity:I

.field data:[J

.field index:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-gtz p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x2

    .line 7
    :cond_0
    iput p1, p0, Lorg/hmwebrtc/EglRendererJankStatistics$Buffer;->capacity:I

    .line 8
    .line 9
    new-array p1, p1, [J

    .line 10
    .line 11
    iput-object p1, p0, Lorg/hmwebrtc/EglRendererJankStatistics$Buffer;->data:[J

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lorg/hmwebrtc/EglRendererJankStatistics$Buffer;->index:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method GT_Half()Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/hmwebrtc/EglRendererJankStatistics$Buffer;->index:I

    .line 2
    .line 3
    iget v1, p0, Lorg/hmwebrtc/EglRendererJankStatistics$Buffer;->capacity:I

    .line 4
    .line 5
    div-int/lit8 v1, v1, 0x2

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method put(J)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/hmwebrtc/EglRendererJankStatistics$Buffer;->index:I

    .line 2
    .line 3
    iget v1, p0, Lorg/hmwebrtc/EglRendererJankStatistics$Buffer;->capacity:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lorg/hmwebrtc/EglRendererJankStatistics$Buffer;->index:I

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lorg/hmwebrtc/EglRendererJankStatistics$Buffer;->data:[J

    .line 11
    .line 12
    iget v1, p0, Lorg/hmwebrtc/EglRendererJankStatistics$Buffer;->index:I

    .line 13
    .line 14
    aput-wide p1, v0, v1

    .line 15
    .line 16
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    iput v1, p0, Lorg/hmwebrtc/EglRendererJankStatistics$Buffer;->index:I

    .line 19
    .line 20
    return-void
.end method

.method reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/hmwebrtc/EglRendererJankStatistics$Buffer;->index:I

    .line 3
    .line 4
    return-void
.end method

.method size()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/hmwebrtc/EglRendererJankStatistics$Buffer;->index:I

    .line 2
    .line 3
    return v0
.end method
