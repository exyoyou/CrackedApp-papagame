.class Lcom/join/mgps/activity/UploadActivity$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/UploadActivity$b;-><init>(Lcom/join/mgps/activity/UploadActivity;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/UploadActivity;

.field final synthetic c:Lcom/join/mgps/activity/UploadActivity$b;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/UploadActivity$b;Lcom/join/mgps/activity/UploadActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$this$0"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/UploadActivity$b$a;->c:Lcom/join/mgps/activity/UploadActivity$b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/UploadActivity$b$a;->b:Lcom/join/mgps/activity/UploadActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
            "i",
            "l"
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

    .line 1
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/join/mgps/dto/UploadDialogBean;

    .line 6
    .line 7
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/UploadDialogBean;->setIsSelect(Ljava/lang/Boolean;)V

    .line 10
    .line 11
    .line 12
    iget-object p2, p0, Lcom/join/mgps/activity/UploadActivity$b$a;->c:Lcom/join/mgps/activity/UploadActivity$b;

    .line 13
    .line 14
    iget-object p2, p2, Lcom/join/mgps/activity/UploadActivity$b;->g:Lcom/join/mgps/activity/UploadActivity;

    .line 15
    .line 16
    iget-object p2, p2, Lcom/join/mgps/activity/UploadActivity;->platformBean:Lcom/join/mgps/dto/UploadDialogBean;

    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-virtual {p2, p3}, Lcom/join/mgps/dto/UploadDialogBean;->setIsSelect(Ljava/lang/Boolean;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/UploadActivity$b$a;->c:Lcom/join/mgps/activity/UploadActivity$b;

    .line 26
    .line 27
    iget-object p2, p2, Lcom/join/mgps/activity/UploadActivity$b;->d:Lcom/join/mgps/adapter/l8;

    .line 28
    .line 29
    invoke-virtual {p2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 30
    .line 31
    .line 32
    iget-object p2, p0, Lcom/join/mgps/activity/UploadActivity$b$a;->c:Lcom/join/mgps/activity/UploadActivity$b;

    .line 33
    .line 34
    iget-object p2, p2, Lcom/join/mgps/activity/UploadActivity$b;->g:Lcom/join/mgps/activity/UploadActivity;

    .line 35
    .line 36
    iput-object p1, p2, Lcom/join/mgps/activity/UploadActivity;->platformBean:Lcom/join/mgps/dto/UploadDialogBean;

    .line 37
    .line 38
    iget-object p2, p2, Lcom/join/mgps/activity/UploadActivity;->platformType:Landroid/widget/TextView;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/join/mgps/dto/UploadDialogBean;->getName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/join/mgps/activity/UploadActivity$b$a;->c:Lcom/join/mgps/activity/UploadActivity$b;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 50
    .line 51
    .line 52
    return-void
.end method
