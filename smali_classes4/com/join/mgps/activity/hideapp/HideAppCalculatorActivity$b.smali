.class Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/base/BaseQuickAdapter$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->initBtnData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$b;->a:Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;

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
    iget-object p1, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$b;->a:Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->access$000(Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;->b()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const-string p3, "[\\+\\-\\\u00d7\\\u00f7]"

    .line 18
    .line 19
    invoke-virtual {p2, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    iget-object p2, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$b;->a:Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;->b()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const/4 p3, 0x1

    .line 32
    invoke-virtual {p2, p1, p3}, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->writeText(Ljava/lang/String;Z)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;->b()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    const-string p3, "DEL"

    .line 41
    .line 42
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-eqz p2, :cond_1

    .line 47
    .line 48
    iget-object p1, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$b;->a:Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->del()V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;->b()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    const-string p3, "%"

    .line 59
    .line 60
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    if-eqz p2, :cond_2

    .line 65
    .line 66
    iget-object p1, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$b;->a:Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;

    .line 67
    .line 68
    invoke-static {p1}, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->access$100(Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;->b()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    const-string p3, "="

    .line 77
    .line 78
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    if-eqz p2, :cond_3

    .line 83
    .line 84
    iget-object p1, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$b;->a:Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;

    .line 85
    .line 86
    invoke-static {p1}, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->access$200(Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    invoke-virtual {p1}, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;->b()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    const-string p3, "AC"

    .line 95
    .line 96
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    if-eqz p2, :cond_4

    .line 101
    .line 102
    iget-object p1, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$b;->a:Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;

    .line 103
    .line 104
    invoke-static {p1}, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->access$300(Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_4
    iget-object p2, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$b;->a:Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;

    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;->b()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    const/4 p3, 0x0

    .line 115
    invoke-virtual {p2, p1, p3}, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->writeText(Ljava/lang/String;Z)V

    .line 116
    .line 117
    .line 118
    :goto_0
    return-void
.end method
