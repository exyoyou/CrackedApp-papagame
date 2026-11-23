.class Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/base/BaseQuickAdapter$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->initKeyBoard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$keys"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity$a;->b:Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity$a;->a:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "adapter",
            "view",
            "position"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity$a;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/String;

    .line 8
    .line 9
    const-string p2, "."

    .line 10
    .line 11
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const-string p2, "\u00d7"

    .line 19
    .line 20
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity$a;->b:Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->access$000(Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity$a;->b:Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;

    .line 33
    .line 34
    invoke-static {p2, p1}, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->access$100(Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method
