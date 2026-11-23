.class Lcom/join/android/app/common/utils/l$a;
.super Lcom/facebook/imagepipeline/datasource/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/common/utils/l;->t(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/facebook/drawee/view/SimpleDraweeView;


# direct methods
.method constructor <init>(FLcom/facebook/drawee/view/SimpleDraweeView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$radios",
            "val$view"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/android/app/common/utils/l$a;->a:F

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/android/app/common/utils/l$a;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/facebook/imagepipeline/datasource/b;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public e(Lcom/facebook/datasource/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataSource"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public g(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    const/16 v0, -0x5a

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/join/android/app/common/utils/l;->K(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget v0, p0, Lcom/join/android/app/common/utils/l$a;->a:F

    .line 11
    .line 12
    invoke-static {p1, v0}, Lcom/join/android/app/common/utils/l;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eq v0, v1, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/android/app/common/utils/l$a;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 27
    .line 28
    new-instance v1, Lcom/join/android/app/common/utils/l$a$a;

    .line 29
    .line 30
    invoke-direct {v1, p0, p1}, Lcom/join/android/app/common/utils/l$a$a;-><init>(Lcom/join/android/app/common/utils/l$a;Landroid/graphics/Bitmap;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/join/android/app/common/utils/l$a;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/view/DraweeView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method
