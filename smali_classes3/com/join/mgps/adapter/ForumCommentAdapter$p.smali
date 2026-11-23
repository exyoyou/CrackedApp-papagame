.class Lcom/join/mgps/adapter/ForumCommentAdapter$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/drawee/controller/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumCommentAdapter;->b0(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V
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
.field final synthetic b:Lcom/facebook/drawee/view/SimpleDraweeView;

.field final synthetic c:Lcom/join/mgps/adapter/ForumCommentAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumCommentAdapter;Lcom/facebook/drawee/view/SimpleDraweeView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$view"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$p;->c:Lcom/join/mgps/adapter/ForumCommentAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$p;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/facebook/imagepipeline/image/g;Landroid/graphics/drawable/Animatable;)V
    .locals 1
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
    :try_start_0
    iget-object p3, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$p;->c:Lcom/join/mgps/adapter/ForumCommentAdapter;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$p;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 4
    .line 5
    invoke-static {p3, p1, v0, p2}, Lcom/join/mgps/adapter/ForumCommentAdapter;->A(Lcom/join/mgps/adapter/ForumCommentAdapter;Ljava/lang/String;Landroid/view/View;Lcom/facebook/imagepipeline/image/g;)Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    new-instance p3, Lcom/join/mgps/adapter/ForumCommentAdapter$y;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$p;->c:Lcom/join/mgps/adapter/ForumCommentAdapter;

    .line 13
    .line 14
    invoke-direct {p3, v0}, Lcom/join/mgps/adapter/ForumCommentAdapter$y;-><init>(Lcom/join/mgps/adapter/ForumCommentAdapter;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p2}, Lcom/facebook/imagepipeline/image/g;->getWidth()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iput v0, p3, Lcom/join/mgps/adapter/ForumCommentAdapter$y;->a:I

    .line 22
    .line 23
    invoke-interface {p2}, Lcom/facebook/imagepipeline/image/g;->getHeight()I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    iput p2, p3, Lcom/join/mgps/adapter/ForumCommentAdapter$y;->b:I

    .line 28
    .line 29
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$p;->c:Lcom/join/mgps/adapter/ForumCommentAdapter;

    .line 30
    .line 31
    invoke-virtual {p2, p1, p3}, Lcom/join/mgps/adapter/ForumCommentAdapter;->F(Ljava/lang/String;Lcom/join/mgps/adapter/ForumCommentAdapter$y;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    .line 38
    .line 39
    :cond_0
    :goto_0
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
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumCommentAdapter$p;->a(Ljava/lang/String;Lcom/facebook/imagepipeline/image/g;Landroid/graphics/drawable/Animatable;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/ForumCommentAdapter$p;->b(Ljava/lang/String;Lcom/facebook/imagepipeline/image/g;)V

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
    .locals 1
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

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$p;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$p;->c:Lcom/join/mgps/adapter/ForumCommentAdapter;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p2, v0}, Lcom/join/mgps/adapter/ForumCommentAdapter;->z(Lcom/join/mgps/adapter/ForumCommentAdapter;Landroid/content/Context;)I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
