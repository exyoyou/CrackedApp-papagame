.class Lcom/join/mgps/activity/MGMainActivity$l0$a;
.super Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGMainActivity$l0;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/MGMainActivity$l0;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGMainActivity$l0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$l0$a;->a:Lcom/join/mgps/activity/MGMainActivity$l0;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onGetMobileNumberError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "s",
            "s1"
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    sput-boolean p1, Lcom/MApplication;->r1:Z

    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$l0$a;->a:Lcom/join/mgps/activity/MGMainActivity$l0;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/join/mgps/activity/MGMainActivity$l0;->c:Lcom/join/mgps/activity/MGMainActivity;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/join/mgps/activity/MGMainActivity;->access$2400(Lcom/join/mgps/activity/MGMainActivity;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-lez p1, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$l0$a;->a:Lcom/join/mgps/activity/MGMainActivity$l0;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/join/mgps/activity/MGMainActivity$l0;->c:Lcom/join/mgps/activity/MGMainActivity;

    .line 17
    .line 18
    iget-object p2, p1, Lcom/join/mgps/activity/MGMainActivity;->mHandler:Landroid/os/Handler;

    .line 19
    .line 20
    if-nez p2, :cond_0

    .line 21
    .line 22
    new-instance p2, Landroid/os/Handler;

    .line 23
    .line 24
    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p2, p1, Lcom/join/mgps/activity/MGMainActivity;->mHandler:Landroid/os/Handler;

    .line 28
    .line 29
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$l0$a;->a:Lcom/join/mgps/activity/MGMainActivity$l0;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/join/mgps/activity/MGMainActivity$l0;->c:Lcom/join/mgps/activity/MGMainActivity;

    .line 32
    .line 33
    iget-object p2, p1, Lcom/join/mgps/activity/MGMainActivity;->mHandler:Landroid/os/Handler;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/join/mgps/activity/MGMainActivity;->preloginRunnable:Lcom/join/mgps/activity/MGMainActivity$u0;

    .line 36
    .line 37
    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method public onGetMobileNumberSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "s",
            "s1"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$l0$a;->a:Lcom/join/mgps/activity/MGMainActivity$l0;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/MGMainActivity$l0;->c:Lcom/join/mgps/activity/MGMainActivity;

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-static {p1, v0, v1}, Lcom/join/mgps/activity/MGMainActivity;->access$2602(Lcom/join/mgps/activity/MGMainActivity;J)J

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    sput-boolean p1, Lcom/MApplication;->r1:Z

    .line 14
    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$l0$a;->a:Lcom/join/mgps/activity/MGMainActivity$l0;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/join/mgps/activity/MGMainActivity$l0;->a(Lcom/join/mgps/activity/MGMainActivity$l0;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$l0$a;->a:Lcom/join/mgps/activity/MGMainActivity$l0;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/join/mgps/activity/MGMainActivity$l0;->c:Lcom/join/mgps/activity/MGMainActivity;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/join/mgps/activity/MGMainActivity;->goToOnekeyLogin()V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method
