.class Lcom/join/mgps/activity/ForumActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumActivity;->forum_post()V
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
    iput-object p1, p0, Lcom/join/mgps/activity/ForumActivity$a;->b:Lcom/join/mgps/activity/ForumActivity;

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
            "parent",
            "view",
            "position",
            "id"
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
    iget-object p1, p0, Lcom/join/mgps/activity/ForumActivity$a;->b:Lcom/join/mgps/activity/ForumActivity;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/ForumActivity;->popupWindow:Lcom/join/mgps/customview/h;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/ForumActivity$a;->b:Lcom/join/mgps/activity/ForumActivity;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/join/mgps/activity/ForumActivity;->popupWindow:Lcom/join/mgps/customview/h;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/customview/h;->dismiss()V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    iget-object p1, p0, Lcom/join/mgps/activity/ForumActivity$a;->b:Lcom/join/mgps/activity/ForumActivity;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumActivity;->showDialog()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumActivity$a;->b:Lcom/join/mgps/activity/ForumActivity;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/join/mgps/activity/ForumActivity;->forumGroupIndex:Lcom/join/mgps/dto/ForumData$ForumGroupIndex;

    .line 43
    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p1}, Lcom/join/mgps/activity/posting/PostingActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/posting/PostingActivity_$v;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget-object p2, p0, Lcom/join/mgps/activity/ForumActivity$a;->b:Lcom/join/mgps/activity/ForumActivity;

    .line 55
    .line 56
    iget-object p2, p2, Lcom/join/mgps/activity/ForumActivity;->typesPW:Ljava/util/List;

    .line 57
    .line 58
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    check-cast p2, Lcom/join/mgps/dto/ForumData$ForumGroupIndexTab;

    .line 63
    .line 64
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$ForumGroupIndexTab;->getType_id()I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/posting/PostingActivity_$v;->g(I)Lcom/join/mgps/activity/posting/PostingActivity_$v;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iget-object p2, p0, Lcom/join/mgps/activity/ForumActivity$a;->b:Lcom/join/mgps/activity/ForumActivity;

    .line 73
    .line 74
    iget-object p2, p2, Lcom/join/mgps/activity/ForumActivity;->forumGroupIndex:Lcom/join/mgps/dto/ForumData$ForumGroupIndex;

    .line 75
    .line 76
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->getForum_name()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/posting/PostingActivity_$v;->f(Ljava/lang/String;)Lcom/join/mgps/activity/posting/PostingActivity_$v;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iget-object p2, p0, Lcom/join/mgps/activity/ForumActivity$a;->b:Lcom/join/mgps/activity/ForumActivity;

    .line 85
    .line 86
    iget p2, p2, Lcom/join/mgps/activity/ForumActivity;->fid:I

    .line 87
    .line 88
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/posting/PostingActivity_$v;->a(I)Lcom/join/mgps/activity/posting/PostingActivity_$v;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    const/16 p2, 0x4444

    .line 93
    .line 94
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/posting/PostingActivity_$v;->startForResult(I)Lorg/androidannotations/api/builder/f;

    .line 95
    .line 96
    .line 97
    :cond_2
    return-void
.end method
