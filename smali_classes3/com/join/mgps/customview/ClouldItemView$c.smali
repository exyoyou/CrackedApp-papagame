.class Lcom/join/mgps/customview/ClouldItemView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/ClouldItemView;->c()V
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
    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView$c;->c:Lcom/join/mgps/customview/ClouldItemView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/customview/ClouldItemView$c;->b:Landroid/widget/PopupWindow;

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
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView$c;->b:Landroid/widget/PopupWindow;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView$c;->c:Lcom/join/mgps/customview/ClouldItemView;

    .line 7
    .line 8
    iget v0, p1, Lcom/join/mgps/customview/ClouldItemView;->q:I

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p1, Lcom/join/mgps/customview/ClouldItemView;->s:Lw6/c;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/join/mgps/customview/ClouldItemView;->o:Lcom/join/mgps/dto/CloudListDataBean;

    .line 16
    .line 17
    invoke-interface {v0, p1, v1}, Lw6/c;->k(Lcom/join/mgps/dto/CloudListDataBean;I)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x2

    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    .line 24
    iget-object v0, p1, Lcom/join/mgps/customview/ClouldItemView;->s:Lw6/c;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/join/mgps/customview/ClouldItemView;->o:Lcom/join/mgps/dto/CloudListDataBean;

    .line 27
    .line 28
    invoke-interface {v0, p1, v1}, Lw6/c;->k(Lcom/join/mgps/dto/CloudListDataBean;I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v1, 0x3

    .line 33
    if-ne v0, v1, :cond_2

    .line 34
    .line 35
    iget-object v0, p1, Lcom/join/mgps/customview/ClouldItemView;->s:Lw6/c;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/join/mgps/customview/ClouldItemView;->o:Lcom/join/mgps/dto/CloudListDataBean;

    .line 38
    .line 39
    invoke-interface {v0, p1, v1}, Lw6/c;->k(Lcom/join/mgps/dto/CloudListDataBean;I)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const/4 v1, 0x4

    .line 44
    if-ne v0, v1, :cond_3

    .line 45
    .line 46
    iget-object v0, p1, Lcom/join/mgps/customview/ClouldItemView;->s:Lw6/c;

    .line 47
    .line 48
    iget-object p1, p1, Lcom/join/mgps/customview/ClouldItemView;->o:Lcom/join/mgps/dto/CloudListDataBean;

    .line 49
    .line 50
    invoke-interface {v0, p1, v1}, Lw6/c;->G(Lcom/join/mgps/dto/CloudListDataBean;I)V

    .line 51
    .line 52
    .line 53
    :cond_3
    :goto_0
    return-void
.end method
