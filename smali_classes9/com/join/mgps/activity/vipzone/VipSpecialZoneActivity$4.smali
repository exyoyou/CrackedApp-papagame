.class Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->getGamelist()V
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
        "Ljava/util/List<",
        "Lcom/join/mgps/dto/CollectionBeanSub;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$4;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

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
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;>;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 5
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
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;>;>;",
            "Lretrofit2/Response<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;>;>;)V"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_5

    .line 2
    .line 3
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_5

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
    move-result p2

    .line 19
    const/16 v0, 0xc8

    .line 20
    .line 21
    if-ne p2, v0, :cond_4

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Ljava/util/List;

    .line 28
    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-lez p2, :cond_3

    .line 36
    .line 37
    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$4;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    .line 38
    .line 39
    iget v0, p2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->page:I

    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    if-ne v0, v1, :cond_2

    .line 43
    .line 44
    iget-object p2, p2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->businessList:Ljava/util/List;

    .line 45
    .line 46
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 47
    .line 48
    .line 49
    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$4;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    .line 50
    .line 51
    iget-object p2, p2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 52
    .line 53
    invoke-virtual {p2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->reset()V

    .line 54
    .line 55
    .line 56
    new-instance p2, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$4;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    .line 62
    .line 63
    iget-object v0, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->vipCenterDataMains:Ljava/util/List;

    .line 64
    .line 65
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_1

    .line 74
    .line 75
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    check-cast v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;

    .line 80
    .line 81
    iget v3, v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;->type:I

    .line 82
    .line 83
    const/4 v4, 0x2

    .line 84
    if-ne v3, v4, :cond_0

    .line 85
    .line 86
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_2

    .line 99
    .line 100
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;

    .line 105
    .line 106
    iget-object v2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$4;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    .line 107
    .line 108
    iget-object v2, v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->vipCenterDataMains:Ljava/util/List;

    .line 109
    .line 110
    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$4;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    .line 115
    .line 116
    iget v0, p2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->page:I

    .line 117
    .line 118
    add-int/2addr v0, v1

    .line 119
    iput v0, p2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->page:I

    .line 120
    .line 121
    invoke-static {p2, p1}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->access$500(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;Ljava/util/List;)V

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$4;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    .line 126
    .line 127
    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setNoMore()V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_4
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 134
    .line 135
    .line 136
    move-result p2

    .line 137
    const/16 v0, 0x1f4

    .line 138
    .line 139
    if-ne p2, v0, :cond_5

    .line 140
    .line 141
    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$4;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    .line 142
    .line 143
    iget-object p2, p2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->context:Landroid/content/Context;

    .line 144
    .line 145
    invoke-static {p2}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getMessage()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {p2, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$4;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    .line 157
    .line 158
    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 159
    .line 160
    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->loadMoreComplete()V

    .line 161
    .line 162
    .line 163
    return-void
.end method
