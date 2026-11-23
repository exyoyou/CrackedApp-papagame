.class Lcom/join/mgps/adapter/x4$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/x4;->k(Lcom/join/mgps/adapter/x4$m;Lcom/join/mgps/dto/PaPaBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/StandAloneListBean$ListBean;

.field final synthetic c:Lcom/join/mgps/adapter/x4;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/x4;Lcom/join/mgps/dto/StandAloneListBean$ListBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/x4$b;->c:Lcom/join/mgps/adapter/x4;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/x4$b;->b:Lcom/join/mgps/dto/StandAloneListBean$ListBean;

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
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/x4$b;->c:Lcom/join/mgps/adapter/x4;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/adapter/x4;->b(Lcom/join/mgps/adapter/x4;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/join/mgps/activity/TagGameListActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/TagGameListActivity_$q;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/TagGameListActivity_$q;->b(I)Lcom/join/mgps/activity/TagGameListActivity_$q;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/TagGameListActivity_$q;->c(Z)Lcom/join/mgps/activity/TagGameListActivity_$q;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object v0, p0, Lcom/join/mgps/adapter/x4$b;->b:Lcom/join/mgps/dto/StandAloneListBean$ListBean;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/join/mgps/dto/StandAloneListBean$ListBean;->getTitle()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/TagGameListActivity_$q;->d(Ljava/lang/String;)Lcom/join/mgps/activity/TagGameListActivity_$q;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object v0, p0, Lcom/join/mgps/adapter/x4$b;->b:Lcom/join/mgps/dto/StandAloneListBean$ListBean;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/join/mgps/dto/StandAloneListBean$ListBean;->getId()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/TagGameListActivity_$q;->e(I)Lcom/join/mgps/activity/TagGameListActivity_$q;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 46
    .line 47
    .line 48
    return-void
.end method
