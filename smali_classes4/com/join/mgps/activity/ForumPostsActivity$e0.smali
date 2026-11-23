.class Lcom/join/mgps/activity/ForumPostsActivity$e0;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/ForumPostsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e0"
.end annotation


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumGagType;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/join/mgps/activity/ForumPostsActivity$h0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/join/mgps/activity/ForumPostsActivity$h0<",
            "Lcom/join/mgps/dto/ForumBean$ForumGagType;",
            ">;"
        }
    .end annotation
.end field

.field d:Landroid/widget/Spinner;

.field e:Landroid/widget/EditText;

.field private f:Ljava/lang/String;

.field g:I

.field final synthetic h:Lcom/join/mgps/activity/ForumPostsActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/ForumPostsActivity;Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "context"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$e0;->h:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 2
    .line 3
    const v0, 0x7f130554

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$e0;->g:I

    .line 11
    .line 12
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    const v0, 0x7f0d06c5

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, v0, v0}, Landroid/view/View;->measure(II)V

    .line 36
    .line 37
    .line 38
    const v0, 0x7f0a15e4

    .line 39
    .line 40
    .line 41
    invoke-static {p2, v0}, Lcom/join/mgps/Util/n3;->b(Landroid/view/View;I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Landroid/widget/Spinner;

    .line 46
    .line 47
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$e0;->d:Landroid/widget/Spinner;

    .line 48
    .line 49
    const v0, 0x7f0a1a77

    .line 50
    .line 51
    .line 52
    invoke-static {p2, v0}, Lcom/join/mgps/Util/n3;->b(Landroid/view/View;I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Landroid/widget/EditText;

    .line 57
    .line 58
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$e0;->e:Landroid/widget/EditText;

    .line 59
    .line 60
    const v0, 0x7f0a04b8

    .line 61
    .line 62
    .line 63
    invoke-static {p2, v0}, Lcom/join/mgps/Util/n3;->b(Landroid/view/View;I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Landroid/widget/Button;

    .line 68
    .line 69
    const v1, 0x7f0a04b2

    .line 70
    .line 71
    .line 72
    invoke-static {p2, v1}, Lcom/join/mgps/Util/n3;->b(Landroid/view/View;I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    check-cast p2, Landroid/widget/Button;

    .line 77
    .line 78
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity$e0;->e:Landroid/widget/EditText;

    .line 79
    .line 80
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity$e0;->d:Landroid/widget/Spinner;

    .line 81
    .line 82
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    .line 94
    .line 95
    iget-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity$e0;->d:Landroid/widget/Spinner;

    .line 96
    .line 97
    invoke-virtual {p2, p0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 98
    .line 99
    .line 100
    new-instance p2, Lcom/join/mgps/activity/ForumPostsActivity$h0;

    .line 101
    .line 102
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    const v1, 0x7f0d06c6

    .line 107
    .line 108
    .line 109
    invoke-direct {p2, p1, v0, v1}, Lcom/join/mgps/activity/ForumPostsActivity$h0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;Landroid/content/Context;I)V

    .line 110
    .line 111
    .line 112
    iput-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity$e0;->c:Lcom/join/mgps/activity/ForumPostsActivity$h0;

    .line 113
    .line 114
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$e0;->d:Landroid/widget/Spinner;

    .line 115
    .line 116
    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 117
    .line 118
    .line 119
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
            "guid"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$e0;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "types"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumGagType;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$e0;->b:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$e0;->b:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$e0;->b:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$e0;->b:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$e0;->c:Lcom/join/mgps/activity/ForumPostsActivity$h0;

    .line 23
    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    new-instance p1, Lcom/join/mgps/activity/ForumPostsActivity$h0;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$e0;->h:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const v2, 0x7f0d06c6

    .line 35
    .line 36
    .line 37
    invoke-direct {p1, v0, v1, v2}, Lcom/join/mgps/activity/ForumPostsActivity$h0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;Landroid/content/Context;I)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$e0;->c:Lcom/join/mgps/activity/ForumPostsActivity$h0;

    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$e0;->d:Landroid/widget/Spinner;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$e0;->c:Lcom/join/mgps/activity/ForumPostsActivity$h0;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 50
    .line 51
    .line 52
    new-instance p1, Lcom/join/mgps/dto/ForumBean$ForumGagType;

    .line 53
    .line 54
    invoke-direct {p1}, Lcom/join/mgps/dto/ForumBean$ForumGagType;-><init>()V

    .line 55
    .line 56
    .line 57
    const/4 v0, -0x1

    .line 58
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ForumBean$ForumGagType;->setType(I)V

    .line 59
    .line 60
    .line 61
    const-string v0, "\u8bbe\u7f6e\u7981\u8a00\u65f6\u95f4"

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ForumBean$ForumGagType;->setName(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$e0;->c:Lcom/join/mgps/activity/ForumPostsActivity$h0;

    .line 67
    .line 68
    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$e0;->c:Lcom/join/mgps/activity/ForumPostsActivity$h0;

    .line 72
    .line 73
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$e0;->b:Ljava/util/List;

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$e0;->c:Lcom/join/mgps/activity/ForumPostsActivity$h0;

    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$e0;->g:I

    .line 3
    .line 4
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const v0, 0x7f0a04b8

    .line 6
    .line 7
    .line 8
    if-ne p1, v0, :cond_4

    .line 9
    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$e0;->e:Landroid/widget/EditText;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string v0, "\u8bf7\u586b\u5199\u7981\u8a00\u7406\u7531"

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$e0;->d:Landroid/widget/Spinner;

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 v0, 0x0

    .line 50
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity$e0;->c:Lcom/join/mgps/activity/ForumPostsActivity$h0;

    .line 51
    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-ge v0, v1, :cond_3

    .line 59
    .line 60
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity$e0;->c:Lcom/join/mgps/activity/ForumPostsActivity$h0;

    .line 61
    .line 62
    invoke-interface {v1, v0}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Lcom/join/mgps/dto/ForumBean$ForumGagType;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumGagType;->getType()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    const/4 v2, -0x1

    .line 73
    if-eq v1, v2, :cond_2

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumGagType;->getType()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    iput v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$e0;->g:I

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    const-string v0, "\u8bf7\u9009\u62e9\u7981\u8a00\u65f6\u95f4"

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$e0;->h:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 97
    .line 98
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity$e0;->f:Ljava/lang/String;

    .line 99
    .line 100
    iget v2, p0, Lcom/join/mgps/activity/ForumPostsActivity$e0;->g:I

    .line 101
    .line 102
    invoke-virtual {v0, v1, v2, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->postGag(Ljava/lang/String;ILjava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity$e0;->dismiss()V

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_4
    const v0, 0x7f0a04b2

    .line 110
    .line 111
    .line 112
    if-ne p1, v0, :cond_5

    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity$e0;->dismiss()V

    .line 115
    .line 116
    .line 117
    :cond_5
    :goto_2
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "adapterView",
            "view",
            "pos",
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapterView"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
