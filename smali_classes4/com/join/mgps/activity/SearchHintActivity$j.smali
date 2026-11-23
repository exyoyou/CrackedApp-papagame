.class Lcom/join/mgps/activity/SearchHintActivity$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SearchHintActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/SearchHintActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SearchHintActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$j;->b:Lcom/join/mgps/activity/SearchHintActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "adapterView",
            "view",
            "i",
            "l"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$j;->b:Lcom/join/mgps/activity/SearchHintActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/SearchHintActivity;->access$200(Lcom/join/mgps/activity/SearchHintActivity;)Ljava/util/List;

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
    instance-of p2, p1, Lcom/join/mgps/dto/SearchAutoDataBean;

    .line 12
    .line 13
    const/4 p3, 0x2

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    move-object p2, p1

    .line 17
    check-cast p2, Lcom/join/mgps/dto/SearchAutoDataBean;

    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/join/mgps/dto/SearchAutoDataBean;->getGame_name()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p4

    .line 23
    invoke-virtual {p4}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p4

    .line 27
    iget-object p5, p0, Lcom/join/mgps/activity/SearchHintActivity$j;->b:Lcom/join/mgps/activity/SearchHintActivity;

    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/join/mgps/dto/SearchAutoDataBean;->getCrc_sign_id()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p5, p4, v0, p3}, Lcom/join/mgps/activity/SearchHintActivity;->goSearch(Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/join/mgps/dto/SearchAutoDataBean;->getCrc_sign_id()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    iget-object p5, p0, Lcom/join/mgps/activity/SearchHintActivity$j;->b:Lcom/join/mgps/activity/SearchHintActivity;

    .line 41
    .line 42
    invoke-static {p5, p4, p2}, Lcom/join/mgps/activity/SearchHintActivity;->access$300(Lcom/join/mgps/activity/SearchHintActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object p4, p0, Lcom/join/mgps/activity/SearchHintActivity$j;->b:Lcom/join/mgps/activity/SearchHintActivity;

    .line 46
    .line 47
    invoke-virtual {p4, p2}, Lcom/join/mgps/activity/SearchHintActivity;->sendGameCount(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    instance-of p2, p1, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 51
    .line 52
    if-eqz p2, :cond_2

    .line 53
    .line 54
    check-cast p1, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->isAdInfo()Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-eqz p2, :cond_1

    .line 61
    .line 62
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    iget-object p3, p0, Lcom/join/mgps/activity/SearchHintActivity$j;->b:Lcom/join/mgps/activity/SearchHintActivity;

    .line 67
    .line 68
    invoke-static {p3}, Lcom/join/mgps/activity/SearchHintActivity;->access$400(Lcom/join/mgps/activity/SearchHintActivity;)Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 73
    .line 74
    .line 75
    move-result-object p4

    .line 76
    invoke-virtual {p2, p3, p4}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 77
    .line 78
    .line 79
    iget-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity$j;->b:Lcom/join/mgps/activity/SearchHintActivity;

    .line 80
    .line 81
    sget-object p3, Lcom/papa/sim/statistic/Event;->searchThinkAdWordClick:Lcom/papa/sim/statistic/Event;

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 84
    .line 85
    .line 86
    move-result-object p4

    .line 87
    invoke-virtual {p4}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p4

    .line 91
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getTitle()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    const-string p5, "2"

    .line 96
    .line 97
    invoke-static {p2, p3, p5, p4, p1}, Lcom/join/mgps/activity/SearchHintActivity;->access$500(Lcom/join/mgps/activity/SearchHintActivity;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity$j;->b:Lcom/join/mgps/activity/SearchHintActivity;

    .line 102
    .line 103
    iget-object p2, p2, Lcom/join/mgps/activity/SearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 104
    .line 105
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    iget-object p4, p0, Lcom/join/mgps/activity/SearchHintActivity$j;->b:Lcom/join/mgps/activity/SearchHintActivity;

    .line 114
    .line 115
    const-string p5, ""

    .line 116
    .line 117
    invoke-virtual {p4, p2, p5, p3}, Lcom/join/mgps/activity/SearchHintActivity;->goSearch(Ljava/lang/String;Ljava/lang/String;I)V

    .line 118
    .line 119
    .line 120
    iget-object p3, p0, Lcom/join/mgps/activity/SearchHintActivity$j;->b:Lcom/join/mgps/activity/SearchHintActivity;

    .line 121
    .line 122
    invoke-static {p3, p2, p5}, Lcom/join/mgps/activity/SearchHintActivity;->access$300(Lcom/join/mgps/activity/SearchHintActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity$j;->b:Lcom/join/mgps/activity/SearchHintActivity;

    .line 126
    .line 127
    invoke-virtual {p2, p5}, Lcom/join/mgps/activity/SearchHintActivity;->sendGameCount(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity$j;->b:Lcom/join/mgps/activity/SearchHintActivity;

    .line 131
    .line 132
    sget-object p3, Lcom/papa/sim/statistic/Event;->searchThinkAdWordClick:Lcom/papa/sim/statistic/Event;

    .line 133
    .line 134
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 135
    .line 136
    .line 137
    move-result-object p4

    .line 138
    invoke-virtual {p4}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p4

    .line 142
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getTitle()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    const-string p5, "1"

    .line 147
    .line 148
    invoke-static {p2, p3, p5, p4, p1}, Lcom/join/mgps/activity/SearchHintActivity;->access$500(Lcom/join/mgps/activity/SearchHintActivity;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    :cond_2
    :goto_0
    return-void
.end method
