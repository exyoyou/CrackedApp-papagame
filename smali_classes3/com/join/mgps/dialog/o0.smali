.class public Lcom/join/mgps/dialog/o0;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/RadioGroup;

.field private d:Landroid/widget/RadioButton;

.field private e:Landroid/widget/RadioButton;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/TextView;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    const v0, 0x7f130555

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyword"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/join/mgps/dialog/o0;->h:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

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
    iget-object v0, p0, Lcom/join/mgps/dialog/o0;->g:Landroid/widget/TextView;

    .line 2
    .line 3
    if-ne p1, v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    sget-object v0, Lcom/papa/sim/statistic/Event;->commonReport:Lcom/papa/sim/statistic/Event;

    .line 17
    .line 18
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 19
    .line 20
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v2, "searchResultGameFeedback"

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setChatId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v2, p0, Lcom/join/mgps/dialog/o0;->h:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setKeyWord(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget-object v2, p0, Lcom/join/mgps/dialog/o0;->d:Landroid/widget/RadioButton;

    .line 36
    .line 37
    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    const-string v2, "like"

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const-string v2, "notLike"

    .line 47
    .line 48
    :goto_0
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setResultCode(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iget-object v2, p0, Lcom/join/mgps/dialog/o0;->f:Landroid/widget/EditText;

    .line 53
    .line 54
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setReMarks(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/join/mgps/dialog/o0;->f:Landroid/widget/EditText;

    .line 70
    .line 71
    invoke-static {p1}, Lr7/a;->b(Landroid/view/View;)V

    .line 72
    .line 73
    .line 74
    const-string p1, "\u63d0\u4ea4\u6210\u529f\uff0c\u611f\u8c22\u53cd\u9988\uff01"

    .line 75
    .line 76
    invoke-static {p1}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/dialog/o0;->b:Landroid/widget/ImageView;

    .line 81
    .line 82
    if-ne p1, v0, :cond_2

    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 85
    .line 86
    .line 87
    :cond_2
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0d021b

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    const p1, 0x7f0a0a22

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroid/widget/ImageView;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/join/mgps/dialog/o0;->b:Landroid/widget/ImageView;

    .line 20
    .line 21
    const p1, 0x7f0a1396

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Landroid/widget/RadioGroup;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/join/mgps/dialog/o0;->c:Landroid/widget/RadioGroup;

    .line 31
    .line 32
    const p1, 0x7f0a131a

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Landroid/widget/RadioButton;

    .line 40
    .line 41
    iput-object p1, p0, Lcom/join/mgps/dialog/o0;->d:Landroid/widget/RadioButton;

    .line 42
    .line 43
    const p1, 0x7f0a131b

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Landroid/widget/RadioButton;

    .line 51
    .line 52
    iput-object p1, p0, Lcom/join/mgps/dialog/o0;->e:Landroid/widget/RadioButton;

    .line 53
    .line 54
    const p1, 0x7f0a0597

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Landroid/widget/EditText;

    .line 62
    .line 63
    iput-object p1, p0, Lcom/join/mgps/dialog/o0;->f:Landroid/widget/EditText;

    .line 64
    .line 65
    const p1, 0x7f0a192f

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Landroid/widget/TextView;

    .line 73
    .line 74
    iput-object p1, p0, Lcom/join/mgps/dialog/o0;->g:Landroid/widget/TextView;

    .line 75
    .line 76
    iget-object p1, p0, Lcom/join/mgps/dialog/o0;->b:Landroid/widget/ImageView;

    .line 77
    .line 78
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/join/mgps/dialog/o0;->g:Landroid/widget/TextView;

    .line 82
    .line 83
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method
