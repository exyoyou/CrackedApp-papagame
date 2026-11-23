.class public Lcom/join/android/app/component/photoviewer/a;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# instance fields
.field private c:Ljava/lang/String;

.field private d:Lme/relex/photodraweeview/PhotoDraweeView;

.field private e:Landroid/widget/ProgressBar;

.field f:Landroid/view/View$OnLongClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic M(Lcom/join/android/app/component/photoviewer/a;)Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/photoviewer/a;->e:Landroid/widget/ProgressBar;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic N(Lcom/join/android/app/component/photoviewer/a;)Lme/relex/photodraweeview/PhotoDraweeView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/photoviewer/a;->d:Lme/relex/photodraweeview/PhotoDraweeView;

    .line 2
    .line 3
    return-object p0
.end method

.method private O()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/android/app/component/photoviewer/a;->e:Landroid/widget/ProgressBar;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lcom/join/android/app/component/photoviewer/a$b;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/join/android/app/component/photoviewer/a$b;-><init>(Lcom/join/android/app/component/photoviewer/a;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/e;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1, v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->I(Lcom/facebook/drawee/controller/c;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/facebook/drawee/backends/pipeline/e;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/join/android/app/component/photoviewer/a;->c:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/join/android/app/common/utils/l;->I(Ljava/lang/String;)Landroid/net/Uri;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/backends/pipeline/e;->e0(Landroid/net/Uri;)Lcom/facebook/drawee/backends/pipeline/e;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v1, 0x1

    .line 33
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->F(Z)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/facebook/drawee/backends/pipeline/e;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->d()Lcom/facebook/drawee/controller/a;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/join/android/app/component/photoviewer/a;->d:Lme/relex/photodraweeview/PhotoDraweeView;

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Lcom/facebook/drawee/view/DraweeView;->setController(Ls3/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    :goto_0
    return-void
.end method

.method private P()V
    .locals 0

    .line 1
    return-void
.end method

.method private Q()V
    .locals 0

    .line 1
    return-void
.end method

.method public static R(Ljava/lang/String;)Lcom/join/android/app/component/photoviewer/a;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageUrl"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/android/app/component/photoviewer/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/android/app/component/photoviewer/a;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "url"

    .line 12
    .line 13
    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method private S()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/photoviewer/a;->d:Lme/relex/photodraweeview/PhotoDraweeView;

    .line 2
    .line 3
    new-instance v1, Lcom/join/android/app/component/photoviewer/a$a;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/join/android/app/component/photoviewer/a$a;-><init>(Lcom/join/android/app/component/photoviewer/a;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lme/relex/photodraweeview/PhotoDraweeView;->setOnViewTapListener(Lme/relex/photodraweeview/h;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/android/app/component/photoviewer/a;->d:Lme/relex/photodraweeview/PhotoDraweeView;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/join/android/app/component/photoviewer/a;->f:Landroid/view/View$OnLongClickListener;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lme/relex/photodraweeview/PhotoDraweeView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method T(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/photoviewer/a;->f:Landroid/view/View$OnLongClickListener;

    .line 2
    .line 3
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/android/app/component/photoviewer/a;->O()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v0, "url"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    iput-object p1, p0, Lcom/join/android/app/component/photoviewer/a;->c:Ljava/lang/String;

    .line 23
    .line 24
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    .line 1
    const p3, 0x7f0d0396

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const p2, 0x7f0a0f64

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    check-cast p2, Landroid/widget/ProgressBar;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/join/android/app/component/photoviewer/a;->e:Landroid/widget/ProgressBar;

    .line 19
    .line 20
    const p2, 0x7f0a0864

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    check-cast p2, Lme/relex/photodraweeview/PhotoDraweeView;

    .line 28
    .line 29
    iput-object p2, p0, Lcom/join/android/app/component/photoviewer/a;->d:Lme/relex/photodraweeview/PhotoDraweeView;

    .line 30
    .line 31
    invoke-direct {p0}, Lcom/join/android/app/component/photoviewer/a;->S()V

    .line 32
    .line 33
    .line 34
    return-object p1
.end method
