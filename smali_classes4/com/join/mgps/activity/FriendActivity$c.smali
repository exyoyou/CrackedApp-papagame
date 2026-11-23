.class Lcom/join/mgps/activity/FriendActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/FriendActivity;->getGameTypeList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/join/mgps/dto/ResultResMainBean<",
        "Lcom/join/mgps/dto/GameListBannerBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/FriendActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/FriendActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity$c;->b:Lcom/join/mgps/activity/FriendActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "call",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResultResMainBean<",
            "Lcom/join/mgps/dto/GameListBannerBean;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/FriendActivity$c;->b:Lcom/join/mgps/activity/FriendActivity;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/activity/FriendActivity;->hideGameSelector()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "call",
            "response"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResultResMainBean<",
            "Lcom/join/mgps/dto/GameListBannerBean;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/join/mgps/dto/ResultResMainBean<",
            "Lcom/join/mgps/dto/GameListBannerBean;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/join/mgps/dto/ResultResMainBean;

    .line 6
    .line 7
    if-eqz p1, :cond_2

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/join/mgps/dto/GameListBannerBean;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameListBannerBean;->getGame_list()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-lez p2, :cond_1

    .line 26
    .line 27
    iget-object p2, p0, Lcom/join/mgps/activity/FriendActivity$c;->b:Lcom/join/mgps/activity/FriendActivity;

    .line 28
    .line 29
    iget-object p2, p2, Lcom/join/mgps/activity/FriendActivity;->gameInfoListData:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/join/mgps/activity/FriendActivity$c;->b:Lcom/join/mgps/activity/FriendActivity;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/join/mgps/activity/FriendActivity;->access$000(Lcom/join/mgps/activity/FriendActivity;)I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    const/16 v0, -0x400

    .line 41
    .line 42
    if-ne p2, v0, :cond_0

    .line 43
    .line 44
    const/4 p2, 0x0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/FriendActivity$c;->b:Lcom/join/mgps/activity/FriendActivity;

    .line 47
    .line 48
    invoke-static {p2}, Lcom/join/mgps/activity/FriendActivity;->access$000(Lcom/join/mgps/activity/FriendActivity;)I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    :goto_0
    invoke-static {p1, p2}, Lcom/join/mgps/activity/FriendActivity;->access$002(Lcom/join/mgps/activity/FriendActivity;I)I

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/join/mgps/activity/FriendActivity$c;->b:Lcom/join/mgps/activity/FriendActivity;

    .line 56
    .line 57
    iget-object p2, p1, Lcom/join/mgps/activity/FriendActivity;->gameInfoListData:Ljava/util/List;

    .line 58
    .line 59
    invoke-static {p1}, Lcom/join/mgps/activity/FriendActivity;->access$000(Lcom/join/mgps/activity/FriendActivity;)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    check-cast p2, Lcom/join/mgps/dto/GameInfoBean;

    .line 68
    .line 69
    iput-object p2, p1, Lcom/join/mgps/activity/FriendActivity;->mGameInfo:Lcom/join/mgps/dto/GameInfoBean;

    .line 70
    .line 71
    iget-object p1, p0, Lcom/join/mgps/activity/FriendActivity$c;->b:Lcom/join/mgps/activity/FriendActivity;

    .line 72
    .line 73
    invoke-static {p1}, Lcom/join/mgps/activity/FriendActivity;->access$100(Lcom/join/mgps/activity/FriendActivity;)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/join/mgps/activity/FriendActivity$c;->b:Lcom/join/mgps/activity/FriendActivity;

    .line 77
    .line 78
    iget-object p1, p1, Lcom/join/mgps/activity/FriendActivity;->roomSelecteradapter:Lcom/join/mgps/activity/FriendActivity$i;

    .line 79
    .line 80
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/FriendActivity$c;->b:Lcom/join/mgps/activity/FriendActivity;

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/join/mgps/activity/FriendActivity;->hideGameSelector()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :catch_0
    move-exception p1

    .line 91
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/join/mgps/activity/FriendActivity$c;->b:Lcom/join/mgps/activity/FriendActivity;

    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/join/mgps/activity/FriendActivity;->hideGameSelector()V

    .line 97
    .line 98
    .line 99
    :cond_2
    :goto_1
    return-void
.end method
