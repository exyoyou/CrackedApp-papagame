.class public Lcom/join/mgps/activity/FragmentPageActivity;
.super Lcom/BaseActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0056
.end annotation


# instance fields
.field back_image:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field extras:Landroid/os/Bundle;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field fragment:Landroidx/fragment/app/Fragment;

.field scene:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field title:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field tv_title:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method afterViews()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/FragmentPageActivity;->tv_title:Landroid/widget/TextView;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/join/mgps/activity/FragmentPageActivity;->title:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    iget v1, p0, Lcom/join/mgps/activity/FragmentPageActivity;->scene:I

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    if-ne v1, v2, :cond_0

    .line 20
    .line 21
    new-instance v1, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment_;

    .line 22
    .line 23
    invoke-direct {v1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment_;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/join/mgps/activity/FragmentPageActivity;->fragment:Landroidx/fragment/app/Fragment;

    .line 27
    .line 28
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/FragmentPageActivity;->extras:Landroid/os/Bundle;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    iget-object v2, p0, Lcom/join/mgps/activity/FragmentPageActivity;->fragment:Landroidx/fragment/app/Fragment;

    .line 33
    .line 34
    invoke-virtual {v2, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    const v1, 0x7f0a0655

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lcom/join/mgps/activity/FragmentPageActivity;->fragment:Landroidx/fragment/app/Fragment;

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method onBackClick()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a014e
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
