.class Lcom/join/mgps/customview/ClouldItemView$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/ClouldItemView;->setPoPoWindow2(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/widget/PopupWindow;

.field final synthetic c:Lcom/join/mgps/customview/ClouldItemView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/ClouldItemView;Landroid/widget/PopupWindow;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$popupWindow"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView$e;->c:Lcom/join/mgps/customview/ClouldItemView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/customview/ClouldItemView$e;->b:Landroid/widget/PopupWindow;

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
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView$e;->c:Lcom/join/mgps/customview/ClouldItemView;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/join/mgps/customview/ClouldItemView;->s:Lw6/c;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/join/mgps/customview/ClouldItemView;->o:Lcom/join/mgps/dto/CloudListDataBean;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-interface {v0, p1, v1}, Lw6/c;->G(Lcom/join/mgps/dto/CloudListDataBean;I)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView$e;->b:Landroid/widget/PopupWindow;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 14
    .line 15
    .line 16
    return-void
.end method
