.class Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;->a(Lcom/join/mgps/dto/GamedetialModleFourBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/ExtInfoBean;

.field final synthetic c:Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;Lcom/join/mgps/dto/ExtInfoBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$extInfoBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView$a;->c:Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView$a;->b:Lcom/join/mgps/dto/ExtInfoBean;

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
    iget-object p1, p0, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView$a;->c:Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;->c(Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView$a;->b:Lcom/join/mgps/dto/ExtInfoBean;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtInfoBean;->getShare_info()Lcom/join/mgps/dto/ShareInfoBean;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/join/mgps/dto/ShareInfoBean;->getDescription()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;->g(Landroid/view/View;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
