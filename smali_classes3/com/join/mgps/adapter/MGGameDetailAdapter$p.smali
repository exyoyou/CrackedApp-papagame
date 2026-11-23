.class Lcom/join/mgps/adapter/MGGameDetailAdapter$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/MGGameDetailAdapter;->S(Landroid/view/ViewGroup;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/GameDetialStrategyTag;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/join/mgps/adapter/MGGameDetailAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Lcom/join/mgps/dto/GameDetialStrategyTag;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$tabBean",
            "val$tabBeanList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$p;->d:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$p;->b:Lcom/join/mgps/dto/GameDetialStrategyTag;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$p;->c:Ljava/util/List;

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
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/join/mgps/dto/DetialIntentBean;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/join/mgps/dto/DetialIntentBean;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$p;->d:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->a(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/DetialIntentBean;->setGameId(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x5

    .line 20
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/DetialIntentBean;->setIntentType(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$p;->b:Lcom/join/mgps/dto/GameDetialStrategyTag;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDetialStrategyTag;->getTag_id()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/DetialIntentBean;->setStartegyTab(I)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$p;->c:Ljava/util/List;

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/DetialIntentBean;->setStrategyTags(Ljava/util/List;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$p;->d:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/GameDetialInformationMoreActivity_$n;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity_$n;->a(Lcom/join/mgps/dto/DetialIntentBean;)Lcom/join/mgps/activity/GameDetialInformationMoreActivity_$n;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 52
    .line 53
    .line 54
    return-void
.end method
