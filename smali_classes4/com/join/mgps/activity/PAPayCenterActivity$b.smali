.class Lcom/join/mgps/activity/PAPayCenterActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/PAPayCenterActivity;->afterview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/PAPayCenterActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/PAPayCenterActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/PAPayCenterActivity$b;->b:Lcom/join/mgps/activity/PAPayCenterActivity;

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
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string p2, "click position"

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p1}, Lcom/join/mgps/Util/g1;->c(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 p3, p3, -0x2

    .line 22
    .line 23
    if-gez p3, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/activity/PAPayCenterActivity$b;->b:Lcom/join/mgps/activity/PAPayCenterActivity;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/join/mgps/activity/PAPayCenterActivity;->papayHistoryItems:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lcom/join/mgps/dto/PapayHistoryInfo;

    .line 35
    .line 36
    iget-object p2, p0, Lcom/join/mgps/activity/PAPayCenterActivity$b;->b:Lcom/join/mgps/activity/PAPayCenterActivity;

    .line 37
    .line 38
    iget-object p2, p2, Lcom/join/mgps/activity/PAPayCenterActivity;->context:Landroid/content/Context;

    .line 39
    .line 40
    invoke-static {p2}, Lcom/join/mgps/activity/PapayPayDetialActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/PapayPayDetialActivity_$b;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/PapayPayDetialActivity_$b;->a(Lcom/join/mgps/dto/PapayHistoryInfo;)Lcom/join/mgps/activity/PapayPayDetialActivity_$b;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p1

    .line 53
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void
.end method
