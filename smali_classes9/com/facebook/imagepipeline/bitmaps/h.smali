.class public Lcom/facebook/imagepipeline/bitmaps/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/common/references/g;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/common/references/g<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/facebook/imagepipeline/bitmaps/h;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a()Lcom/facebook/imagepipeline/bitmaps/h;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/imagepipeline/bitmaps/h;->a:Lcom/facebook/imagepipeline/bitmaps/h;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/facebook/imagepipeline/bitmaps/h;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/facebook/imagepipeline/bitmaps/h;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/facebook/imagepipeline/bitmaps/h;->a:Lcom/facebook/imagepipeline/bitmaps/h;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/facebook/imagepipeline/bitmaps/h;->a:Lcom/facebook/imagepipeline/bitmaps/h;

    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public b(Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic release(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/bitmaps/h;->b(Landroid/graphics/Bitmap;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
