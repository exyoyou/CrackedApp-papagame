.class Lcom/join/mgps/customview/q0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/q0;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/q0;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/q0;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/q0$b;->b:Lcom/join/mgps/customview/q0;

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
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/q0$b;->b:Lcom/join/mgps/customview/q0;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/join/mgps/customview/q0;->h:Lcom/join/mgps/customview/q0$f;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/join/mgps/customview/q0;->b:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;->getSelectedItem()Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v1, p0, Lcom/join/mgps/customview/q0$b;->b:Lcom/join/mgps/customview/q0;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/join/mgps/customview/q0;->c:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;->getSelectedItem()Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, p0, Lcom/join/mgps/customview/q0$b;->b:Lcom/join/mgps/customview/q0;

    .line 20
    .line 21
    iget-object v2, v2, Lcom/join/mgps/customview/q0;->d:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;->getSelectedItem()Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-interface {v0, p1, v1, v2}, Lcom/join/mgps/customview/q0$f;->onfinifilter(Lcom/join/mgps/activity/vipzone/bean/SpecialTag;Lcom/join/mgps/activity/vipzone/bean/SpecialTag;Lcom/join/mgps/activity/vipzone/bean/SpecialTag;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/join/mgps/customview/q0$b;->b:Lcom/join/mgps/customview/q0;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/join/mgps/customview/v;->dismiss()V

    .line 33
    .line 34
    .line 35
    return-void
.end method
