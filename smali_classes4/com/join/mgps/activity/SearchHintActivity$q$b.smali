.class Lcom/join/mgps/activity/SearchHintActivity$q$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SearchHintActivity$q;->e(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/join/mgps/dto/SearchAutoDataBean;

.field final synthetic d:Lcom/join/mgps/activity/SearchHintActivity$q;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SearchHintActivity$q;Ljava/lang/String;Lcom/join/mgps/dto/SearchAutoDataBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$name",
            "val$searchAutoDataBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$q$b;->d:Lcom/join/mgps/activity/SearchHintActivity$q;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity$q$b;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/SearchHintActivity$q$b;->c:Lcom/join/mgps/dto/SearchAutoDataBean;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
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
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$q$b;->d:Lcom/join/mgps/activity/SearchHintActivity$q;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/SearchHintActivity$q;->e:Lcom/join/mgps/activity/SearchHintActivity;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity$q$b;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/SearchHintActivity;->deleteRecordBean(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$q$b;->d:Lcom/join/mgps/activity/SearchHintActivity$q;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/join/mgps/activity/SearchHintActivity$q;->a(Lcom/join/mgps/activity/SearchHintActivity$q;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity$q$b;->c:Lcom/join/mgps/dto/SearchAutoDataBean;

    .line 17
    .line 18
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$q$b;->d:Lcom/join/mgps/activity/SearchHintActivity$q;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/activity/SearchHintActivity$q;->notifyDataSetChanged()V

    .line 24
    .line 25
    .line 26
    return-void
.end method
