.class Lcom/join/mgps/activity/CollectionModuleSixActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CollectionModuleSixActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/CollectionModuleSixActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CollectionModuleSixActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity$c;->b:Lcom/join/mgps/activity/CollectionModuleSixActivity;

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
            "adapterView",
            "view",
            "i",
            "l"
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
    add-int/lit8 p3, p3, -0x1

    .line 2
    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity$c;->b:Lcom/join/mgps/activity/CollectionModuleSixActivity;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/join/mgps/activity/CollectionModuleSixActivity;->access$200(Lcom/join/mgps/activity/CollectionModuleSixActivity;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-ge p3, p1, :cond_1

    .line 14
    .line 15
    if-gez p3, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity$c;->b:Lcom/join/mgps/activity/CollectionModuleSixActivity;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/join/mgps/activity/CollectionModuleSixActivity;->access$200(Lcom/join/mgps/activity/CollectionModuleSixActivity;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    if-eqz p2, :cond_1

    .line 35
    .line 36
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    iget-object p3, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity$c;->b:Lcom/join/mgps/activity/CollectionModuleSixActivity;

    .line 41
    .line 42
    invoke-static {p3}, Lcom/join/mgps/activity/CollectionModuleSixActivity;->access$300(Lcom/join/mgps/activity/CollectionModuleSixActivity;)Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p2, p3, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    :goto_0
    return-void
.end method
