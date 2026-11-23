.class Lcom/join/mgps/activity/vipzone/VipCenterActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/vipzone/VipCenterActivity;->startScratchPrize()V
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
        "Lcom/join/mgps/activity/vipzone/bean/PrizeBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$2;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

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
            "Lcom/join/mgps/activity/vipzone/bean/PrizeBean;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$2;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    iput-boolean p2, p1, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->isstruckting:Z

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
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/activity/vipzone/bean/PrizeBean;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/activity/vipzone/bean/PrizeBean;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/16 v0, 0xc8

    .line 20
    .line 21
    if-ne p1, v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/join/mgps/activity/vipzone/bean/PrizeBean;

    .line 34
    .line 35
    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$2;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    .line 36
    .line 37
    iget-object p2, p2, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->luckbean:Lcom/join/mgps/activity/vipzone/bean/Luckbean;

    .line 38
    .line 39
    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/vipzone/bean/Luckbean;->setLastPrize(Lcom/join/mgps/activity/vipzone/bean/PrizeBean;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$2;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->luckbean:Lcom/join/mgps/activity/vipzone/bean/Luckbean;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/bean/Luckbean;->getCount()I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    add-int/lit8 p2, p2, -0x1

    .line 51
    .line 52
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/vipzone/bean/Luckbean;->setCount(I)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$2;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    .line 56
    .line 57
    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->adapter:Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    if-eqz p2, :cond_1

    .line 64
    .line 65
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-eqz p1, :cond_1

    .line 70
    .line 71
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    const/16 v0, 0x1f4

    .line 82
    .line 83
    if-ne p1, v0, :cond_1

    .line 84
    .line 85
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getMessage()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$2;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    .line 96
    .line 97
    iget-object p2, p2, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->context:Landroid/content/Context;

    .line 98
    .line 99
    invoke-static {p2}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-virtual {p2, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$2;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    .line 107
    .line 108
    const/4 p2, 0x0

    .line 109
    iput-boolean p2, p1, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->isstruckting:Z

    .line 110
    .line 111
    :cond_1
    :goto_0
    return-void
.end method
