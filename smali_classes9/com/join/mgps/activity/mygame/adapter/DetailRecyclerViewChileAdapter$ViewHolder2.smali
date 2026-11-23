.class public Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder2;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder2"
.end annotation


# instance fields
.field private main:Landroid/widget/LinearLayout;

.field private sdv_image:Lcom/facebook/drawee/view/SimpleDraweeView;

.field final synthetic this$0:Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "itemView"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder2;->this$0:Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0a14a2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder2;->sdv_image:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 16
    .line 17
    const p1, 0x7f0a0fee

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Landroid/widget/LinearLayout;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder2;->main:Landroid/widget/LinearLayout;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public setData(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "positionx"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder2;->this$0:Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;->access$000(Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder2;->this$0:Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;->access$000(Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder2;->sdv_image:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getCoverPicUrl()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder2;->main:Landroid/widget/LinearLayout;

    .line 38
    .line 39
    new-instance v1, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder2$1;

    .line 40
    .line 41
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder2$1;-><init>(Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder2;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method
