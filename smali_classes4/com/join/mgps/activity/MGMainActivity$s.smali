.class Lcom/join/mgps/activity/MGMainActivity$s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGMainActivity;->showAdVipMainDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/MGMainActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGMainActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$s;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$s;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/MGMainActivity;->access$200(Lcom/join/mgps/activity/MGMainActivity;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$s;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 14
    .line 15
    const-string v0, ""

    .line 16
    .line 17
    invoke-static {p1, v0}, Lcom/join/mgps/activity/MGMainActivity;->access$2102(Lcom/join/mgps/activity/MGMainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$s;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 21
    .line 22
    const-string v0, "\u8bf7\u8054\u7f51\u540e\u91cd\u8bd5\uff01"

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/MGMainActivity;->showToast(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$s;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/join/mgps/activity/MGMainActivity;->access$2000(Lcom/join/mgps/activity/MGMainActivity;)Lcom/join/mgps/dialog/c;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$s;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-static {p1, v0}, Lcom/join/mgps/activity/MGMainActivity;->access$2002(Lcom/join/mgps/activity/MGMainActivity;Lcom/join/mgps/dialog/c;)Lcom/join/mgps/dialog/c;

    .line 41
    .line 42
    .line 43
    return-void
.end method
