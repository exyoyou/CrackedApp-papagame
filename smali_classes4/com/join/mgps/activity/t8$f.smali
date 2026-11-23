.class Lcom/join/mgps/activity/t8$f;
.super Lm6/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/t8;->p(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/t8;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/t8;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/t8$f;->a:Lcom/join/mgps/activity/t8;

    .line 2
    .line 3
    invoke-direct {p0}, Lm6/d;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic e(Lcom/join/mgps/activity/t8$f;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/t8$f;->lambda$onEvent$0(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onEvent$0(Ljava/lang/String;)V
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
    iget-object p1, p0, Lcom/join/mgps/activity/t8$f;->a:Lcom/join/mgps/activity/t8;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Lcom/join/mgps/activity/FragmentPageActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/FragmentPageActivity_$b;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/FragmentPageActivity_$b;->b(I)Lcom/join/mgps/activity/FragmentPageActivity_$b;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string v1, "\u4e91\u73a9"

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/FragmentPageActivity_$b;->c(Ljava/lang/String;)Lcom/join/mgps/activity/FragmentPageActivity_$b;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/FragmentPageActivity_$b;->a(Landroid/os/Bundle;)Lcom/join/mgps/activity/FragmentPageActivity_$b;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 43
    .line 44
    .line 45
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
    new-instance p1, Lcom/join/mgps/event/f;

    .line 5
    .line 6
    sget-object v0, Lcom/join/mgps/enums/ApiName;->advertCfg:Lcom/join/mgps/enums/ApiName;

    .line 7
    .line 8
    invoke-direct {p1, v0}, Lcom/join/mgps/event/f;-><init>(Lcom/join/mgps/enums/ApiName;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onEvent(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 2
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
    if-ne p2, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x2

    .line 9
    if-ne p2, v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/t8$f;->a:Lcom/join/mgps/activity/t8;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/join/mgps/activity/t8;->R(Lcom/join/mgps/activity/t8;)Landroid/os/Handler;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    new-instance p2, Lcom/join/mgps/activity/u8;

    .line 21
    .line 22
    invoke-direct {p2, p0, p3}, Lcom/join/mgps/activity/u8;-><init>(Lcom/join/mgps/activity/t8$f;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-wide/16 v0, 0x190

    .line 26
    .line 27
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method
