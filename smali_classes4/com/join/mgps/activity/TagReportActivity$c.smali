.class Lcom/join/mgps/activity/TagReportActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/TagReportActivity;->createAndAddTag(Lcom/join/mgps/dto/GameTagsBean;Lcom/join/mgps/customview/FlowLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/GameTagsBean;

.field final synthetic c:Lcom/join/mgps/activity/TagReportActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/TagReportActivity;Lcom/join/mgps/dto/GameTagsBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$gameTag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/TagReportActivity$c;->c:Lcom/join/mgps/activity/TagReportActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/TagReportActivity$c;->b:Lcom/join/mgps/dto/GameTagsBean;

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
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/TagReportActivity$c;->c:Lcom/join/mgps/activity/TagReportActivity;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/TagReportActivity;->fl_tag_all:Lcom/join/mgps/customview/FlowLayout;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/TagReportActivity$c;->c:Lcom/join/mgps/activity/TagReportActivity;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/join/mgps/activity/TagReportActivity;->reasonTags:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/join/mgps/dto/GameTagsBean;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/GameTagsBean;->setChecked(Z)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/join/mgps/activity/TagReportActivity$c;->b:Lcom/join/mgps/dto/GameTagsBean;

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/GameTagsBean;->setChecked(Z)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/join/mgps/activity/TagReportActivity$c;->c:Lcom/join/mgps/activity/TagReportActivity;

    .line 39
    .line 40
    iget-object v2, v1, Lcom/join/mgps/activity/TagReportActivity;->fl_tag_all:Lcom/join/mgps/customview/FlowLayout;

    .line 41
    .line 42
    invoke-static {v1, v0, v2}, Lcom/join/mgps/activity/TagReportActivity;->access$000(Lcom/join/mgps/activity/TagReportActivity;Lcom/join/mgps/dto/GameTagsBean;Lcom/join/mgps/customview/FlowLayout;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    return-void
.end method
