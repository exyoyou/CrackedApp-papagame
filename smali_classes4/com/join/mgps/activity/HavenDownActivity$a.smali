.class Lcom/join/mgps/activity/HavenDownActivity$a;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/HavenDownActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/join/mgps/activity/HavenDownActivity$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/join/mgps/activity/HavenDownActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/HavenDownActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/HavenDownActivity$a;->e:Lcom/join/mgps/activity/HavenDownActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/activity/HavenDownActivity$a;Lcom/join/mgps/dto/HavenForumListbean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/HavenDownActivity$a;->b(Lcom/join/mgps/dto/HavenForumListbean;Landroid/view/View;)V

    return-void
.end method

.method private synthetic b(Lcom/join/mgps/dto/HavenForumListbean;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/HavenDownActivity$a;->e:Lcom/join/mgps/activity/HavenDownActivity;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/join/mgps/activity/HavenDownActivity;->context:Landroid/content/Context;

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/HavenForumListbean;->getPid()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p1, ""

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p2, v0, p1}, Lcom/join/mgps/Util/IntentUtil;->goFormDetial(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public c(Lcom/join/mgps/activity/HavenDownActivity$b;I)V
    .locals 3
    .param p1    # Lcom/join/mgps/activity/HavenDownActivity$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "havenHolder",
            "i"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HavenDownActivity$a;->e:Lcom/join/mgps/activity/HavenDownActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/HavenDownActivity;->datas:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    check-cast p2, Lcom/join/mgps/dto/HavenForumListbean;

    .line 10
    .line 11
    iget-object v0, p1, Lcom/join/mgps/activity/HavenDownActivity$b;->d:Landroid/widget/TextView;

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/join/mgps/dto/HavenForumListbean;->getSubject()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p1, Lcom/join/mgps/activity/HavenDownActivity$b;->e:Landroid/widget/TextView;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/join/mgps/activity/HavenDownActivity$a;->e:Lcom/join/mgps/activity/HavenDownActivity;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/join/mgps/activity/HavenDownActivity;->tag:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/join/mgps/dto/HavenForumListbean;->getGameSimple()Lcom/join/mgps/dto/HavenForumListGameItem;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {p2}, Lcom/join/mgps/dto/HavenForumListbean;->getGameSimple()Lcom/join/mgps/dto/HavenForumListGameItem;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    iget-object v1, p1, Lcom/join/mgps/activity/HavenDownActivity$b;->e:Landroid/widget/TextView;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/join/mgps/dto/HavenForumListGameItem;->getName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p1, Lcom/join/mgps/activity/HavenDownActivity$b;->g:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 51
    .line 52
    if-eqz v1, :cond_0

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/join/mgps/dto/HavenForumListGameItem;->getIcon()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v1, v0}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    iget-object v0, p1, Lcom/join/mgps/activity/HavenDownActivity$b;->h:Landroid/view/View;

    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p1, Lcom/join/mgps/activity/HavenDownActivity$b;->h:Landroid/view/View;

    .line 70
    .line 71
    new-instance v2, Lcom/join/mgps/activity/b6;

    .line 72
    .line 73
    invoke-direct {v2, p0, p2}, Lcom/join/mgps/activity/b6;-><init>(Lcom/join/mgps/activity/HavenDownActivity$a;Lcom/join/mgps/dto/HavenForumListbean;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    .line 78
    .line 79
    :cond_1
    iget-object v0, p1, Lcom/join/mgps/activity/HavenDownActivity$b;->f:Landroid/view/View;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p1, Lcom/join/mgps/activity/HavenDownActivity$b;->f:Landroid/view/View;

    .line 85
    .line 86
    new-instance v1, Lcom/join/mgps/activity/HavenDownActivity$a$a;

    .line 87
    .line 88
    invoke-direct {v1, p0, p2}, Lcom/join/mgps/activity/HavenDownActivity$a$a;-><init>(Lcom/join/mgps/activity/HavenDownActivity$a;Lcom/join/mgps/dto/HavenForumListbean;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_2
    iget-object v0, p1, Lcom/join/mgps/activity/HavenDownActivity$b;->h:Landroid/view/View;

    .line 96
    .line 97
    const/16 v1, 0x8

    .line 98
    .line 99
    if-eqz v0, :cond_3

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 102
    .line 103
    .line 104
    :cond_3
    iget-object v0, p1, Lcom/join/mgps/activity/HavenDownActivity$b;->f:Landroid/view/View;

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    .line 108
    .line 109
    :goto_0
    iget-object p1, p1, Lcom/join/mgps/activity/HavenDownActivity$b;->i:Landroid/view/View;

    .line 110
    .line 111
    new-instance v0, Lcom/join/mgps/activity/HavenDownActivity$a$b;

    .line 112
    .line 113
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/activity/HavenDownActivity$a$b;-><init>(Lcom/join/mgps/activity/HavenDownActivity$a;Lcom/join/mgps/dto/HavenForumListbean;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method public e(Landroid/view/ViewGroup;I)Lcom/join/mgps/activity/HavenDownActivity$b;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewGroup",
            "i"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/HavenDownActivity$a;->e:Lcom/join/mgps/activity/HavenDownActivity;

    .line 2
    .line 3
    iget-object p2, p2, Lcom/join/mgps/activity/HavenDownActivity;->context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const v0, 0x7f0d037c

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance p2, Lcom/join/mgps/activity/HavenDownActivity$b;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/HavenDownActivity$a;->e:Lcom/join/mgps/activity/HavenDownActivity;

    .line 20
    .line 21
    invoke-direct {p2, v0, p1}, Lcom/join/mgps/activity/HavenDownActivity$b;-><init>(Lcom/join/mgps/activity/HavenDownActivity;Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    return-object p2
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HavenDownActivity$a;->e:Lcom/join/mgps/activity/HavenDownActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/HavenDownActivity;->datas:Ljava/util/List;

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

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "havenHolder",
            "i"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/join/mgps/activity/HavenDownActivity$b;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/HavenDownActivity$a;->c(Lcom/join/mgps/activity/HavenDownActivity$b;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "viewGroup",
            "i"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/HavenDownActivity$a;->e(Landroid/view/ViewGroup;I)Lcom/join/mgps/activity/HavenDownActivity$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
