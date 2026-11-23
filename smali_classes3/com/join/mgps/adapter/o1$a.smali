.class Lcom/join/mgps/adapter/o1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/o1;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/adapter/o1;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/o1;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$i"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/o1$a;->c:Lcom/join/mgps/adapter/o1;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/adapter/o1$a;->b:I

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
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/o1$a;->c:Lcom/join/mgps/adapter/o1;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/adapter/o1;->a(Lcom/join/mgps/adapter/o1;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget v0, p0, Lcom/join/mgps/adapter/o1$a;->b:I

    .line 8
    .line 9
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/join/mgps/dto/RecommendGameBean;

    .line 14
    .line 15
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/join/mgps/adapter/o1$a;->c:Lcom/join/mgps/adapter/o1;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/join/mgps/adapter/o1;->b(Lcom/join/mgps/adapter/o1;)Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendGameBean;->getId()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendGameBean;->getTpl_type()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendGameBean;->getSp_tpl_two_position()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    iget-object p1, p0, Lcom/join/mgps/adapter/o1$a;->c:Lcom/join/mgps/adapter/o1;

    .line 38
    .line 39
    invoke-static {p1}, Lcom/join/mgps/adapter/o1;->c(Lcom/join/mgps/adapter/o1;)I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
