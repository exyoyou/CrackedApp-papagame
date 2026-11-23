.class Lcom/join/mgps/activity/HomePopupAdQWActivity$c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/HomePopupAdQWActivity$c;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/join/mgps/dto/RecomDatabean;

.field final synthetic d:Lcom/join/mgps/activity/HomePopupAdQWActivity$c;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/HomePopupAdQWActivity$c;Ljava/lang/String;Lcom/join/mgps/dto/RecomDatabean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$urlDown",
            "val$bean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c$d;->d:Lcom/join/mgps/activity/HomePopupAdQWActivity$c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c$d;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c$d;->c:Lcom/join/mgps/dto/RecomDatabean;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
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
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c$d;->b:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "http"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c$d;->d:Lcom/join/mgps/activity/HomePopupAdQWActivity$c;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/join/mgps/activity/HomePopupAdQWActivity$c;->b:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c$d;->b:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c$d;->c:Lcom/join/mgps/dto/RecomDatabean;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModleBean;->getSub_title()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/activity/HomePopupAdQWActivity;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c$d;->d:Lcom/join/mgps/activity/HomePopupAdQWActivity$c;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c;->b:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object v1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c$d;->c:Lcom/join/mgps/dto/RecomDatabean;

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lcom/join/mgps/dto/AppBeanMain;

    .line 51
    .line 52
    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/activity/HomePopupAdQWActivity;->j(Landroid/content/Context;Lcom/join/mgps/dto/AppBeanMain;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c$d;->d:Lcom/join/mgps/activity/HomePopupAdQWActivity$c;

    .line 56
    .line 57
    iget-object p1, p1, Lcom/join/mgps/activity/HomePopupAdQWActivity$c;->b:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 60
    .line 61
    .line 62
    :goto_0
    return-void
.end method
