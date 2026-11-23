.class Lcom/join/mgps/activity/HomePopupAdActivity$b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/HomePopupAdActivity$b;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/RecomDatabean;

.field final synthetic c:Lcom/join/mgps/activity/HomePopupAdActivity$b;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/HomePopupAdActivity$b;Lcom/join/mgps/dto/RecomDatabean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$bean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b$b;->c:Lcom/join/mgps/activity/HomePopupAdActivity$b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b$b;->b:Lcom/join/mgps/dto/RecomDatabean;

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
            "view"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b$b;->c:Lcom/join/mgps/activity/HomePopupAdActivity$b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/HomePopupAdActivity$b;->b:Lcom/join/mgps/activity/HomePopupAdActivity;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b$b;->b:Lcom/join/mgps/dto/RecomDatabean;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/join/mgps/dto/AppBeanMain;

    .line 21
    .line 22
    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/activity/HomePopupAdActivity;->goIntent(Landroid/content/Context;Lcom/join/mgps/dto/AppBeanMain;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b$b;->c:Lcom/join/mgps/activity/HomePopupAdActivity$b;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/join/mgps/activity/HomePopupAdActivity$b;->b:Lcom/join/mgps/activity/HomePopupAdActivity;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 30
    .line 31
    .line 32
    return-void
.end method
