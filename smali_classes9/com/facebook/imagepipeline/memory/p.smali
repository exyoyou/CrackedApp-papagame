.class public Lcom/facebook/imagepipeline/memory/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field private static final a:I

.field private static final b:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/facebook/imagepipeline/memory/p;->b:Landroid/util/SparseIntArray;

    .line 8
    .line 9
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

.method public static a()Lcom/facebook/imagepipeline/memory/j0;
    .locals 4

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/memory/j0;

    .line 2
    .line 3
    invoke-static {}, Lcom/facebook/imagepipeline/memory/p;->b()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    sget-object v2, Lcom/facebook/imagepipeline/memory/p;->b:Landroid/util/SparseIntArray;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/imagepipeline/memory/j0;-><init>(IILandroid/util/SparseIntArray;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method private static b()I
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    const-wide/32 v2, 0x7fffffff

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    long-to-int v1, v0

    .line 17
    const/high16 v0, 0x1000000

    .line 18
    .line 19
    if-le v1, v0, :cond_0

    .line 20
    .line 21
    div-int/lit8 v1, v1, 0x4

    .line 22
    .line 23
    mul-int/lit8 v1, v1, 0x3

    .line 24
    .line 25
    return v1

    .line 26
    :cond_0
    div-int/lit8 v1, v1, 0x2

    .line 27
    .line 28
    return v1
.end method
