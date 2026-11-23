.class Lcom/join/mgps/activity/GameDetialInformationMoreActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/GameDetialInformationMoreActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameDetialInformationMoreActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity$c;->b:Lcom/join/mgps/activity/GameDetialInformationMoreActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "adapterView",
            "view",
            "i",
            "l"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity$c;->b:Lcom/join/mgps/activity/GameDetialInformationMoreActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->access$200(Lcom/join/mgps/activity/GameDetialInformationMoreActivity;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-gt p3, p1, :cond_1

    .line 12
    .line 13
    if-gez p3, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity$c;->b:Lcom/join/mgps/activity/GameDetialInformationMoreActivity;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->access$200(Lcom/join/mgps/activity/GameDetialInformationMoreActivity;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lcom/join/mgps/dto/RecommendInfomationBean;

    .line 27
    .line 28
    new-instance p2, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 29
    .line 30
    invoke-direct {p2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getPost_id()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-virtual {p2, p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setPid(I)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity$c;->b:Lcom/join/mgps/activity/GameDetialInformationMoreActivity;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->access$300(Lcom/join/mgps/activity/GameDetialInformationMoreActivity;)Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p1, p2}, Lcom/join/mgps/Util/r0;->v0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception p1

    .line 52
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    .line 54
    .line 55
    :goto_1
    return-void
.end method
