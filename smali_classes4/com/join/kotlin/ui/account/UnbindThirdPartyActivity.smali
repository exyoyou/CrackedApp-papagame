.class public final Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;
.super Lcom/join/kotlin/ui/base/BasViewModleActivity;
.source "SourceFile"

# interfaces
.implements Lcom/join/kotlin/ui/notice/ClickProxy;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0012\u0010\u000f\u001a\u00020\u000c2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0014J\u0010\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u000cH\u0014J\u0008\u0010\u0016\u001a\u00020\u000cH\u0016J\u0008\u0010\u0017\u001a\u00020\u000cH\u0014R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;",
        "Lcom/join/kotlin/ui/base/BasViewModleActivity;",
        "Lcom/join/kotlin/ui/notice/ClickProxy;",
        "<init>",
        "()V",
        "viewModle",
        "Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;",
        "getViewModle",
        "()Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;",
        "setViewModle",
        "(Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;)V",
        "initViewModel",
        "",
        "getDataBindingConfig",
        "Lcom/join/kotlin/ui/base/DataBindingConfig;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onClickItem",
        "data",
        "Lcom/join/mgps/dto/BTActivityBean;",
        "onPause",
        "onClickBack",
        "onDestroy",
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
.field public viewModle:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/ui/base/BasViewModleActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic l(Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;->onCreate$lambda$2(Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;Ljava/lang/Integer;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;->onCreate$lambda$0(Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;Ljava/lang/Integer;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final onCreate$lambda$0(Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;Ljava/lang/Integer;)Lkotlin/Unit;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/4 v0, 0x1

    .line 9
    if-ne p1, v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 12
    .line 13
    .line 14
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method

.method private static final onCreate$lambda$2(Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/join/kotlin/ui/base/BasViewModleActivity;->getViewBinding()Landroidx/databinding/ViewDataBinding;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    check-cast p0, Lcom/join/android/app/mgsim/wufun/databinding/nw0;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/join/android/app/mgsim/wufun/databinding/nw0;->c:Landroid/widget/TextView;

    .line 18
    .line 19
    invoke-static {p0}, Lr7/a;->b(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0
.end method


# virtual methods
.method public getDataBindingConfig()Lcom/join/kotlin/ui/base/DataBindingConfig;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/base/DataBindingConfig;

    .line 2
    .line 3
    const/16 v1, 0x32

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;->getViewModle()Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const v3, 0x7f0d0884

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v3, v1, v2}, Lcom/join/kotlin/ui/base/DataBindingConfig;-><init>(IILandroidx/lifecycle/ViewModel;)V

    .line 13
    .line 14
    .line 15
    const/16 v1, 0x8

    .line 16
    .line 17
    invoke-virtual {v0, v1, p0}, Lcom/join/kotlin/ui/base/DataBindingConfig;->addBindingParam(ILjava/lang/Object;)Lcom/join/kotlin/ui/base/DataBindingConfig;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public final getViewModle()Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;->viewModle:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "viewModle"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public initViewModel()V
    .locals 1

    .line 1
    const-class v0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/base/BasViewModleActivity;->getActivityScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;->setViewModle(Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onClickBack()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;->getViewModle()Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->setBreakCodeCountDown(Z)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onClickItem(Lcom/join/mgps/dto/BTActivityBean;)V
    .locals 2
    .param p1    # Lcom/join/mgps/dto/BTActivityBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lkotlin/NotImplementedError;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "An operation is not implemented: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, "Not yet implemented"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-direct {p1, v0}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/join/kotlin/ui/base/BasViewModleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "type"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0}, Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;->getViewModle()Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->setPlatform(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    if-eqz p1, :cond_6

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const v1, -0x553b4e9e

    .line 32
    .line 33
    .line 34
    if-eq v0, v1, :cond_4

    .line 35
    .line 36
    const v1, -0xb52f41c

    .line 37
    .line 38
    .line 39
    if-eq v0, v1, :cond_2

    .line 40
    .line 41
    const v1, 0x581604d9

    .line 42
    .line 43
    .line 44
    if-eq v0, v1, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const-string v0, "WB_OPENID"

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-nez p1, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;->getViewModle()Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->getTitle()Landroidx/lifecycle/MutableLiveData;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    const-string v0, "\u89e3\u7ed1\u5fae\u535a"

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    const-string v0, "QQ_OPENID"

    .line 71
    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-nez p1, :cond_3

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    invoke-virtual {p0}, Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;->getViewModle()Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->getTitle()Landroidx/lifecycle/MutableLiveData;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    const-string v0, "\u89e3\u7ed1QQ"

    .line 88
    .line 89
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_4
    const-string v0, "WEIXIN_OPENID"

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-nez p1, :cond_5

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_5
    invoke-virtual {p0}, Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;->getViewModle()Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p1}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->getTitle()Landroidx/lifecycle/MutableLiveData;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    const-string v0, "\u89e3\u7ed1\u5fae\u4fe1"

    .line 111
    .line 112
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    :cond_6
    :goto_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p0}, Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;->getViewModle()Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {v0}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->getAccount()Landroidx/lifecycle/MutableLiveData;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    const-string v2, "\u4f60\u7684\u5e10\u53f7\u4e3a\uff1a "

    .line 137
    .line 138
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccount()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;->getViewModle()Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {v0}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->getMoble()Landroidx/lifecycle/MutableLiveData;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getMobile()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0}, Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;->getViewModle()Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getMobile()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {v0, p1}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->setMobleNumber(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0}, Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;->getViewModle()Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-virtual {p1, p0}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->sendsmsCode(Landroid/content/Context;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0}, Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;->getViewModle()Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-virtual {p1}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->getCallStatus()Landroidx/lifecycle/MutableLiveData;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    new-instance v0, Lcom/join/kotlin/ui/account/a;

    .line 197
    .line 198
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/account/a;-><init>(Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;)V

    .line 199
    .line 200
    .line 201
    new-instance v1, Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity$sam$androidx_lifecycle_Observer$0;

    .line 202
    .line 203
    invoke-direct {v1, v0}, Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0}, Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;->getViewModle()Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    invoke-virtual {p1}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->getHidesoftWard()Landroidx/lifecycle/MutableLiveData;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    new-instance v0, Lcom/join/kotlin/ui/account/b;

    .line 218
    .line 219
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/account/b;-><init>(Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;)V

    .line 220
    .line 221
    .line 222
    new-instance v1, Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity$sam$androidx_lifecycle_Observer$0;

    .line 223
    .line 224
    invoke-direct {v1, v0}, Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 228
    .line 229
    .line 230
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;->getViewModle()Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->setBreakCodeCountDown(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final setViewModle(Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;->viewModle:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    .line 7
    .line 8
    return-void
.end method
