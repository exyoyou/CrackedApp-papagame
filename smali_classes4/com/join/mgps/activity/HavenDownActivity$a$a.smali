.class Lcom/join/mgps/activity/HavenDownActivity$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/HavenDownActivity$a;->c(Lcom/join/mgps/activity/HavenDownActivity$b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/HavenForumListbean;

.field final synthetic c:Lcom/join/mgps/activity/HavenDownActivity$a;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/HavenDownActivity$a;Lcom/join/mgps/dto/HavenForumListbean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$bean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/HavenDownActivity$a$a;->c:Lcom/join/mgps/activity/HavenDownActivity$a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/HavenDownActivity$a$a;->b:Lcom/join/mgps/dto/HavenForumListbean;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/HavenDownActivity$a$a;->c:Lcom/join/mgps/activity/HavenDownActivity$a;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/HavenDownActivity$a;->e:Lcom/join/mgps/activity/HavenDownActivity;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/join/mgps/activity/HavenDownActivity;->context:Landroid/content/Context;

    .line 6
    .line 7
    const-string v0, "onSourceH5"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/join/kotlin/utils/extention/MobclickAgentKt;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/HavenDownActivity$a$a;->c:Lcom/join/mgps/activity/HavenDownActivity$a;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/join/mgps/activity/HavenDownActivity$a;->e:Lcom/join/mgps/activity/HavenDownActivity;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/join/mgps/activity/HavenDownActivity;->context:Landroid/content/Context;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/join/mgps/activity/HavenDownActivity$a$a;->b:Lcom/join/mgps/dto/HavenForumListbean;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/join/mgps/dto/HavenForumListbean;->getResourceUrl()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
