.class Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/base/BaseQuickAdapter$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;)V
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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$3;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "adapter",
            "view",
            "position"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$3;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string p2, "\u589e\u5f3a\u6a21\u5f0f\u542f\u52a8\u6e38\u620f\u5373\u53ef\u4f53\u9a8c"

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
