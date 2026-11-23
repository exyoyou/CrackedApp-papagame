.class Lcom/join/mgps/activity/HavenDownActivity$a$b;
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
    iput-object p1, p0, Lcom/join/mgps/activity/HavenDownActivity$a$b;->c:Lcom/join/mgps/activity/HavenDownActivity$a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/HavenDownActivity$a$b;->b:Lcom/join/mgps/dto/HavenForumListbean;

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
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/HavenDownActivity$a$b;->c:Lcom/join/mgps/activity/HavenDownActivity$a;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/join/mgps/activity/HavenDownActivity$a;->e:Lcom/join/mgps/activity/HavenDownActivity;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/join/mgps/activity/HavenDownActivity;->context:Landroid/content/Context;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lcom/join/mgps/activity/HavenDownActivity$a$b;->b:Lcom/join/mgps/dto/HavenForumListbean;

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/join/mgps/dto/HavenForumListbean;->getPid()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, ""

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goFormDetial(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
