.class Lcom/join/mgps/adapter/x1$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/x1;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/TipBean;

.field final synthetic c:Lcom/join/mgps/adapter/x1;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/x1;Lcom/join/mgps/dto/TipBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$tipBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$d;->c:Lcom/join/mgps/adapter/x1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/x1$d;->b:Lcom/join/mgps/dto/TipBean;

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
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/x1$d;->c:Lcom/join/mgps/adapter/x1;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/adapter/x1;->g(Lcom/join/mgps/adapter/x1;)Landroid/content/Context;

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
    const/4 v0, 0x2

    .line 12
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/TagGameListActivity_$q;->b(I)Lcom/join/mgps/activity/TagGameListActivity_$q;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object v0, p0, Lcom/join/mgps/adapter/x1$d;->b:Lcom/join/mgps/dto/TipBean;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/TagGameListActivity_$q;->d(Ljava/lang/String;)Lcom/join/mgps/activity/TagGameListActivity_$q;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object v0, p0, Lcom/join/mgps/adapter/x1$d;->b:Lcom/join/mgps/dto/TipBean;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/TagGameListActivity_$q;->e(I)Lcom/join/mgps/activity/TagGameListActivity_$q;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string v0, "2"

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/TagGameListActivity_$q;->f(Ljava/lang/String;)Lcom/join/mgps/activity/TagGameListActivity_$q;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 47
    .line 48
    .line 49
    return-void
.end method
