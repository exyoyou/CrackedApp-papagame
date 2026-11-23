.class Lcom/join/mgps/activity/SearchListActivity1$k$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SearchListActivity1$k;->e(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/SearchAutoDataBean;

.field final synthetic c:Lcom/join/mgps/activity/SearchListActivity1$k;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SearchListActivity1$k;Lcom/join/mgps/dto/SearchAutoDataBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$searchAutoDataBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1$k$b;->c:Lcom/join/mgps/activity/SearchListActivity1$k;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/SearchListActivity1$k$b;->b:Lcom/join/mgps/dto/SearchAutoDataBean;

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
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1$k$b;->c:Lcom/join/mgps/activity/SearchListActivity1$k;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/SearchListActivity1$k;->b(Lcom/join/mgps/activity/SearchListActivity1$k;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1$k$b;->b:Lcom/join/mgps/dto/SearchAutoDataBean;

    .line 8
    .line 9
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1$k$b;->c:Lcom/join/mgps/activity/SearchListActivity1$k;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/activity/SearchListActivity1$k;->notifyDataSetChanged()V

    .line 15
    .line 16
    .line 17
    return-void
.end method
