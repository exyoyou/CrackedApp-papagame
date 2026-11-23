.class Lcom/join/mgps/activity/UploadActivity$b;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/UploadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field b:Landroid/widget/ListView;

.field c:Landroid/content/Context;

.field d:Lcom/join/mgps/adapter/l8;

.field e:Landroid/widget/TextView;

.field f:Lcom/join/mgps/dto/UploadDialogBean;

.field final synthetic g:Lcom/join/mgps/activity/UploadActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/UploadActivity;Landroid/content/Context;)V
    .locals 2
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
    iput-object p1, p0, Lcom/join/mgps/activity/UploadActivity$b;->g:Lcom/join/mgps/activity/UploadActivity;

    const v0, 0x7f130554

    .line 2
    invoke-direct {p0, p2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/UploadActivity$b;->c:Landroid/content/Context;

    .line 4
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d023b

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 5
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const v0, 0x7f0a0e88

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/join/mgps/activity/UploadActivity$b;->b:Landroid/widget/ListView;

    .line 7
    new-instance v1, Lcom/join/mgps/activity/UploadActivity$b$a;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/UploadActivity$b$a;-><init>(Lcom/join/mgps/activity/UploadActivity$b;Lcom/join/mgps/activity/UploadActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const p1, 0x7f0a10d8

    .line 8
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/UploadActivity$b;->e:Landroid/widget/TextView;

    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 10
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/activity/UploadActivity;Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "context",
            "theme"
        }
    .end annotation

    .line 11
    iput-object p1, p0, Lcom/join/mgps/activity/UploadActivity$b;->g:Lcom/join/mgps/activity/UploadActivity;

    .line 12
    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 13
    iput-object p2, p0, Lcom/join/mgps/activity/UploadActivity$b;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/UploadDialogBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/l8;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/UploadActivity$b;->c:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1, p1}, Lcom/join/mgps/adapter/l8;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/join/mgps/activity/UploadActivity$b;->d:Lcom/join/mgps/adapter/l8;

    .line 9
    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/UploadActivity$b;->b:Landroid/widget/ListView;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "string"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity$b;->e:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
