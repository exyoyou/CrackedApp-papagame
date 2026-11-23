.class public final Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter$onBindItem$controller$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/drawee/controller/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;->onBindItem(Landroidx/databinding/ViewDataBinding;Lcom/psk/kotlin/util/CommonListMainData;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/drawee/controller/c<",
        "Lcom/facebook/imagepipeline/image/g;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u001c\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016J\u001c\u0010\t\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u001c\u0010\u000c\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0012\u0010\r\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J&\u0010\u000e\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u001c\u0010\u0012\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\u0013"
    }
    d2 = {
        "com/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter$onBindItem$controller$2",
        "Lcom/facebook/drawee/controller/ControllerListener;",
        "Lcom/facebook/imagepipeline/image/ImageInfo;",
        "onSubmit",
        "",
        "id",
        "",
        "callerContext",
        "",
        "onIntermediateImageFailed",
        "throwable",
        "",
        "onFailure",
        "onRelease",
        "onFinalImageSet",
        "imageInfo",
        "animatable",
        "Landroid/graphics/drawable/Animatable;",
        "onIntermediateImageSet",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $binding:Landroidx/databinding/ViewDataBinding;

.field final synthetic this$0:Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;


# direct methods
.method constructor <init>(Landroidx/databinding/ViewDataBinding;Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter$onBindItem$controller$2;->$binding:Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter$onBindItem$controller$2;->this$0:Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onFinalImageSet(Ljava/lang/String;Lcom/facebook/imagepipeline/image/g;Landroid/graphics/drawable/Animatable;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter$onBindItem$controller$2;->$binding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/km0;

    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/km0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 3
    iget-object p3, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter$onBindItem$controller$2;->this$0:Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;

    invoke-virtual {p3}, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f071352

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    .line 4
    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5
    invoke-interface {p2}, Lcom/facebook/imagepipeline/image/g;->getWidth()I

    move-result v0

    mul-int p3, p3, v0

    invoke-interface {p2}, Lcom/facebook/imagepipeline/image/g;->getHeight()I

    move-result p2

    div-int/2addr p3, p2

    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6
    iget-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter$onBindItem$controller$2;->$binding:Landroidx/databinding/ViewDataBinding;

    check-cast p2, Lcom/join/android/app/mgsim/wufun/databinding/km0;

    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/km0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onFinalImageSet(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/facebook/imagepipeline/image/g;

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter$onBindItem$controller$2;->onFinalImageSet(Ljava/lang/String;Lcom/facebook/imagepipeline/image/g;Landroid/graphics/drawable/Animatable;)V

    return-void
.end method

.method public onIntermediateImageFailed(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onIntermediateImageSet(Ljava/lang/String;Lcom/facebook/imagepipeline/image/g;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic onIntermediateImageSet(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/facebook/imagepipeline/image/g;

    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter$onBindItem$controller$2;->onIntermediateImageSet(Ljava/lang/String;Lcom/facebook/imagepipeline/image/g;)V

    return-void
.end method

.method public onRelease(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSubmit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
