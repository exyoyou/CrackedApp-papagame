.class Lcom/join/mgps/activity/SharePostsActivity$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SharePostsActivity;->initHelpView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/SharePostsActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SharePostsActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity$g;->b:Lcom/join/mgps/activity/SharePostsActivity;

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
    .locals 2
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
    iget-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity$g;->b:Lcom/join/mgps/activity/SharePostsActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/SharePostsActivity;->access$200(Lcom/join/mgps/activity/SharePostsActivity;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eq p1, p3, :cond_2

    .line 8
    .line 9
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getPapaMoney()J

    .line 22
    .line 23
    .line 24
    move-result-wide p4

    .line 25
    iget-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity$g;->b:Lcom/join/mgps/activity/SharePostsActivity;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/join/mgps/activity/SharePostsActivity;->access$300(Lcom/join/mgps/activity/SharePostsActivity;)[Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    aget-object p1, p1, p3

    .line 32
    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    int-to-long v0, p1

    .line 38
    cmp-long p1, p4, v0

    .line 39
    .line 40
    if-gez p1, :cond_0

    .line 41
    .line 42
    iget-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity$g;->b:Lcom/join/mgps/activity/SharePostsActivity;

    .line 43
    .line 44
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    const p3, 0x7f1203ea

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/SharePostsActivity;->showToast(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity$g;->b:Lcom/join/mgps/activity/SharePostsActivity;

    .line 60
    .line 61
    invoke-static {p1}, Lcom/join/mgps/activity/SharePostsActivity;->access$200(Lcom/join/mgps/activity/SharePostsActivity;)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-ltz p1, :cond_1

    .line 66
    .line 67
    iget-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity$g;->b:Lcom/join/mgps/activity/SharePostsActivity;

    .line 68
    .line 69
    invoke-static {p1}, Lcom/join/mgps/activity/SharePostsActivity;->access$400(Lcom/join/mgps/activity/SharePostsActivity;)Landroid/widget/SimpleAdapter;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    iget-object p4, p0, Lcom/join/mgps/activity/SharePostsActivity$g;->b:Lcom/join/mgps/activity/SharePostsActivity;

    .line 74
    .line 75
    invoke-static {p4}, Lcom/join/mgps/activity/SharePostsActivity;->access$200(Lcom/join/mgps/activity/SharePostsActivity;)I

    .line 76
    .line 77
    .line 78
    move-result p4

    .line 79
    const/4 p5, 0x0

    .line 80
    invoke-static {p1, p2, p4, p5}, Lcom/join/mgps/activity/SharePostsActivity;->access$500(Lcom/join/mgps/activity/SharePostsActivity;Landroid/widget/SimpleAdapter;IZ)V

    .line 81
    .line 82
    .line 83
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity$g;->b:Lcom/join/mgps/activity/SharePostsActivity;

    .line 84
    .line 85
    invoke-static {p1, p3}, Lcom/join/mgps/activity/SharePostsActivity;->access$202(Lcom/join/mgps/activity/SharePostsActivity;I)I

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity$g;->b:Lcom/join/mgps/activity/SharePostsActivity;

    .line 89
    .line 90
    invoke-static {p1}, Lcom/join/mgps/activity/SharePostsActivity;->access$400(Lcom/join/mgps/activity/SharePostsActivity;)Landroid/widget/SimpleAdapter;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    const/4 p4, 0x1

    .line 95
    invoke-static {p1, p2, p3, p4}, Lcom/join/mgps/activity/SharePostsActivity;->access$500(Lcom/join/mgps/activity/SharePostsActivity;Landroid/widget/SimpleAdapter;IZ)V

    .line 96
    .line 97
    .line 98
    :cond_2
    return-void
.end method
