.class Lcom/join/mgps/activity/GameInformationActivityV2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/activity/GameInformationActivityV2$p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameInformationActivityV2;->afterview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GameInformationActivityV2;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameInformationActivityV2;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$b;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/dto/InformationCommentBeanV2;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sub"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/InformationCommentBeanV2;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/InformationCommentBeanV2;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getCommentId()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/InformationCommentBeanV2;->setCommentId(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getUid()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/InformationCommentBeanV2;->setUid(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getNickname()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/InformationCommentBeanV2;->setNickname(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$b;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/join/mgps/activity/GameInformationActivityV2;->access$000(Lcom/join/mgps/activity/GameInformationActivityV2;)Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p1}, Lcom/join/mgps/activity/GameInformationCommentActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/GameInformationCommentActivity_$v;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$b;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 38
    .line 39
    iget-object v1, v1, Lcom/join/mgps/activity/GameInformationActivityV2;->info_id:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/GameInformationCommentActivity_$v;->b(Ljava/lang/String;)Lcom/join/mgps/activity/GameInformationCommentActivity_$v;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/GameInformationCommentActivity_$v;->a(Lcom/join/mgps/dto/InformationCommentBeanV2;)Lcom/join/mgps/activity/GameInformationCommentActivity_$v;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public b(Lcom/join/mgps/dto/InformationCommentBeanV2;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getPraise()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$b;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/join/mgps/activity/GameInformationActivityV2;->access$000(Lcom/join/mgps/activity/GameInformationActivityV2;)Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v0, "\u4f60\u5df2\u8d5e\u8fc7"

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$b;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0, p1, v1, v1}, Lcom/join/mgps/activity/GameInformationActivityV2;->sendParesed(Lcom/join/mgps/dto/InformationCommentBeanV2;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public c(Lcom/join/mgps/dto/InformationCommentBeanV2;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commitDataBean"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$b;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/GameInformationActivityV2;->access$000(Lcom/join/mgps/activity/GameInformationActivityV2;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/join/mgps/activity/GameInformationCommentActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/GameInformationCommentActivity_$v;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$b;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/join/mgps/activity/GameInformationActivityV2;->info_id:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/GameInformationCommentActivity_$v;->b(Ljava/lang/String;)Lcom/join/mgps/activity/GameInformationCommentActivity_$v;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/GameInformationCommentActivity_$v;->a(Lcom/join/mgps/dto/InformationCommentBeanV2;)Lcom/join/mgps/activity/GameInformationCommentActivity_$v;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$b;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/activity/GameInformationActivityV2;->updateHight()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
