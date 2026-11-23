.class public Lcom/facebook/imagepipeline/common/RotationOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/common/RotationOptions$RotationAngle;
    }
.end annotation


# static fields
.field public static final c:I = 0x0

.field public static final d:I = 0x5a

.field public static final e:I = 0xb4

.field public static final f:I = 0x10e

.field private static final g:I = -0x1

.field private static final h:I = -0x2

.field private static final i:Lcom/facebook/imagepipeline/common/RotationOptions;

.field private static final j:Lcom/facebook/imagepipeline/common/RotationOptions;

.field private static final k:Lcom/facebook/imagepipeline/common/RotationOptions;


# instance fields
.field private final a:I

.field private final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/common/RotationOptions;-><init>(IZ)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/facebook/imagepipeline/common/RotationOptions;->i:Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 9
    .line 10
    new-instance v0, Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 11
    .line 12
    const/4 v3, -0x2

    .line 13
    invoke-direct {v0, v3, v2}, Lcom/facebook/imagepipeline/common/RotationOptions;-><init>(IZ)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/facebook/imagepipeline/common/RotationOptions;->j:Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 17
    .line 18
    new-instance v0, Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/common/RotationOptions;-><init>(IZ)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lcom/facebook/imagepipeline/common/RotationOptions;->k:Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 25
    .line 26
    return-void
.end method

.method private constructor <init>(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rotation",
            "canDeferUntilRendered"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/facebook/imagepipeline/common/RotationOptions;->a:I

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/facebook/imagepipeline/common/RotationOptions;->b:Z

    .line 7
    .line 8
    return-void
.end method

.method public static a()Lcom/facebook/imagepipeline/common/RotationOptions;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/imagepipeline/common/RotationOptions;->i:Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 2
    .line 3
    return-object v0
.end method

.method public static b()Lcom/facebook/imagepipeline/common/RotationOptions;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/imagepipeline/common/RotationOptions;->k:Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 2
    .line 3
    return-object v0
.end method

.method public static d()Lcom/facebook/imagepipeline/common/RotationOptions;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/imagepipeline/common/RotationOptions;->j:Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 2
    .line 3
    return-object v0
.end method

.method public static e(I)Lcom/facebook/imagepipeline/common/RotationOptions;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "angle"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/facebook/imagepipeline/common/RotationOptions;-><init>(IZ)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method


# virtual methods
.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/common/RotationOptions;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 12
    .line 13
    iget v1, p0, Lcom/facebook/imagepipeline/common/RotationOptions;->a:I

    .line 14
    .line 15
    iget v3, p1, Lcom/facebook/imagepipeline/common/RotationOptions;->a:I

    .line 16
    .line 17
    if-ne v1, v3, :cond_2

    .line 18
    .line 19
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/common/RotationOptions;->b:Z

    .line 20
    .line 21
    iget-boolean p1, p1, Lcom/facebook/imagepipeline/common/RotationOptions;->b:Z

    .line 22
    .line 23
    if-ne v1, p1, :cond_2

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    const/4 v0, 0x0

    .line 27
    :goto_0
    return v0
.end method

.method public f()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/common/RotationOptions;->h()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/facebook/imagepipeline/common/RotationOptions;->a:I

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string v1, "Rotation is set to use EXIF"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public g()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/common/RotationOptions;->a:I

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
.end method

.method public h()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/common/RotationOptions;->a:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/common/RotationOptions;->a:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/common/RotationOptions;->b:Z

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Lcom/facebook/common/util/b;->h(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    iget v1, p0, Lcom/facebook/imagepipeline/common/RotationOptions;->a:I

    .line 5
    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/common/RotationOptions;->b:Z

    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x1

    .line 20
    aput-object v1, v0, v2

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    const-string v2, "%d defer:%b"

    .line 24
    .line 25
    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method
