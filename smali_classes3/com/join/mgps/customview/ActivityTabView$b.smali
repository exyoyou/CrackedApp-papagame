.class Lcom/join/mgps/customview/ActivityTabView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/ActivityTabView;->c(Lcom/join/mgps/dto/BtGameBenefitSummary;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/BtGameBenefitBean;

.field final synthetic c:Lcom/join/mgps/customview/ActivityTabView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/ActivityTabView;Lcom/join/mgps/dto/BtGameBenefitBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$couponSummary"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ActivityTabView$b;->c:Lcom/join/mgps/customview/ActivityTabView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/customview/ActivityTabView$b;->b:Lcom/join/mgps/dto/BtGameBenefitBean;

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
    iget-object p1, p0, Lcom/join/mgps/customview/ActivityTabView$b;->c:Lcom/join/mgps/customview/ActivityTabView;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/customview/ActivityTabView;->a(Lcom/join/mgps/customview/ActivityTabView;)Lcom/join/mgps/customview/ActivityTabView$d;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/customview/ActivityTabView$b;->c:Lcom/join/mgps/customview/ActivityTabView;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/join/mgps/customview/ActivityTabView;->a(Lcom/join/mgps/customview/ActivityTabView;)Lcom/join/mgps/customview/ActivityTabView$d;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/join/mgps/customview/ActivityTabView$b;->b:Lcom/join/mgps/dto/BtGameBenefitBean;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/dto/BtGameBenefitBean;->getJump_url()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {p1, v0}, Lcom/join/mgps/customview/ActivityTabView$d;->c(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
