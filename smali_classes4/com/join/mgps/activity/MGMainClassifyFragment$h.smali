.class Lcom/join/mgps/activity/MGMainClassifyFragment$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGMainClassifyFragment;->h0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/RadioButton;

.field final synthetic b:Lcom/join/mgps/dto/CategorySimpleBean;

.field final synthetic c:Lcom/join/mgps/activity/MGMainClassifyFragment;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGMainClassifyFragment;Landroid/widget/RadioButton;Lcom/join/mgps/dto/CategorySimpleBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$radioButtonVerticalFirst",
            "val$categorySimpleBeanFirst"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$h;->c:Lcom/join/mgps/activity/MGMainClassifyFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$h;->a:Landroid/widget/RadioButton;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$h;->b:Lcom/join/mgps/dto/CategorySimpleBean;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "compoundButton",
            "b"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$h;->a:Landroid/widget/RadioButton;

    .line 4
    .line 5
    iget-object p2, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$h;->c:Lcom/join/mgps/activity/MGMainClassifyFragment;

    .line 6
    .line 7
    invoke-static {p2}, Lcom/join/mgps/activity/MGMainClassifyFragment;->R(Lcom/join/mgps/activity/MGMainClassifyFragment;)I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$h;->c:Lcom/join/mgps/activity/MGMainClassifyFragment;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/join/mgps/activity/MGMainClassifyFragment;->S(Lcom/join/mgps/activity/MGMainClassifyFragment;)Landroid/widget/PopupWindow;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$h;->c:Lcom/join/mgps/activity/MGMainClassifyFragment;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/join/mgps/activity/MGMainClassifyFragment;->S(Lcom/join/mgps/activity/MGMainClassifyFragment;)Landroid/widget/PopupWindow;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$h;->c:Lcom/join/mgps/activity/MGMainClassifyFragment;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/join/mgps/activity/MGMainClassifyFragment;->S(Lcom/join/mgps/activity/MGMainClassifyFragment;)Landroid/widget/PopupWindow;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$h;->c:Lcom/join/mgps/activity/MGMainClassifyFragment;

    .line 44
    .line 45
    iget-object p1, p1, Lcom/join/mgps/activity/MGMainClassifyFragment;->y:Landroid/widget/ToggleButton;

    .line 46
    .line 47
    iget-object p2, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$h;->b:Lcom/join/mgps/dto/CategorySimpleBean;

    .line 48
    .line 49
    invoke-virtual {p2}, Lcom/join/mgps/dto/CategorySimpleBean;->getTitle()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$h;->c:Lcom/join/mgps/activity/MGMainClassifyFragment;

    .line 57
    .line 58
    iget-object p1, p1, Lcom/join/mgps/activity/MGMainClassifyFragment;->y:Landroid/widget/ToggleButton;

    .line 59
    .line 60
    iget-object p2, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$h;->b:Lcom/join/mgps/dto/CategorySimpleBean;

    .line 61
    .line 62
    invoke-virtual {p2}, Lcom/join/mgps/dto/CategorySimpleBean;->getTitle()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-virtual {p1, p2}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$h;->c:Lcom/join/mgps/activity/MGMainClassifyFragment;

    .line 70
    .line 71
    iget-object p1, p1, Lcom/join/mgps/activity/MGMainClassifyFragment;->y:Landroid/widget/ToggleButton;

    .line 72
    .line 73
    iget-object p2, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$h;->b:Lcom/join/mgps/dto/CategorySimpleBean;

    .line 74
    .line 75
    invoke-virtual {p2}, Lcom/join/mgps/dto/CategorySimpleBean;->getTitle()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-virtual {p1, p2}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$h;->c:Lcom/join/mgps/activity/MGMainClassifyFragment;

    .line 83
    .line 84
    invoke-static {p1}, Lcom/join/mgps/activity/MGMainClassifyFragment;->P(Lcom/join/mgps/activity/MGMainClassifyFragment;)Lcom/join/mgps/activity/k;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iget-object p2, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$h;->b:Lcom/join/mgps/dto/CategorySimpleBean;

    .line 89
    .line 90
    invoke-virtual {p2}, Lcom/join/mgps/dto/CategorySimpleBean;->getId()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/k;->f0(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$h;->c:Lcom/join/mgps/activity/MGMainClassifyFragment;

    .line 98
    .line 99
    iget-object p2, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$h;->b:Lcom/join/mgps/dto/CategorySimpleBean;

    .line 100
    .line 101
    invoke-virtual {p2}, Lcom/join/mgps/dto/CategorySimpleBean;->getId()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/MGMainClassifyFragment;->c0(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$h;->c:Lcom/join/mgps/activity/MGMainClassifyFragment;

    .line 109
    .line 110
    iget-object p2, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$h;->b:Lcom/join/mgps/dto/CategorySimpleBean;

    .line 111
    .line 112
    invoke-virtual {p2}, Lcom/join/mgps/dto/CategorySimpleBean;->getId()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/MGMainClassifyFragment;->Z(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$h;->a:Landroid/widget/RadioButton;

    .line 121
    .line 122
    iget-object p2, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$h;->c:Lcom/join/mgps/activity/MGMainClassifyFragment;

    .line 123
    .line 124
    invoke-static {p2}, Lcom/join/mgps/activity/MGMainClassifyFragment;->Q(Lcom/join/mgps/activity/MGMainClassifyFragment;)I

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    .line 130
    .line 131
    :cond_1
    :goto_0
    return-void
.end method
