.class Lcom/join/mgps/activity/GameDetailActivity$j$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameDetailActivity$j;->b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/GameListItemBean;

.field final synthetic c:Lcom/join/mgps/activity/GameDetailActivity$k;

.field final synthetic d:I

.field final synthetic e:Lcom/join/mgps/activity/GameDetailActivity$j;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameDetailActivity$j;Lcom/join/mgps/dto/GameListItemBean;Lcom/join/mgps/activity/GameDetailActivity$k;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$searchDataBean",
            "val$myHolder",
            "val$i"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$j$c;->e:Lcom/join/mgps/activity/GameDetailActivity$j;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/GameDetailActivity$j$c;->b:Lcom/join/mgps/dto/GameListItemBean;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/GameDetailActivity$j$c;->c:Lcom/join/mgps/activity/GameDetailActivity$k;

    .line 6
    .line 7
    iput p4, p0, Lcom/join/mgps/activity/GameDetailActivity$j$c;->d:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$j$c;->e:Lcom/join/mgps/activity/GameDetailActivity$j;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity$j;->b:Lcom/join/mgps/activity/GameDetailActivity;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->getIs_self()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v0, "1"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$j$c;->e:Lcom/join/mgps/activity/GameDetailActivity$j;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity$j;->b:Lcom/join/mgps/activity/GameDetailActivity;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->getTv_btn()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$j$c;->b:Lcom/join/mgps/dto/GameListItemBean;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCustomer_info()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$j$c;->b:Lcom/join/mgps/dto/GameListItemBean;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCustomer_info()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string v0, ""

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_0

    .line 52
    .line 53
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$j$c;->e:Lcom/join/mgps/activity/GameDetailActivity$j;

    .line 54
    .line 55
    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity$j;->b:Lcom/join/mgps/activity/GameDetailActivity;

    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$j$c;->b:Lcom/join/mgps/dto/GameListItemBean;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getCustomer_info()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iput-object v0, p1, Lcom/join/mgps/activity/GameDetailActivity;->strss:Ljava/lang/String;

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$j$c;->e:Lcom/join/mgps/activity/GameDetailActivity$j;

    .line 67
    .line 68
    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity$j;->b:Lcom/join/mgps/activity/GameDetailActivity;

    .line 69
    .line 70
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$j$c;->b:Lcom/join/mgps/dto/GameListItemBean;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getInfo()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iput-object v0, p1, Lcom/join/mgps/activity/GameDetailActivity;->strss:Ljava/lang/String;

    .line 77
    .line 78
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$j$c;->e:Lcom/join/mgps/activity/GameDetailActivity$j;

    .line 79
    .line 80
    iget-object v0, p1, Lcom/join/mgps/activity/GameDetailActivity$j;->b:Lcom/join/mgps/activity/GameDetailActivity;

    .line 81
    .line 82
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity$j$c;->c:Lcom/join/mgps/activity/GameDetailActivity$k;

    .line 83
    .line 84
    iget-object v2, v0, Lcom/join/mgps/activity/GameDetailActivity;->strss:Ljava/lang/String;

    .line 85
    .line 86
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$j$c;->b:Lcom/join/mgps/dto/GameListItemBean;

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    iget-object v4, p0, Lcom/join/mgps/activity/GameDetailActivity$j$c;->b:Lcom/join/mgps/dto/GameListItemBean;

    .line 93
    .line 94
    const/4 v5, 0x2

    .line 95
    iget v6, p0, Lcom/join/mgps/activity/GameDetailActivity$j$c;->d:I

    .line 96
    .line 97
    invoke-virtual/range {v0 .. v6}, Lcom/join/mgps/activity/GameDetailActivity;->showPopupWindow(Lcom/join/mgps/activity/GameDetailActivity$k;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/GameListItemBean;II)V

    .line 98
    .line 99
    .line 100
    :cond_1
    return-void
.end method
