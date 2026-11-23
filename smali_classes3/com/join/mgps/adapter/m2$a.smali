.class Lcom/join/mgps/adapter/m2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/m2;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/GameOLHeadAdBean;

.field final synthetic c:Lcom/join/mgps/adapter/m2;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/m2;Lcom/join/mgps/dto/GameOLHeadAdBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$recomDatabean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/m2$a;->c:Lcom/join/mgps/adapter/m2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/m2$a;->b:Lcom/join/mgps/dto/GameOLHeadAdBean;

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
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/m2$a;->b:Lcom/join/mgps/dto/GameOLHeadAdBean;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameOLHeadAdBean;->getSub()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/join/mgps/dto/CompanySubBean;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/CompanySubBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/join/mgps/adapter/m2$a;->c:Lcom/join/mgps/adapter/m2;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/join/mgps/adapter/m2;->a(Lcom/join/mgps/adapter/m2;)Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
