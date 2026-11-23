.class Lcom/join/mgps/dialog/n$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/n;->c(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/n;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/n;)V
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
    iput-object p1, p0, Lcom/join/mgps/dialog/n$b;->a:Lcom/join/mgps/dialog/n;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buttonView",
            "isChecked"
        }
    .end annotation

    .line 1
    const-string p1, ""

    .line 2
    .line 3
    if-nez p2, :cond_1

    .line 4
    .line 5
    iget-object p2, p0, Lcom/join/mgps/dialog/n$b;->a:Lcom/join/mgps/dialog/n;

    .line 6
    .line 7
    iget-object p2, p2, Lcom/join/mgps/dialog/n;->r:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {p2}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-eqz p2, :cond_2

    .line 14
    .line 15
    iget-object p2, p0, Lcom/join/mgps/dialog/n$b;->a:Lcom/join/mgps/dialog/n;

    .line 16
    .line 17
    iget-object p2, p2, Lcom/join/mgps/dialog/n;->s:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {p2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lcom/join/mgps/dialog/n$b;->a:Lcom/join/mgps/dialog/n;

    .line 26
    .line 27
    iget-object p2, p1, Lcom/join/mgps/dialog/n;->s:Ljava/lang/String;

    .line 28
    .line 29
    iput-object p2, p1, Lcom/join/mgps/dialog/n;->r:Ljava/lang/String;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/dialog/n$b;->a:Lcom/join/mgps/dialog/n;

    .line 33
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 40
    .line 41
    .line 42
    move-result-wide v1

    .line 43
    const-wide/high16 v3, 0x4022000000000000L    # 9.0

    .line 44
    .line 45
    mul-double v1, v1, v3

    .line 46
    .line 47
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 48
    .line 49
    add-double/2addr v1, v3

    .line 50
    const-wide v3, 0x408f400000000000L    # 1000.0

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    mul-double v1, v1, v3

    .line 56
    .line 57
    double-to-int v1, v1

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p2, Lcom/join/mgps/dialog/n;->r:Ljava/lang/String;

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/dialog/n$b;->a:Lcom/join/mgps/dialog/n;

    .line 72
    .line 73
    iput-object p1, p2, Lcom/join/mgps/dialog/n;->r:Ljava/lang/String;

    .line 74
    .line 75
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/dialog/n$b;->a:Lcom/join/mgps/dialog/n;

    .line 76
    .line 77
    iget-object p1, p1, Lcom/join/mgps/dialog/n;->r:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_3

    .line 84
    .line 85
    iget-object p1, p0, Lcom/join/mgps/dialog/n$b;->a:Lcom/join/mgps/dialog/n;

    .line 86
    .line 87
    iget-object p1, p1, Lcom/join/mgps/dialog/n;->l:Landroid/widget/TextView;

    .line 88
    .line 89
    new-instance p2, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v0, "\u623f\u95f4\u6027\u8d28\uff08\u5bc6\u7801"

    .line 95
    .line 96
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/join/mgps/dialog/n$b;->a:Lcom/join/mgps/dialog/n;

    .line 100
    .line 101
    iget-object v0, v0, Lcom/join/mgps/dialog/n;->r:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v0, ")"

    .line 107
    .line 108
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/dialog/n$b;->a:Lcom/join/mgps/dialog/n;

    .line 120
    .line 121
    iget-object p1, p1, Lcom/join/mgps/dialog/n;->l:Landroid/widget/TextView;

    .line 122
    .line 123
    const-string p2, "\u623f\u95f4\u6027\u8d28"

    .line 124
    .line 125
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    .line 127
    .line 128
    :goto_1
    return-void
.end method
