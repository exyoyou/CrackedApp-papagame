.class public Lk4/a;
.super Lcom/facebook/imagepipeline/request/a;
.source "SourceFile"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field private static final g:Z

.field private static final h:I = 0x3


# instance fields
.field private final c:I

.field private final d:Landroid/content/Context;

.field private final e:I

.field private f:Lcom/facebook/cache/common/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lh4/c;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput-boolean v0, Lk4/a;->g:Z

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "blurRadius",
            "context"
        }
    .end annotation

    const/4 v0, 0x3

    .line 9
    invoke-direct {p0, p1, p2, v0}, Lk4/a;-><init>(ILandroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "blurRadius",
            "context",
            "iterations"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/request/a;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    const/16 v2, 0x19

    if-gt p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 3
    invoke-static {v2}, Lcom/facebook/common/internal/i;->d(Ljava/lang/Boolean;)V

    if-lez p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/i;->d(Ljava/lang/Boolean;)V

    .line 5
    invoke-static {p2}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iput p3, p0, Lk4/a;->c:I

    .line 7
    iput p1, p0, Lk4/a;->e:I

    .line 8
    iput-object p2, p0, Lk4/a;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/cache/common/c;
    .locals 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lk4/a;->f:Lcom/facebook/cache/common/c;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-boolean v0, Lk4/a;->g:Z

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-array v0, v1, [Ljava/lang/Object;

    .line 13
    .line 14
    iget v1, p0, Lk4/a;->e:I

    .line 15
    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    aput-object v1, v0, v2

    .line 21
    .line 22
    const-string v1, "IntrinsicBlur;%d"

    .line 23
    .line 24
    invoke-static {v3, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x2

    .line 30
    new-array v0, v0, [Ljava/lang/Object;

    .line 31
    .line 32
    iget v4, p0, Lk4/a;->c:I

    .line 33
    .line 34
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    aput-object v4, v0, v2

    .line 39
    .line 40
    iget v2, p0, Lk4/a;->e:I

    .line 41
    .line 42
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    aput-object v2, v0, v1

    .line 47
    .line 48
    const-string v1, "IterativeBoxBlur;%d;%d"

    .line 49
    .line 50
    invoke-static {v3, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    :goto_0
    new-instance v1, Lcom/facebook/cache/common/j;

    .line 55
    .line 56
    invoke-direct {v1, v0}, Lcom/facebook/cache/common/j;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, Lk4/a;->f:Lcom/facebook/cache/common/c;

    .line 60
    .line 61
    :cond_1
    iget-object v0, p0, Lk4/a;->f:Lcom/facebook/cache/common/c;

    .line 62
    .line 63
    return-object v0
.end method

.method public e(Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bitmap"
        }
    .end annotation

    .line 1
    iget v0, p0, Lk4/a;->c:I

    .line 2
    .line 3
    iget v1, p0, Lk4/a;->e:I

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lh4/b;->b(Landroid/graphics/Bitmap;II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public f(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "destBitmap",
            "sourceBitmap"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lk4/a;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lk4/a;->d:Landroid/content/Context;

    .line 6
    .line 7
    iget v1, p0, Lk4/a;->e:I

    .line 8
    .line 9
    invoke-static {p1, p2, v0, v1}, Lh4/c;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/content/Context;I)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/facebook/imagepipeline/request/a;->f(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method
