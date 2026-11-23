.class Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScreenShortAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->allItemBeans:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$MYHolder;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$MYHolder;->access$000(Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$MYHolder;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->allItemBeans:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/join/mgps/activity/screenshot/ScreenShortListItemBean;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/join/mgps/activity/screenshot/ScreenShortListItemBean;->getSmallPicPath()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    sget-object v2, Lcom/facebook/drawee/drawable/s$c;->i:Lcom/facebook/drawee/drawable/s$c;

    .line 22
    .line 23
    invoke-static {v0, v1, v2}, Lcom/join/android/app/common/utils/l;->i(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/drawable/s$c;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$MYHolder;->access$000(Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$MYHolder;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    new-instance v0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter$1;

    .line 31
    .line 32
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter$1;-><init>(Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter;I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;

    .line 2
    .line 3
    iget-object p2, p2, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const v0, 0x7f0d0818

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance p2, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$MYHolder;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;

    .line 20
    .line 21
    invoke-direct {p2, v0, p1}, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$MYHolder;-><init>(Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p2}, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$MYHolder;->access$000(Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$MYHolder;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 33
    .line 34
    iget v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 35
    .line 36
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 37
    .line 38
    return-object p2
.end method
