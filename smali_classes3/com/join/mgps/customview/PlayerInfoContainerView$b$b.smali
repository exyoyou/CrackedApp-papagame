.class Lcom/join/mgps/customview/PlayerInfoContainerView$b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/PlayerInfoContainerView$b;->f(Lcom/papa91/battle/protocol/RoomPosition;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/PlayerInfoContainerView$b;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/PlayerInfoContainerView$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b$b;->b:Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b$b;->b:Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/join/mgps/customview/PlayerInfoContainerView;->a(Lcom/join/mgps/customview/PlayerInfoContainerView;)Lcom/join/mgps/customview/PlayerInfoContainerView$a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Lcom/join/mgps/customview/PlayerInfoContainerView$a;->e()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
