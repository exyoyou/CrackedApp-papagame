.class Lcom/join/android/app/component/photoviewer/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/drawee/controller/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/photoviewer/a;->O()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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


# instance fields
.field final synthetic b:Lcom/join/android/app/component/photoviewer/a;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/photoviewer/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/photoviewer/a$b;->b:Lcom/join/android/app/component/photoviewer/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/facebook/imagepipeline/image/g;Landroid/graphics/drawable/Animatable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "imageInfo",
            "animatable"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/android/app/component/photoviewer/a$b;->b:Lcom/join/android/app/component/photoviewer/a;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/android/app/component/photoviewer/a;->M(Lcom/join/android/app/component/photoviewer/a;)Landroid/widget/ProgressBar;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/16 p3, 0x8

    .line 8
    .line 9
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/android/app/component/photoviewer/a$b;->b:Lcom/join/android/app/component/photoviewer/a;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/join/android/app/component/photoviewer/a;->N(Lcom/join/android/app/component/photoviewer/a;)Lme/relex/photodraweeview/PhotoDraweeView;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-interface {p2}, Lcom/facebook/imagepipeline/image/g;->getWidth()I

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    invoke-interface {p2}, Lcom/facebook/imagepipeline/image/g;->getHeight()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    invoke-virtual {p1, p3, p2}, Lme/relex/photodraweeview/PhotoDraweeView;->update(II)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public b(Ljava/lang/String;Lcom/facebook/imagepipeline/image/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "imageInfo"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "throwable"
        }
    .end annotation

    .line 1
    :try_start_0
    const-string p1, "\u52a0\u8f7d\u5931\u8d25"

    .line 2
    .line 3
    iget-object p2, p0, Lcom/join/android/app/component/photoviewer/a$b;->b:Lcom/join/android/app/component/photoviewer/a;

    .line 4
    .line 5
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    :catch_0
    iget-object p1, p0, Lcom/join/android/app/component/photoviewer/a$b;->b:Lcom/join/android/app/component/photoviewer/a;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/join/android/app/component/photoviewer/a;->N(Lcom/join/android/app/component/photoviewer/a;)Lme/relex/photodraweeview/PhotoDraweeView;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    sget-object p2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/join/android/app/component/photoviewer/a$b;->b:Lcom/join/android/app/component/photoviewer/a;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/join/android/app/component/photoviewer/a;->N(Lcom/join/android/app/component/photoviewer/a;)Lme/relex/photodraweeview/PhotoDraweeView;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const p2, 0x7f080caf

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageResource(I)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/join/android/app/component/photoviewer/a$b;->b:Lcom/join/android/app/component/photoviewer/a;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/join/android/app/component/photoviewer/a;->M(Lcom/join/android/app/component/photoviewer/a;)Landroid/widget/ProgressBar;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const/16 p2, 0x8

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public bridge synthetic onFinalImageSet(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "id",
            "imageInfo",
            "animatable"
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/facebook/imagepipeline/image/g;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/android/app/component/photoviewer/a$b;->a(Ljava/lang/String;Lcom/facebook/imagepipeline/image/g;Landroid/graphics/drawable/Animatable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onIntermediateImageFailed(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "throwable"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic onIntermediateImageSet(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "id",
            "imageInfo"
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/facebook/imagepipeline/image/g;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/join/android/app/component/photoviewer/a$b;->b(Ljava/lang/String;Lcom/facebook/imagepipeline/image/g;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onRelease(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    return-void
.end method

.method public onSubmit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "callerContext"
        }
    .end annotation

    return-void
.end method
