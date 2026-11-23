.class Lcom/join/mgps/customview/q0$a;
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
    iput-object p1, p0, Lcom/join/mgps/customview/q0$a;->b:Lcom/join/mgps/customview/q0;

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
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/customview/q0$a;->b:Lcom/join/mgps/customview/q0;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/join/mgps/customview/q0;->l:Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;->getSort_type()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    .line 15
    .line 16
    iput-object v0, p1, Lcom/join/mgps/customview/q0;->i:Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    .line 17
    .line 18
    iget-object p1, p0, Lcom/join/mgps/customview/q0$a;->b:Lcom/join/mgps/customview/q0;

    .line 19
    .line 20
    iget-object v0, p1, Lcom/join/mgps/customview/q0;->l:Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;->getGame_type()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    .line 31
    .line 32
    iput-object v0, p1, Lcom/join/mgps/customview/q0;->j:Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    .line 33
    .line 34
    iget-object p1, p0, Lcom/join/mgps/customview/q0$a;->b:Lcom/join/mgps/customview/q0;

    .line 35
    .line 36
    iget-object v0, p1, Lcom/join/mgps/customview/q0;->l:Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;->getGame_class()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    .line 47
    .line 48
    iput-object v0, p1, Lcom/join/mgps/customview/q0;->k:Lcom/join/mgps/activity/vipzone/bean/SpecialTag;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception p1

    .line 52
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    .line 54
    .line 55
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/customview/q0$a;->b:Lcom/join/mgps/customview/q0;

    .line 56
    .line 57
    iget-object v0, p1, Lcom/join/mgps/customview/q0;->l:Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;->getSort_type()Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {p1, v0}, Lcom/join/mgps/customview/q0;->c(Lcom/join/mgps/customview/q0;Ljava/util/List;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/join/mgps/customview/q0$a;->b:Lcom/join/mgps/customview/q0;

    .line 67
    .line 68
    iget-object v0, p1, Lcom/join/mgps/customview/q0;->l:Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;->getGame_type()Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {p1, v0}, Lcom/join/mgps/customview/q0;->c(Lcom/join/mgps/customview/q0;Ljava/util/List;)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/join/mgps/customview/q0$a;->b:Lcom/join/mgps/customview/q0;

    .line 78
    .line 79
    iget-object v0, p1, Lcom/join/mgps/customview/q0;->l:Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;->getGame_class()Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {p1, v0}, Lcom/join/mgps/customview/q0;->c(Lcom/join/mgps/customview/q0;Ljava/util/List;)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/join/mgps/customview/q0$a;->b:Lcom/join/mgps/customview/q0;

    .line 89
    .line 90
    iget-object p1, p1, Lcom/join/mgps/customview/q0;->b:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;->b()V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lcom/join/mgps/customview/q0$a;->b:Lcom/join/mgps/customview/q0;

    .line 96
    .line 97
    iget-object p1, p1, Lcom/join/mgps/customview/q0;->c:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;->b()V

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lcom/join/mgps/customview/q0$a;->b:Lcom/join/mgps/customview/q0;

    .line 103
    .line 104
    iget-object p1, p1, Lcom/join/mgps/customview/q0;->d:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;->b()V

    .line 107
    .line 108
    .line 109
    return-void
.end method
