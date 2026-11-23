.class public final Lcom/join/kotlin/presenter/FindModlePrensenter$loadFindChoiceData$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/presenter/FindModlePrensenter;->loadFindChoiceData(Landroid/content/Context;Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/join/mgps/dto/ResponseModel<",
        "Lcom/join/kotlin/ui/findgame/data/FindChoiceResultData;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001J0\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u00072\u0012\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\tH\u0016J$\u0010\n\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u000cH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/join/kotlin/presenter/FindModlePrensenter$loadFindChoiceData$1",
        "Lretrofit2/Callback;",
        "Lcom/join/mgps/dto/ResponseModel;",
        "Lcom/join/kotlin/ui/findgame/data/FindChoiceResultData;",
        "onResponse",
        "",
        "call",
        "Lretrofit2/Call;",
        "response",
        "Lretrofit2/Response;",
        "onFailure",
        "t",
        "",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $arg:Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

.field final synthetic this$0:Lcom/join/kotlin/presenter/FindModlePrensenter;


# direct methods
.method constructor <init>(Lcom/join/kotlin/presenter/FindModlePrensenter;Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/presenter/FindModlePrensenter$loadFindChoiceData$1;->this$0:Lcom/join/kotlin/presenter/FindModlePrensenter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/kotlin/presenter/FindModlePrensenter$loadFindChoiceData$1;->$arg:Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/kotlin/ui/findgame/data/FindChoiceResultData;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "t"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/kotlin/presenter/FindModlePrensenter$loadFindChoiceData$1;->this$0:Lcom/join/kotlin/presenter/FindModlePrensenter;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, v0}, Lcom/join/kotlin/presenter/FindModlePrensenter;->setLoading(Z)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/join/kotlin/presenter/FindModlePrensenter$loadFindChoiceData$1;->this$0:Lcom/join/kotlin/presenter/FindModlePrensenter;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/join/kotlin/presenter/BasePresenter;->getMView()Lcom/psk/kotlin/base/presenter/view/BaseView;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lcom/join/kotlin/presenter/view/FindHomeView;

    .line 24
    .line 25
    const-string v0, "\u83b7\u53d6\u6570\u636e\u5931\u8d25"

    .line 26
    .line 27
    invoke-interface {p1, v0}, Lcom/psk/kotlin/base/presenter/view/BaseView;->onError(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/kotlin/ui/findgame/data/FindChoiceResultData;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/kotlin/ui/findgame/data/FindChoiceResultData;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "response"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/kotlin/presenter/FindModlePrensenter$loadFindChoiceData$1;->this$0:Lcom/join/kotlin/presenter/FindModlePrensenter;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, v0}, Lcom/join/kotlin/presenter/FindModlePrensenter;->setLoading(Z)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    const/16 v0, 0xc8

    .line 37
    .line 38
    if-ne p1, v0, :cond_0

    .line 39
    .line 40
    iget-object p1, p0, Lcom/join/kotlin/presenter/FindModlePrensenter$loadFindChoiceData$1;->this$0:Lcom/join/kotlin/presenter/FindModlePrensenter;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/join/kotlin/presenter/BasePresenter;->getMView()Lcom/psk/kotlin/base/presenter/view/BaseView;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Lcom/join/kotlin/presenter/view/FindHomeView;

    .line 47
    .line 48
    invoke-interface {p1}, Lcom/psk/kotlin/base/presenter/view/BaseView;->hidLoading()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-eqz p1, :cond_1

    .line 65
    .line 66
    iget-object p1, p0, Lcom/join/kotlin/presenter/FindModlePrensenter$loadFindChoiceData$1;->this$0:Lcom/join/kotlin/presenter/FindModlePrensenter;

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/join/kotlin/presenter/BasePresenter;->getMView()Lcom/psk/kotlin/base/presenter/view/BaseView;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Lcom/join/kotlin/presenter/view/FindHomeView;

    .line 73
    .line 74
    iget-object v0, p0, Lcom/join/kotlin/presenter/FindModlePrensenter$loadFindChoiceData$1;->$arg:Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->getPage()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    check-cast p2, Lcom/join/mgps/dto/ResponseModel;

    .line 88
    .line 89
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    const-string v1, "getData(...)"

    .line 94
    .line 95
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    check-cast p2, Lcom/join/kotlin/ui/findgame/data/FindChoiceResultData;

    .line 99
    .line 100
    invoke-interface {p1, v0, p2}, Lcom/join/kotlin/presenter/view/FindHomeView;->onLoadDataSuccess(ILcom/join/kotlin/ui/findgame/data/FindChoiceResultData;)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/presenter/FindModlePrensenter$loadFindChoiceData$1;->this$0:Lcom/join/kotlin/presenter/FindModlePrensenter;

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/join/kotlin/presenter/BasePresenter;->getMView()Lcom/psk/kotlin/base/presenter/view/BaseView;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Lcom/join/kotlin/presenter/view/FindHomeView;

    .line 111
    .line 112
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    check-cast p2, Lcom/join/mgps/dto/ResponseModel;

    .line 120
    .line 121
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getMessage()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    const-string v0, "getMessage(...)"

    .line 126
    .line 127
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-interface {p1, p2}, Lcom/psk/kotlin/base/presenter/view/BaseView;->onError(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :cond_1
    iget-object p1, p0, Lcom/join/kotlin/presenter/FindModlePrensenter$loadFindChoiceData$1;->this$0:Lcom/join/kotlin/presenter/FindModlePrensenter;

    .line 135
    .line 136
    invoke-virtual {p1}, Lcom/join/kotlin/presenter/BasePresenter;->getMView()Lcom/psk/kotlin/base/presenter/view/BaseView;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    check-cast p1, Lcom/join/kotlin/presenter/view/FindHomeView;

    .line 141
    .line 142
    const-string p2, "\u83b7\u53d6\u6570\u636e\u5931\u8d25"

    .line 143
    .line 144
    invoke-interface {p1, p2}, Lcom/psk/kotlin/base/presenter/view/BaseView;->onError(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    return-void
.end method
