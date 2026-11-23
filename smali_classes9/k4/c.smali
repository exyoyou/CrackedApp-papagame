.class public Lk4/c;
.super Lcom/facebook/imagepipeline/request/a;
.source "SourceFile"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field private static final e:Z = true


# instance fields
.field private c:Lcom/facebook/cache/common/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lk4/c;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enableAntiAliasing"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/facebook/imagepipeline/request/a;-><init>()V

    .line 3
    iput-boolean p1, p0, Lk4/c;->d:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/cache/common/c;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lk4/c;->c:Lcom/facebook/cache/common/c;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lk4/c;->d:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/facebook/cache/common/j;

    .line 10
    .line 11
    const-string v1, "RoundAsCirclePostprocessor#AntiAliased"

    .line 12
    .line 13
    invoke-direct {v0, v1}, Lcom/facebook/cache/common/j;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lk4/c;->c:Lcom/facebook/cache/common/c;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Lcom/facebook/cache/common/j;

    .line 20
    .line 21
    const-string v1, "RoundAsCirclePostprocessor"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lcom/facebook/cache/common/j;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lk4/c;->c:Lcom/facebook/cache/common/c;

    .line 27
    .line 28
    :cond_1
    :goto_0
    iget-object v0, p0, Lk4/c;->c:Lcom/facebook/cache/common/c;

    .line 29
    .line 30
    return-object v0
.end method

.method public e(Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lk4/c;->d:Z

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/facebook/imagepipeline/nativecode/NativeRoundingFilter;->toCircleFast(Landroid/graphics/Bitmap;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
