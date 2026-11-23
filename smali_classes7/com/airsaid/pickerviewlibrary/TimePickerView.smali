.class public Lcom/airsaid/pickerviewlibrary/TimePickerView;
.super Lcom/airsaid/pickerviewlibrary/widget/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airsaid/pickerviewlibrary/TimePickerView$a;,
        Lcom/airsaid/pickerviewlibrary/TimePickerView$b;,
        Lcom/airsaid/pickerviewlibrary/TimePickerView$Type;
    }
.end annotation


# instance fields
.field private o:Landroid/content/Context;

.field private p:Landroid/view/View;

.field private q:Landroid/widget/TextView;

.field private r:Lcom/airsaid/pickerviewlibrary/widget/c;

.field private s:Landroid/widget/Button;

.field private t:Landroid/widget/Button;

.field private u:Lcom/airsaid/pickerviewlibrary/TimePickerView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/airsaid/pickerviewlibrary/TimePickerView$Type;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/airsaid/pickerviewlibrary/widget/a;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->o:Landroid/content/Context;

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/airsaid/pickerviewlibrary/TimePickerView;->p()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2}, Lcom/airsaid/pickerviewlibrary/TimePickerView;->o(Lcom/airsaid/pickerviewlibrary/TimePickerView$Type;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private o(Lcom/airsaid/pickerviewlibrary/TimePickerView$Type;)V
    .locals 7

    .line 1
    sget v0, Lcom/airsaid/pickerviewlibrary/R$id;->timepicker:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/airsaid/pickerviewlibrary/widget/a;->d(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/airsaid/pickerviewlibrary/widget/c;

    .line 8
    .line 9
    invoke-direct {v1, v0, p1}, Lcom/airsaid/pickerviewlibrary/widget/c;-><init>(Landroid/view/View;Lcom/airsaid/pickerviewlibrary/TimePickerView$Type;)V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->r:Lcom/airsaid/pickerviewlibrary/widget/c;

    .line 13
    .line 14
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const/4 v1, 0x2

    .line 31
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    const/4 v1, 0x5

    .line 36
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    const/16 v1, 0xb

    .line 41
    .line 42
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    const/16 v1, 0xc

    .line 47
    .line 48
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    add-int/lit8 v1, v1, -0x64

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    add-int/lit8 p1, p1, 0x64

    .line 67
    .line 68
    invoke-virtual {p0, v1, p1}, Lcom/airsaid/pickerviewlibrary/TimePickerView;->w(II)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->r:Lcom/airsaid/pickerviewlibrary/widget/c;

    .line 72
    .line 73
    invoke-virtual/range {v1 .. v6}, Lcom/airsaid/pickerviewlibrary/widget/c;->l(IIIII)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method private p()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->o:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget v1, Lcom/airsaid/pickerviewlibrary/R$layout;->pickerview_time:I

    .line 8
    .line 9
    iget-object v2, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->d:Landroid/view/ViewGroup;

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    sget v0, Lcom/airsaid/pickerviewlibrary/R$id;->rlt_head_view:I

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/airsaid/pickerviewlibrary/widget/a;->d(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->p:Landroid/view/View;

    .line 21
    .line 22
    sget v0, Lcom/airsaid/pickerviewlibrary/R$id;->tvTitle:I

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/airsaid/pickerviewlibrary/widget/a;->d(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/widget/TextView;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->q:Landroid/widget/TextView;

    .line 31
    .line 32
    sget v0, Lcom/airsaid/pickerviewlibrary/R$id;->btnSubmit:I

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/airsaid/pickerviewlibrary/widget/a;->d(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/widget/Button;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->s:Landroid/widget/Button;

    .line 41
    .line 42
    sget v0, Lcom/airsaid/pickerviewlibrary/R$id;->btnCancel:I

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lcom/airsaid/pickerviewlibrary/widget/a;->d(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Landroid/widget/Button;

    .line 49
    .line 50
    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->t:Landroid/widget/Button;

    .line 51
    .line 52
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->s:Landroid/widget/Button;

    .line 53
    .line 54
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->t:Landroid/widget/Button;

    .line 58
    .line 59
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method


# virtual methods
.method public A(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->r:Lcom/airsaid/pickerviewlibrary/widget/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/airsaid/pickerviewlibrary/widget/c;->o(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public B(Ljava/util/Date;)V
    .locals 7

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    const/4 p1, 0x1

    .line 19
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 p1, 0x2

    .line 24
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    const/4 p1, 0x5

    .line 29
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    const/16 p1, 0xb

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    const/16 p1, 0xc

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->r:Lcom/airsaid/pickerviewlibrary/widget/c;

    .line 46
    .line 47
    invoke-virtual/range {v1 .. v6}, Lcom/airsaid/pickerviewlibrary/widget/c;->l(IIIII)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public C(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->q:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public D(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->q:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public E(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->q:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    sget v0, Lcom/airsaid/pickerviewlibrary/R$id;->btnSubmit:I

    .line 6
    .line 7
    if-ne p1, v0, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->u:Lcom/airsaid/pickerviewlibrary/TimePickerView$a;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    :try_start_0
    sget-object p1, Lcom/airsaid/pickerviewlibrary/widget/c;->k:Ljava/text/DateFormat;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->r:Lcom/airsaid/pickerviewlibrary/widget/c;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/airsaid/pickerviewlibrary/widget/c;->g()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->u:Lcom/airsaid/pickerviewlibrary/TimePickerView$a;

    .line 26
    .line 27
    invoke-interface {v0, p1}, Lcom/airsaid/pickerviewlibrary/TimePickerView$a;->a(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 33
    .line 34
    .line 35
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/airsaid/pickerviewlibrary/widget/a;->b()V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    sget v0, Lcom/airsaid/pickerviewlibrary/R$id;->btnCancel:I

    .line 40
    .line 41
    if-ne p1, v0, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/airsaid/pickerviewlibrary/widget/a;->b()V

    .line 44
    .line 45
    .line 46
    :cond_2
    :goto_1
    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->t:Landroid/widget/Button;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public r(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->t:Landroid/widget/Button;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public s(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->t:Landroid/widget/Button;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public t(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->r:Lcom/airsaid/pickerviewlibrary/widget/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/airsaid/pickerviewlibrary/widget/c;->i(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public u(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->p:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public v(Lcom/airsaid/pickerviewlibrary/TimePickerView$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->u:Lcom/airsaid/pickerviewlibrary/TimePickerView$a;

    .line 2
    .line 3
    return-void
.end method

.method public w(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->r:Lcom/airsaid/pickerviewlibrary/widget/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/airsaid/pickerviewlibrary/widget/c;->m(I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->r:Lcom/airsaid/pickerviewlibrary/widget/c;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Lcom/airsaid/pickerviewlibrary/widget/c;->j(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public x(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->s:Landroid/widget/Button;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public y(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->s:Landroid/widget/Button;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public z(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->s:Landroid/widget/Button;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
