.class public Ll4/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll4/d;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# instance fields
.field private final a:I

.field private final b:Z

.field private final c:Ll4/d;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final d:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final e:Z


# direct methods
.method public constructor <init>(IZLl4/d;Ljava/lang/Integer;Z)V
    .locals 0
    .param p3    # Ll4/d;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "maxBitmapSize",
            "useDownSamplingRatio",
            "primaryImageTranscoderFactory",
            "imageTranscoderType",
            "ensureTranscoderLibraryLoaded"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Ll4/f;->a:I

    .line 5
    .line 6
    iput-boolean p2, p0, Ll4/f;->b:Z

    .line 7
    .line 8
    iput-object p3, p0, Ll4/f;->c:Ll4/d;

    .line 9
    .line 10
    iput-object p4, p0, Ll4/f;->d:Ljava/lang/Integer;

    .line 11
    .line 12
    iput-boolean p5, p0, Ll4/f;->e:Z

    .line 13
    .line 14
    return-void
.end method

.method private a(Lcom/facebook/imageformat/c;Z)Ll4/c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageFormat",
            "isResizingEnabled"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Ll4/f;->c:Ll4/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    invoke-interface {v0, p1, p2}, Ll4/d;->createImageTranscoder(Lcom/facebook/imageformat/c;Z)Ll4/c;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method private b(Lcom/facebook/imageformat/c;Z)Ll4/c;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageFormat",
            "isResizingEnabled"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Ll4/f;->d:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    invoke-direct {p0, p1, p2}, Ll4/f;->d(Lcom/facebook/imageformat/c;Z)Ll4/c;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    const-string p2, "Invalid ImageTranscoderType"

    .line 24
    .line 25
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :cond_2
    invoke-direct {p0, p1, p2}, Ll4/f;->c(Lcom/facebook/imageformat/c;Z)Ll4/c;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method

.method private c(Lcom/facebook/imageformat/c;Z)Ll4/c;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageFormat",
            "isResizingEnabled"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget v0, p0, Ll4/f;->a:I

    .line 2
    .line 3
    iget-boolean v1, p0, Ll4/f;->b:Z

    .line 4
    .line 5
    iget-boolean v2, p0, Ll4/f;->e:Z

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/facebook/imagepipeline/nativecode/e;->a(IZZ)Ll4/d;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0, p1, p2}, Ll4/d;->createImageTranscoder(Lcom/facebook/imageformat/c;Z)Ll4/c;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method private d(Lcom/facebook/imageformat/c;Z)Ll4/c;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageFormat",
            "isResizingEnabled"
        }
    .end annotation

    .line 1
    new-instance v0, Ll4/h;

    .line 2
    .line 3
    iget v1, p0, Ll4/f;->a:I

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ll4/h;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Ll4/h;->createImageTranscoder(Lcom/facebook/imageformat/c;Z)Ll4/c;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method


# virtual methods
.method public createImageTranscoder(Lcom/facebook/imageformat/c;Z)Ll4/c;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageFormat",
            "isResizingEnabled"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ll4/f;->a(Lcom/facebook/imageformat/c;Z)Ll4/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Ll4/f;->b(Lcom/facebook/imageformat/c;Z)Ll4/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-static {}, Lcom/facebook/imagepipeline/core/l;->a()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-direct {p0, p1, p2}, Ll4/f;->c(Lcom/facebook/imageformat/c;Z)Ll4/c;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :cond_1
    if-nez v0, :cond_2

    .line 24
    .line 25
    invoke-direct {p0, p1, p2}, Ll4/f;->d(Lcom/facebook/imageformat/c;Z)Ll4/c;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :cond_2
    return-object v0
.end method
