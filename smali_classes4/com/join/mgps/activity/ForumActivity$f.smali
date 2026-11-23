.class Lcom/join/mgps/activity/ForumActivity$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumActivity;->initScrollableLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/ForumActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/ForumActivity$f;->b:Lcom/join/mgps/activity/ForumActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "positionOffset",
            "positionOffsetPixels"
        }
    .end annotation

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string p3, "position="

    .line 7
    .line 8
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, ""

    .line 15
    .line 16
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string p2, "onPageScrolled"

    .line 24
    .line 25
    filled-new-array {p2, p1}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/join/mgps/activity/ForumActivity$f;->b:Lcom/join/mgps/activity/ForumActivity;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumActivity;->hideSendBtn()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity$f;->b:Lcom/join/mgps/activity/ForumActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/join/mgps/activity/ForumActivity;->adapter:Lcom/join/mgps/adapter/h0;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-static {v0}, Lcom/join/mgps/activity/ForumActivity;->access$000(Lcom/join/mgps/activity/ForumActivity;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {v1, v0}, Lcom/join/mgps/adapter/h0;->getItem(I)Landroidx/fragment/app/Fragment;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity$f;->b:Lcom/join/mgps/activity/ForumActivity;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/join/mgps/activity/ForumActivity;->access$100(Lcom/join/mgps/activity/ForumActivity;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity$f;->b:Lcom/join/mgps/activity/ForumActivity;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/join/mgps/activity/ForumActivity;->adapter:Lcom/join/mgps/adapter/h0;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lcom/join/mgps/adapter/h0;->getItem(I)Landroidx/fragment/app/Fragment;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity$f;->b:Lcom/join/mgps/activity/ForumActivity;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/join/mgps/activity/ForumActivity;->access$200(Lcom/join/mgps/activity/ForumActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :catch_0
    move-exception v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 46
    .line 47
    .line 48
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity$f;->b:Lcom/join/mgps/activity/ForumActivity;

    .line 49
    .line 50
    invoke-static {v0, p1}, Lcom/join/mgps/activity/ForumActivity;->access$002(Lcom/join/mgps/activity/ForumActivity;I)I

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/join/mgps/activity/ForumActivity$f;->b:Lcom/join/mgps/activity/ForumActivity;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumActivity;->playVideoDelay()V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/join/mgps/activity/ForumActivity$f;->b:Lcom/join/mgps/activity/ForumActivity;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumActivity;->hideSendBtn()V

    .line 61
    .line 62
    .line 63
    return-void
.end method
