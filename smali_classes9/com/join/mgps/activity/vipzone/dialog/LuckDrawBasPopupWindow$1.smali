.class Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$1;->this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$1;->this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    .line 2
    .line 3
    iget v1, v0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->type:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    if-ne v1, v2, :cond_0

    .line 7
    .line 8
    iget-object v1, v0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->adapter:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;

    .line 9
    .line 10
    iget v2, v0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->page:I

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->access$000(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public onRefresh()V
    .locals 0

    return-void
.end method
