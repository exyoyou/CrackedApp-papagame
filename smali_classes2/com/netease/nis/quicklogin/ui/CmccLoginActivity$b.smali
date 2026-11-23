.class Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;


# direct methods
.method constructor <init>(Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$b;->a:Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;

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
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$b;->a:Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1, v0, v1}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->a(Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;II)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->n()Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-static {}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->n()Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;->onCancelGetToken()V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$b;->a:Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->finish()V

    .line 24
    .line 25
    .line 26
    return-void
.end method
