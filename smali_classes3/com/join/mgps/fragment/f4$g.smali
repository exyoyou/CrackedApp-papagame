.class Lcom/join/mgps/fragment/f4$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/dialog/p0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/f4;->C0(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/fragment/f4;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/f4;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/f4$g;->b:Lcom/join/mgps/fragment/f4;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/fragment/f4$g;->a:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/dialog/p0;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/fragment/f4$g;->b:Lcom/join/mgps/fragment/f4;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/join/mgps/fragment/f4;->R(Lcom/join/mgps/fragment/f4;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-lez p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/join/mgps/fragment/f4$g;->b:Lcom/join/mgps/fragment/f4;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/join/mgps/fragment/f4;->R(Lcom/join/mgps/fragment/f4;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public b(Lcom/join/mgps/dialog/p0;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/join/mgps/Util/IntentDateBean;

    .line 5
    .line 6
    invoke-direct {p1}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/fragment/f4$g;->b:Lcom/join/mgps/fragment/f4;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/join/mgps/fragment/f4;->Q(Lcom/join/mgps/fragment/f4;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/join/mgps/fragment/f4$g;->b:Lcom/join/mgps/fragment/f4;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/join/mgps/fragment/f4;->Q(Lcom/join/mgps/fragment/f4;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-lez p1, :cond_0

    .line 28
    .line 29
    iget-object p1, p0, Lcom/join/mgps/fragment/f4$g;->b:Lcom/join/mgps/fragment/f4;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/join/mgps/fragment/f4;->Q(Lcom/join/mgps/fragment/f4;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget v0, p0, Lcom/join/mgps/fragment/f4$g;->a:I

    .line 36
    .line 37
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Lcom/join/mgps/dto/BannerBean;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/join/mgps/dto/BannerBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/join/mgps/fragment/f4$g;->b:Lcom/join/mgps/fragment/f4;

    .line 52
    .line 53
    invoke-static {v1}, Lcom/join/mgps/fragment/f4;->U(Lcom/join/mgps/fragment/f4;)Landroid/app/Activity;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/join/mgps/fragment/f4$g;->b:Lcom/join/mgps/fragment/f4;

    .line 61
    .line 62
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iget-object v0, p0, Lcom/join/mgps/fragment/f4$g;->b:Lcom/join/mgps/fragment/f4;

    .line 71
    .line 72
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    const-string v1, "vsButton"

    .line 85
    .line 86
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->q2(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/f4$g;->b:Lcom/join/mgps/fragment/f4;

    .line 90
    .line 91
    invoke-static {p1}, Lcom/join/mgps/fragment/f4;->R(Lcom/join/mgps/fragment/f4;)Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-lez p1, :cond_1

    .line 100
    .line 101
    iget-object p1, p0, Lcom/join/mgps/fragment/f4$g;->b:Lcom/join/mgps/fragment/f4;

    .line 102
    .line 103
    invoke-static {p1}, Lcom/join/mgps/fragment/f4;->R(Lcom/join/mgps/fragment/f4;)Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    const/4 v0, 0x0

    .line 108
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lcom/join/mgps/fragment/f4$g;->b:Lcom/join/mgps/fragment/f4;

    .line 112
    .line 113
    invoke-static {p1}, Lcom/join/mgps/fragment/f4;->Q(Lcom/join/mgps/fragment/f4;)Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    :cond_1
    iget p1, p0, Lcom/join/mgps/fragment/f4$g;->a:I

    .line 121
    .line 122
    iget-object v0, p0, Lcom/join/mgps/fragment/f4$g;->b:Lcom/join/mgps/fragment/f4;

    .line 123
    .line 124
    invoke-static {v0}, Lcom/join/mgps/fragment/f4;->Q(Lcom/join/mgps/fragment/f4;)Ljava/util/List;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    add-int/lit8 v0, v0, -0x1

    .line 133
    .line 134
    if-lt p1, v0, :cond_3

    .line 135
    .line 136
    iget-object p1, p0, Lcom/join/mgps/fragment/f4$g;->b:Lcom/join/mgps/fragment/f4;

    .line 137
    .line 138
    invoke-static {p1}, Lcom/join/mgps/fragment/f4;->R(Lcom/join/mgps/fragment/f4;)Ljava/util/List;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    if-nez p1, :cond_2

    .line 143
    .line 144
    return-void

    .line 145
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/f4$g;->b:Lcom/join/mgps/fragment/f4;

    .line 146
    .line 147
    invoke-static {p1}, Lcom/join/mgps/fragment/f4;->R(Lcom/join/mgps/fragment/f4;)Ljava/util/List;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 152
    .line 153
    .line 154
    iget-object p1, p0, Lcom/join/mgps/fragment/f4$g;->b:Lcom/join/mgps/fragment/f4;

    .line 155
    .line 156
    iget-object p1, p1, Lcom/join/mgps/fragment/f4;->i:Landroid/widget/LinearLayout;

    .line 157
    .line 158
    if-eqz p1, :cond_3

    .line 159
    .line 160
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 161
    .line 162
    .line 163
    :cond_3
    return-void
.end method
