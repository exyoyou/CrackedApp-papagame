.class public Lcom/facebook/imagepipeline/memory/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field public static final a:I = 0x400000

.field private static final b:I = 0x20000

.field public static final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sput v0, Lcom/facebook/imagepipeline/memory/r;->c:I

    .line 10
    .line 11
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

.method public static a(III)Landroid/util/SparseIntArray;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "min",
            "max",
            "numThreads"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 4
    .line 5
    .line 6
    :goto_0
    if-gt p0, p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p0, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 9
    .line 10
    .line 11
    mul-int/lit8 p0, p0, 0x2

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    return-object v0
.end method

.method public static b()Lcom/facebook/imagepipeline/memory/j0;
    .locals 8

    .line 1
    new-instance v7, Lcom/facebook/imagepipeline/memory/j0;

    .line 2
    .line 3
    const/high16 v1, 0x400000

    .line 4
    .line 5
    sget v6, Lcom/facebook/imagepipeline/memory/r;->c:I

    .line 6
    .line 7
    const/high16 v0, 0x400000

    .line 8
    .line 9
    mul-int v2, v6, v0

    .line 10
    .line 11
    const/high16 v3, 0x20000

    .line 12
    .line 13
    invoke-static {v3, v0, v6}, Lcom/facebook/imagepipeline/memory/r;->a(III)Landroid/util/SparseIntArray;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const/high16 v4, 0x20000

    .line 18
    .line 19
    const/high16 v5, 0x400000

    .line 20
    .line 21
    move-object v0, v7

    .line 22
    invoke-direct/range {v0 .. v6}, Lcom/facebook/imagepipeline/memory/j0;-><init>(IILandroid/util/SparseIntArray;III)V

    .line 23
    .line 24
    .line 25
    return-object v7
.end method
