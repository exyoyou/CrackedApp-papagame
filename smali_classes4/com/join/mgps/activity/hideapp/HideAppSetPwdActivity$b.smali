.class Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/dialog/c1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->showConfirmDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity$b;->a:Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pwd"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity$b;->a:Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;

    .line 2
    .line 3
    iget v1, v0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->hideType:I

    .line 4
    .line 5
    const/16 v2, 0x64

    .line 6
    .line 7
    if-ne v1, v2, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->hide_app_pwd()Lorg/androidannotations/api/sharedpreferences/p;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity$b;->a:Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;

    .line 19
    .line 20
    const-string v0, "\u91cd\u7f6e\u5bc6\u7801\u6210\u529f"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->showMessage(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity$b;->a:Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    invoke-static {v0, p1}, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->access$300(Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity$b;->a:Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->access$200(Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
