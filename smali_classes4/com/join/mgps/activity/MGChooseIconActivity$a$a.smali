.class Lcom/join/mgps/activity/MGChooseIconActivity$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGChooseIconActivity$a;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
.field final synthetic b:Lcom/join/mgps/activity/MGChooseIconActivity$a;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGChooseIconActivity$a;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/MGChooseIconActivity$a$a;->b:Lcom/join/mgps/activity/MGChooseIconActivity$a;

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
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity$a$a;->b:Lcom/join/mgps/activity/MGChooseIconActivity$a;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/join/mgps/activity/MGChooseIconActivity$a;->b:Lcom/join/mgps/activity/MGChooseIconActivity;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/join/mgps/activity/MGChooseIconActivity;->access$000(Lcom/join/mgps/activity/MGChooseIconActivity;)Landroid/content/Context;

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
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity$a$a;->b:Lcom/join/mgps/activity/MGChooseIconActivity$a;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/join/mgps/activity/MGChooseIconActivity$a;->b:Lcom/join/mgps/activity/MGChooseIconActivity;

    .line 26
    .line 27
    iget v0, v0, Lcom/join/mgps/activity/MGChooseIconActivity;->from:I

    .line 28
    .line 29
    const-string v1, "from"

    .line 30
    .line 31
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity$a$a;->b:Lcom/join/mgps/activity/MGChooseIconActivity$a;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/join/mgps/activity/MGChooseIconActivity$a;->b:Lcom/join/mgps/activity/MGChooseIconActivity;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/join/mgps/activity/MGChooseIconActivity;->access$000(Lcom/join/mgps/activity/MGChooseIconActivity;)Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-boolean v0, p1, Lcom/tbruyelle/rxpermissions2/b;->c:Z

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity$a$a;->b:Lcom/join/mgps/activity/MGChooseIconActivity$a;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/join/mgps/activity/MGChooseIconActivity$a;->b:Lcom/join/mgps/activity/MGChooseIconActivity;

    .line 54
    .line 55
    invoke-static {v0}, Lcom/join/mgps/activity/MGChooseIconActivity;->access$000(Lcom/join/mgps/activity/MGChooseIconActivity;)Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/join/mgps/activity/MGChooseIconActivity$a$a;->b:Lcom/join/mgps/activity/MGChooseIconActivity$a;

    .line 64
    .line 65
    iget-object v1, v1, Lcom/join/mgps/activity/MGChooseIconActivity$a;->b:Lcom/join/mgps/activity/MGChooseIconActivity;

    .line 66
    .line 67
    invoke-static {v1}, Lcom/join/mgps/activity/MGChooseIconActivity;->access$000(Lcom/join/mgps/activity/MGChooseIconActivity;)Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/g0;->Z(Landroid/content/Context;Lcom/tbruyelle/rxpermissions2/b;)V

    .line 72
    .line 73
    .line 74
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
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGChooseIconActivity$a$a;->a(Lcom/tbruyelle/rxpermissions2/b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
