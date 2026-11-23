.class Lcom/join/mgps/activity/HomePopupAdActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/HomePopupAdActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/RecomDatabean;

.field final synthetic c:Lcom/join/mgps/activity/HomePopupAdActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/HomePopupAdActivity;Lcom/join/mgps/dto/RecomDatabean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$moreBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/HomePopupAdActivity$a;->c:Lcom/join/mgps/activity/HomePopupAdActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/HomePopupAdActivity$a;->b:Lcom/join/mgps/dto/RecomDatabean;

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
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdActivity$a;->b:Lcom/join/mgps/dto/RecomDatabean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdActivity$a;->b:Lcom/join/mgps/dto/RecomDatabean;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-lez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdActivity$a;->c:Lcom/join/mgps/activity/HomePopupAdActivity;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object v1, p0, Lcom/join/mgps/activity/HomePopupAdActivity$a;->b:Lcom/join/mgps/dto/RecomDatabean;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lcom/join/mgps/dto/AppBeanMain;

    .line 39
    .line 40
    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/activity/HomePopupAdActivity;->goIntent(Landroid/content/Context;Lcom/join/mgps/dto/AppBeanMain;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method
