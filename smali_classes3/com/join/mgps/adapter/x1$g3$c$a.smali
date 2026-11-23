.class Lcom/join/mgps/adapter/x1$g3$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/x1$g3$c;->r(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CollectionBeanSub;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/CollectionBeanSub;

.field final synthetic c:Lcom/join/mgps/adapter/x1$g3$c;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/x1$g3$c;Lcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$2",
            "val$item"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$g3$c$a;->c:Lcom/join/mgps/adapter/x1$g3$c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/x1$g3$c$a;->b:Lcom/join/mgps/dto/CollectionBeanSub;

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
    iget-object p1, p0, Lcom/join/mgps/adapter/x1$g3$c$a;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "13301"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x33f5

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->set_from_type(I)Lcom/join/mgps/dto/ExtBean;

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/join/mgps/adapter/x1$g3$c$a;->c:Lcom/join/mgps/adapter/x1$g3$c;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/join/mgps/adapter/x1$g3$c;->e:Lcom/join/mgps/adapter/x1$g3;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/join/mgps/adapter/x1$g3;->f:Lcom/join/mgps/adapter/x1;

    .line 30
    .line 31
    invoke-static {v1}, Lcom/join/mgps/adapter/x1;->g(Lcom/join/mgps/adapter/x1;)Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
