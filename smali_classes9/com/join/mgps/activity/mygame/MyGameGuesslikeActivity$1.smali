.class Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity;->getDownloadRecomedData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/join/mgps/dto/ResponseModel<",
        "Lcom/join/mgps/activity/mygame/data/DataGameListBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity$1;->this$0:Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity;

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
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/activity/mygame/data/DataGameListBean;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity$1;->this$0:Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/BaseAppCompatActivity;->showFailLayoutBase()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 0
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
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/activity/mygame/data/DataGameListBean;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/activity/mygame/data/DataGameListBean;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_2

    .line 2
    .line 3
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/join/mgps/activity/mygame/data/DataGameListBean;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/activity/mygame/data/DataGameListBean;->getGameList()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    if-lez p2, :cond_0

    .line 34
    .line 35
    iget-object p2, p0, Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity$1;->this$0:Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity;

    .line 36
    .line 37
    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity;->showGuesslike(Ljava/util/List;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity$1;->this$0:Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/BaseAppCompatActivity;->showNoDataLayoutBase()V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity$1;->this$0:Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity;

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/BaseAppCompatActivity;->showFailLayoutBase()V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity$1;->this$0:Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/BaseAppCompatActivity;->showFailLayoutBase()V

    .line 56
    .line 57
    .line 58
    :goto_0
    return-void
.end method
