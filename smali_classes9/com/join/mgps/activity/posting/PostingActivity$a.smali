.class Lcom/join/mgps/activity/posting/PostingActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/activity/posting/PostingActivity$m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/posting/PostingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/join/mgps/activity/posting/PostingActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/posting/PostingActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$a;->f:Lcom/join/mgps/activity/posting/PostingActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    int-to-long v0, p1

    .line 2
    iget-object v2, p0, Lcom/join/mgps/activity/posting/PostingActivity$a;->f:Lcom/join/mgps/activity/posting/PostingActivity;

    .line 3
    .line 4
    iget-object v2, v2, Lcom/join/mgps/activity/posting/PostingActivity;->accountUtil:Lcom/join/mgps/Util/b;

    .line 5
    .line 6
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getPapaMoney()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    cmp-long v4, v0, v2

    .line 15
    .line 16
    if-lez v4, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$a;->f:Lcom/join/mgps/activity/posting/PostingActivity;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v0, "\u5f53\u524d\u94dc\u677f\u6570\u4e0d\u8db3!"

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity$a;->f:Lcom/join/mgps/activity/posting/PostingActivity;

    .line 31
    .line 32
    invoke-static {v0, p1}, Lcom/join/mgps/activity/posting/PostingActivity;->access$202(Lcom/join/mgps/activity/posting/PostingActivity;I)I

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity$a;->f:Lcom/join/mgps/activity/posting/PostingActivity;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/join/mgps/activity/posting/PostingActivity;->tv_coins:Landroid/widget/TextView;

    .line 38
    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v2, "\u60ac\u8d4f\u94dc\u677f\u6570\uff1a<font color=#000000>"

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p1, "</font>"

    .line 53
    .line 54
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public b(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    const/16 v0, 0x1103

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x1104

    .line 6
    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$a;->f:Lcom/join/mgps/activity/posting/PostingActivity;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$a;->f:Lcom/join/mgps/activity/posting/PostingActivity;

    .line 16
    .line 17
    sget-object v0, Lcom/join/mgps/rpc/h;->s:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/posting/PostingActivity;->goShareActivity(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$a;->f:Lcom/join/mgps/activity/posting/PostingActivity;

    .line 24
    .line 25
    sget-object v0, Lcom/join/mgps/rpc/h;->t:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/posting/PostingActivity;->goShareActivity(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method

.method public c(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    const-class v1, Lcom/join/mgps/activity/GameSearchFavoriteActivity_;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    new-instance p1, Landroid/content/Intent;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/join/mgps/activity/posting/PostingActivity$a;->f:Lcom/join/mgps/activity/posting/PostingActivity;

    .line 12
    .line 13
    invoke-direct {p1, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity$a;->f:Lcom/join/mgps/activity/posting/PostingActivity;

    .line 21
    .line 22
    const/16 v1, 0x1102

    .line 23
    .line 24
    invoke-virtual {v0, p1, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/join/mgps/activity/posting/PostingActivity$a;->f:Lcom/join/mgps/activity/posting/PostingActivity;

    .line 31
    .line 32
    invoke-direct {p1, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x2

    .line 36
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity$a;->f:Lcom/join/mgps/activity/posting/PostingActivity;

    .line 40
    .line 41
    const/16 v1, 0x1101

    .line 42
    .line 43
    invoke-virtual {v0, p1, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :pswitch_2
    new-instance p1, Landroid/content/Intent;

    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity$a;->f:Lcom/join/mgps/activity/posting/PostingActivity;

    .line 50
    .line 51
    const-class v1, Lcom/join/mgps/activity/LocalGameActivity_;

    .line 52
    .line 53
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity$a;->f:Lcom/join/mgps/activity/posting/PostingActivity;

    .line 57
    .line 58
    const/16 v1, 0x1100

    .line 59
    .line 60
    invoke-virtual {v0, p1, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 61
    .line 62
    .line 63
    :goto_0
    return-void

    .line 64
    nop

    .line 65
    :pswitch_data_0
    .packed-switch 0x1100
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$a;->f:Lcom/join/mgps/activity/posting/PostingActivity;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(Lcom/join/mgps/dto/GroupInfoBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupInfoBean"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity$a;->f:Lcom/join/mgps/activity/posting/PostingActivity;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/join/mgps/activity/posting/PostingActivity;->access$502(Lcom/join/mgps/activity/posting/PostingActivity;Lcom/join/mgps/dto/GroupInfoBean;)Lcom/join/mgps/dto/GroupInfoBean;

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$a;->f:Lcom/join/mgps/activity/posting/PostingActivity;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/join/mgps/activity/posting/PostingActivity;->access$500(Lcom/join/mgps/activity/posting/PostingActivity;)Lcom/join/mgps/dto/GroupInfoBean;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/dto/GroupInfoBean;->getName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/activity/posting/PostingActivity;->updatePostingGroup(Ljava/lang/String;Z)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
