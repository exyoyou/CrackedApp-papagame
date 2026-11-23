.class Lcom/join/mgps/activity/HomePopupAdQWActivity$c$c;
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

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Lcom/join/mgps/dto/AppBeanMain;

.field final synthetic f:Lcom/join/mgps/activity/HomePopupAdQWActivity$c;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/HomePopupAdQWActivity$c;Ljava/lang/String;Lcom/join/mgps/dto/RecomDatabean;Landroid/content/Context;Lcom/join/mgps/dto/AppBeanMain;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$urlDown",
            "val$bean",
            "val$context",
            "val$appBeanMain"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c$c;->f:Lcom/join/mgps/activity/HomePopupAdQWActivity$c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c$c;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c$c;->c:Lcom/join/mgps/dto/RecomDatabean;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c$c;->d:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c$c;->e:Lcom/join/mgps/dto/AppBeanMain;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
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
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c$c;->b:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "http"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c$c;->f:Lcom/join/mgps/activity/HomePopupAdQWActivity$c;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/join/mgps/activity/HomePopupAdQWActivity$c;->b:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c$c;->b:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c$c;->c:Lcom/join/mgps/dto/RecomDatabean;

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
    iget-object p1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c$c;->d:Landroid/content/Context;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/join/mgps/service/CommonService_;->P2(Landroid/content/Context;)Lcom/join/mgps/service/CommonService_$n0;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c$c;->e:Lcom/join/mgps/dto/AppBeanMain;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBeanMain;->getCrc_link_type_val()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v1, "downGameId"

    .line 44
    .line 45
    invoke-virtual {p1, v1, v0}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Lcom/join/mgps/service/CommonService_$n0;

    .line 50
    .line 51
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/g;->a()Landroid/content/ComponentName;

    .line 52
    .line 53
    .line 54
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c$c;->f:Lcom/join/mgps/activity/HomePopupAdQWActivity$c;

    .line 55
    .line 56
    iget-object p1, p1, Lcom/join/mgps/activity/HomePopupAdQWActivity$c;->b:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 59
    .line 60
    .line 61
    return-void
.end method
