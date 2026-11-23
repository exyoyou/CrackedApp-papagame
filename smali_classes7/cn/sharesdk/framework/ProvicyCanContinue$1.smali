.class Lcn/sharesdk/framework/ProvicyCanContinue$1;
.super Lcom/mob/OperationCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/framework/ProvicyCanContinue;->a(Lcn/sharesdk/framework/ProvicyCanContinue$OnBusinessListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/OperationCallback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/ProvicyCanContinue$OnBusinessListener;

.field final synthetic b:Lcn/sharesdk/framework/ProvicyCanContinue;


# direct methods
.method constructor <init>(Lcn/sharesdk/framework/ProvicyCanContinue;Lcn/sharesdk/framework/ProvicyCanContinue$OnBusinessListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/framework/ProvicyCanContinue$1;->b:Lcn/sharesdk/framework/ProvicyCanContinue;

    .line 2
    .line 3
    iput-object p2, p0, Lcn/sharesdk/framework/ProvicyCanContinue$1;->a:Lcn/sharesdk/framework/ProvicyCanContinue$OnBusinessListener;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/mob/OperationCallback;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Boolean;)V
    .locals 5

    .line 2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canIContinueBusiness: onComplete(), "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "ShareSDK"

    invoke-virtual {v0, v3, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcn/sharesdk/framework/ProvicyCanContinue$1;->a:Lcn/sharesdk/framework/ProvicyCanContinue$OnBusinessListener;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Lcn/sharesdk/framework/ProvicyCanContinue$OnBusinessListener;->onContinue()V

    .line 6
    :cond_0
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "MobSDK.canIContinueBusiness if "

    aput-object v1, v0, v4

    invoke-virtual {p1, v3, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcn/sharesdk/framework/ProvicyCanContinue$1;->a:Lcn/sharesdk/framework/ProvicyCanContinue$OnBusinessListener;

    if-eqz p1, :cond_2

    .line 8
    invoke-interface {p1}, Lcn/sharesdk/framework/ProvicyCanContinue$OnBusinessListener;->onStop()V

    .line 9
    :cond_2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "MobSDK.canIContinueBusiness else "

    aput-object v1, v0, v4

    invoke-virtual {p1, v3, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcn/sharesdk/framework/ProvicyCanContinue$1;->onComplete(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v3, "canIContinueBusiness: onFailure() "

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const/4 v3, 0x0

    .line 26
    aput-object v2, v1, v3

    .line 27
    .line 28
    const-string v2, "ShareSDK"

    .line 29
    .line 30
    invoke-virtual {v0, v2, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcn/sharesdk/framework/ProvicyCanContinue$1;->a:Lcn/sharesdk/framework/ProvicyCanContinue$OnBusinessListener;

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    invoke-interface {v0, p1}, Lcn/sharesdk/framework/ProvicyCanContinue$OnBusinessListener;->onError(Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method
