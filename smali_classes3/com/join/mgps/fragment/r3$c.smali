.class Lcom/join/mgps/fragment/r3$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/r3;->afterviews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/fragment/r3;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/r3;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/r3$c;->b:Lcom/join/mgps/fragment/r3;

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
    iget-object p1, p0, Lcom/join/mgps/fragment/r3$c;->b:Lcom/join/mgps/fragment/r3;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/fragment/r3;->l:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-gt p3, p1, :cond_2

    .line 10
    .line 11
    if-gez p3, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/r3$c;->b:Lcom/join/mgps/fragment/r3;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/join/mgps/fragment/r3;->l:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Ll6/a;

    .line 23
    .line 24
    invoke-virtual {p1}, Ll6/a;->d()I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    const/4 p4, 0x2

    .line 29
    if-eq p2, p4, :cond_1

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/fragment/r3$c;->b:Lcom/join/mgps/fragment/r3;

    .line 33
    .line 34
    iget-object p2, p2, Lcom/join/mgps/fragment/r3;->l:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    check-cast p2, Ll6/a;

    .line 41
    .line 42
    invoke-virtual {p2}, Ll6/a;->c()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    check-cast p2, Lcom/join/mgps/dto/GameOLFirstBean;

    .line 47
    .line 48
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    if-eqz p2, :cond_2

    .line 53
    .line 54
    invoke-virtual {p1}, Ll6/a;->c()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 59
    .line 60
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    iget-object p3, p0, Lcom/join/mgps/fragment/r3$c;->b:Lcom/join/mgps/fragment/r3;

    .line 65
    .line 66
    invoke-static {p3}, Lcom/join/mgps/fragment/r3;->b0(Lcom/join/mgps/fragment/r3;)Landroid/app/Activity;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p2, p3, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    :goto_0
    return-void
.end method
