.class Lcom/join/mgps/activity/MYAccountReginFinishActivity$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MYAccountReginFinishActivity$a;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/tbruyelle/rxpermissions2/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/MYAccountReginFinishActivity$a;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MYAccountReginFinishActivity$a;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity$a$a;->b:Lcom/join/mgps/activity/MYAccountReginFinishActivity$a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/tbruyelle/rxpermissions2/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "permission"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-boolean v0, p1, Lcom/tbruyelle/rxpermissions2/b;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance p1, Landroid/content/Intent;

    .line 6
    .line 7
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity$a$a;->b:Lcom/join/mgps/activity/MYAccountReginFinishActivity$a;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/join/mgps/activity/MYAccountReginFinishActivity$a;->b:Lcom/join/mgps/activity/MYAccountReginFinishActivity;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->access$000(Lcom/join/mgps/activity/MYAccountReginFinishActivity;)Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-class v1, Lcom/join/android/app/component/album/MyIconActivity;

    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity$a$a;->b:Lcom/join/mgps/activity/MYAccountReginFinishActivity$a;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/join/mgps/activity/MYAccountReginFinishActivity$a;->b:Lcom/join/mgps/activity/MYAccountReginFinishActivity;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->access$000(Lcom/join/mgps/activity/MYAccountReginFinishActivity;)Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-boolean p1, p1, Lcom/tbruyelle/rxpermissions2/b;->c:Z

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity$a$a;->b:Lcom/join/mgps/activity/MYAccountReginFinishActivity$a;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/join/mgps/activity/MYAccountReginFinishActivity$a;->b:Lcom/join/mgps/activity/MYAccountReginFinishActivity;

    .line 43
    .line 44
    invoke-static {p1}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->access$000(Lcom/join/mgps/activity/MYAccountReginFinishActivity;)Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string v0, "\u9700\u8981\u6388\u6743\u5b58\u50a8\u6743\u9650"

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "permission"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/tbruyelle/rxpermissions2/b;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MYAccountReginFinishActivity$a$a;->a(Lcom/tbruyelle/rxpermissions2/b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
