.class Lcom/join/mgps/activity/MGMainActivity$g;
.super Lm6/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGMainActivity;->openWebPage(ILcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;

.field final synthetic c:Lcom/join/mgps/dto/ExtBean;

.field final synthetic d:Lcom/join/mgps/activity/MGMainActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGMainActivity;ILcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;Lcom/join/mgps/dto/ExtBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$step",
            "val$adCfgInfo",
            "val$extBean"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$g;->d:Lcom/join/mgps/activity/MGMainActivity;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/activity/MGMainActivity$g;->a:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/MGMainActivity$g;->b:Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/mgps/activity/MGMainActivity$g;->c:Lcom/join/mgps/dto/ExtBean;

    .line 8
    .line 9
    invoke-direct {p0}, Lm6/d;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static synthetic e(Lcom/join/mgps/activity/MGMainActivity$g;ILcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/MGMainActivity$g;->h(ILcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;)V

    return-void
.end method

.method public static synthetic f(Lcom/join/mgps/activity/MGMainActivity$g;ILcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/MGMainActivity$g;->i(ILcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;)V

    return-void
.end method

.method public static synthetic g(Lcom/join/mgps/activity/MGMainActivity$g;Ljava/lang/String;Lcom/join/mgps/dto/ExtBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/MGMainActivity$g;->j(Ljava/lang/String;Lcom/join/mgps/dto/ExtBean;)V

    return-void
.end method

.method private synthetic h(ILcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$g;->d:Lcom/join/mgps/activity/MGMainActivity;

    .line 2
    .line 3
    add-int/lit8 p1, p1, 0x1

    .line 4
    .line 5
    invoke-static {v0, p1, p2}, Lcom/join/mgps/activity/MGMainActivity;->access$1100(Lcom/join/mgps/activity/MGMainActivity;ILcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic i(ILcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$g;->d:Lcom/join/mgps/activity/MGMainActivity;

    .line 2
    .line 3
    add-int/lit8 p1, p1, 0x1

    .line 4
    .line 5
    invoke-static {v0, p1, p2}, Lcom/join/mgps/activity/MGMainActivity;->access$1100(Lcom/join/mgps/activity/MGMainActivity;ILcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic j(Ljava/lang/String;Lcom/join/mgps/dto/ExtBean;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const-string v1, "_sign_data"

    .line 13
    .line 14
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    const-string p1, "prentExtBean"

    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$g;->d:Lcom/join/mgps/activity/MGMainActivity;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/join/mgps/activity/FragmentPageActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/FragmentPageActivity_$b;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/4 p2, 0x1

    .line 33
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/FragmentPageActivity_$b;->b(I)Lcom/join/mgps/activity/FragmentPageActivity_$b;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string p2, "\u4e91\u73a9"

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/FragmentPageActivity_$b;->c(Ljava/lang/String;)Lcom/join/mgps/activity/FragmentPageActivity_$b;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/FragmentPageActivity_$b;->a(Landroid/os/Bundle;)Lcom/join/mgps/activity/FragmentPageActivity_$b;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 48
    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public onActivityDismiss(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lm6/d;->onActivityDismiss(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    iget p1, p0, Lcom/join/mgps/activity/MGMainActivity$g;->a:I

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-ne p1, v0, :cond_1

    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$g;->d:Lcom/join/mgps/activity/MGMainActivity;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/MGMainActivity;->checkSign(Z)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public onEvent(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "event",
            "jsonParams"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lm6/d;->onEvent(Landroid/app/Activity;ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    const-wide/16 v1, 0xc8

    .line 6
    .line 7
    if-ne p2, v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$g;->d:Lcom/join/mgps/activity/MGMainActivity;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/join/mgps/activity/MGMainActivity;->access$1000(Lcom/join/mgps/activity/MGMainActivity;)Landroid/os/Handler;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget p2, p0, Lcom/join/mgps/activity/MGMainActivity$g;->a:I

    .line 16
    .line 17
    iget-object p3, p0, Lcom/join/mgps/activity/MGMainActivity$g;->b:Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;

    .line 18
    .line 19
    new-instance v0, Lcom/join/mgps/activity/c7;

    .line 20
    .line 21
    invoke-direct {v0, p0, p2, p3}, Lcom/join/mgps/activity/c7;-><init>(Lcom/join/mgps/activity/MGMainActivity$g;ILcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x2

    .line 29
    if-ne p2, v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$g;->d:Lcom/join/mgps/activity/MGMainActivity;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/join/mgps/activity/MGMainActivity;->access$1000(Lcom/join/mgps/activity/MGMainActivity;)Landroid/os/Handler;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget p2, p0, Lcom/join/mgps/activity/MGMainActivity$g;->a:I

    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$g;->b:Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;

    .line 43
    .line 44
    new-instance v3, Lcom/join/mgps/activity/d7;

    .line 45
    .line 46
    invoke-direct {v3, p0, p2, v0}, Lcom/join/mgps/activity/d7;-><init>(Lcom/join/mgps/activity/MGMainActivity$g;ILcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$g;->d:Lcom/join/mgps/activity/MGMainActivity;

    .line 53
    .line 54
    invoke-static {p1}, Lcom/join/mgps/activity/MGMainActivity;->access$1000(Lcom/join/mgps/activity/MGMainActivity;)Landroid/os/Handler;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iget-object p2, p0, Lcom/join/mgps/activity/MGMainActivity$g;->c:Lcom/join/mgps/dto/ExtBean;

    .line 59
    .line 60
    new-instance v0, Lcom/join/mgps/activity/e7;

    .line 61
    .line 62
    invoke-direct {v0, p0, p3, p2}, Lcom/join/mgps/activity/e7;-><init>(Lcom/join/mgps/activity/MGMainActivity$g;Ljava/lang/String;Lcom/join/mgps/dto/ExtBean;)V

    .line 63
    .line 64
    .line 65
    const-wide/16 p2, 0x190

    .line 66
    .line 67
    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 68
    .line 69
    .line 70
    :cond_1
    :goto_0
    return-void
.end method
