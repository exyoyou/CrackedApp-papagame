.class Lcom/join/mgps/dialog/d0$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/d0$c;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/dialog/d0$c;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/d0$c;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/d0$c$a;->b:Lcom/join/mgps/dialog/d0$c;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/dialog/d0$c$a;->a:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
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
    iget-object p1, p0, Lcom/join/mgps/dialog/d0$c$a;->b:Lcom/join/mgps/dialog/d0$c;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/dialog/d0$c;->b:Lcom/join/mgps/dialog/d0;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/join/mgps/dialog/d0;->e(Lcom/join/mgps/dialog/d0;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget v0, p0, Lcom/join/mgps/dialog/d0$c$a;->a:I

    .line 10
    .line 11
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/join/mgps/dto/CouponsData;

    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    iget-object p2, p0, Lcom/join/mgps/dialog/d0$c$a;->b:Lcom/join/mgps/dialog/d0$c;

    .line 20
    .line 21
    iget-object p2, p2, Lcom/join/mgps/dialog/d0$c;->b:Lcom/join/mgps/dialog/d0;

    .line 22
    .line 23
    iget-object p2, p2, Lcom/join/mgps/dialog/d0;->g:Ljava/util/Map;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/join/mgps/dto/CouponsData;->getId()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/dialog/d0$c$a;->b:Lcom/join/mgps/dialog/d0$c;

    .line 34
    .line 35
    iget-object p2, p2, Lcom/join/mgps/dialog/d0$c;->b:Lcom/join/mgps/dialog/d0;

    .line 36
    .line 37
    iget-object p2, p2, Lcom/join/mgps/dialog/d0;->g:Ljava/util/Map;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/join/mgps/dto/CouponsData;->getId()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/dialog/d0$c$a;->b:Lcom/join/mgps/dialog/d0$c;

    .line 47
    .line 48
    iget-object p1, p1, Lcom/join/mgps/dialog/d0$c;->b:Lcom/join/mgps/dialog/d0;

    .line 49
    .line 50
    iget-object p1, p1, Lcom/join/mgps/dialog/d0;->g:Ljava/util/Map;

    .line 51
    .line 52
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const/4 p2, 0x0

    .line 61
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Ljava/lang/String;

    .line 72
    .line 73
    iget-object v1, p0, Lcom/join/mgps/dialog/d0$c$a;->b:Lcom/join/mgps/dialog/d0$c;

    .line 74
    .line 75
    iget-object v1, v1, Lcom/join/mgps/dialog/d0$c;->b:Lcom/join/mgps/dialog/d0;

    .line 76
    .line 77
    iget-object v1, v1, Lcom/join/mgps/dialog/d0;->g:Ljava/util/Map;

    .line 78
    .line 79
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Lcom/join/mgps/dto/CouponsData;

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/join/mgps/dto/CouponsData;->getMoney()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    add-int/2addr p2, v0

    .line 90
    goto :goto_1

    .line 91
    :cond_1
    int-to-float p1, p2

    .line 92
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    int-to-double p1, p1

    .line 97
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 98
    .line 99
    div-double/2addr p1, v0

    .line 100
    iget-object v0, p0, Lcom/join/mgps/dialog/d0$c$a;->b:Lcom/join/mgps/dialog/d0$c;

    .line 101
    .line 102
    iget-object v0, v0, Lcom/join/mgps/dialog/d0$c;->b:Lcom/join/mgps/dialog/d0;

    .line 103
    .line 104
    invoke-static {v0}, Lcom/join/mgps/dialog/d0;->f(Lcom/join/mgps/dialog/d0;)Landroid/widget/Button;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    const-string v2, "\u786e\u8ba4\uff08\u5df2\u9009\u62e9"

    .line 114
    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string p1, "\u5143\uff09"

    .line 122
    .line 123
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    .line 132
    .line 133
    return-void
.end method
