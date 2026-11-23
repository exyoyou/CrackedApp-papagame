.class public final Lcom/join/kotlin/base/ext/GetViewModelExtKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u001a\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u001e\u0010\u0005\u001a\u0002H\u0002\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0006*\u00020\u0007H\u0086\u0008\u00a2\u0006\u0002\u0010\u0008\u001a\u001e\u0010\u0005\u001a\u0002H\u0002\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0006*\u00020\tH\u0086\u0008\u00a2\u0006\u0002\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "getVmClazz",
        "Ljava/lang/Class;",
        "VM",
        "obj",
        "",
        "getAppViewModel",
        "Lcom/join/kotlin/base/viewmodel/BaseViewModel;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "(Landroidx/appcompat/app/AppCompatActivity;)Lcom/join/kotlin/base/viewmodel/BaseViewModel;",
        "Landroidx/fragment/app/Fragment;",
        "(Landroidx/fragment/app/Fragment;)Lcom/join/kotlin/base/viewmodel/BaseViewModel;",
        "app_wufunNormalRelease"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic getAppViewModel(Landroidx/appcompat/app/AppCompatActivity;)Lcom/join/kotlin/base/viewmodel/BaseViewModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<VM:",
            "Lcom/join/kotlin/base/viewmodel/BaseViewModel;",
            ">(",
            "Landroidx/appcompat/app/AppCompatActivity;",
            ")TVM;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    instance-of v0, p0, Lcom/join/kotlin/base/BaseApp;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/join/kotlin/base/BaseApp;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/join/kotlin/base/BaseApp;->getAppViewModelProvider()Landroidx/lifecycle/ViewModelProvider;

    move-result-object p0

    const/4 v0, 0x4

    const-string v1, "VM"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    check-cast p0, Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    return-object p0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "\u4f60\u7684Application\u6ca1\u6709\u7ee7\u627f\u6846\u67b6\u81ea\u5e26\u7684BaseApp\u7c7b\uff0c\u6682\u65f6\u65e0\u6cd5\u4f7f\u7528getAppViewModel\u8be5\u65b9\u6cd5"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic getAppViewModel(Landroidx/fragment/app/Fragment;)Lcom/join/kotlin/base/viewmodel/BaseViewModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<VM:",
            "Lcom/join/kotlin/base/viewmodel/BaseViewModel;",
            ">(",
            "Landroidx/fragment/app/Fragment;",
            ")TVM;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    instance-of v0, p0, Lcom/join/kotlin/base/BaseApp;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/join/kotlin/base/BaseApp;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/join/kotlin/base/BaseApp;->getAppViewModelProvider()Landroidx/lifecycle/ViewModelProvider;

    move-result-object p0

    const/4 v0, 0x4

    const-string v1, "VM"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    check-cast p0, Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    return-object p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "\u4f60\u7684Application\u6ca1\u6709\u7ee7\u627f\u6846\u67b6\u81ea\u5e26\u7684BaseApp\u7c7b\uff0c\u6682\u65f6\u65e0\u6cd5\u4f7f\u7528getAppViewModel\u8be5\u65b9\u6cd5"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final getVmClazz(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<VM:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Class<",
            "TVM;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "obj"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string v0, "null cannot be cast to non-null type java.lang.reflect.ParameterizedType"

    .line 15
    .line 16
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const/4 v0, 0x0

    .line 26
    aget-object p0, p0, v0

    .line 27
    .line 28
    const-string v0, "null cannot be cast to non-null type java.lang.Class<VM of com.join.kotlin.base.ext.GetViewModelExtKt.getVmClazz>"

    .line 29
    .line 30
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    check-cast p0, Ljava/lang/Class;

    .line 34
    .line 35
    return-object p0
.end method
