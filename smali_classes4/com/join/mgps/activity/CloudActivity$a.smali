.class Lcom/join/mgps/activity/CloudActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CloudActivity;->showFirstDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Lcom/join/mgps/activity/CloudActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CloudActivity;Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$cloud_select_img"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CloudActivity$a;->c:Lcom/join/mgps/activity/CloudActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/CloudActivity$a;->b:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/CloudActivity$a;->c:Lcom/join/mgps/activity/CloudActivity;

    .line 2
    .line 3
    iget-boolean p1, p1, Lcom/join/mgps/activity/CloudActivity;->showFirst:Z

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/CloudActivity$a;->b:Landroid/widget/ImageView;

    .line 8
    .line 9
    const v0, 0x7f080438

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/CloudActivity$a;->b:Landroid/widget/ImageView;

    .line 17
    .line 18
    const v0, 0x7f080439

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 22
    .line 23
    .line 24
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/CloudActivity$a;->c:Lcom/join/mgps/activity/CloudActivity;

    .line 25
    .line 26
    iget-boolean v0, p1, Lcom/join/mgps/activity/CloudActivity;->showFirst:Z

    .line 27
    .line 28
    xor-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    iput-boolean v0, p1, Lcom/join/mgps/activity/CloudActivity;->showFirst:Z

    .line 31
    .line 32
    return-void
.end method
