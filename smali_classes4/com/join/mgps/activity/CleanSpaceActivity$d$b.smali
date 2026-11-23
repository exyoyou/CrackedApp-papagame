.class Lcom/join/mgps/activity/CleanSpaceActivity$d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CleanSpaceActivity$d;->s(Lcom/join/mgps/base/b;Lcom/join/mgps/activity/CleanSpaceActivity$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/join/mgps/activity/CleanSpaceActivity$c;

.field final synthetic c:Landroid/widget/CheckBox;

.field final synthetic d:Lcom/join/mgps/activity/CleanSpaceActivity$d;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CleanSpaceActivity$d;Landroid/widget/ImageView;Lcom/join/mgps/activity/CleanSpaceActivity$c;Landroid/widget/CheckBox;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$checkbox",
            "val$bean",
            "val$checkboxPkg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CleanSpaceActivity$d$b;->d:Lcom/join/mgps/activity/CleanSpaceActivity$d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/CleanSpaceActivity$d$b;->a:Landroid/widget/ImageView;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/CleanSpaceActivity$d$b;->b:Lcom/join/mgps/activity/CleanSpaceActivity$c;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/mgps/activity/CleanSpaceActivity$d$b;->c:Landroid/widget/CheckBox;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
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
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/CleanSpaceActivity$d$b;->a:Landroid/widget/ImageView;

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/CleanSpaceActivity$d$b;->b:Lcom/join/mgps/activity/CleanSpaceActivity$c;

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/CleanSpaceActivity$c;->k(Z)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/CleanSpaceActivity$d$b;->d:Lcom/join/mgps/activity/CleanSpaceActivity$d;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/join/mgps/activity/CleanSpaceActivity$d;->f:Lcom/join/mgps/activity/CleanSpaceActivity;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/join/mgps/activity/CleanSpaceActivity;->access$008(Lcom/join/mgps/activity/CleanSpaceActivity;)I

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/join/mgps/activity/CleanSpaceActivity$d$b;->b:Lcom/join/mgps/activity/CleanSpaceActivity$c;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/activity/CleanSpaceActivity$c;->a()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    iget-object p1, p0, Lcom/join/mgps/activity/CleanSpaceActivity$d$b;->b:Lcom/join/mgps/activity/CleanSpaceActivity$c;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/join/mgps/activity/CleanSpaceActivity$c;->a()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-eqz p2, :cond_2

    .line 44
    .line 45
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    check-cast p2, Ljava/lang/String;

    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/mgps/activity/CleanSpaceActivity$d$b;->d:Lcom/join/mgps/activity/CleanSpaceActivity$d;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/join/mgps/activity/CleanSpaceActivity$d;->f:Lcom/join/mgps/activity/CleanSpaceActivity;

    .line 54
    .line 55
    invoke-virtual {v0, p2}, Lcom/join/mgps/activity/CleanSpaceActivity;->addCleanPath(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/CleanSpaceActivity$d$b;->c:Landroid/widget/CheckBox;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    const/4 p2, 0x0

    .line 66
    if-nez p1, :cond_1

    .line 67
    .line 68
    iget-object p1, p0, Lcom/join/mgps/activity/CleanSpaceActivity$d$b;->a:Landroid/widget/ImageView;

    .line 69
    .line 70
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 71
    .line 72
    .line 73
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/CleanSpaceActivity$d$b;->b:Lcom/join/mgps/activity/CleanSpaceActivity$c;

    .line 74
    .line 75
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/CleanSpaceActivity$c;->k(Z)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/join/mgps/activity/CleanSpaceActivity$d$b;->d:Lcom/join/mgps/activity/CleanSpaceActivity$d;

    .line 79
    .line 80
    iget-object p1, p1, Lcom/join/mgps/activity/CleanSpaceActivity$d;->f:Lcom/join/mgps/activity/CleanSpaceActivity;

    .line 81
    .line 82
    invoke-static {p1}, Lcom/join/mgps/activity/CleanSpaceActivity;->access$010(Lcom/join/mgps/activity/CleanSpaceActivity;)I

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lcom/join/mgps/activity/CleanSpaceActivity$d$b;->b:Lcom/join/mgps/activity/CleanSpaceActivity$c;

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/join/mgps/activity/CleanSpaceActivity$c;->a()Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    if-eqz p1, :cond_2

    .line 92
    .line 93
    iget-object p1, p0, Lcom/join/mgps/activity/CleanSpaceActivity$d$b;->b:Lcom/join/mgps/activity/CleanSpaceActivity$c;

    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/join/mgps/activity/CleanSpaceActivity$c;->a()Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    if-eqz p2, :cond_2

    .line 108
    .line 109
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    check-cast p2, Ljava/lang/String;

    .line 114
    .line 115
    iget-object v0, p0, Lcom/join/mgps/activity/CleanSpaceActivity$d$b;->d:Lcom/join/mgps/activity/CleanSpaceActivity$d;

    .line 116
    .line 117
    iget-object v0, v0, Lcom/join/mgps/activity/CleanSpaceActivity$d;->f:Lcom/join/mgps/activity/CleanSpaceActivity;

    .line 118
    .line 119
    invoke-virtual {v0, p2}, Lcom/join/mgps/activity/CleanSpaceActivity;->removeCleanPath(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/CleanSpaceActivity$d$b;->d:Lcom/join/mgps/activity/CleanSpaceActivity$d;

    .line 124
    .line 125
    iget-object p1, p1, Lcom/join/mgps/activity/CleanSpaceActivity$d;->f:Lcom/join/mgps/activity/CleanSpaceActivity;

    .line 126
    .line 127
    invoke-static {p1}, Lcom/join/mgps/activity/CleanSpaceActivity;->access$300(Lcom/join/mgps/activity/CleanSpaceActivity;)V

    .line 128
    .line 129
    .line 130
    return-void
.end method
