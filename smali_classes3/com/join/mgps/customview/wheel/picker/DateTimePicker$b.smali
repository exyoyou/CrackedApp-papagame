.class Lcom/join/mgps/customview/wheel/picker/DateTimePicker$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/wheel/picker/WheelView$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->G()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/wheel/picker/WheelView;

.field final synthetic b:Lcom/join/mgps/customview/wheel/picker/DateTimePicker;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;Lcom/join/mgps/customview/wheel/picker/WheelView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$dayView"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker$b;->b:Lcom/join/mgps/customview/wheel/picker/DateTimePicker;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker$b;->a:Lcom/join/mgps/customview/wheel/picker/WheelView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onSelected(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker$b;->b:Lcom/join/mgps/customview/wheel/picker/DateTimePicker;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->Z0(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;I)I

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker$b;->b:Lcom/join/mgps/customview/wheel/picker/DateTimePicker;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->d1(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;)Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker$b;->b:Lcom/join/mgps/customview/wheel/picker/DateTimePicker;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->Y0(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Ljava/lang/String;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker$b;->b:Lcom/join/mgps/customview/wheel/picker/DateTimePicker;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->W0(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;)Lcom/join/mgps/customview/wheel/picker/DateTimePicker$l;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker$b;->b:Lcom/join/mgps/customview/wheel/picker/DateTimePicker;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->W0(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;)Lcom/join/mgps/customview/wheel/picker/DateTimePicker$l;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker$b;->b:Lcom/join/mgps/customview/wheel/picker/DateTimePicker;

    .line 39
    .line 40
    invoke-static {v1}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->Y0(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-interface {v0, v1, p1}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker$l;->e(ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker$b;->b:Lcom/join/mgps/customview/wheel/picker/DateTimePicker;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->K0(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker$b;->b:Lcom/join/mgps/customview/wheel/picker/DateTimePicker;

    .line 56
    .line 57
    invoke-static {v0}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->K0(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const/4 v1, 0x2

    .line 62
    if-ne v0, v1, :cond_4

    .line 63
    .line 64
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker$b;->b:Lcom/join/mgps/customview/wheel/picker/DateTimePicker;

    .line 65
    .line 66
    invoke-static {v0}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->X0(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker$b;->b:Lcom/join/mgps/customview/wheel/picker/DateTimePicker;

    .line 73
    .line 74
    const/4 v1, 0x0

    .line 75
    invoke-static {v0, v1}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->b1(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;I)I

    .line 76
    .line 77
    .line 78
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker$b;->b:Lcom/join/mgps/customview/wheel/picker/DateTimePicker;

    .line 79
    .line 80
    invoke-static {v0}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->K0(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;)I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-nez v0, :cond_3

    .line 85
    .line 86
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker$b;->b:Lcom/join/mgps/customview/wheel/picker/DateTimePicker;

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->q1()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {v0}, Lcom/join/mgps/customview/wheel/picker/util/DateUtils;->u(Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    goto :goto_0

    .line 97
    :cond_3
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 98
    .line 99
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    const/4 v1, 0x1

    .line 104
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker$b;->b:Lcom/join/mgps/customview/wheel/picker/DateTimePicker;

    .line 109
    .line 110
    invoke-static {p1}, Lcom/join/mgps/customview/wheel/picker/util/DateUtils;->u(Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    invoke-static {v1, v0, p1}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->e1(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;II)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker$b;->a:Lcom/join/mgps/customview/wheel/picker/WheelView;

    .line 118
    .line 119
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker$b;->b:Lcom/join/mgps/customview/wheel/picker/DateTimePicker;

    .line 120
    .line 121
    invoke-static {v0}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->f1(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;)Ljava/util/ArrayList;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker$b;->b:Lcom/join/mgps/customview/wheel/picker/DateTimePicker;

    .line 126
    .line 127
    invoke-static {v1}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->a1(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;)I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/customview/wheel/picker/WheelView;->setItems(Ljava/util/List;I)V

    .line 132
    .line 133
    .line 134
    iget-object p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker$b;->b:Lcom/join/mgps/customview/wheel/picker/DateTimePicker;

    .line 135
    .line 136
    invoke-static {p1}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->W0(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;)Lcom/join/mgps/customview/wheel/picker/DateTimePicker$l;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    if-eqz p1, :cond_4

    .line 141
    .line 142
    iget-object p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker$b;->b:Lcom/join/mgps/customview/wheel/picker/DateTimePicker;

    .line 143
    .line 144
    invoke-static {p1}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->W0(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;)Lcom/join/mgps/customview/wheel/picker/DateTimePicker$l;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker$b;->b:Lcom/join/mgps/customview/wheel/picker/DateTimePicker;

    .line 149
    .line 150
    invoke-static {v0}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->a1(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;)I

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    iget-object v1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker$b;->b:Lcom/join/mgps/customview/wheel/picker/DateTimePicker;

    .line 155
    .line 156
    invoke-static {v1}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->f1(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;)Ljava/util/ArrayList;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    iget-object v2, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker$b;->b:Lcom/join/mgps/customview/wheel/picker/DateTimePicker;

    .line 161
    .line 162
    invoke-static {v2}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->a1(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;)I

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    check-cast v1, Ljava/lang/String;

    .line 171
    .line 172
    invoke-interface {p1, v0, v1}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker$l;->d(ILjava/lang/String;)V

    .line 173
    .line 174
    .line 175
    :cond_4
    return-void
.end method
