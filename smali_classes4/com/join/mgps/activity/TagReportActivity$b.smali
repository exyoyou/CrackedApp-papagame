.class Lcom/join/mgps/activity/TagReportActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/papa91/arc/interfaces/IOnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/TagReportActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/TagReportActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/TagReportActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/TagReportActivity$b;->a:Lcom/join/mgps/activity/TagReportActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity$b;->a:Lcom/join/mgps/activity/TagReportActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/TagReportActivity;->reasons:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/join/mgps/dto/TagReportReasonBean;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/TagReportReasonBean;->setChecked(Z)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity$b;->a:Lcom/join/mgps/activity/TagReportActivity;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/join/mgps/activity/TagReportActivity;->reasons:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lcom/join/mgps/dto/TagReportReasonBean;

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/TagReportReasonBean;->setChecked(Z)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/join/mgps/activity/TagReportActivity$b;->a:Lcom/join/mgps/activity/TagReportActivity;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/join/mgps/activity/TagReportActivity;->reasonAdapter:Lcom/papa91/arc/adapter/SimpleBaseAdapter;

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 45
    .line 46
    .line 47
    return-void
.end method
