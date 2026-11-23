.class Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;


# direct methods
.method constructor <init>(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$a;->a:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

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
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$a;->a:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1, v0, v1}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->a(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;II)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$a;->a:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->a(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$a;->a:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->a(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;->onCancelGetToken()V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$a;->a:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->finish()V

    .line 28
    .line 29
    .line 30
    return-void
.end method
