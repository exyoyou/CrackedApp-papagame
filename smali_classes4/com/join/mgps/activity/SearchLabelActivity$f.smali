.class Lcom/join/mgps/activity/SearchLabelActivity$f;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/SearchLabelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/SearchLabelActivity$f$a;
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/SearchLabelActivity;


# direct methods
.method private constructor <init>(Lcom/join/mgps/activity/SearchLabelActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SearchLabelActivity$f;->b:Lcom/join/mgps/activity/SearchLabelActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/join/mgps/activity/SearchLabelActivity;Lcom/join/mgps/activity/SearchLabelActivity$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/SearchLabelActivity$f;-><init>(Lcom/join/mgps/activity/SearchLabelActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchLabelActivity$f;->b:Lcom/join/mgps/activity/SearchLabelActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/SearchLabelActivity;->h:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchLabelActivity$f;->b:Lcom/join/mgps/activity/SearchLabelActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/SearchLabelActivity;->h:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "convertView",
            "parent"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    const p3, 0x7f0d0486

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    new-instance p3, Lcom/join/mgps/activity/SearchLabelActivity$f$a;

    .line 20
    .line 21
    invoke-direct {p3, p0}, Lcom/join/mgps/activity/SearchLabelActivity$f$a;-><init>(Lcom/join/mgps/activity/SearchLabelActivity$f;)V

    .line 22
    .line 23
    .line 24
    const v0, 0x7f0a0a42

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 32
    .line 33
    iput-object v0, p3, Lcom/join/mgps/activity/SearchLabelActivity$f$a;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 34
    .line 35
    const v0, 0x7f0a19b2

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Landroid/widget/TextView;

    .line 43
    .line 44
    iput-object v0, p3, Lcom/join/mgps/activity/SearchLabelActivity$f$a;->b:Landroid/widget/TextView;

    .line 45
    .line 46
    const v0, 0x7f0a1943

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Landroid/widget/TextView;

    .line 54
    .line 55
    iput-object v0, p3, Lcom/join/mgps/activity/SearchLabelActivity$f$a;->c:Landroid/widget/TextView;

    .line 56
    .line 57
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    check-cast p3, Lcom/join/mgps/activity/SearchLabelActivity$f$a;

    .line 66
    .line 67
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchLabelActivity$f;->b:Lcom/join/mgps/activity/SearchLabelActivity;

    .line 68
    .line 69
    iget-object v0, v0, Lcom/join/mgps/activity/SearchLabelActivity;->h:Ljava/util/List;

    .line 70
    .line 71
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Lcom/join/mgps/dto/LabelBean;

    .line 76
    .line 77
    iget-object v0, p3, Lcom/join/mgps/activity/SearchLabelActivity$f$a;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/join/mgps/dto/LabelBean;->getTag_icon()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p3, Lcom/join/mgps/activity/SearchLabelActivity$f$a;->b:Landroid/widget/TextView;

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/join/mgps/dto/LabelBean;->getTag_name()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    iget-object p3, p3, Lcom/join/mgps/activity/SearchLabelActivity$f$a;->c:Landroid/widget/TextView;

    .line 96
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/join/mgps/dto/LabelBean;->getPosts()I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string p1, "\u6761\u5e16\u5b50"

    .line 110
    .line 111
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    .line 120
    .line 121
    return-object p2
.end method
