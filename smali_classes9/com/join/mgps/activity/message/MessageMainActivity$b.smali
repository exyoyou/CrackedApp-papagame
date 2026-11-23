.class Lcom/join/mgps/activity/message/MessageMainActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/message/MessageMainActivity;->afterview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/message/MessageMainActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/message/MessageMainActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/message/MessageMainActivity$b;->b:Lcom/join/mgps/activity/message/MessageMainActivity;

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
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity$b;->b:Lcom/join/mgps/activity/message/MessageMainActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/message/MessageMainActivity;->tableLayout:Lcom/flyco/tablayout/SlidingTabLayout;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/flyco/tablayout/SlidingTabLayout;->k(I)V

    .line 6
    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/message/MessageMainActivity$b;->b:Lcom/join/mgps/activity/message/MessageMainActivity;

    .line 11
    .line 12
    iget-object v0, p1, Lcom/join/mgps/activity/message/MessageMainActivity;->noticeFragment:Lcom/join/mgps/activity/message/e;

    .line 13
    .line 14
    iput-object v0, p1, Lcom/join/mgps/activity/message/MessageMainActivity;->fg:Landroidx/fragment/app/Fragment;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x1

    .line 18
    const/4 v1, 0x0

    .line 19
    if-ne p1, v0, :cond_2

    .line 20
    .line 21
    sget-object p1, Lcom/MApplication;->P:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->setCommunity_surplus_number(I)V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/message/MessageMainActivity$b;->b:Lcom/join/mgps/activity/message/MessageMainActivity;

    .line 29
    .line 30
    iget-object v0, p1, Lcom/join/mgps/activity/message/MessageMainActivity;->communityFragment:Lcom/join/mgps/activity/message/a;

    .line 31
    .line 32
    iput-object v0, p1, Lcom/join/mgps/activity/message/MessageMainActivity;->fg:Landroidx/fragment/app/Fragment;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    const/4 v0, 0x2

    .line 36
    if-ne p1, v0, :cond_4

    .line 37
    .line 38
    sget-object p1, Lcom/MApplication;->P:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 39
    .line 40
    if-eqz p1, :cond_3

    .line 41
    .line 42
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->setReplay_surplus_number(I)V

    .line 43
    .line 44
    .line 45
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/message/MessageMainActivity$b;->b:Lcom/join/mgps/activity/message/MessageMainActivity;

    .line 46
    .line 47
    iget-object v0, p1, Lcom/join/mgps/activity/message/MessageMainActivity;->messagePriaceFragment:Lcom/join/mgps/activity/message/c;

    .line 48
    .line 49
    iput-object v0, p1, Lcom/join/mgps/activity/message/MessageMainActivity;->fg:Landroidx/fragment/app/Fragment;

    .line 50
    .line 51
    :cond_4
    :goto_0
    return-void
.end method
