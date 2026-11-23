.class public final Lcom/join/kotlin/presenter/CategoryPrensenter$loadCategoryData$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/presenter/CategoryPrensenter;->loadCategoryData(Landroid/content/Context;Lcom/join/kotlin/ui/findgame/data/CategoryRequest;)V
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
        "Lcom/join/kotlin/ui/findgame/data/CategoryListMain;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001J0\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u00072\u0012\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\tH\u0016J$\u0010\n\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u000cH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/join/kotlin/presenter/CategoryPrensenter$loadCategoryData$1",
        "Lretrofit2/Callback;",
        "Lcom/join/mgps/dto/ResponseModel;",
        "Lcom/join/kotlin/ui/findgame/data/CategoryListMain;",
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
.field final synthetic $arg:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

.field final synthetic this$0:Lcom/join/kotlin/presenter/CategoryPrensenter;


# direct methods
.method constructor <init>(Lcom/join/kotlin/presenter/CategoryPrensenter;Lcom/join/kotlin/ui/findgame/data/CategoryRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/presenter/CategoryPrensenter$loadCategoryData$1;->this$0:Lcom/join/kotlin/presenter/CategoryPrensenter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/kotlin/presenter/CategoryPrensenter$loadCategoryData$1;->$arg:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

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
            "Lcom/join/kotlin/ui/findgame/data/CategoryListMain;",
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
    iget-object p1, p0, Lcom/join/kotlin/presenter/CategoryPrensenter$loadCategoryData$1;->this$0:Lcom/join/kotlin/presenter/CategoryPrensenter;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/join/kotlin/presenter/BasePresenter;->getMView()Lcom/psk/kotlin/base/presenter/view/BaseView;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/join/kotlin/presenter/view/CategoryView;

    .line 18
    .line 19
    const-string v0, "\u83b7\u53d6\u6570\u636e\u5931\u8d25"

    .line 20
    .line 21
    invoke-interface {p1, v0}, Lcom/psk/kotlin/base/presenter/view/BaseView;->onError(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/kotlin/ui/findgame/data/CategoryListMain;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/kotlin/ui/findgame/data/CategoryListMain;",
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
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    const/16 v0, 0xc8

    .line 33
    .line 34
    if-ne p1, v0, :cond_0

    .line 35
    .line 36
    iget-object p1, p0, Lcom/join/kotlin/presenter/CategoryPrensenter$loadCategoryData$1;->this$0:Lcom/join/kotlin/presenter/CategoryPrensenter;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/join/kotlin/presenter/BasePresenter;->getMView()Lcom/psk/kotlin/base/presenter/view/BaseView;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Lcom/join/kotlin/presenter/view/CategoryView;

    .line 43
    .line 44
    invoke-interface {p1}, Lcom/psk/kotlin/base/presenter/view/BaseView;->hidLoading()V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/join/kotlin/presenter/CategoryPrensenter$loadCategoryData$1;->this$0:Lcom/join/kotlin/presenter/CategoryPrensenter;

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/join/kotlin/presenter/BasePresenter;->getMView()Lcom/psk/kotlin/base/presenter/view/BaseView;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Lcom/join/kotlin/presenter/view/CategoryView;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/join/kotlin/presenter/CategoryPrensenter$loadCategoryData$1;->$arg:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->getPage()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    check-cast p2, Lcom/join/mgps/dto/ResponseModel;

    .line 69
    .line 70
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    const-string v1, "getData(...)"

    .line 75
    .line 76
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    check-cast p2, Lcom/join/kotlin/ui/findgame/data/CategoryListMain;

    .line 80
    .line 81
    invoke-interface {p1, v0, p2}, Lcom/join/kotlin/presenter/view/CategoryView;->onLoadDataSuccess(ILcom/join/kotlin/ui/findgame/data/CategoryListMain;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/presenter/CategoryPrensenter$loadCategoryData$1;->this$0:Lcom/join/kotlin/presenter/CategoryPrensenter;

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/join/kotlin/presenter/BasePresenter;->getMView()Lcom/psk/kotlin/base/presenter/view/BaseView;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Lcom/join/kotlin/presenter/view/CategoryView;

    .line 92
    .line 93
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    check-cast p2, Lcom/join/mgps/dto/ResponseModel;

    .line 101
    .line 102
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getMessage()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    const-string v0, "getMessage(...)"

    .line 107
    .line 108
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-interface {p1, p2}, Lcom/psk/kotlin/base/presenter/view/BaseView;->onError(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_1
    iget-object p1, p0, Lcom/join/kotlin/presenter/CategoryPrensenter$loadCategoryData$1;->this$0:Lcom/join/kotlin/presenter/CategoryPrensenter;

    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/join/kotlin/presenter/BasePresenter;->getMView()Lcom/psk/kotlin/base/presenter/view/BaseView;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    check-cast p1, Lcom/join/kotlin/presenter/view/CategoryView;

    .line 122
    .line 123
    const-string p2, "\u83b7\u53d6\u6570\u636e\u5931\u8d25"

    .line 124
    .line 125
    invoke-interface {p1, p2}, Lcom/psk/kotlin/base/presenter/view/BaseView;->onError(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    return-void
.end method
