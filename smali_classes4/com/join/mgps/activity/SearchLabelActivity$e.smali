.class Lcom/join/mgps/activity/SearchLabelActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SearchLabelActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/SearchLabelActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SearchLabelActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/SearchLabelActivity$e;->b:Lcom/join/mgps/activity/SearchLabelActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "view",
            "position",
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/SearchLabelActivity$e;->b:Lcom/join/mgps/activity/SearchLabelActivity;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/SearchLabelActivity;->h:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/join/mgps/dto/LabelBean;

    .line 10
    .line 11
    iget-object p2, p0, Lcom/join/mgps/activity/SearchLabelActivity$e;->b:Lcom/join/mgps/activity/SearchLabelActivity;

    .line 12
    .line 13
    iget p3, p2, Lcom/join/mgps/activity/SearchLabelActivity;->b:I

    .line 14
    .line 15
    const/4 p4, 0x1

    .line 16
    if-ne p3, p4, :cond_0

    .line 17
    .line 18
    invoke-static {p2}, Lcom/join/mgps/activity/label/MainLabelActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/label/MainLabelActivity_$q;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/dto/LabelBean;->getTag_id()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/label/MainLabelActivity_$q;->d(I)Lcom/join/mgps/activity/label/MainLabelActivity_$q;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance p2, Landroid/content/Intent;

    .line 35
    .line 36
    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string p3, "label"

    .line 40
    .line 41
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/join/mgps/activity/SearchLabelActivity$e;->b:Lcom/join/mgps/activity/SearchLabelActivity;

    .line 45
    .line 46
    const/4 p3, -0x1

    .line 47
    invoke-virtual {p1, p3, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/SearchLabelActivity$e;->b:Lcom/join/mgps/activity/SearchLabelActivity;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 53
    .line 54
    .line 55
    return-void
.end method
