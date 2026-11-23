.class public Lcom/join/mgps/activity/ForumPostsCopyActivity;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d06c4
.end annotation

.annotation build Lorg/androidannotations/annotations/WindowFeature;
    value = {
        0xa
    }
.end annotation


# instance fields
.field extBean:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field forum_post_message:Lcom/join/mgps/customview/CopyTextViewNew;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field forum_title_center:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method afterViews()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsCopyActivity;->forum_title_center:Landroid/widget/TextView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsCopyActivity;->forum_title_center:Landroid/widget/TextView;

    .line 8
    .line 9
    const-string v1, "\u8bf7\u957f\u6309\u81ea\u7531\u590d\u5236"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsCopyActivity;->forum_post_message:Lcom/join/mgps/customview/CopyTextViewNew;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsCopyActivity;->extBean:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/CopyTextViewNew;->setTextForum(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method back_image()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
