.class Lcom/join/mgps/activity/GameMainActivityv2$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameMainActivityv2;->r(Lcom/join/mgps/dto/GameMainDataBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/GameMainPostBean;

.field final synthetic c:Lcom/join/mgps/activity/GameMainActivityv2;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameMainActivityv2;Lcom/join/mgps/dto/GameMainPostBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$bean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameMainActivityv2$c;->c:Lcom/join/mgps/activity/GameMainActivityv2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/GameMainActivityv2$c;->b:Lcom/join/mgps/dto/GameMainPostBean;

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
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2$c;->c:Lcom/join/mgps/activity/GameMainActivityv2;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/join/mgps/activity/GameMainActivityv2;->z:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2$c;->b:Lcom/join/mgps/dto/GameMainPostBean;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainPostBean;->getId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goFormDetial(Landroid/content/Context;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
