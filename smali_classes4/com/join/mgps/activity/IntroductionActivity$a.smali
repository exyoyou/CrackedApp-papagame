.class Lcom/join/mgps/activity/IntroductionActivity$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/IntroductionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/IntroductionActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/IntroductionActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity$a;->a:Lcom/join/mgps/activity/IntroductionActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    iget p1, p1, Landroid/os/Message;->what:I

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x2

    .line 11
    if-ne p1, v0, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity$a;->a:Lcom/join/mgps/activity/IntroductionActivity;

    .line 14
    .line 15
    iget-object v0, p1, Lcom/join/mgps/activity/IntroductionActivity;->introductionProgressFragment:Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/IntroductionActivity;->onHide(Landroidx/fragment/app/Fragment;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v1, 0x3

    .line 22
    if-ne p1, v1, :cond_2

    .line 23
    .line 24
    iget-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity$a;->a:Lcom/join/mgps/activity/IntroductionActivity;

    .line 25
    .line 26
    iget-object v1, p1, Lcom/join/mgps/activity/IntroductionActivity;->ns_web_view:Lcom/join/mgps/customview/NestedScrollWebView;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    div-int/2addr v2, v0

    .line 33
    iget-object v3, p0, Lcom/join/mgps/activity/IntroductionActivity$a;->a:Lcom/join/mgps/activity/IntroductionActivity;

    .line 34
    .line 35
    iget-object v3, v3, Lcom/join/mgps/activity/IntroductionActivity;->ns_web_view:Lcom/join/mgps/customview/NestedScrollWebView;

    .line 36
    .line 37
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    div-int/2addr v3, v0

    .line 42
    invoke-static {p1, v1, v2, v3}, Lcom/join/mgps/activity/IntroductionActivity;->access$000(Lcom/join/mgps/activity/IntroductionActivity;Landroid/view/View;II)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const/4 v0, 0x4

    .line 47
    if-ne p1, v0, :cond_3

    .line 48
    .line 49
    iget-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity$a;->a:Lcom/join/mgps/activity/IntroductionActivity;

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/join/mgps/activity/IntroductionActivity;->onOpenComment()V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity$a;->a:Lcom/join/mgps/activity/IntroductionActivity;

    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    invoke-static {p1, v0}, Lcom/join/mgps/activity/IntroductionActivity;->access$102(Lcom/join/mgps/activity/IntroductionActivity;Z)Z

    .line 58
    .line 59
    .line 60
    :cond_3
    :goto_0
    return-void
.end method
