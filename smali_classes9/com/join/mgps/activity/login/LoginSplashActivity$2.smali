.class Lcom/join/mgps/activity/login/LoginSplashActivity$2;
.super Lcom/netease/nis/quicklogin/listener/LoginListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/login/LoginSplashActivity;->gotoOneKeyLogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/login/LoginSplashActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$2;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/listener/LoginListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDisagreePrivacy(Landroid/widget/TextView;Landroid/widget/Button;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "privacyTv",
            "btnLogin"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$2;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/login/LoginSplashActivity;->context:Landroid/content/Context;

    .line 4
    .line 5
    const-string p2, "\u8bf7\u70b9\u51fb\u540c\u610f\u9690\u79c1\u534f\u8bae"

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/16 p2, 0x11

    .line 13
    .line 14
    invoke-virtual {p1, p2, v0, v0}, Landroid/widget/Toast;->setGravity(III)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    return p1
.end method
