.class Lcom/join/mgps/customview/ViewPagerWithADs$a$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/ViewPagerWithADs$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/ViewPagerWithADs$a;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/ViewPagerWithADs$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$a;->a:Lcom/join/mgps/customview/ViewPagerWithADs$a;

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
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$a;->a:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/customview/ViewPagerWithADs$a;->a(Lcom/join/mgps/customview/ViewPagerWithADs$a;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$a;->a:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/customview/ViewPagerWithADs$a;->j()V

    .line 13
    .line 14
    .line 15
    return-void
.end method
